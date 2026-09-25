import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'm_p_i_n_setup_widget.dart' show MPINSetupWidget;
import 'package:flutter/material.dart';

class MPINSetupModel extends FlutterFlowModel<MPINSetupWidget> {
  ///  Local state fields for this page.

  bool mpinDoesNotMatch = false;

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
  // Stores action output result for [Backend Call - API (SetupMPIN)] action in Button widget.
  ApiCallResponse? apiResult69v;
  // Stores action output result for [Backend Call - API (UpdateMPin)] action in Button widget.
  ApiCallResponse? apiResultS69v;

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
