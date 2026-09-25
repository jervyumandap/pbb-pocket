import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'q_r_scanner_page_widget.dart' show QRScannerPageWidget;
import 'package:flutter/material.dart';

class QRScannerPageModel extends FlutterFlowModel<QRScannerPageWidget> {
  ///  Local state fields for this page.

  AccountsStruct? selectedAccount;
  void updateSelectedAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(selectedAccount ??= AccountsStruct());
  }

  double? amountEntered = 1.0;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail QR Payment Decode)] action in QrScannerOverlayNew widget.
  ApiCallResponse? qRDecodeResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
