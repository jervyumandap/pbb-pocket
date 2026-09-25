import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cheque_inquiry_result_page_widget.dart'
    show ChequeInquiryResultPageWidget;
import 'package:flutter/material.dart';

class ChequeInquiryResultPageModel
    extends FlutterFlowModel<ChequeInquiryResultPageWidget> {
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

  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Stores action output result for [Backend Call - API (Retail Stop Cheque Confirm Signing)] action in Container widget.
  ApiCallResponse? chequeConfirmSigning;
  // Stores action output result for [Custom Action - createSignature] action in Container widget.
  String? signature;
  // Stores action output result for [Backend Call - API (Retail Stop Cheque Signing Challenge)] action in Container widget.
  ApiCallResponse? aPIStopChequeChallenge;
  // Stores action output result for [Backend Call - API (Retail Stop Cheque Prepare)] action in Container widget.
  ApiCallResponse? aPIStopChequeResult;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Settings Device Register)] action in CustomMobileAppBar widget.
  ApiCallResponse? registerDeviceResponse;
  // Stores action output result for [Custom Action - getFCMToken] action in CustomMobileAppBar widget.
  String? fcmTokenOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Devices List)] action in CustomMobileAppBar widget.
  ApiCallResponse? devicesResponse;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    emptyListComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
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
          .toList()
          .cast<TrustedDeviceStruct>();
    }
  }
}
