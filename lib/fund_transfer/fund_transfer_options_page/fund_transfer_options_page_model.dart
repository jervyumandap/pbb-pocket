import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fund_transfer_options_page_widget.dart'
    show FundTransferOptionsPageWidget;
import 'package:flutter/material.dart';

class FundTransferOptionsPageModel
    extends FlutterFlowModel<FundTransferOptionsPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Beneficiaries)] action in FundTransferOptionsPage widget.
  ApiCallResponse? apiResultj46;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    emptyListComponentModel.dispose();
    customWebAppBarModel.dispose();
  }
}
