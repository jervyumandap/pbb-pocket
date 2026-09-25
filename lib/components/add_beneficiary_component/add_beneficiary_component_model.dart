import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_beneficiary_component_widget.dart'
    show AddBeneficiaryComponentWidget;
import 'package:flutter/material.dart';

class AddBeneficiaryComponentModel
    extends FlutterFlowModel<AddBeneficiaryComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel1;
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel2;

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
