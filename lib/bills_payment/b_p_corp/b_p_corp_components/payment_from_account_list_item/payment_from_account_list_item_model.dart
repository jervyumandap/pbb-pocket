import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_from_account_list_item_widget.dart'
    show PaymentFromAccountListItemWidget;
import 'package:flutter/material.dart';

class PaymentFromAccountListItemModel
    extends FlutterFlowModel<PaymentFromAccountListItemWidget> {
  ///  Local state fields for this component.

  AccountsV2Struct? itemAccount;
  void updateItemAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(itemAccount ??= AccountsV2Struct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
