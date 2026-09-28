import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inquire_check_status_page_widget.dart'
    show InquireCheckStatusPageWidget;
import 'package:flutter/material.dart';

class InquireCheckStatusPageModel
    extends FlutterFlowModel<InquireCheckStatusPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel1;
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    accountNameTextfieldModel1 =
        createModel(context, () => PrimaryTextFieldComponentModel());
    accountNameTextfieldModel2 =
        createModel(context, () => PrimaryTextFieldComponentModel());
  }

  @override
  void dispose() {
    accountNameTextfieldModel1.dispose();
    accountNameTextfieldModel2.dispose();
  }
}
