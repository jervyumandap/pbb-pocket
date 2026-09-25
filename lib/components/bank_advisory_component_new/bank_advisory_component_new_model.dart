import '/flutter_flow/flutter_flow_util.dart';
import 'bank_advisory_component_new_widget.dart'
    show BankAdvisoryComponentNewWidget;
import 'package:flutter/material.dart';

class BankAdvisoryComponentNewModel
    extends FlutterFlowModel<BankAdvisoryComponentNewWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
