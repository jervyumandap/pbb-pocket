import '/components/send_money_via_component/send_money_via_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_money_via_favorites_component_widget.dart'
    show SendMoneyViaFavoritesComponentWidget;
import 'package:flutter/material.dart';

class SendMoneyViaFavoritesComponentModel
    extends FlutterFlowModel<SendMoneyViaFavoritesComponentWidget> {
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
