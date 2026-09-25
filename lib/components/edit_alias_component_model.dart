import '/backend/api_requests/api_calls.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_alias_component_widget.dart' show EditAliasComponentWidget;
import 'package:flutter/material.dart';

class EditAliasComponentModel
    extends FlutterFlowModel<EditAliasComponentWidget> {
  ///  Local state fields for this component.

  bool radioButtonClicked = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel1;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel2;
  // Stores action output result for [Backend Call - API (Patch Alias)] action in PrimaryButtonComponent widget.
  ApiCallResponse? apiResult8rv;

  @override
  void initState(BuildContext context) {
    accountNameTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryButtonComponentModel1 =
        createModel(context, () => PrimaryButtonComponentModel());
    primaryButtonComponentModel2 =
        createModel(context, () => PrimaryButtonComponentModel());
    accountNameTextfieldModel.textControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    accountNameTextfieldModel.dispose();
    primaryButtonComponentModel1.dispose();
    primaryButtonComponentModel2.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'initialValue is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  String? get radioButtonValue => radioButtonValueController?.value;
}
