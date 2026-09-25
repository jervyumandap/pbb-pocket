import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'fund_transfer_amount_page_widget.dart'
    show FundTransferAmountPageWidget;
import 'package:flutter/material.dart';

class FundTransferAmountPageModel
    extends FlutterFlowModel<FundTransferAmountPageWidget> {
  ///  Local state fields for this page.

  bool isLimitExceeded = false;

  bool isBalanceNotEnough = false;

  String? amountErrorMessage;

  double? currentAmountValue;

  bool amountIsInvalid = false;

  TransactionScheduleType? scheduleType = TransactionScheduleType.DAILY;

  String? paymentDate;

  String? paymentEndDate;

  bool isMoreThanInstapayAmount = false;

  String? initialTransferType;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Get Transfer Limits)] action in FundTransferAmountPage widget.
  ApiCallResponse? getTransferLimitsResponse;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Scheduled-Checkbox widget.
  bool? scheduledCheckboxValue;
  // State field(s) for Schedule-TextField widget.
  FocusNode? scheduleTextFieldFocusNode;
  TextEditingController? scheduleTextFieldTextController;
  String? Function(BuildContext, String?)?
      scheduleTextFieldTextControllerValidator;
  // Model for Start-CustomDateLabelPicker.
  late CustomDateLabelPickerWidgetModel startCustomDateLabelPickerModel1;
  DateTime? datePicked1;
  // Model for Start-CustomDateLabelPicker.
  late CustomDateLabelPickerWidgetModel startCustomDateLabelPickerModel2;
  DateTime? datePicked2;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Initiate Fund Transfer)] action in PrimaryButtonComponent widget.
  ApiCallResponse? initiateResponse;
  // Stores action output result for [Validate Form] action in PrimaryButtonComponent widget.
  bool? validate;
  // Stores action output result for [Backend Call - API (Retail QR Payment Initiate)] action in PrimaryButtonComponent widget.
  ApiCallResponse? qrPaymentInitResponse;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    startCustomDateLabelPickerModel1 =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    startCustomDateLabelPickerModel2 =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    scheduleTextFieldFocusNode?.dispose();
    scheduleTextFieldTextController?.dispose();

    startCustomDateLabelPickerModel1.dispose();
    startCustomDateLabelPickerModel2.dispose();
    primaryButtonComponentModel.dispose();
  }
}
