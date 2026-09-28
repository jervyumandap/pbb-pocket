import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/payment_from_account_list_item/payment_from_account_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_from_account_side_drawer_widget.dart'
    show PaymentFromAccountSideDrawerWidget;
import 'package:flutter/material.dart';

class PaymentFromAccountSideDrawerModel
    extends FlutterFlowModel<PaymentFromAccountSideDrawerWidget> {
  ///  Local state fields for this component.

  AccountsV2Struct? selectedAccount;
  void updateSelectedAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(selectedAccount ??= AccountsV2Struct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for PaymentFromAccountListItem-1.
  late PaymentFromAccountListItemModel paymentFromAccountListItem1Model;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Model for PaymentFromAccountListItem-2.
  late PaymentFromAccountListItemModel paymentFromAccountListItem2Model;

  @override
  void initState(BuildContext context) {
    paymentFromAccountListItem1Model =
        createModel(context, () => PaymentFromAccountListItemModel());
    paymentFromAccountListItem2Model =
        createModel(context, () => PaymentFromAccountListItemModel());
  }

  @override
  void dispose() {
    paymentFromAccountListItem1Model.dispose();
    paymentFromAccountListItem2Model.dispose();
  }
}
