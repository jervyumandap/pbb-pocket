import '/backend/api_requests/api_calls.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'save_biller_modal_v2_widget.dart' show SaveBillerModalV2Widget;
import 'package:flutter/material.dart';

class SaveBillerModalV2Model extends FlutterFlowModel<SaveBillerModalV2Widget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for NicknameTextfield.
  late PrimaryTextFieldComponentModel nicknameTextfieldModel;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel1;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel2;
  // Stores action output result for [Backend Call - API (Retail Saved Billers Add)] action in PrimaryButtonComponent widget.
  ApiCallResponse? apiResultyp3;

  @override
  void initState(BuildContext context) {
    nicknameTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryButtonComponentModel1 =
        createModel(context, () => PrimaryButtonComponentModel());
    primaryButtonComponentModel2 =
        createModel(context, () => PrimaryButtonComponentModel());
    nicknameTextfieldModel.textControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    nicknameTextfieldModel.dispose();
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
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }
}
