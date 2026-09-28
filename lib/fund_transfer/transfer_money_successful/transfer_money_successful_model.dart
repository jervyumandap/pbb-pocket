import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/successful_transaction_scheduled_for_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'transfer_money_successful_widget.dart'
    show TransferMoneySuccessfulWidget;
import 'package:flutter/material.dart';

class TransferMoneySuccessfulModel
    extends FlutterFlowModel<TransferMoneySuccessfulWidget> {
  ///  Local state fields for this page.

  bool isHide = true;

  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for successfulTransactionScheduledForComponent component.
  late SuccessfulTransactionScheduledForComponentModel
      successfulTransactionScheduledForComponentModel;
  // Stores action output result for [Custom Action - makeScreenshotAndShare] action in Column widget.
  bool? ssOutput;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    successfulTransactionScheduledForComponentModel = createModel(
        context, () => SuccessfulTransactionScheduledForComponentModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    successfulTransactionScheduledForComponentModel.dispose();
  }
}
