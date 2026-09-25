import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'manage_loans_page_widget.dart' show ManageLoansPageWidget;
import 'package:flutter/material.dart';

class ManageLoansPageModel extends FlutterFlowModel<ManageLoansPageWidget> {
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

  String testkey = 'tests';

  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
