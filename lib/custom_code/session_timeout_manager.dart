import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:p_b_b_pocket/app_constants.dart';
import 'package:p_b_b_pocket/app_state.dart';
import 'package:p_b_b_pocket/auth/custom_auth/auth_util.dart';
import 'package:p_b_b_pocket/environment_values.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import '/components/custom_informational_dialog_log_out/custom_informational_dialog_log_out_widget.dart';
import '../../auth/custom_auth/custom_auth_user_provider.dart';

/// A singleton manager that handles session timeout logic based on user inactivity.
///
/// Improvements:
/// - Prevents memory leaks (removes global listener on dispose)
/// - Safer dialog handling (no duplicate dialogs / race conditions)
/// - More defensive context usage
/// - Cleaner timer lifecycle
/// - Better resilience for real-world apps (navigation, async, etc.)
class SessionTimeoutManager {
  SessionTimeoutManager._internal();

  static final SessionTimeoutManager instance =
      SessionTimeoutManager._internal();

  Timer? _timer;
  Timer? _logoutTimer;

  bool _dialogOpen = false;
  bool _initialized = false;

  static String currentEnv = FFDevEnvironmentValues.currentEnvironment;

  // static const Duration warningDuration = Duration(seconds: FFAppConstants.SessionWarningTimer); // 60 sec
  // static const Duration logoutDuration = Duration(seconds: FFAppConstants.SessionLogoutTImer); // 180 sec

  static Duration get warningDuration =>
      Duration(seconds: FFAppState().WBTimerConfigAppState.sessionWarning);

  static Duration get logoutDuration =>
      Duration(seconds: FFAppState().WBTimerConfigAppState.sessionAutoLogout);

  VoidCallback? onLogout;
  BuildContext? _context;

  /// Public initializer
  void init(BuildContext context, {VoidCallback? onLogout}) {
    print('SessionTimeoutManager init');

    _context = context; // always update latest context
    this.onLogout = onLogout;

    _resetTimer();

    if (_initialized) return;

    _initialized = true;
    _startListeners();
  }

  /// Attach global pointer listener
  bool _listenerAttached = false;
  void _startListeners() {
    if (!_initialized || _listenerAttached) return;
    GestureBinding.instance.pointerRouter.addGlobalRoute(_handleUserInput);
    _listenerAttached = true;
  }

  /// IMPORTANT: remove listener to avoid memory leaks
  void _stopListeners() {
    if (!_listenerAttached) return;
    GestureBinding.instance.pointerRouter.removeGlobalRoute(_handleUserInput);
    _listenerAttached = false;
  }

  /// Detect any user interaction and reset timer
  void _handleUserInput(PointerEvent event) {
    if (_dialogOpen || !_initialized) return; // ignore input while dialog open

    if (event is PointerDownEvent ||
        event is PointerMoveEvent ||
        event is PointerScrollEvent) {
      final context = _context;
      if (context == null || !context.mounted) return;

      print('User interaction detected - reset session timeout timer');

      // to call refresh session block here for enhancement

      _resetTimer();
    }
  }

  /// Reset inactivity timer
  void _resetTimer() {
    if (!_initialized) return;
    final context = _context;

    if (context == null || !context.mounted) {
      _context = null;
      return;
    }

    _timer?.cancel();

    _timer = Timer(warningDuration, () {
      if (!_initialized || _dialogOpen) return;
      if (context.mounted) {
        _showWarningDialog();
      }
    });
  }

  /// Countdown stream for dialog UI
  Stream<int> _countdownStream(Duration duration) async* {
    for (int i = duration.inSeconds; i >= 0; i--) {
      yield i;
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  /// Show inactivity dialog
  Future<void> _showWarningDialog() async {
    if (!_initialized) return;

    final context = _context;

    if (context == null || !context.mounted) {
      _context = null;
      return;
    }
    if (_dialogOpen) return;

    _dialogOpen = true;
    _stopListeners();

    _logoutTimer?.cancel();

    /// Start auto logout countdown
    _logoutTimer = Timer(logoutDuration, () {
      print('AUTO LOGOUT TRIGGERED');
      _safePopDialog();
      _logout();
    });

    final stream = _countdownStream(logoutDuration);

    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return StreamBuilder<int>(
          stream: stream,
          builder: (context, snapshot) {
            final secondsLeft = snapshot.data ?? logoutDuration.inSeconds;

            final minutes = secondsLeft ~/ 60;
            final seconds = secondsLeft % 60;

            final formatted =
                '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: WebViewAware(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: CustomInformationalDialogLogOutWidget(
                    primaryButtonTitle: 'Stay Logged In',
                    title: 'Still there?',
                    primaryButtonAction: () async {
                      Navigator.pop(dialogContext, true);
                    },
                    secondaryButtonTitle: 'LOG ME OUT',
                    secondaryButtonAction: () async {
                      Navigator.pop(dialogContext, false);
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );

    _dialogOpen = false;
    if (_initialized) {
      _startListeners(); // ADD THIS BACK
    }
    _logoutTimer?.cancel();

    if (result == true) {
      _resetTimer();
    } else if (result == false) {
      _logout();
    }
  }

  /// Safely close dialog if still open
  void _safePopDialog() {
    final context = _context;

    if (context == null || !context.mounted) {
      _context = null;
      return;
    }

    try {
      Navigator.of(context, rootNavigator: true).maybePop();
    } catch (_) {
      // ignore if already popped
    }
  }

  /// Logout handler
  void _logout() {
    print('_logout');

    _timer?.cancel();
    _logoutTimer?.cancel();

    _dialogOpen = false;

    _stopListeners(); //

    _context = null; //

    authManager.signOut();

    onLogout?.call();

    _initialized = false;
  }

  /// Force logout externally
  void forceLogout() => _logout();

  /// Dispose everything safely
  void dispose() {
    _timer?.cancel();
    _logoutTimer?.cancel();

    _stopListeners(); // important fix

    _initialized = false;
    _dialogOpen = false;
  }

  /// Utility formatter
  String format(int s) {
    final m = s ~/ 60;
    final sec = s % 60;
    return '$m:${sec.toString().padLeft(2, '0')}';
  }
}

// fix 1 check- web and mobile
// fix 2
// fix 3 works
// fix 4 to test
//
