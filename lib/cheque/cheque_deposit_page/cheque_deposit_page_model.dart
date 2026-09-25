import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/cheque/cheque_book_request_component/cheque_book_request_component_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cheque_deposit_page_widget.dart' show ChequeDepositPageWidget;
import 'package:flutter/material.dart';

class ChequeDepositPageModel extends FlutterFlowModel<ChequeDepositPageWidget> {
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

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Chequebook Eligible Accounts)] action in ChequeDepositPage widget.
  ApiCallResponse? apiResultdt9;
  // Stores action output result for [Backend Call - API (Get Balance By Account Number)] action in ChequeDepositPage widget.
  ApiCallResponse? apiResulthd5;
  // Stores action output result for [Custom Action - mergeAccountsWithBalancesV2] action in ChequeDepositPage widget.
  List<dynamic>? outputv2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for ChequeBookRequestComponent component.
  late ChequeBookRequestComponentModel chequeBookRequestComponentModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    chequeBookRequestComponentModel =
        createModel(context, () => ChequeBookRequestComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    chequeBookRequestComponentModel.dispose();
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
