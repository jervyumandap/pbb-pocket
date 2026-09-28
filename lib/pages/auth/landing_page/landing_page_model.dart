import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  Local state fields for this page.
  /// use to hide loading container.
  bool isFinishedCheckingPlatform = false;

  bool isMpinLogin = false;

  String? enteredMpin;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDeviceDetails] action in LandingPage widget.
  dynamic getDeviceDetailsOuput;
  // Stores action output result for [Custom Action - retrieveStoredData] action in LandingPage widget.
  String? storedDeviceIdOutput;
  // Stores action output result for [Backend Call - API (Retail Config Mpin)] action in LandingPage widget.
  ApiCallResponse? mpinConfigResponse;
  // Stores action output result for [Backend Call - API (Retail Bank Advisories)] action in LandingPage widget.
  ApiCallResponse? advisoriesResponse;
  // Stores action output result for [Custom Action - retrieveStoredData] action in LandingPage widget.
  String? retrievedUsername;
  // Stores action output result for [Backend Call - API (Retail Config Session)] action in LandingPage widget.
  ApiCallResponse? sessionConfigResponse;
  // Stores action output result for [Backend Call - API (Retail Auth Biometric Challenge)] action in IconButton-Biometrics widget.
  ApiCallResponse? biometricChallengeResponse;
  // Stores action output result for [Custom Action - createSignature] action in IconButton-Biometrics widget.
  String? createSignatureOutput;
  // Stores action output result for [Custom Action - getPaygilantSession] action in IconButton-Biometrics widget.
  String? getPaygilantSessionBiometricOutput;
  // Stores action output result for [Backend Call - API (Retail Auth Biometric Login)] action in IconButton-Biometrics widget.
  ApiCallResponse? biometricLoginResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in IconButton-Biometrics widget.
  ApiCallResponse? getProfileDetailsResponse;
  // Stores action output result for [Custom Action - getPaygilantSession] action in IconButton-Passkey widget.
  String? getPaygilantSessionPkOutput;
  // Stores action output result for [Custom Action - passkeyAuthVerifyPayload] action in IconButton-Passkey widget.
  dynamic passkeyAuthVerifyPayload;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Auth)] action in IconButton-Passkey widget.
  ApiCallResponse? passkeyAuthResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in IconButton-Passkey widget.
  ApiCallResponse? pKGetProfileResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
