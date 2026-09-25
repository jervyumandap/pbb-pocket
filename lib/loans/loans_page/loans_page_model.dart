import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/loans/loan_card_component_old/loan_card_component_old_widget.dart';
import 'loans_page_widget.dart' show LoansPageWidget;
import 'package:flutter/material.dart';

class LoansPageModel extends FlutterFlowModel<LoansPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LoanCardComponentOld component.
  late LoanCardComponentOldModel loanCardComponentOldModel1;
  // Model for LoanCardComponentOld component.
  late LoanCardComponentOldModel loanCardComponentOldModel2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    loanCardComponentOldModel1 =
        createModel(context, () => LoanCardComponentOldModel());
    loanCardComponentOldModel2 =
        createModel(context, () => LoanCardComponentOldModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    loanCardComponentOldModel1.dispose();
    loanCardComponentOldModel2.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
