import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'login_header_model.dart';
export 'login_header_model.dart';

class LoginHeaderWidget extends StatefulWidget {
  const LoginHeaderWidget({super.key});

  @override
  State<LoginHeaderWidget> createState() => _LoginHeaderWidgetState();
}

class _LoginHeaderWidgetState extends State<LoginHeaderWidget> {
  late LoginHeaderModel _model;

  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginHeaderModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      curve: Curves.bounceOut,
      width: double.infinity,
      height: 377.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/Group_427318342.png',
          ).image,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(1.0, -1.0),
        child: Stack(
          alignment: AlignmentDirectional(1.0, -1.0),
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 0.0, 158.0, 21.0),
                      child: Hero(
                        tag: 'logoLoginAnimation',
                        transitionOnUserGestures: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Asset_3_1.png',
                            width: 191.0,
                            height: 48.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 15.0)),
            ),
            if (true)
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Mask_group_(1).png',
                    width: valueOrDefault<double>(
                      (isWeb
                              ? MediaQuery.viewInsetsOf(context).bottom > 0
                              : _isKeyboardVisible)
                          ? 195.0
                          : 310.0,
                      195.0,
                    ),
                    height: valueOrDefault<double>(
                      (isWeb
                              ? MediaQuery.viewInsetsOf(context).bottom > 0
                              : _isKeyboardVisible)
                          ? 195.0
                          : 310.0,
                      195.0,
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment(1.0, -1.0),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
