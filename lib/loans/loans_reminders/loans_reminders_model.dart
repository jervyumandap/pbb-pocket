import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loans_reminders_widget.dart' show LoansRemindersWidget;
import 'package:flutter/material.dart';

class LoansRemindersModel extends FlutterFlowModel<LoansRemindersWidget> {
  ///  Local state fields for this page.

  BbPageViewSelection? selectedTab = BbPageViewSelection.BILLERS;

  WBBPSubmitParametersStruct? submitBody;
  void updateSubmitBodyStruct(Function(WBBPSubmitParametersStruct) updateFn) {
    updateFn(submitBody ??= WBBPSubmitParametersStruct());
  }

  /// Could be biller or saved biller
  WBBillerStruct? selectedBiller;
  void updateSelectedBillerStruct(Function(WBBillerStruct) updateFn) {
    updateFn(selectedBiller ??= WBBillerStruct());
  }

  AccountsStruct? sourceAccount;
  void updateSourceAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(sourceAccount ??= AccountsStruct());
  }

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
