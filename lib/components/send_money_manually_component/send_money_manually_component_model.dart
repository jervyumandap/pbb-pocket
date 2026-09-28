import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_money_manually_component_widget.dart'
    show SendMoneyManuallyComponentWidget;
import 'package:flutter/material.dart';

class SendMoneyManuallyComponentModel
    extends FlutterFlowModel<SendMoneyManuallyComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PrimaryTextFieldComponent component.
  late PrimaryTextFieldComponentModel primaryTextFieldComponentModel1;
  // Model for PrimaryTextFieldComponent component.
  late PrimaryTextFieldComponentModel primaryTextFieldComponentModel2;
  // Model for PrimaryTextFieldComponent component.
  late PrimaryTextFieldComponentModel primaryTextFieldComponentModel3;
  // Model for PrimaryTextFieldComponent component.
  late PrimaryTextFieldComponentModel primaryTextFieldComponentModel4;

  @override
  void initState(BuildContext context) {
    primaryTextFieldComponentModel1 =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryTextFieldComponentModel2 =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryTextFieldComponentModel3 =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryTextFieldComponentModel4 =
        createModel(context, () => PrimaryTextFieldComponentModel());
  }

  @override
  void dispose() {
    primaryTextFieldComponentModel1.dispose();
    primaryTextFieldComponentModel2.dispose();
    primaryTextFieldComponentModel3.dispose();
    primaryTextFieldComponentModel4.dispose();
  }
}
