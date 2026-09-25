import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/components/side_menu_item_widget/side_menu_item_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobile_navigation_bar_n_o_q_r_widget.dart'
    show MobileNavigationBarNOQRWidget;
import 'package:flutter/material.dart';

class MobileNavigationBarNOQRModel
    extends FlutterFlowModel<MobileNavigationBarNOQRWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel1;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel2;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel3;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel4;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel5;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel6;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel7;
  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel8;
  // Model for IconButtonBadge-Home.
  late IconButtonBadgeModel iconButtonBadgeHomeModel;
  // Model for IconButtonBadge-PayBills.
  late IconButtonBadgeModel iconButtonBadgePayBillsModel;
  // Model for IconButtonBadge-eBilling.
  late IconButtonBadgeModel iconButtonBadgeEBillingModel;
  // Model for IconButtonBadge-Recipients.
  late IconButtonBadgeModel iconButtonBadgeRecipientsModel;
  // Model for IconButtonBadge-Profile.
  late IconButtonBadgeModel iconButtonBadgeProfileModel;

  @override
  void initState(BuildContext context) {
    sideMenuItemWidgetModel1 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel2 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel3 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel4 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel5 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel6 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel7 =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetModel8 =
        createModel(context, () => SideMenuItemWidgetModel());
    iconButtonBadgeHomeModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgePayBillsModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeEBillingModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeRecipientsModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeProfileModel =
        createModel(context, () => IconButtonBadgeModel());
  }

  @override
  void dispose() {
    sideMenuItemWidgetModel1.dispose();
    sideMenuItemWidgetModel2.dispose();
    sideMenuItemWidgetModel3.dispose();
    sideMenuItemWidgetModel4.dispose();
    sideMenuItemWidgetModel5.dispose();
    sideMenuItemWidgetModel6.dispose();
    sideMenuItemWidgetModel7.dispose();
    sideMenuItemWidgetModel8.dispose();
    iconButtonBadgeHomeModel.dispose();
    iconButtonBadgePayBillsModel.dispose();
    iconButtonBadgeEBillingModel.dispose();
    iconButtonBadgeRecipientsModel.dispose();
    iconButtonBadgeProfileModel.dispose();
  }
}
