import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loan_schedule_page_widget.dart' show LoanSchedulePageWidget;
import 'package:flutter/material.dart';

class LoanSchedulePageModel extends FlutterFlowModel<LoanSchedulePageWidget> {
  ///  Local state fields for this page.

  AccountsStruct? sourceAccount;
  void updateSourceAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(sourceAccount ??= AccountsStruct());
  }

  LoanRepaymentListStruct? loanRepayment;
  void updateLoanRepaymentStruct(Function(LoanRepaymentListStruct) updateFn) {
    updateFn(loanRepayment ??= LoanRepaymentListStruct());
  }

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;

  @override
  void initState(BuildContext context) {
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
  }

  @override
  void dispose() {
    emptyListComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    loadingStateComponentModel.dispose();
  }

  /// Action blocks.
  Future getLoanRepaymentSchedule(BuildContext context) async {
    ApiCallResponse? apiResultvw0;

    apiResultvw0 =
        await WhitebankGroupAPIGroup.retailLoanRepaymentScheduleCall.call(
      loanAccountNumber: widget!.loanAccountNumber,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
      accessToken: currentAuthenticationToken,
    );

    if ((apiResultvw0.succeeded ?? true)) {
      loanRepayment =
          LoanRepaymentListStruct.maybeFromMap((apiResultvw0.jsonBody ?? ''));
    }
  }
}
