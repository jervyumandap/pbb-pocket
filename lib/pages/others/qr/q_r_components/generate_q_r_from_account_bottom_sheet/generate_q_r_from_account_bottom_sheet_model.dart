import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/payment_from_account_list_item/payment_from_account_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'generate_q_r_from_account_bottom_sheet_widget.dart'
    show GenerateQRFromAccountBottomSheetWidget;
import 'package:flutter/material.dart';

class GenerateQRFromAccountBottomSheetModel
    extends FlutterFlowModel<GenerateQRFromAccountBottomSheetWidget> {
  ///  Local state fields for this component.

  AccountsV2Struct? selectedAccount;
  void updateSelectedAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(selectedAccount ??= AccountsV2Struct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for PaymentFromAccountListItem component.
  late PaymentFromAccountListItemModel paymentFromAccountListItemModel1;
  // Model for PaymentFromAccountListItem component.
  late PaymentFromAccountListItemModel paymentFromAccountListItemModel2;

  @override
  void initState(BuildContext context) {
    paymentFromAccountListItemModel1 =
        createModel(context, () => PaymentFromAccountListItemModel());
    paymentFromAccountListItemModel2 =
        createModel(context, () => PaymentFromAccountListItemModel());
  }

  @override
  void dispose() {
    paymentFromAccountListItemModel1.dispose();
    paymentFromAccountListItemModel2.dispose();
  }
}
