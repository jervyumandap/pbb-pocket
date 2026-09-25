import '/components/account_details_component/account_details_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'expanding_container_widget.dart' show ExpandingContainerWidget;
import 'package:flutter/material.dart';

class ExpandingContainerModel
    extends FlutterFlowModel<ExpandingContainerWidget> {
  ///  Local state fields for this component.

  bool isExpanded = false;

  ///  State fields for stateful widgets in this component.

  // Model for AccountDetailsComponent component.
  late AccountDetailsComponentModel accountDetailsComponentModel1;
  // Model for AccountDetailsComponent component.
  late AccountDetailsComponentModel accountDetailsComponentModel2;
  // Model for AccountDetailsComponent component.
  late AccountDetailsComponentModel accountDetailsComponentModel3;

  @override
  void initState(BuildContext context) {
    accountDetailsComponentModel1 =
        createModel(context, () => AccountDetailsComponentModel());
    accountDetailsComponentModel2 =
        createModel(context, () => AccountDetailsComponentModel());
    accountDetailsComponentModel3 =
        createModel(context, () => AccountDetailsComponentModel());
  }

  @override
  void dispose() {
    accountDetailsComponentModel1.dispose();
    accountDetailsComponentModel2.dispose();
    accountDetailsComponentModel3.dispose();
  }
}
