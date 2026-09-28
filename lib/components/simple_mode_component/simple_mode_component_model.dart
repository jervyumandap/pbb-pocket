import '/components/favorite_billers/favorite_billers_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'simple_mode_component_widget.dart' show SimpleModeComponentWidget;
import 'package:flutter/material.dart';

class SimpleModeComponentModel
    extends FlutterFlowModel<SimpleModeComponentWidget> {
  ///  Local state fields for this component.

  bool isWalletBalanceVisible = false;

  bool onChosenRecipient = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // Model for FavoriteBillers component.
  late FavoriteBillersModel favoriteBillersModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    favoriteBillersModel = createModel(context, () => FavoriteBillersModel());
  }

  @override
  void dispose() {
    favoriteBillersModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
