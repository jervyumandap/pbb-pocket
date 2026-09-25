import '/bills_payment/b_p_corp/b_p_corp_components/payment_from_account_list_item/payment_from_account_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_from_account_bottom_sheet_widget.dart'
    show PaymentFromAccountBottomSheetWidget;
import 'package:flutter/material.dart';

class PaymentFromAccountBottomSheetModel
    extends FlutterFlowModel<PaymentFromAccountBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for PaymentFromAccountListItem component.
  late PaymentFromAccountListItemModel paymentFromAccountListItemModel;

  @override
  void initState(BuildContext context) {
    paymentFromAccountListItemModel =
        createModel(context, () => PaymentFromAccountListItemModel());
  }

  @override
  void dispose() {
    paymentFromAccountListItemModel.dispose();
  }
}
