import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/m_pin/pin_component/pin_component_widget.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'dart:async';
import 'm_p_i_n_page_widget.dart' show MPINPageWidget;
import 'package:flutter/material.dart';

class MPINPageModel extends FlutterFlowModel<MPINPageWidget> {
  ///  Local state fields for this page.

  String? challenge;

  bool isInvalidMPin = false;

  String? errorMessage;

  ConfirmActionBlockModelStruct? confirmBlockErrorState;
  void updateConfirmBlockErrorStateStruct(
      Function(ConfirmActionBlockModelStruct) updateFn) {
    updateFn(confirmBlockErrorState ??= ConfirmActionBlockModelStruct());
  }

  String? openingID;

  ///  State fields for stateful widgets in this page.

  // Model for PinComponent component.
  late PinComponentModel pinComponentModel;
  // Stores action output result for [Custom Action - getPaygilantSession] action in PinComponent widget.
  String? getPaygilantSessionMpinOutput;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic deviceSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Auth Mpin Login)] action in PinComponent widget.
  ApiCallResponse? mpinLoginResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in PinComponent widget.
  ApiCallResponse? getProfileResponse;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic bpSignatureOuput;
  // Stores action output result for [Action Block - BpConfirmSigningBlock] action in PinComponent widget.
  WBConfirmBillPaymentResponseStruct? bpConfirmSigningBlockOutput;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic schedBpSignatureOuput;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Create)] action in PinComponent widget.
  ApiCallResponse? scheduledBPCreateResponse;
  // Stores action output result for [Backend Call - API (Retail Scheduled BP Signing Challenge)] action in PinComponent widget.
  ApiCallResponse? schedBPChallengeResponse;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic changePwSignatureOuput;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change Confirm Challenge)] action in PinComponent widget.
  ApiCallResponse? pWChangeConfirmResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change Challenge)] action in PinComponent widget.
  ApiCallResponse? passwordChangeChallenge;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic deviceSignatureOutputV3;
  // Stores action output result for [Backend Call - API (Limits Challenge Confirm)] action in PinComponent widget.
  ApiCallResponse? limitsConfirm;
  // Stores action output result for [Backend Call - API (Limits Challenge)] action in PinComponent widget.
  ApiCallResponse? apiResultyq5;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic deviceSignatureOutpuTSchedTransfer;
  // Stores action output result for [Action Block - FTScheduleConfirmBlock] action in PinComponent widget.
  ConfirmActionBlockModelStruct? schedFTConfirmBlock;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic qrpdeviceSignatureOutput;
  // Stores action output result for [Action Block - QrConfirmSigningBlock] action in PinComponent widget.
  ConfirmActionBlockModelStruct? qrConfirmSigningBlockOutput;
  // Stores action output result for [Backend Call - API (Mpin Change Challenge)] action in PinComponent widget.
  ApiCallResponse? mpinChangeChallenge;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic mpinChangeChallengeSignature;
  // Stores action output result for [Backend Call - API (Retail Settings Mpin Verify)] action in PinComponent widget.
  ApiCallResponse? mpinChangeVerify;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic deviceSignatureOutputTD;
  // Stores action output result for [Backend Call - API (Retail Time Deposits Confirm)] action in PinComponent widget.
  ApiCallResponse? tDConfirmOutput;
  // Stores action output result for [Backend Call - API (Retail Time Deposits Challenge)] action in PinComponent widget.
  ApiCallResponse? apiResulthdh;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic loanDeviceSignature;
  // Stores action output result for [Backend Call - API (Retail Loan Confirm Payment )] action in PinComponent widget.
  ApiCallResponse? loanConfirmationAPIResponseSuccess;
  // Stores action output result for [Backend Call - API (Retail Loan Payment Signing Challenge)] action in PinComponent widget.
  ApiCallResponse? loanSigningChallengeResponse;
  // Stores action output result for [Backend Call - API (Retail Loan Payment Cancel)] action in PinComponent widget.
  ApiCallResponse? apiResults66;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic killSwitchOutput;
  // Stores action output result for [Backend Call - API (Retail Kill Switch Activate Confirm)] action in PinComponent widget.
  ApiCallResponse? apiResult85a;
  // Stores action output result for [Backend Call - API (Retail Kill Switch Activate Challenge)] action in PinComponent widget.
  ApiCallResponse? apiResultvwh;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic trustApprovalSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Device Trust Confirm Signing)] action in PinComponent widget.
  ApiCallResponse? confirmSigningResponse;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic reportDeviceSignature;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in PinComponent widget.
  ApiCallResponse? apiResultg65;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge)] action in PinComponent widget.
  ApiCallResponse? reportDisputeChallenge;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge With TransactionID)] action in PinComponent widget.
  ApiCallResponse? reportDisputeChallengeId;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic stopChequeSignature;
  // Stores action output result for [Backend Call - API (Retail Stop Cheque Confirm Signing)] action in PinComponent widget.
  ApiCallResponse? apiResult0oj;
  // Stores action output result for [Backend Call - API (Retail Stop Cheque Signing Challenge)] action in PinComponent widget.
  ApiCallResponse? apiResult8lp;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic deviceSignatureOutputV2;
  // Stores action output result for [Action Block - SigningConfirmBlock] action in PinComponent widget.
  ConfirmActionBlockModelStruct? confirmBlock;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  /// Query cache managers for this widget.

  final _mpinChallengeQueryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> mpinChallengeQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _mpinChallengeQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMpinChallengeQueryCache() => _mpinChallengeQueryManager.clear();
  void clearMpinChallengeQueryCacheKey(String? uniqueKey) =>
      _mpinChallengeQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    pinComponentModel = createModel(context, () => PinComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    pinComponentModel.dispose();
    customMobileAppBarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearMpinChallengeQueryCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
