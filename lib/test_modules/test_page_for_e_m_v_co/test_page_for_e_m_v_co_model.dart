import '/flutter_flow/flutter_flow_util.dart';
import 'test_page_for_e_m_v_co_widget.dart' show TestPageForEMVCoWidget;
import 'package:flutter/material.dart';

class TestPageForEMVCoModel extends FlutterFlowModel<TestPageForEMVCoWidget> {
  ///  Local state fields for this page.

  String? parseEmvco = '-';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tf-description widget.
  FocusNode? tfDescriptionFocusNode;
  TextEditingController? tfDescriptionTextController;
  String? Function(BuildContext, String?)? tfDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfDescriptionFocusNode?.dispose();
    tfDescriptionTextController?.dispose();
  }
}
