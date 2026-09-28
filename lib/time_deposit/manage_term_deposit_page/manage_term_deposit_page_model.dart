import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'manage_term_deposit_page_widget.dart' show ManageTermDepositPageWidget;
import 'package:flutter/material.dart';

class ManageTermDepositPageModel
    extends FlutterFlowModel<ManageTermDepositPageWidget> {
  ///  Local state fields for this page.

  TimeDepositOutputStruct? timeDepositState;
  void updateTimeDepositStateStruct(
      Function(TimeDepositOutputStruct) updateFn) {
    updateFn(timeDepositState ??= TimeDepositOutputStruct());
  }

  bool isloading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Time Deposits)] action in ManageTermDepositPage widget.
  ApiCallResponse? apiResultv7f;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    emptyListComponentModel.dispose();
    primaryButtonComponentModel.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
    loadingStateComponentModel.dispose();
  }
}
