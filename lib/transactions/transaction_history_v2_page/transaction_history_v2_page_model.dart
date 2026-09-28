import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/filter_tags_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_item_component/transaction_item_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'transaction_history_v2_page_widget.dart'
    show TransactionHistoryV2PageWidget;
import 'package:flutter/material.dart';

class TransactionHistoryV2PageModel
    extends FlutterFlowModel<TransactionHistoryV2PageWidget> {
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

  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel1;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel2;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel3;
  // Models for TransactionItemComponent dynamic component.
  late FlutterFlowDynamicModels<TransactionItemComponentModel>
      transactionItemComponentModels;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;

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
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    filterTagsComponentModel1 =
        createModel(context, () => FilterTagsComponentModel());
    filterTagsComponentModel2 =
        createModel(context, () => FilterTagsComponentModel());
    filterTagsComponentModel3 =
        createModel(context, () => FilterTagsComponentModel());
    transactionItemComponentModels =
        FlutterFlowDynamicModels(() => TransactionItemComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    filterTagsComponentModel1.dispose();
    filterTagsComponentModel2.dispose();
    filterTagsComponentModel3.dispose();
    transactionItemComponentModels.dispose();
    loadingStateComponentModel.dispose();
    customMobileAppBarModel.dispose();

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
