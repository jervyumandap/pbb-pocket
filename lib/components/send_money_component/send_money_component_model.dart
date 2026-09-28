import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/send_money_manually_component/send_money_manually_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'send_money_component_widget.dart' show SendMoneyComponentWidget;
import 'package:flutter/material.dart';

class SendMoneyComponentModel
    extends FlutterFlowModel<SendMoneyComponentWidget> {
  ///  Local state fields for this component.

  bool onTap = false;

  bool isConfirm = false;

  bool isSuccess = false;

  double? amountSelected;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for SendMoneyManuallyComponent component.
  late SendMoneyManuallyComponentModel sendMoneyManuallyComponentModel;
  // Stores action output result for [Custom Action - genReferenceNumber] action in SendMoneyManuallyComponent widget.
  String? referenceNumber13;
  // State field(s) for BankDropdown widget.
  String? bankDropdownValue;
  FormFieldController<String>? bankDropdownValueController;
  // Model for textfieldDouble component.
  late TextfieldDoubleModel textfieldDoubleModel;
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel;
  // Model for RemarksTextfield.
  late PrimaryTextFieldComponentModel remarksTextfieldModel;
  // Model for textfieldAmountDouble.
  late TextfieldDoubleModel textfieldAmountDoubleModel;

  @override
  void initState(BuildContext context) {
    sendMoneyManuallyComponentModel =
        createModel(context, () => SendMoneyManuallyComponentModel());
    textfieldDoubleModel = createModel(context, () => TextfieldDoubleModel());
    accountNameTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    remarksTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    textfieldAmountDoubleModel =
        createModel(context, () => TextfieldDoubleModel());
    textfieldDoubleModel.textControllerValidator = _formTextFieldValidator1;
    accountNameTextfieldModel.textControllerValidator =
        _formTextFieldValidator2;
    textfieldAmountDoubleModel.textControllerValidator =
        _formTextFieldValidator3;
  }

  @override
  void dispose() {
    sendMoneyManuallyComponentModel.dispose();
    textfieldDoubleModel.dispose();
    accountNameTextfieldModel.dispose();
    remarksTextfieldModel.dispose();
    textfieldAmountDoubleModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Account Number is required';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Account Name is required';
    }

    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Amount is required';
    }

    return null;
  }
}
