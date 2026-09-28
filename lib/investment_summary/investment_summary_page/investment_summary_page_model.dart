import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/investment_empty_list_component_widget.dart';
import '/components/loading_state_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/investment_summary/investment_summary_compoment/investment_summary_compoment_widget.dart';
import 'investment_summary_page_widget.dart' show InvestmentSummaryPageWidget;
import 'package:flutter/material.dart';

class InvestmentSummaryPageModel
    extends FlutterFlowModel<InvestmentSummaryPageWidget> {
  ///  Local state fields for this page.

  ProductsStruct? selectedTDProduct;
  void updateSelectedTDProductStruct(Function(ProductsStruct) updateFn) {
    updateFn(selectedTDProduct ??= ProductsStruct());
  }

  String? selectedProductCode = '123123';

  String? id;

  TimeDepositProductsModelStruct? products;
  void updateProductsStruct(Function(TimeDepositProductsModelStruct) updateFn) {
    updateFn(products ??= TimeDepositProductsModelStruct());
  }

  bool isLoading = true;

  List<dynamic> balances = [];
  void addToBalances(dynamic item) => balances.add(item);
  void removeFromBalances(dynamic item) => balances.remove(item);
  void removeAtIndexFromBalances(int index) => balances.removeAt(index);
  void insertAtIndexInBalances(int index, dynamic item) =>
      balances.insert(index, item);
  void updateBalancesAtIndex(int index, Function(dynamic) updateFn) =>
      balances[index] = updateFn(balances[index]);

  bool isRequestLimitReached = false;

  String? datePicked1;

  String? datePicked2;

  InvestmentSummaryStruct? investmentSummaryState;
  void updateInvestmentSummaryStateStruct(
      Function(InvestmentSummaryStruct) updateFn) {
    updateFn(investmentSummaryState ??= InvestmentSummaryStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Investments)] action in InvestmentSummaryPage widget.
  ApiCallResponse? apiResult3xzs;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Investments Statement)] action in Text widget.
  ApiCallResponse? apiResultgtx;
  // Model for investmentEmptyListComponent component.
  late InvestmentEmptyListComponentModel investmentEmptyListComponentModel;
  // Models for investmentSummaryCompoment dynamic component.
  late FlutterFlowDynamicModels<InvestmentSummaryCompomentModel>
      investmentSummaryCompomentModels;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for LoadingState component.
  late LoadingStateModel loadingStateModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    investmentEmptyListComponentModel =
        createModel(context, () => InvestmentEmptyListComponentModel());
    investmentSummaryCompomentModels =
        FlutterFlowDynamicModels(() => InvestmentSummaryCompomentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    loadingStateModel = createModel(context, () => LoadingStateModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    investmentEmptyListComponentModel.dispose();
    investmentSummaryCompomentModels.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
    loadingStateModel.dispose();
  }
}
