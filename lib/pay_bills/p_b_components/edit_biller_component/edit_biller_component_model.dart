import '/flutter_flow/flutter_flow_util.dart';
import 'edit_biller_component_widget.dart' show EditBillerComponentWidget;
import 'package:flutter/material.dart';

class EditBillerComponentModel
    extends FlutterFlowModel<EditBillerComponentWidget> {
  ///  Local state fields for this component.

  bool? isEdit = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-AccountName widget.
  FocusNode? textFieldAccountNameFocusNode;
  TextEditingController? textFieldAccountNameTextController;
  String? Function(BuildContext, String?)?
      textFieldAccountNameTextControllerValidator;
  // State field(s) for TextField-AccountNumber widget.
  FocusNode? textFieldAccountNumberFocusNode;
  TextEditingController? textFieldAccountNumberTextController;
  String? Function(BuildContext, String?)?
      textFieldAccountNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldAccountNameFocusNode?.dispose();
    textFieldAccountNameTextController?.dispose();

    textFieldAccountNumberFocusNode?.dispose();
    textFieldAccountNumberTextController?.dispose();
  }
}
