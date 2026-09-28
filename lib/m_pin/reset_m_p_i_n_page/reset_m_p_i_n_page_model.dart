import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reset_m_p_i_n_page_widget.dart' show ResetMPINPageWidget;
import 'package:flutter/material.dart';

class ResetMPINPageModel extends FlutterFlowModel<ResetMPINPageWidget> {
  ///  Local state fields for this page.

  bool mpinErrror = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController1;
  FocusNode? pinCodeFocusNode1;
  String? Function(BuildContext, String?)? pinCodeController1Validator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController2;
  FocusNode? pinCodeFocusNode2;
  String? Function(BuildContext, String?)? pinCodeController2Validator;
  // Stores action output result for [Custom Action - hashMPIN] action in Button widget.
  String? hashMPIN;
  // Stores action output result for [Backend Call - API (UpdateMPin)] action in Button widget.
  ApiCallResponse? apiResult69v;

  @override
  void initState(BuildContext context) {
    pinCodeController1 = TextEditingController();
    pinCodeController2 = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode1?.dispose();
    pinCodeController1?.dispose();

    pinCodeFocusNode2?.dispose();
    pinCodeController2?.dispose();
  }
}
