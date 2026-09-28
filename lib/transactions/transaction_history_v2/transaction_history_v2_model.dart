import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_item_component/transaction_item_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'transaction_history_v2_widget.dart' show TransactionHistoryV2Widget;
import 'package:flutter/material.dart';

class TransactionHistoryV2Model
    extends FlutterFlowModel<TransactionHistoryV2Widget> {
  ///  Local state fields for this page.

  List<RecentTransactionsStruct> transactions = [];
  void addToTransactions(RecentTransactionsStruct item) =>
      transactions.add(item);
  void removeFromTransactions(RecentTransactionsStruct item) =>
      transactions.remove(item);
  void removeAtIndexFromTransactions(int index) => transactions.removeAt(index);
  void insertAtIndexInTransactions(int index, RecentTransactionsStruct item) =>
      transactions.insert(index, item);
  void updateTransactionsAtIndex(
          int index, Function(RecentTransactionsStruct) updateFn) =>
      transactions[index] = updateFn(transactions[index]);

  bool isLoading = false;

  DateTime? filterFromDate;

  DateTime? filterToDate;

  bool isFundTransferSelected = true;

  BillsPaymentHistoryModelStruct? billsPaymentHistory;
  void updateBillsPaymentHistoryStruct(
      Function(BillsPaymentHistoryModelStruct) updateFn) {
    updateFn(billsPaymentHistory ??= BillsPaymentHistoryModelStruct());
  }

  TransferHistoryModelStruct? transferHistoryModel;
  void updateTransferHistoryModelStruct(
      Function(TransferHistoryModelStruct) updateFn) {
    updateFn(transferHistoryModel ??= TransferHistoryModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Bills Payment History)] action in TransactionHistoryV2 widget.
  ApiCallResponse? apiResultfx8;
  // Stores action output result for [Backend Call - API (Get Transfer History)] action in TransactionHistoryV2 widget.
  ApiCallResponse? apiResultya0;
  // Models for TransactionItemComponent dynamic component.
  late FlutterFlowDynamicModels<TransactionItemComponentModel>
      transactionItemComponentModels;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel1;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel2;

  @override
  void initState(BuildContext context) {
    transactionItemComponentModels =
        FlutterFlowDynamicModels(() => TransactionItemComponentModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    mobileNavigationBarModel1 =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    mobileNavigationBarModel2 =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    transactionItemComponentModels.dispose();
    emptyListComponentModel.dispose();
    mobileNavigationBarModel1.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
    mobileNavigationBarModel2.dispose();
  }
}
