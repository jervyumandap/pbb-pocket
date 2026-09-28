import '/flutter_flow/flutter_flow_util.dart';
import 'register_m_p_i_n_page_widget.dart' show RegisterMPINPageWidget;
import 'package:flutter/material.dart';

class RegisterMPINPageModel extends FlutterFlowModel<RegisterMPINPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField-Password widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  // State field(s) for TextField-Confirm-Password widget.
  FocusNode? textFieldConfirmPasswordFocusNode;
  TextEditingController? textFieldConfirmPasswordTextController;
  late bool textFieldConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfirmPasswordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    textFieldPasswordVisibility = false;
    textFieldConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    textFieldConfirmPasswordFocusNode?.dispose();
    textFieldConfirmPasswordTextController?.dispose();
  }
}
