import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'check_deposit_guide_widget.dart' show CheckDepositGuideWidget;
import 'package:flutter/material.dart';

class CheckDepositGuideModel extends FlutterFlowModel<CheckDepositGuideWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
