import '/flutter_flow/flutter_flow_util.dart';
import 'select_payment_to_biller_widget.dart' show SelectPaymentToBillerWidget;
import 'package:flutter/material.dart';

class SelectPaymentToBillerModel
    extends FlutterFlowModel<SelectPaymentToBillerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-AccountNum widget.
  FocusNode? textFieldAccountNumFocusNode;
  TextEditingController? textFieldAccountNumTextController;
  String? Function(BuildContext, String?)?
      textFieldAccountNumTextControllerValidator;
  // State field(s) for TextField-BillNum widget.
  FocusNode? textFieldBillNumFocusNode;
  TextEditingController? textFieldBillNumTextController;
  String? Function(BuildContext, String?)?
      textFieldBillNumTextControllerValidator;
  // State field(s) for TextField-RefNum widget.
  FocusNode? textFieldRefNumFocusNode;
  TextEditingController? textFieldRefNumTextController;
  String? Function(BuildContext, String?)?
      textFieldRefNumTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldAccountNumFocusNode?.dispose();
    textFieldAccountNumTextController?.dispose();

    textFieldBillNumFocusNode?.dispose();
    textFieldBillNumTextController?.dispose();

    textFieldRefNumFocusNode?.dispose();
    textFieldRefNumTextController?.dispose();
  }
}
