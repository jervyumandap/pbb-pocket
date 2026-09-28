import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_payment_component_widget.dart'
    show ConfirmPaymentComponentWidget;
import 'package:flutter/material.dart';

class ConfirmPaymentComponentModel
    extends FlutterFlowModel<ConfirmPaymentComponentWidget> {
  ///  Local state fields for this component.

  TransactionFMSDataStructureStruct? transactionCheckpoint;
  void updateTransactionCheckpointStruct(
      Function(TransactionFMSDataStructureStruct) updateFn) {
    updateFn(transactionCheckpoint ??= TransactionFMSDataStructureStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Button widget.
  CreateConfirmSigningPKResultStruct? fundTransferConfirmSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail QR Payment Passkey Signing)] action in Button widget.
  ApiCallResponse? qrPKSigningResponse;
  // Stores action output result for [Backend Call - API (Retail QR Payment Signing Challenge)] action in Button widget.
  ApiCallResponse? qRPaySigningChallengeResponse;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? qrpCreateSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail QR Payment MpinBio Signing)] action in Button widget.
  ApiCallResponse? qrpMpinBioSigningResponse;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Button widget.
  CreateConfirmSigningPKResultStruct? fTSchedConfirmSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail Scheduled Transfer Confirm Passkey)] action in Button widget.
  ApiCallResponse? apiResultpyx;
  // Stores action output result for [Backend Call - API (Schedule Transfer Signing Challenge)] action in Button widget.
  ApiCallResponse? apiResultrj5;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? createSignatureOutputV2;
  // Stores action output result for [Action Block - FTScheduleConfirmBlock] action in Button widget.
  ConfirmActionBlockModelStruct? signingConfirmBlockv2;
  // Stores action output result for [Backend Call - API (Retail Transfers Signing Challenge)] action in Button widget.
  ApiCallResponse? retailTransfersSigningChallengeOutput;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? createSignatureOutput;
  // Stores action output result for [Action Block - SigningConfirmBlock] action in Button widget.
  ConfirmActionBlockModelStruct? signingConfirmBlockPasskey;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Button widget.
  CreateConfirmSigningPKResultStruct? fTConfirmSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail Confirm Signing Passkey)] action in Button widget.
  ApiCallResponse? confirmFTPasskey;
  // Stores action output result for [Backend Call - API (Initiate Fund Transfer)] action in Button widget.
  ApiCallResponse? initiateResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
