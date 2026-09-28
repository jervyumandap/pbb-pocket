import '/flutter_flow/flutter_flow_util.dart';
import 'login_with_username_component_widget.dart'
    show LoginWithUsernameComponentWidget;
import 'package:flutter/material.dart';

class LoginWithUsernameComponentModel
    extends FlutterFlowModel<LoginWithUsernameComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField-Un widget.
  FocusNode? textFieldUnFocusNode;
  TextEditingController? textFieldUnTextController;
  String? Function(BuildContext, String?)? textFieldUnTextControllerValidator;
  // State field(s) for TextField-Pw widget.
  FocusNode? textFieldPwFocusNode;
  TextEditingController? textFieldPwTextController;
  late bool textFieldPwVisibility;
  String? Function(BuildContext, String?)? textFieldPwTextControllerValidator;

  @override
  void initState(BuildContext context) {
    textFieldPwVisibility = false;
  }

  @override
  void dispose() {
    textFieldUnFocusNode?.dispose();
    textFieldUnTextController?.dispose();

    textFieldPwFocusNode?.dispose();
    textFieldPwTextController?.dispose();
  }
}
