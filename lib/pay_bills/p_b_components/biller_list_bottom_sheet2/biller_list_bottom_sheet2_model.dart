import '/flutter_flow/flutter_flow_util.dart';
import '/pay_bills/p_b_components/biller_tile_component/biller_tile_component_widget.dart';
import 'biller_list_bottom_sheet2_widget.dart'
    show BillerListBottomSheet2Widget;
import 'package:flutter/material.dart';

class BillerListBottomSheet2Model
    extends FlutterFlowModel<BillerListBottomSheet2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BillerTileComponent component.
  late BillerTileComponentModel billerTileComponentModel1;
  // Model for BillerTileComponent component.
  late BillerTileComponentModel billerTileComponentModel2;

  @override
  void initState(BuildContext context) {
    billerTileComponentModel1 =
        createModel(context, () => BillerTileComponentModel());
    billerTileComponentModel2 =
        createModel(context, () => BillerTileComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    billerTileComponentModel1.dispose();
    billerTileComponentModel2.dispose();
  }
}
