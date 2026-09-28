import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_card/fund_transfer_card_widget.dart';
import 'deposit_accounts_listview_component_widget.dart'
    show DepositAccountsListviewComponentWidget;
import 'package:flutter/material.dart';

class DepositAccountsListviewComponentModel
    extends FlutterFlowModel<DepositAccountsListviewComponentWidget> {
  ///  Local state fields for this component.

  DepositAccountsStruct? selectedAccount;
  void updateSelectedAccountStruct(Function(DepositAccountsStruct) updateFn) {
    updateFn(selectedAccount ??= DepositAccountsStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Models for FundTransferCard dynamic component.
  late FlutterFlowDynamicModels<FundTransferCardModel> fundTransferCardModels;

  @override
  void initState(BuildContext context) {
    fundTransferCardModels =
        FlutterFlowDynamicModels(() => FundTransferCardModel());
  }

  @override
  void dispose() {
    fundTransferCardModels.dispose();
  }
}
