import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'security_settings_page_widget.dart' show SecuritySettingsPageWidget;
import 'package:flutter/material.dart';

class SecuritySettingsPageModel
    extends FlutterFlowModel<SecuritySettingsPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  bool isBiometricEnabled = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Auth Biometric Devices)] action in SecuritySettingsPage widget.
  ApiCallResponse? biometricDevicesResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Biometric Toggle)] action in Container widget.
  ApiCallResponse? biometricToggleResponse;
  // State field(s) for Biometric-Switch widget.
  bool? biometricSwitchValue;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
