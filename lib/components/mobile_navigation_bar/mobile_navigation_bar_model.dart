import '/backend/schema/structs/index.dart';
import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/components/side_menu_item_widget/side_menu_item_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobile_navigation_bar_widget.dart' show MobileNavigationBarWidget;
import 'package:flutter/material.dart';

class MobileNavigationBarModel
    extends FlutterFlowModel<MobileNavigationBarWidget> {
  ///  Local state fields for this component.

  ParsedEMVCoDataModelStruct? qrDataParsed;
  void updateQrDataParsedStruct(Function(ParsedEMVCoDataModelStruct) updateFn) {
    updateFn(qrDataParsed ??= ParsedEMVCoDataModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for SideMenuItemWidget component.
  late SideMenuItemWidgetModel sideMenuItemWidgetModel;
  // Model for ManageAccounts-SideMenuItemWidget.
  late SideMenuItemWidgetModel manageAccountsSideMenuItemWidgetModel;
  // Model for SideMenuItemWidget-Inbox.
  late SideMenuItemWidgetModel sideMenuItemWidgetInboxModel;
  // Model for BP-SideMenuItemWidget.
  late SideMenuItemWidgetModel bPSideMenuItemWidgetModel;
  // Model for QR-SideMenuItemWidget.
  late SideMenuItemWidgetModel qRSideMenuItemWidgetModel;
  // Model for History-SideMenuItemWidget.
  late SideMenuItemWidgetModel historySideMenuItemWidgetModel;
  // Model for Loans-SideMenuItemWidget.
  late SideMenuItemWidgetModel loansSideMenuItemWidgetModel1;
  // Model for Settings-SideMenuItemWidget.
  late SideMenuItemWidgetModel settingsSideMenuItemWidgetModel;
  // Model for Investments-SideMenuItemWidget.
  late SideMenuItemWidgetModel investmentsSideMenuItemWidgetModel;
  // Model for Loans-SideMenuItemWidget.
  late SideMenuItemWidgetModel loansSideMenuItemWidgetModel2;
  // Model for Loans-SideMenuItemWidget.
  late SideMenuItemWidgetModel loansSideMenuItemWidgetModel3;
  // Model for Loans-SideMenuItemWidget.
  late SideMenuItemWidgetModel loansSideMenuItemWidgetModel4;
  // Model for Loans-SideMenuItemWidget.
  late SideMenuItemWidgetModel loansSideMenuItemWidgetModel5;
  // Model for IconButtonBadge-Home.
  late IconButtonBadgeModel iconButtonBadgeHomeModel;
  // Model for IconButtonBadge-Inbox.
  late IconButtonBadgeModel iconButtonBadgeInboxModel;
  // Model for IconButtonBadge-Recipients.
  late IconButtonBadgeModel iconButtonBadgeRecipientsModel;
  // Model for IconButtonBadge-Profile.
  late IconButtonBadgeModel iconButtonBadgeProfileModel;

  @override
  void initState(BuildContext context) {
    sideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    manageAccountsSideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    sideMenuItemWidgetInboxModel =
        createModel(context, () => SideMenuItemWidgetModel());
    bPSideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    qRSideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    historySideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    loansSideMenuItemWidgetModel1 =
        createModel(context, () => SideMenuItemWidgetModel());
    settingsSideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    investmentsSideMenuItemWidgetModel =
        createModel(context, () => SideMenuItemWidgetModel());
    loansSideMenuItemWidgetModel2 =
        createModel(context, () => SideMenuItemWidgetModel());
    loansSideMenuItemWidgetModel3 =
        createModel(context, () => SideMenuItemWidgetModel());
    loansSideMenuItemWidgetModel4 =
        createModel(context, () => SideMenuItemWidgetModel());
    loansSideMenuItemWidgetModel5 =
        createModel(context, () => SideMenuItemWidgetModel());
    iconButtonBadgeHomeModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeInboxModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeRecipientsModel =
        createModel(context, () => IconButtonBadgeModel());
    iconButtonBadgeProfileModel =
        createModel(context, () => IconButtonBadgeModel());
  }

  @override
  void dispose() {
    sideMenuItemWidgetModel.dispose();
    manageAccountsSideMenuItemWidgetModel.dispose();
    sideMenuItemWidgetInboxModel.dispose();
    bPSideMenuItemWidgetModel.dispose();
    qRSideMenuItemWidgetModel.dispose();
    historySideMenuItemWidgetModel.dispose();
    loansSideMenuItemWidgetModel1.dispose();
    settingsSideMenuItemWidgetModel.dispose();
    investmentsSideMenuItemWidgetModel.dispose();
    loansSideMenuItemWidgetModel2.dispose();
    loansSideMenuItemWidgetModel3.dispose();
    loansSideMenuItemWidgetModel4.dispose();
    loansSideMenuItemWidgetModel5.dispose();
    iconButtonBadgeHomeModel.dispose();
    iconButtonBadgeInboxModel.dispose();
    iconButtonBadgeRecipientsModel.dispose();
    iconButtonBadgeProfileModel.dispose();
  }
}
