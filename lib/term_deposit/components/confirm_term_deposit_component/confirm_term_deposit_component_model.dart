import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_term_deposit_component_widget.dart'
    show ConfirmTermDepositComponentWidget;
import 'package:flutter/material.dart';

class ConfirmTermDepositComponentModel
    extends FlutterFlowModel<ConfirmTermDepositComponentWidget> {
  ///  Local state fields for this component.

  AccountsV2Struct? senderAccount;
  void updateSenderAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(senderAccount ??= AccountsV2Struct());
  }

  DepositAccountModelStruct? recipientAccount;
  void updateRecipientAccountStruct(
      Function(DepositAccountModelStruct) updateFn) {
    updateFn(recipientAccount ??= DepositAccountModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Action Block - OTP] action in Button-Submit widget.
  String? otpVerification;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
