import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'statement_of_account_page_widget.dart'
    show StatementOfAccountPageWidget;
import 'package:flutter/material.dart';

class StatementOfAccountPageModel
    extends FlutterFlowModel<StatementOfAccountPageWidget> {
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

  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel1;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel2;

  @override
  void initState(BuildContext context) {
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
    emptyListComponentModel.dispose();
    mobileNavigationBarModel1.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
    mobileNavigationBarModel2.dispose();
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
