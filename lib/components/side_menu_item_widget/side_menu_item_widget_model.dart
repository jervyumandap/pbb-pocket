import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_menu_item_widget_widget.dart' show SideMenuItemWidgetWidget;
import 'package:flutter/material.dart';

class SideMenuItemWidgetModel
    extends FlutterFlowModel<SideMenuItemWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MenuItemMouseRegion widget.
  bool menuItemMouseRegionHovered = false;
  // Model for IconButtonBadge component.
  late IconButtonBadgeModel iconButtonBadgeModel;

  @override
  void initState(BuildContext context) {
    iconButtonBadgeModel = createModel(context, () => IconButtonBadgeModel());
  }

  @override
  void dispose() {
    iconButtonBadgeModel.dispose();
  }
}
