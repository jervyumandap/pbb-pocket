import '/components/provider_tile_billers_component/provider_tile_billers_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'group_section_billers_component_widget.dart'
    show GroupSectionBillersComponentWidget;
import 'package:flutter/material.dart';

class GroupSectionBillersComponentModel
    extends FlutterFlowModel<GroupSectionBillersComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ProviderTileBillersComponent component.
  late ProviderTileBillersComponentModel providerTileBillersComponentModel;

  @override
  void initState(BuildContext context) {
    providerTileBillersComponentModel =
        createModel(context, () => ProviderTileBillersComponentModel());
  }

  @override
  void dispose() {
    providerTileBillersComponentModel.dispose();
  }
}
