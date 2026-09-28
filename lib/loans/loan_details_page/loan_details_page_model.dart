import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loan_details_page_widget.dart' show LoanDetailsPageWidget;
import 'package:flutter/material.dart';

class LoanDetailsPageModel extends FlutterFlowModel<LoanDetailsPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<NotificationCategoriesStruct> listOfNotification = [];
  void addToListOfNotification(NotificationCategoriesStruct item) =>
      listOfNotification.add(item);
  void removeFromListOfNotification(NotificationCategoriesStruct item) =>
      listOfNotification.remove(item);
  void removeAtIndexFromListOfNotification(int index) =>
      listOfNotification.removeAt(index);
  void insertAtIndexInListOfNotification(
          int index, NotificationCategoriesStruct item) =>
      listOfNotification.insert(index, item);
  void updateListOfNotificationAtIndex(
          int index, Function(NotificationCategoriesStruct) updateFn) =>
      listOfNotification[index] = updateFn(listOfNotification[index]);

  AccountsStruct? sourceAccount;
  void updateSourceAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(sourceAccount ??= AccountsStruct());
  }

  List<LoanTransactionResponseStruct> loanTransactionList = [];
  void addToLoanTransactionList(LoanTransactionResponseStruct item) =>
      loanTransactionList.add(item);
  void removeFromLoanTransactionList(LoanTransactionResponseStruct item) =>
      loanTransactionList.remove(item);
  void removeAtIndexFromLoanTransactionList(int index) =>
      loanTransactionList.removeAt(index);
  void insertAtIndexInLoanTransactionList(
          int index, LoanTransactionResponseStruct item) =>
      loanTransactionList.insert(index, item);
  void updateLoanTransactionListAtIndex(
          int index, Function(LoanTransactionResponseStruct) updateFn) =>
      loanTransactionList[index] = updateFn(loanTransactionList[index]);

  String? toDate = '';

  bool isOverdue = true;

  bool selectedAll = true;

  bool selectedThisYear = true;

  bool selectedSixMonths = true;

  bool selected30Days = true;

  int daysFrom = 1000;

  List<LoanTransactionListModelDownloadStruct> loanDownload = [];
  void addToLoanDownload(LoanTransactionListModelDownloadStruct item) =>
      loanDownload.add(item);
  void removeFromLoanDownload(LoanTransactionListModelDownloadStruct item) =>
      loanDownload.remove(item);
  void removeAtIndexFromLoanDownload(int index) => loanDownload.removeAt(index);
  void insertAtIndexInLoanDownload(
          int index, LoanTransactionListModelDownloadStruct item) =>
      loanDownload.insert(index, item);
  void updateLoanDownloadAtIndex(int index,
          Function(LoanTransactionListModelDownloadStruct) updateFn) =>
      loanDownload[index] = updateFn(loanDownload[index]);

  ///  State fields for stateful widgets in this page.

  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    emptyListComponentModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Action blocks.
  Future getOverdue(BuildContext context) async {
    ApiCallResponse? apiResultl6z;

    apiResultl6z =
        await WhitebankGroupAPIGroup.retailLoanRepaymentScheduleCall.call(
      loanAccountNumber: widget!.loanAccountNumber,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
      accessToken: currentAuthenticationToken,
    );

    if ((apiResultl6z.succeeded ?? true)) {
      if ((LoanRepaymentListStruct.maybeFromMap((apiResultl6z.jsonBody ?? ''))
                      ?.schedule
                      .where((e) => e.status == 'OVERDUE')
                      .toList() !=
                  null &&
              (LoanRepaymentListStruct.maybeFromMap(
                          (apiResultl6z.jsonBody ?? ''))
                      ?.schedule
                      .where((e) => e.status == 'OVERDUE')
                      .toList())!
                  .isNotEmpty) ==
          true) {
        isOverdue = true;
      } else {
        isOverdue = false;
      }
    }
  }
}
