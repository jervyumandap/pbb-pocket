import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_bills_confirmation_bottom_sheet_widget.dart'
    show PayBillsConfirmationBottomSheetWidget;
import 'package:flutter/material.dart';

class PayBillsConfirmationBottomSheetModel
    extends FlutterFlowModel<PayBillsConfirmationBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Retail Bills Payment Initiate)] action in Pay-Button widget.
  ApiCallResponse? paymentInitiateResponse;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Pay-Button widget.
  CreateConfirmSigningPKResultStruct? signingPKPayload;
  // Stores action output result for [Backend Call - API (Retail Bill Payment Confirm Signing New)] action in Pay-Button widget.
  ApiCallResponse? bPPkConfirmSigningNewResponse;
  // Stores action output result for [Backend Call - API (Retail Bill Payment Signing Challenge)] action in Pay-Button widget.
  ApiCallResponse? bPSigningChallengeResponse;
  // Stores action output result for [Custom Action - createSignature] action in Pay-Button widget.
  String? createSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Bill Payment Confirm Signing)] action in Pay-Button widget.
  ApiCallResponse? bPConfirmSigningResponse;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Signing Challenge)] action in Pay-Button widget.
  ApiCallResponse? schedBPChallengeResponse;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Pay-Button widget.
  CreateConfirmSigningPKResultStruct? sBpSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Create Passkey Signing)] action in Pay-Button widget.
  ApiCallResponse? schedBPCreatePkResponse;
  // Stores action output result for [Custom Action - createSignature] action in Pay-Button widget.
  String? schedBPCreateSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Create)] action in Pay-Button widget.
  ApiCallResponse? schedBPCreateResponse;
  // Stores action output result for [Backend Call - API (Retail Bills Payment Initiate)] action in Pay-Button-Web widget.
  ApiCallResponse? paymentInitiateResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Gen Stepup Auth Options)] action in Pay-Button-Web widget.
  ApiCallResponse? stepupOptionsResponse2;
  // Stores action output result for [Custom Action - passkeyCreateStepupVerifyPayload] action in Pay-Button-Web widget.
  dynamic pKStepupVerifyPayload2;
  // Stores action output result for [Backend Call - API (Retail Verify Stepup Auth)] action in Pay-Button-Web widget.
  ApiCallResponse? pKStepupVerifyAuthResponse2;
  // Stores action output result for [Backend Call - API (Retail Bill Payment Confirm Signing New)] action in Pay-Button-Web widget.
  ApiCallResponse? bPPkConfirmSigningNewResponse2;
  // Stores action output result for [Backend Call - API (Retail Bill Payment Signing Challenge)] action in Pay-Button-Web widget.
  ApiCallResponse? bPSigningChallengeResponseCopy;
  // Stores action output result for [Custom Action - createSignature] action in Pay-Button-Web widget.
  String? createSignatureOutputCopy;
  // Stores action output result for [Backend Call - API (Retail Bill Payment Confirm Signing)] action in Pay-Button-Web widget.
  ApiCallResponse? bPConfirmSigningResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Signing Challenge)] action in Pay-Button-Web widget.
  ApiCallResponse? schedBPChallengeResponseCopy;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Pay-Button-Web widget.
  CreateConfirmSigningPKResultStruct? sBpSigningPKPayloadCopy;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Create Passkey Signing)] action in Pay-Button-Web widget.
  ApiCallResponse? schedBPCreatePkResponseCopy;
  // Stores action output result for [Custom Action - createSignature] action in Pay-Button-Web widget.
  String? schedBPCreateSignatureOutputCopy;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Create)] action in Pay-Button-Web widget.
  ApiCallResponse? schedBPCreateResponseCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
