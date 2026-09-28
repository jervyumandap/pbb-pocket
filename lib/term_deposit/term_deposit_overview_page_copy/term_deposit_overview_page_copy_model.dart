import '/backend/schema/structs/index.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/pill_container_component/pill_container_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/term_deposit/components/deposit_transactions_history_component/deposit_transactions_history_component_widget.dart';
import '/index.dart';
import 'term_deposit_overview_page_copy_widget.dart'
    show TermDepositOverviewPageCopyWidget;
import 'package:flutter/material.dart';

class TermDepositOverviewPageCopyModel
    extends FlutterFlowModel<TermDepositOverviewPageCopyWidget> {
  ///  Local state fields for this page.

  List<StatementTransactionModelStruct> listTransactions = [];
  void addToListTransactions(StatementTransactionModelStruct item) =>
      listTransactions.add(item);
  void removeFromListTransactions(StatementTransactionModelStruct item) =>
      listTransactions.remove(item);
  void removeAtIndexFromListTransactions(int index) =>
      listTransactions.removeAt(index);
  void insertAtIndexInListTransactions(
          int index, StatementTransactionModelStruct item) =>
      listTransactions.insert(index, item);
  void updateListTransactionsAtIndex(
          int index, Function(StatementTransactionModelStruct) updateFn) =>
      listTransactions[index] = updateFn(listTransactions[index]);

  bool isLoading = false;

  List<DepositAccountsStruct> depositAccounts = [];
  void addToDepositAccounts(DepositAccountsStruct item) =>
      depositAccounts.add(item);
  void removeFromDepositAccounts(DepositAccountsStruct item) =>
      depositAccounts.remove(item);
  void removeAtIndexFromDepositAccounts(int index) =>
      depositAccounts.removeAt(index);
  void insertAtIndexInDepositAccounts(int index, DepositAccountsStruct item) =>
      depositAccounts.insert(index, item);
  void updateDepositAccountsAtIndex(
          int index, Function(DepositAccountsStruct) updateFn) =>
      depositAccounts[index] = updateFn(depositAccounts[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getDepositAccounts] action in TermDepositOverviewPageCopy widget.
  List<DepositAccountsStruct>? listDepositAccounts;
  // Stores action output result for [Action Block - getDepositDetails] action in TermDepositOverviewPageCopy widget.
  List<DepositAccountModelStruct>? listDepositDetails;
  // State field(s) for mregNewDeposit widget.
  bool mregNewDepositHovered = false;
  // State field(s) for textFieldAccountNumber widget.
  FocusNode? textFieldAccountNumberFocusNode;
  TextEditingController? textFieldAccountNumberTextController;
  String? Function(BuildContext, String?)?
      textFieldAccountNumberTextControllerValidator;
  // State field(s) for dropDownTransaction widget.
  int? dropDownTransactionValue;
  FormFieldController<int>? dropDownTransactionValueController;
  // Stores action output result for [Action Block - getTermDepositHistory] action in buttonApplySearch widget.
  List<StatementTransactionModelStruct>? historyDeposits;
  // Model for btnDownload.
  late PillContainerComponentModel btnDownloadModel;
  // Models for DepositTransactionsHistoryComponent dynamic component.
  late FlutterFlowDynamicModels<DepositTransactionsHistoryComponentModel>
      depositTransactionsHistoryComponentModels1;
  // State field(s) for textFieldSearchAccountsWeb widget.
  FocusNode? textFieldSearchAccountsWebFocusNode;
  TextEditingController? textFieldSearchAccountsWebTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchAccountsWebTextControllerValidator;
  // Stores action output result for [Action Block - getTermDepositHistory] action in btnApplySearchWeb widget.
  List<StatementTransactionModelStruct>? historyDepositsWeb;
  // State field(s) for dropdownTransactionWeb widget.
  int? dropdownTransactionWebValue;
  FormFieldController<int>? dropdownTransactionWebValueController;
  // Models for DepositTransactionsHistoryComponent dynamic component.
  late FlutterFlowDynamicModels<DepositTransactionsHistoryComponentModel>
      depositTransactionsHistoryComponentModels2;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    btnDownloadModel =
        createModel(context, () => PillContainerComponentModel());
    depositTransactionsHistoryComponentModels1 = FlutterFlowDynamicModels(
        () => DepositTransactionsHistoryComponentModel());
    depositTransactionsHistoryComponentModels2 = FlutterFlowDynamicModels(
        () => DepositTransactionsHistoryComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    textFieldAccountNumberFocusNode?.dispose();
    textFieldAccountNumberTextController?.dispose();

    btnDownloadModel.dispose();
    depositTransactionsHistoryComponentModels1.dispose();
    textFieldSearchAccountsWebFocusNode?.dispose();
    textFieldSearchAccountsWebTextController?.dispose();

    depositTransactionsHistoryComponentModels2.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
