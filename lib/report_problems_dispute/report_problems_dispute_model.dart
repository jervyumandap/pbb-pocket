import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'report_problems_dispute_widget.dart' show ReportProblemsDisputeWidget;
import 'package:flutter/material.dart';

class ReportProblemsDisputeModel
    extends FlutterFlowModel<ReportProblemsDisputeWidget> {
  ///  Local state fields for this page.

  ReportTransactionType? transactionTypeSelected =
      ReportTransactionType.UNSELECTED;

  SelectedDisputeDisplayModelStruct? selectedDisputeDisplay;
  void updateSelectedDisputeDisplayStruct(
      Function(SelectedDisputeDisplayModelStruct) updateFn) {
    updateFn(selectedDisputeDisplay ??= SelectedDisputeDisplayModelStruct());
  }

  SelectedDisputeValueModelStruct? selectedDisputeValue;
  void updateSelectedDisputeValueStruct(
      Function(SelectedDisputeValueModelStruct) updateFn) {
    updateFn(selectedDisputeValue ??= SelectedDisputeValueModelStruct());
  }

  DateTime? dateInput;

  bool isIssueNotSelected = true;

  bool isTypeTransactionNotSelected = true;

  bool isAccountNotSelected = true;

  ///  State fields for stateful widgets in this page.

  // Model for CustomDateLabelPickerWidget component.
  late CustomDateLabelPickerWidgetModel customDateLabelPickerWidgetModel;
  DateTime? datePicked;
  // State field(s) for TextFieldAmount widget.
  FocusNode? textFieldAmountFocusNode;
  TextEditingController? textFieldAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldAmountTextControllerValidator;
  // State field(s) for TextFieldReferenceNumber widget.
  FocusNode? textFieldReferenceNumberFocusNode;
  TextEditingController? textFieldReferenceNumberTextController;
  String? Function(BuildContext, String?)?
      textFieldReferenceNumberTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (Get Transfer History)] action in Button widget.
  ApiCallResponse? transferHistoryResult;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge With TransactionID)] action in Button widget.
  ApiCallResponse? apiResultrol;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? transferSignatureID;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? transferSigningConfirmID;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge)] action in Button widget.
  ApiCallResponse? apiResultxzg;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? transferSignature;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? transferSigningConfirm;
  // Stores action output result for [Backend Call - API (Retail Bills Payment History)] action in Button widget.
  ApiCallResponse? billsPaymentHistoryAPI;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge With TransactionID)] action in Button widget.
  ApiCallResponse? billsPaymentChallenge;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? billsSignatureID;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? billsSigningConfirmID;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge)] action in Button widget.
  ApiCallResponse? billsPaymentChangeNoId;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? billsSignatureNoID;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? billsSigningConfirmNoID;
  // Stores action output result for [Backend Call - API (Retail QR Payment History)] action in Button widget.
  ApiCallResponse? qrPaymentHistoryAPI;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge With TransactionID)] action in Button widget.
  ApiCallResponse? qRPaymentChallenge;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? qRSignatureID;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? qRSigningConfirmID;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge)] action in Button widget.
  ApiCallResponse? qRPaymentChangeNoId;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? qRSignatureNoID;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? qRSigningConfirmNoID;
  // Stores action output result for [Backend Call - API (Retail Report Disputes Challenge)] action in Button widget.
  ApiCallResponse? otherReport;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? otherReportSignatureNoID;
  // Stores action output result for [Backend Call - API (Retail Report Dispute Challenge Signing)] action in Button widget.
  ApiCallResponse? otherSigningConfirmNoID;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customDateLabelPickerWidgetModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    customDateLabelPickerWidgetModel.dispose();
    textFieldAmountFocusNode?.dispose();
    textFieldAmountTextController?.dispose();

    textFieldReferenceNumberFocusNode?.dispose();
    textFieldReferenceNumberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();

    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
