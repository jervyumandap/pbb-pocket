import '/components/send_money_via_component/send_money_via_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_money_via_enrolled_list_component_widget.dart'
    show SendMoneyViaEnrolledListComponentWidget;
import 'package:flutter/material.dart';

class SendMoneyViaEnrolledListComponentModel
    extends FlutterFlowModel<SendMoneyViaEnrolledListComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SendMoneyViaComponent component.
  late SendMoneyViaComponentModel sendMoneyViaComponentModel;

  @override
  void initState(BuildContext context) {
    sendMoneyViaComponentModel =
        createModel(context, () => SendMoneyViaComponentModel());
  }

  @override
  void dispose() {
    sendMoneyViaComponentModel.dispose();
  }
}
