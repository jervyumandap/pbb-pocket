import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custom_mobile_bottom_sheet_widget.dart'
    show CustomMobileBottomSheetWidget;
import 'package:flutter/material.dart';

class CustomMobileBottomSheetModel
    extends FlutterFlowModel<CustomMobileBottomSheetWidget> {
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
