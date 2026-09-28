import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'passkey_credentials_page_widget.dart' show PasskeyCredentialsPageWidget;
import 'package:flutter/material.dart';

class PasskeyCredentialsPageModel
    extends FlutterFlowModel<PasskeyCredentialsPageWidget> {
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

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Retail Rename Passkey Credential)] action in Row widget.
  ApiCallResponse? renameResponse;
  // Stores action output result for [Backend Call - API (Retail Revoke Passkey Credential)] action in Row widget.
  ApiCallResponse? revokeResponse;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Registration)] action in CustomMobileAppBar widget.
  ApiCallResponse? pKVerifyRegistrationResponse2;
  // Stores action output result for [Custom Action - passkeyRegistrationVerifyPayload] action in CustomMobileAppBar widget.
  dynamic pKRegistrationVerifyPayload2;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in CustomMobileAppBar widget.
  dynamic deviceKeypairOutput;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Registration)] action in CustomMobileAppBar widget.
  ApiCallResponse? pKVerifyRegistrationResponse;
  // Stores action output result for [Custom Action - passkeyRegistrationVerifyPayload] action in CustomMobileAppBar widget.
  dynamic pKRegistrationVerifyPayload;
  // Stores action output result for [Custom Action - retrieveStoredData] action in CustomMobileAppBar widget.
  String? retrievedDevicePublicKey;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Registration)] action in CustomWebAppBar widget.
  ApiCallResponse? pKVerifyRegistrationResponse4;
  // Stores action output result for [Custom Action - passkeyRegistrationVerifyPayload] action in CustomWebAppBar widget.
  dynamic pKRegistrationVerifyPayload4;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in CustomWebAppBar widget.
  dynamic deviceKeypairOutput3;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Registration)] action in CustomWebAppBar widget.
  ApiCallResponse? pKVerifyRegistrationResponse3;
  // Stores action output result for [Custom Action - passkeyRegistrationVerifyPayload] action in CustomWebAppBar widget.
  dynamic pKRegistrationVerifyPayload3;
  // Stores action output result for [Custom Action - retrieveStoredData] action in CustomWebAppBar widget.
  String? retrievedDevicePublicKey2;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
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
    emptyListComponentModel.dispose();
    loadingStateComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
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

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
