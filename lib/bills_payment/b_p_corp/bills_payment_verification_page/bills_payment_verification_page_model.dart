import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bills_payment_verification_page_widget.dart'
    show BillsPaymentVerificationPageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class BillsPaymentVerificationPageModel
    extends FlutterFlowModel<BillsPaymentVerificationPageWidget> {
  ///  Local state fields for this page.

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

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (OauthToken)] action in Button-Login widget.
  ApiCallResponse? verifyOtpAuthTokenResponse;
  // Stores action output result for [Backend Call - API (SMS)] action in Button-Login widget.
  ApiCallResponse? verifyOtpResponse;
  // Stores action output result for [Backend Call - API (OauthToken)] action in Button-Login widget.
  ApiCallResponse? bpValidationOAuthTokenResponse2;
  // Stores action output result for [Backend Call - API (OauthToken)] action in Button-Login widget.
  ApiCallResponse? bpPayBillsResponse2;
  // State field(s) for Timer-Validity widget.
  final timerValidityInitialTimeMs = 0;
  int timerValidityMilliseconds = 0;
  String timerValidityValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerValidityController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerValidityController.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
