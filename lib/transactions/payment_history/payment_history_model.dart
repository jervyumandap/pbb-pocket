import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/bills_payment_item_component_copy/bills_payment_item_component_copy_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'dart:async';
import 'payment_history_widget.dart' show PaymentHistoryWidget;
import 'package:flutter/material.dart';

class PaymentHistoryModel extends FlutterFlowModel<PaymentHistoryWidget> {
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

  bool isFundTransferSelected = false;

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

  // Models for BillsPaymentItemComponentCopy dynamic component.
  late FlutterFlowDynamicModels<BillsPaymentItemComponentCopyModel>
      billsPaymentItemComponentCopyModels;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel1;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel2;

  /// Query cache managers for this widget.

  final _transactionHistoryQueryManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> transactionHistoryQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _transactionHistoryQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTransactionHistoryQueryCache() =>
      _transactionHistoryQueryManager.clear();
  void clearTransactionHistoryQueryCacheKey(String? uniqueKey) =>
      _transactionHistoryQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    billsPaymentItemComponentCopyModels =
        FlutterFlowDynamicModels(() => BillsPaymentItemComponentCopyModel());
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
    billsPaymentItemComponentCopyModels.dispose();
    emptyListComponentModel.dispose();
    mobileNavigationBarModel1.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
    mobileNavigationBarModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearTransactionHistoryQueryCache();
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
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
