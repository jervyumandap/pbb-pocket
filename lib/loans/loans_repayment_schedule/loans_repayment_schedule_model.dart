import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loans_repayment_schedule_widget.dart' show LoansRepaymentScheduleWidget;
import 'package:flutter/material.dart';

class LoansRepaymentScheduleModel
    extends FlutterFlowModel<LoansRepaymentScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel1;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel2;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel1 =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel2 =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel1.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel2.dispose();
  }

  /// Action blocks.
  Future getBillerList(BuildContext context) async {}

  Future getSavedBillers(BuildContext context) async {}
}
