import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'pay_loan_amount_page_widget.dart' show PayLoanAmountPageWidget;
import 'package:flutter/material.dart';

class PayLoanAmountPageModel extends FlutterFlowModel<PayLoanAmountPageWidget> {
  ///  Local state fields for this page.

  WBBPSubmitParametersStruct? submitBody;
  void updateSubmitBodyStruct(Function(WBBPSubmitParametersStruct) updateFn) {
    updateFn(submitBody ??= WBBPSubmitParametersStruct());
  }

  double? enteredAmount;

  TransactionScheduleType? scheduleType = TransactionScheduleType.ONCE;

  String? amountFieldError;

  String? paymentDate;

  String? paymentEndDate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Quick-Amount-ChoiceChips widget.
  FormFieldController<List<String>>? quickAmountChoiceChipsValueController;
  String? get quickAmountChoiceChipsValue =>
      quickAmountChoiceChipsValueController?.value?.firstOrNull;
  set quickAmountChoiceChipsValue(String? val) =>
      quickAmountChoiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for Remarks-TextField widget.
  FocusNode? remarksTextFieldFocusNode;
  TextEditingController? remarksTextFieldTextController;
  String? Function(BuildContext, String?)?
      remarksTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Retail Loan Payment Cancel)] action in Send-Button widget.
  ApiCallResponse? apiResults66;
  // Stores action output result for [Backend Call - API (Retail Loan Confirm Payment Passkey)] action in Send-Button widget.
  ApiCallResponse? loanConfirmPaymentResponse;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Send-Button widget.
  CreateConfirmSigningPKResultStruct? createSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail Loan Confirm Payment )] action in Send-Button widget.
  ApiCallResponse? loanConfirmPaymentResponseBio;
  // Stores action output result for [Custom Action - createSignature] action in Send-Button widget.
  String? signature;
  // Stores action output result for [Backend Call - API (Retail Loan Payment Signing Challenge)] action in Send-Button widget.
  ApiCallResponse? loanSigningChallengeResponse;
  // Stores action output result for [Backend Call - API (Retail Loans Payment)] action in Send-Button widget.
  ApiCallResponse? initialLoanPaymentResult;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    remarksTextFieldFocusNode?.dispose();
    remarksTextFieldTextController?.dispose();

    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Action blocks.
  Future getBillerList(BuildContext context) async {}

  Future getSavedBillers(BuildContext context) async {}
}
