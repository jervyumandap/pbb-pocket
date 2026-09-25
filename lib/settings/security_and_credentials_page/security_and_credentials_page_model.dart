import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'security_and_credentials_page_widget.dart'
    show SecurityAndCredentialsPageWidget;
import 'package:flutter/material.dart';

class SecurityAndCredentialsPageModel
    extends FlutterFlowModel<SecurityAndCredentialsPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  BiometricDetailsModelStruct? biometricState;
  void updateBiometricStateStruct(
      Function(BiometricDetailsModelStruct) updateFn) {
    updateFn(biometricState ??= BiometricDetailsModelStruct());
  }

  bool isDeviceTrusted = false;

  bool hasBiometrics = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Settings Device Details)] action in SecurityAndCredentialsPage widget.
  ApiCallResponse? deviceDetailsResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Biometric)] action in SecurityAndCredentialsPage widget.
  ApiCallResponse? biometricSettingsResponse;
  // Stores action output result for [Backend Call - API (Retail Auth Biometric Devices)] action in SecurityAndCredentialsPage widget.
  ApiCallResponse? biometricDevicesResponse;
  // State field(s) for Biometric-Switch widget.
  bool? biometricSwitchValue;
  // Stores action output result for [Backend Call - API (Retail Settings Biometric Toggle)] action in Biometric-Switch widget.
  ApiCallResponse? biometricToggleResponse;
  // Stores action output result for [Custom Action - generateKeyPair] action in Biometric-Switch widget.
  dynamic generateKeyPairOutput;
  // Stores action output result for [Backend Call - API (Retail Auth Biometric Register)] action in Biometric-Switch widget.
  ApiCallResponse? biometricRegisterResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in Biometric-Switch widget.
  ApiCallResponse? initTrustResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Devices List)] action in Biometric-Switch widget.
  ApiCallResponse? devicesResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Biometric Toggle)] action in Biometric-Switch widget.
  ApiCallResponse? biometricToggleResponse2;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
  }
}
