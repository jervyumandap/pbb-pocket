import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'custom_web_app_bar_widget.dart' show CustomWebAppBarWidget;
import 'package:flutter/material.dart';

class CustomWebAppBarModel extends FlutterFlowModel<CustomWebAppBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconButtonBadge-A.
  late IconButtonBadgeModel iconButtonBadgeAModel1;
  // Model for IconButtonBadge-A.
  late IconButtonBadgeModel iconButtonBadgeAModel2;
  // Model for IconButtonBadge-B.
  late IconButtonBadgeModel iconButtonBadgeBModel;
  // Model for IconButtonBadge-C.
  late IconButtonBadgeModel iconButtonBadgeCModel;

  @override
  void initState(BuildContext context) {
    iconButtonBadgeAModel1 = createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeAModel2 = createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeBModel = createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeCModel = createModel(context, () => IconButtonBadgeModel());
  }

  @override
  void dispose() {
    iconButtonBadgeAModel1.dispose();
    iconButtonBadgeAModel2.dispose();
    iconButtonBadgeBModel.dispose();
    iconButtonBadgeCModel.dispose();
  }
}
