import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'saved_devices_widget.dart' show SavedDevicesWidget;
import 'package:flutter/material.dart';

class SavedDevicesModel extends FlutterFlowModel<SavedDevicesWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<TrustedDeviceStruct> trustedDeviceList = [];
  void addToTrustedDeviceList(TrustedDeviceStruct item) =>
      trustedDeviceList.add(item);
  void removeFromTrustedDeviceList(TrustedDeviceStruct item) =>
      trustedDeviceList.remove(item);
  void removeAtIndexFromTrustedDeviceList(int index) =>
      trustedDeviceList.removeAt(index);
  void insertAtIndexInTrustedDeviceList(int index, TrustedDeviceStruct item) =>
      trustedDeviceList.insert(index, item);
  void updateTrustedDeviceListAtIndex(
          int index, Function(TrustedDeviceStruct) updateFn) =>
      trustedDeviceList[index] = updateFn(trustedDeviceList[index]);

  bool? isTrusted;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Settings Device Trust Confirm Signing)] action in IconButton widget.
  ApiCallResponse? confirmSigningBioResponse;
  // Stores action output result for [Custom Action - createSignature] action in IconButton widget.
  String? createBioSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Signing Challenge For Device Trust Approval)] action in IconButton widget.
  ApiCallResponse? getSigningChallengeResponse;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Settings Device Trust Request)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponse2;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in CustomMobileAppBar widget.
  dynamic deviceKeypairOutput2;
  // Stores action output result for [Backend Call - API (Retail Settings Device Register)] action in CustomMobileAppBar widget.
  ApiCallResponse? registerDeviceResponse;
  // Stores action output result for [Custom Action - getFCMToken] action in CustomMobileAppBar widget.
  String? fcmTokenOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Device Trust Request)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponse;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in CustomMobileAppBar widget.
  dynamic deviceKeypairOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Devices List)] action in CustomMobileAppBar widget.
  ApiCallResponse? devicesResponse;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    customMobileAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }

  /// Action blocks.
  Future getDevices(BuildContext context) async {
    ApiCallResponse? apiResulty9y;

    apiResulty9y =
        await WhitebankGroupAPIGroup.retailSettingsDevicesListCall.call(
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
    );

    if ((apiResulty9y.succeeded ?? true)) {
      trustedDeviceList = ((apiResulty9y.jsonBody ?? '')
              .toList()
              .map<TrustedDeviceStruct?>(TrustedDeviceStruct.maybeFromMap)
              .toList() as Iterable<TrustedDeviceStruct?>)
          .withoutNulls
          .where((e) =>
              (e.trusted == true) &&
              ((e.pushPlatform != 'web') || (e.deviceType != 'web')))
          .toList()
          .toList()
          .cast<TrustedDeviceStruct>();
    }
  }
}
