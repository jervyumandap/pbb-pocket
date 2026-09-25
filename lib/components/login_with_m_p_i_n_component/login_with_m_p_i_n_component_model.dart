import '/flutter_flow/flutter_flow_util.dart';
import 'login_with_m_p_i_n_component_widget.dart'
    show LoginWithMPINComponentWidget;
import 'package:flutter/material.dart';

class LoginWithMPINComponentModel
    extends FlutterFlowModel<LoginWithMPINComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
