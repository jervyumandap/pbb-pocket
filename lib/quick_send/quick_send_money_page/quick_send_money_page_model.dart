import '/flutter_flow/flutter_flow_util.dart';
import '/quick_send/component/custom_choice_chips_amount_component/custom_choice_chips_amount_component_widget.dart';
import 'quick_send_money_page_widget.dart' show QuickSendMoneyPageWidget;
import 'package:flutter/material.dart';

class QuickSendMoneyPageModel
    extends FlutterFlowModel<QuickSendMoneyPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for customChoiceChipsAmountComponent component.
  late CustomChoiceChipsAmountComponentModel
      customChoiceChipsAmountComponentModel;

  @override
  void initState(BuildContext context) {
    customChoiceChipsAmountComponentModel =
        createModel(context, () => CustomChoiceChipsAmountComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customChoiceChipsAmountComponentModel.dispose();
  }
}
