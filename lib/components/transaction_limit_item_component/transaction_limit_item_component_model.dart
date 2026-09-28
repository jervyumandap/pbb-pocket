import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_limit_item_component_widget.dart'
    show TransactionLimitItemComponentWidget;
import 'package:flutter/material.dart';

class TransactionLimitItemComponentModel
    extends FlutterFlowModel<TransactionLimitItemComponentWidget> {
  ///  Local state fields for this component.

  double amountLimitPerTransaction = 0.0;

  int id = 0;

  bool isExpanded = false;

  double? amountLimitDaily;

  String? limit;

  bool isTransacLimit = true;

  bool isDailyLimit = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Updated-Amount2nd widget.
  FocusNode? textFieldUpdatedAmount2ndFocusNode;
  TextEditingController? textFieldUpdatedAmount2ndTextController;
  String? Function(BuildContext, String?)?
      textFieldUpdatedAmount2ndTextControllerValidator;
  String? _textFieldUpdatedAmount2ndTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Daily Transfer Limit is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    if (!RegExp('^(?!0\$).+').hasMatch(val)) {
      return 'Please enter a value greater than 0';
    }
    return null;
  }

  // State field(s) for TextField-Updated-Amount widget.
  FocusNode? textFieldUpdatedAmountFocusNode;
  TextEditingController? textFieldUpdatedAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldUpdatedAmountTextControllerValidator;
  String? _textFieldUpdatedAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Per Transaction Limit is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    if (!RegExp('^(?!0\$).+').hasMatch(val)) {
      return 'Please enter a value greater than 0';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldUpdatedAmount2ndTextControllerValidator =
        _textFieldUpdatedAmount2ndTextControllerValidator;
    textFieldUpdatedAmountTextControllerValidator =
        _textFieldUpdatedAmountTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldUpdatedAmount2ndFocusNode?.dispose();
    textFieldUpdatedAmount2ndTextController?.dispose();

    textFieldUpdatedAmountFocusNode?.dispose();
    textFieldUpdatedAmountTextController?.dispose();
  }
}
