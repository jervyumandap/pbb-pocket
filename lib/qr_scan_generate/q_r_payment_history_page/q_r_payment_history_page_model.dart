import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/qr_scan_generate/transaction_item_component_v2/transaction_item_component_v2_widget.dart';
import '/index.dart';
import 'dart:async';
import 'q_r_payment_history_page_widget.dart' show QRPaymentHistoryPageWidget;
import 'package:flutter/material.dart';

class QRPaymentHistoryPageModel
    extends FlutterFlowModel<QRPaymentHistoryPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  String? filterFromDate;

  String? filterToDate;

  int? filterLimit = 10;

  int? filterOffset = 0;

  QrType? filterQrType = QrType.P2P;

  BPStatus? filterStatus = BPStatus.COMPLETED;

  ///  State fields for stateful widgets in this page.

  // Models for TransactionItemComponentV2 dynamic component.
  late FlutterFlowDynamicModels<TransactionItemComponentV2Model>
      transactionItemComponentV2Models;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    transactionItemComponentV2Models =
        FlutterFlowDynamicModels(() => TransactionItemComponentV2Model());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    transactionItemComponentV2Models.dispose();
    emptyListComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
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
