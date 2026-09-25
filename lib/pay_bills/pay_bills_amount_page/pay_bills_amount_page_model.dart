import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pay_bills_amount_page_widget.dart' show PayBillsAmountPageWidget;
import 'package:flutter/material.dart';

class PayBillsAmountPageModel
    extends FlutterFlowModel<PayBillsAmountPageWidget> {
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

  // Stores action output result for [Backend Call - API (Retail Bills Payment Limits)] action in PayBillsAmountPage widget.
  ApiCallResponse? paymentLimitsResponse;
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
  // State field(s) for Scheduled-Checkbox widget.
  bool? scheduledCheckboxValue;
  // State field(s) for Schedule-TextField widget.
  FocusNode? scheduleTextFieldFocusNode;
  TextEditingController? scheduleTextFieldTextController;
  String? Function(BuildContext, String?)?
      scheduleTextFieldTextControllerValidator;
  // Model for Start-CustomDateLabelPicker.
  late CustomDateLabelPickerWidgetModel startCustomDateLabelPickerModel;
  DateTime? datePicked1;
  // Model for End-CustomDateLabelPicker.
  late CustomDateLabelPickerWidgetModel endCustomDateLabelPickerModel;
  DateTime? datePicked2;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    startCustomDateLabelPickerModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    endCustomDateLabelPickerModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
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

    scheduleTextFieldFocusNode?.dispose();
    scheduleTextFieldTextController?.dispose();

    startCustomDateLabelPickerModel.dispose();
    endCustomDateLabelPickerModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Action blocks.
  Future getBillerList(BuildContext context) async {}

  Future getSavedBillers(BuildContext context) async {}
}
