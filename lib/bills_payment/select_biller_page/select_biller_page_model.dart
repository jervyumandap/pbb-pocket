import '/bills_payment/group_section_billers_component/group_section_billers_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'select_biller_page_widget.dart' show SelectBillerPageWidget;
import 'package:flutter/material.dart';

class SelectBillerPageModel extends FlutterFlowModel<SelectBillerPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for GroupSectionBillersComponent component.
  late GroupSectionBillersComponentModel groupSectionBillersComponentModel;

  @override
  void initState(BuildContext context) {
    groupSectionBillersComponentModel =
        createModel(context, () => GroupSectionBillersComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    groupSectionBillersComponentModel.dispose();
  }
}
