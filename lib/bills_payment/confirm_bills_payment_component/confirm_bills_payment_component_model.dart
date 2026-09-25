import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/component/reusable_container_payment_details_component/reusable_container_payment_details_component_widget.dart';
import '/fund_transfer/confirm_payment_with_text_component/confirm_payment_with_text_component_widget.dart';
import 'confirm_bills_payment_component_widget.dart'
    show ConfirmBillsPaymentComponentWidget;
import 'package:flutter/material.dart';

class ConfirmBillsPaymentComponentModel
    extends FlutterFlowModel<ConfirmBillsPaymentComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ConfirmPaymentWithTextComponent component.
  late ConfirmPaymentWithTextComponentModel
      confirmPaymentWithTextComponentModel;
  // Model for ReusableContainerPaymentDetailsComponent component.
  late ReusableContainerPaymentDetailsComponentModel
      reusableContainerPaymentDetailsComponentModel;

  @override
  void initState(BuildContext context) {
    confirmPaymentWithTextComponentModel =
        createModel(context, () => ConfirmPaymentWithTextComponentModel());
    reusableContainerPaymentDetailsComponentModel = createModel(
        context, () => ReusableContainerPaymentDetailsComponentModel());
  }

  @override
  void dispose() {
    confirmPaymentWithTextComponentModel.dispose();
    reusableContainerPaymentDetailsComponentModel.dispose();
  }
}
