import '/flutter_flow/flutter_flow_util.dart';
import '/quick_send/component/custom_choice_chips_amount_component/custom_choice_chips_amount_component_widget.dart';
import 'quick_send_component_widget.dart' show QuickSendComponentWidget;
import 'package:flutter/material.dart';

class QuickSendComponentModel
    extends FlutterFlowModel<QuickSendComponentWidget> {
  ///  Local state fields for this component.

  bool isSendMoneyClicked = false;

  String? image;

  bool isDraggedCpmpleted = false;

  bool success = false;

  bool successStop = false;

  ///  State fields for stateful widgets in this component.

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
