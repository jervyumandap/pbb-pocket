import '/flutter_flow/flutter_flow_util.dart';
import 'top_up_money_component_widget.dart' show TopUpMoneyComponentWidget;
import 'package:flutter/material.dart';

class TopUpMoneyComponentModel
    extends FlutterFlowModel<TopUpMoneyComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-Payment-Amount widget.
  FocusNode? textFieldPaymentAmountFocusNode;
  TextEditingController? textFieldPaymentAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldPaymentAmountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldPaymentAmountFocusNode?.dispose();
    textFieldPaymentAmountTextController?.dispose();
  }
}
