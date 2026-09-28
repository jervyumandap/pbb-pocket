import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/scheduled_transactiont_item_component_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fund_transfer_scheduled_payment_page_widget.dart'
    show FundTransferScheduledPaymentPageWidget;
import 'package:flutter/material.dart';

class FundTransferScheduledPaymentPageModel
    extends FlutterFlowModel<FundTransferScheduledPaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Models for ScheduledTransactiontItemComponentCopy dynamic component.
  late FlutterFlowDynamicModels<ScheduledTransactiontItemComponentCopyModel>
      scheduledTransactiontItemComponentCopyModels;
  // Stores action output result for [Backend Call - API ( Retail Scheduled Transfers ID)] action in ScheduledTransactiontItemComponentCopy widget.
  ApiCallResponse? apiResultpb9;
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
    scheduledTransactiontItemComponentCopyModels = FlutterFlowDynamicModels(
        () => ScheduledTransactiontItemComponentCopyModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    scheduledTransactiontItemComponentCopyModels.dispose();
    emptyListComponentModel.dispose();
    customWebAppBarModel.dispose();
  }
}
