import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/select_payment_from_account/select_payment_from_account_widget.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/select_payment_to_biller/select_payment_to_biller_widget.dart';
import '/components/custom_date_picker_widget/custom_date_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'bills_payment_page_widget.dart' show BillsPaymentPageWidget;
import 'package:flutter/material.dart';

class BillsPaymentPageModel extends FlutterFlowModel<BillsPaymentPageWidget> {
  ///  Local state fields for this page.

  AccountsV2Struct? selectedSourceAccount;
  void updateSelectedSourceAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(selectedSourceAccount ??= AccountsV2Struct());
  }

  FrequentBillerDataModelStruct? selectedBiller;
  void updateSelectedBillerStruct(
      Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(selectedBiller ??= FrequentBillerDataModelStruct());
  }

  BillsHeaderStruct? billsHeader;
  void updateBillsHeaderStruct(Function(BillsHeaderStruct) updateFn) {
    updateFn(billsHeader ??= BillsHeaderStruct());
  }

  BillsBodyStruct? billsBody;
  void updateBillsBodyStruct(Function(BillsBodyStruct) updateFn) {
    updateFn(billsBody ??= BillsBodyStruct());
  }

  double paymentAmount = 0.0;

  String? paymentDate;

  String? startPaymentDate;

  int? numberOfPayments;

  FMHeaderStruct? fmHeader;
  void updateFmHeaderStruct(Function(FMHeaderStruct) updateFn) {
    updateFn(fmHeader ??= FMHeaderStruct());
  }

  FMSessionStruct? fmSession;
  void updateFmSessionStruct(Function(FMSessionStruct) updateFn) {
    updateFn(fmSession ??= FMSessionStruct());
  }

  TransactionCheckpointDetailsStruct? fmTransaction;
  void updateFmTransactionStruct(
      Function(TransactionCheckpointDetailsStruct) updateFn) {
    updateFn(fmTransaction ??= TransactionCheckpointDetailsStruct());
  }

  DeviceInfoStruct? fmDeviceInfo;
  void updateFmDeviceInfoStruct(Function(DeviceInfoStruct) updateFn) {
    updateFn(fmDeviceInfo ??= DeviceInfoStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for SelectPaymentFromAccount component.
  late SelectPaymentFromAccountModel selectPaymentFromAccountModel;
  // Model for SelectPaymentToBiller component.
  late SelectPaymentToBillerModel selectPaymentToBillerModel;
  // State field(s) for TextField-Payment-Amount widget.
  FocusNode? textFieldPaymentAmountFocusNode;
  TextEditingController? textFieldPaymentAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldPaymentAmountTextControllerValidator;
  // State field(s) for DropDown-ScheduleType widget.
  String? dropDownScheduleTypeValue;
  FormFieldController<String>? dropDownScheduleTypeValueController;
  // Model for CustomDatePickerWidget-PaymentDate.
  late CustomDatePickerWidgetModel customDatePickerWidgetPaymentDateModel;
  DateTime? datePicked1;
  // Model for CustomDatePickerWidget-StartDate.
  late CustomDatePickerWidgetModel customDatePickerWidgetStartDateModel;
  DateTime? datePicked2;
  // State field(s) for DropDown-NumberOfPayment widget.
  String? dropDownNumberOfPaymentValue;
  FormFieldController<String>? dropDownNumberOfPaymentValueController;
  // State field(s) for TextField-Remarks widget.
  FocusNode? textFieldRemarksFocusNode;
  TextEditingController? textFieldRemarksTextController;
  String? Function(BuildContext, String?)?
      textFieldRemarksTextControllerValidator;
  // Stores action output result for [Backend Call - API (OauthToken)] action in Button widget.
  ApiCallResponse? oAuthTokenBpTransactResponse;
  // Stores action output result for [Backend Call - API (FMS Fraud Check)] action in Button widget.
  ApiCallResponse? fMSFraudCheckReponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    selectPaymentFromAccountModel =
        createModel(context, () => SelectPaymentFromAccountModel());
    selectPaymentToBillerModel =
        createModel(context, () => SelectPaymentToBillerModel());
    customDatePickerWidgetPaymentDateModel =
        createModel(context, () => CustomDatePickerWidgetModel());
    customDatePickerWidgetStartDateModel =
        createModel(context, () => CustomDatePickerWidgetModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    selectPaymentFromAccountModel.dispose();
    selectPaymentToBillerModel.dispose();
    textFieldPaymentAmountFocusNode?.dispose();
    textFieldPaymentAmountTextController?.dispose();

    customDatePickerWidgetPaymentDateModel.dispose();
    customDatePickerWidgetStartDateModel.dispose();
    textFieldRemarksFocusNode?.dispose();
    textFieldRemarksTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
