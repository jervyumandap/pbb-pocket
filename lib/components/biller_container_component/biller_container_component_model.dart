import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'biller_container_component_widget.dart'
    show BillerContainerComponentWidget;
import 'package:flutter/material.dart';

class BillerContainerComponentModel
    extends FlutterFlowModel<BillerContainerComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;

  @override
  void initState(BuildContext context) {
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
  }

  @override
  void dispose() {
    primaryButtonComponentModel.dispose();
  }
}
