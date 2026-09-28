import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_verification_page_widget.dart'
    show AccountVerificationPageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class AccountVerificationPageModel
    extends FlutterFlowModel<AccountVerificationPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  /// 1 min expiration in milliseconds
  int? expirationMS = 60000;

  bool isTimerExpired = false;

  bool? isOtpValid = true;

  String? sessionToken;

  bool hasOtpEntered = false;

  String errorText = '*Please enter valid OTP';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Registration Send Otp)] action in AccountVerificationPage widget.
  ApiCallResponse? sendOtpResponse;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Registration Resend Otp)] action in RichTextSpan widget.
  ApiCallResponse? resendOtpResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in RichTextSpan widget.
  ApiCallResponse? trustResendOtpResponse;
  // Stores action output result for [Backend Call - API (Recovery Password Resend Otp)] action in RichTextSpan widget.
  ApiCallResponse? recoverPwResendOtpResponse;
  // Stores action output result for [Backend Call - API (Recovery MPIN Resend Otp)] action in RichTextSpan widget.
  ApiCallResponse? recoverMpinResendOtpResponse;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Registration Verify Otp)] action in PrimaryButtonComponent widget.
  ApiCallResponse? verifyOtpResponse2;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change Confirm Otp)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordChangeConfirmResponse2;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in PrimaryButtonComponent widget.
  dynamic deviceKeypairOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust Confirm Otp)] action in PrimaryButtonComponent widget.
  ApiCallResponse? trustConfirmResponse2;
  // Stores action output result for [Backend Call - API (Retail Auth Password Recovery Verify Otp)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordVerifyResponse;
  // Stores action output result for [Backend Call - API (Retail Auth Mpin Recovery Verify Otp)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinVerifyResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerController.dispose();
    primaryButtonComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
