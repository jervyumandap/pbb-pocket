import '/flutter_flow/flutter_flow_util.dart';
import 'qr_add_amount_bottom_sheet_widget.dart'
    show QrAddAmountBottomSheetWidget;
import 'package:flutter/material.dart';

class QrAddAmountBottomSheetModel
    extends FlutterFlowModel<QrAddAmountBottomSheetWidget> {
  ///  Local state fields for this component.

  double? enteredAmount;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Currency-TextField widget.
  FocusNode? currencyTextFieldFocusNode1;
  TextEditingController? currencyTextFieldTextController1;
  String? Function(BuildContext, String?)?
      currencyTextFieldTextController1Validator;
  // State field(s) for Amount-TextField widget.
  FocusNode? amountTextFieldFocusNode1;
  TextEditingController? amountTextFieldTextController1;
  String? Function(BuildContext, String?)?
      amountTextFieldTextController1Validator;
  // State field(s) for Currency-TextField widget.
  FocusNode? currencyTextFieldFocusNode2;
  TextEditingController? currencyTextFieldTextController2;
  String? Function(BuildContext, String?)?
      currencyTextFieldTextController2Validator;
  // State field(s) for Amount-TextField widget.
  FocusNode? amountTextFieldFocusNode2;
  TextEditingController? amountTextFieldTextController2;
  String? Function(BuildContext, String?)?
      amountTextFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    currencyTextFieldFocusNode1?.dispose();
    currencyTextFieldTextController1?.dispose();

    amountTextFieldFocusNode1?.dispose();
    amountTextFieldTextController1?.dispose();

    currencyTextFieldFocusNode2?.dispose();
    currencyTextFieldTextController2?.dispose();

    amountTextFieldFocusNode2?.dispose();
    amountTextFieldTextController2?.dispose();
  }
}
