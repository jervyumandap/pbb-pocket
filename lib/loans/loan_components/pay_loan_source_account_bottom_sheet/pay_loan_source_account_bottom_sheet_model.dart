import '/components/account_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_loan_source_account_bottom_sheet_widget.dart'
    show PayLoanSourceAccountBottomSheetWidget;
import 'package:flutter/material.dart';

class PayLoanSourceAccountBottomSheetModel
    extends FlutterFlowModel<PayLoanSourceAccountBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for AccountCard dynamic component.
  late FlutterFlowDynamicModels<AccountCardModel> accountCardModels1;
  // Models for AccountCard dynamic component.
  late FlutterFlowDynamicModels<AccountCardModel> accountCardModels2;

  @override
  void initState(BuildContext context) {
    accountCardModels1 = FlutterFlowDynamicModels(() => AccountCardModel());
    accountCardModels2 = FlutterFlowDynamicModels(() => AccountCardModel());
  }

  @override
  void dispose() {
    accountCardModels1.dispose();
    accountCardModels2.dispose();
  }
}
