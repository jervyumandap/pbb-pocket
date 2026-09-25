import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bills_payment_verification_component_widget.dart'
    show BillsPaymentVerificationComponentWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class BillsPaymentVerificationComponentModel
    extends FlutterFlowModel<BillsPaymentVerificationComponentWidget> {
  ///  Local state fields for this component.

  HeaderStruct? otpHeader;
  void updateOtpHeaderStruct(Function(HeaderStruct) updateFn) {
    updateFn(otpHeader ??= HeaderStruct());
  }

  OTPDetailsStruct? otpDetails;
  void updateOtpDetailsStruct(Function(OTPDetailsStruct) updateFn) {
    updateFn(otpDetails ??= OTPDetailsStruct());
  }

  HeaderStruct? verifyOtpHeader;
  void updateVerifyOtpHeaderStruct(Function(HeaderStruct) updateFn) {
    updateFn(verifyOtpHeader ??= HeaderStruct());
  }

  ValidityDetailsStruct? otpValidityDetails;
  void updateOtpValidityDetailsStruct(
      Function(ValidityDetailsStruct) updateFn) {
    updateFn(otpValidityDetails ??= ValidityDetailsStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode-Bp-Otp widget.
  TextEditingController? pinCodeBpOtp;
  FocusNode? pinCodeBpOtpFocusNode;
  String? Function(BuildContext, String?)? pinCodeBpOtpValidator;
  // Stores action output result for [Backend Call - API (OauthToken)] action in Button-Continue widget.
  ApiCallResponse? verifyOtpTokenResponse;
  // Stores action output result for [Backend Call - API (SMS)] action in Button-Continue widget.
  ApiCallResponse? verifyOtpResponse;
  // State field(s) for Timer-Validity widget.
  final timerValidityInitialTimeMs = 0;
  int timerValidityMilliseconds = 0;
  String timerValidityValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerValidityController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {
    pinCodeBpOtp = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeBpOtpFocusNode?.dispose();
    pinCodeBpOtp?.dispose();

    timerValidityController.dispose();
  }
}
