import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/latest_transactions_component/latest_transactions_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_detail_page_widget.dart' show AccountDetailPageWidget;
import 'package:flutter/material.dart';

class AccountDetailPageModel extends FlutterFlowModel<AccountDetailPageWidget> {
  ///  Local state fields for this page.

  bool? isAmountHidden = false;

  AccountBalanceStruct? accountBalance;
  void updateAccountBalanceStruct(Function(AccountBalanceStruct) updateFn) {
    updateFn(accountBalance ??= AccountBalanceStruct());
  }

  bool isLoading = true;

  double? balance;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Balance By Account Number)] action in AccountDetailPage widget.
  ApiCallResponse? accountBalanceResponse;
  // Stores action output result for [Backend Call - API (Retail Dashboard Account Transactions)] action in AccountDetailPage widget.
  ApiCallResponse? apiResult1nr;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for LatestTransactionsComponent component.
  late LatestTransactionsComponentModel latestTransactionsComponentModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    latestTransactionsComponentModel =
        createModel(context, () => LatestTransactionsComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    latestTransactionsComponentModel.dispose();
    loadingStateComponentModel.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
  }
}
