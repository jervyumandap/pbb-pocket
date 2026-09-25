import '/backend/schema/structs/index.dart';
import '/components/custom_date_picker_widget/custom_date_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'bills_payment_form_page_widget.dart' show BillsPaymentFormPageWidget;
import 'package:flutter/material.dart';

class BillsPaymentFormPageModel
    extends FlutterFlowModel<BillsPaymentFormPageWidget> {
  ///  Local state fields for this page.

  double paymentAmount = 0.0;

  String? paymentDate;

  String? startPaymentDate;

  int? numberOfPayments;

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

  bool? isLoading = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Action Block - GetAccounts] action in BillsPaymentFormPage widget.
  List<AccountsStruct>? getAccountsOutput;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode;
  TextEditingController? billerTextFieldTextController;
  String? Function(BuildContext, String?)?
      billerTextFieldTextControllerValidator;
  // State field(s) for Reference-Num-TextField widget.
  FocusNode? referenceNumTextFieldFocusNode;
  TextEditingController? referenceNumTextFieldTextController;
  String? Function(BuildContext, String?)?
      referenceNumTextFieldTextControllerValidator;
  // State field(s) for Payment-Amount-TextField widget.
  FocusNode? paymentAmountTextFieldFocusNode;
  TextEditingController? paymentAmountTextFieldTextController;
  String? Function(BuildContext, String?)?
      paymentAmountTextFieldTextControllerValidator;
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
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;

  @override
  void initState(BuildContext context) {
    customDatePickerWidgetPaymentDateModel =
        createModel(context, () => CustomDatePickerWidgetModel());
    customDatePickerWidgetStartDateModel =
        createModel(context, () => CustomDatePickerWidgetModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
  }

  @override
  void dispose() {
    billerTextFieldFocusNode?.dispose();
    billerTextFieldTextController?.dispose();

    referenceNumTextFieldFocusNode?.dispose();
    referenceNumTextFieldTextController?.dispose();

    paymentAmountTextFieldFocusNode?.dispose();
    paymentAmountTextFieldTextController?.dispose();

    customDatePickerWidgetPaymentDateModel.dispose();
    customDatePickerWidgetStartDateModel.dispose();
    textFieldRemarksFocusNode?.dispose();
    textFieldRemarksTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
    loadingStateComponentModel.dispose();
  }
}
