import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/scheduled_payment_item_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'scheduled_pay_bills_page_widget.dart' show ScheduledPayBillsPageWidget;
import 'package:flutter/material.dart';

class ScheduledPayBillsPageModel
    extends FlutterFlowModel<ScheduledPayBillsPageWidget> {
  ///  Local state fields for this page.

  WBBPSubmitParametersStruct? submitBody;
  void updateSubmitBodyStruct(Function(WBBPSubmitParametersStruct) updateFn) {
    updateFn(submitBody ??= WBBPSubmitParametersStruct());
  }

  double? enteredAmount = 0.0;

  TransactionScheduleType? scheduleType = TransactionScheduleType.DAILY;

  String? amountFieldError;

  ///  State fields for stateful widgets in this page.

  // Models for ScheduledPaymentItemComponent dynamic component.
  late FlutterFlowDynamicModels<ScheduledPaymentItemComponentModel>
      scheduledPaymentItemComponentModels;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Cancel)] action in ScheduledPaymentItemComponent widget.
  ApiCallResponse? scheduledBPCancelResponse;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    scheduledPaymentItemComponentModels =
        FlutterFlowDynamicModels(() => ScheduledPaymentItemComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    scheduledPaymentItemComponentModels.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Action blocks.
  Future getBillerList(BuildContext context) async {}

  Future getSavedBillers(BuildContext context) async {}

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
