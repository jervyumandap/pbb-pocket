import '/flutter_flow/flutter_flow_util.dart';
import 'primary_text_field_component_widget.dart'
    show PrimaryTextFieldComponentWidget;
import 'package:flutter/material.dart';

class PrimaryTextFieldComponentModel
    extends FlutterFlowModel<PrimaryTextFieldComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
