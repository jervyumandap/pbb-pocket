import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/pill_container_component/pill_container_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'term_deposit_new_page_widget.dart' show TermDepositNewPageWidget;
import 'package:flutter/material.dart';

class TermDepositNewPageModel
    extends FlutterFlowModel<TermDepositNewPageWidget> {
  ///  Local state fields for this page.

  bool isConfirmation = false;

  AccountsV2Struct? currentAccount;
  void updateCurrentAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(currentAccount ??= AccountsV2Struct());
  }

  bool isLoading = true;

  bool transactionActionState = false;

  DateTime? maturityDate;

  double? maturityValue = 0.0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Action Block - OauthToken] action in TermDepositNewPage widget.
  String? oAuthToken;
  // Stores action output result for [Action Block - GetAccounts] action in TermDepositNewPage widget.
  List<AccountsStruct>? accountsOutput;
  // Model for btnChangeMoneyMethod.
  late PillContainerComponentModel btnChangeMoneyMethodModel;
  // State field(s) for dropdownBankName widget.
  String? dropdownBankNameValue;
  FormFieldController<String>? dropdownBankNameValueController;
  // Model for textFieldAccountName.
  late PrimaryTextFieldComponentModel textFieldAccountNameModel;
  // Model for textfieldAccountNumber.
  late TextfieldDoubleModel textfieldAccountNumberModel;
  // State field(s) for textFieldAmount widget.
  FocusNode? textFieldAmountFocusNode;
  TextEditingController? textFieldAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldAmountTextControllerValidator;
  String? _textFieldAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'An amount is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - formatNumberCustom] action in textFieldAmount widget.
  String? formattedAmount;
  // State field(s) for dropdownIPF widget.
  int? dropdownIPFValue;
  FormFieldController<int>? dropdownIPFValueController;
  // State field(s) for dropdownTerm widget.
  int? dropdownTermValue;
  FormFieldController<int>? dropdownTermValueController;
  // State field(s) for textFieldRemarks widget.
  FocusNode? textFieldRemarksFocusNode;
  TextEditingController? textFieldRemarksTextController;
  String? Function(BuildContext, String?)?
      textFieldRemarksTextControllerValidator;
  // Stores action output result for [Custom Action - genReferenceNumber] action in btnContinue widget.
  String? referenceNumberOutput;
  // State field(s) for txtFieldAmountWeb widget.
  FocusNode? txtFieldAmountWebFocusNode;
  TextEditingController? txtFieldAmountWebTextController;
  String? Function(BuildContext, String?)?
      txtFieldAmountWebTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for dropdownIPFweb widget.
  int? dropdownIPFwebValue;
  FormFieldController<int>? dropdownIPFwebValueController;
  // State field(s) for dropdownTermWeb widget.
  int? dropdownTermWebValue;
  FormFieldController<int>? dropdownTermWebValueController;
  // Stores action output result for [Custom Action - genReferenceNumber] action in btnConfirmation widget.
  String? referenceNumberWebOutput;
  // Stores action output result for [Action Block - OTP] action in btnSubmitWeb widget.
  String? otpVerification;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    btnChangeMoneyMethodModel =
        createModel(context, () => PillContainerComponentModel());
    textFieldAccountNameModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    textfieldAccountNumberModel =
        createModel(context, () => TextfieldDoubleModel());
    textFieldAmountTextControllerValidator =
        _textFieldAmountTextControllerValidator;
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    btnChangeMoneyMethodModel.dispose();
    textFieldAccountNameModel.dispose();
    textfieldAccountNumberModel.dispose();
    textFieldAmountFocusNode?.dispose();
    textFieldAmountTextController?.dispose();

    textFieldRemarksFocusNode?.dispose();
    textFieldRemarksTextController?.dispose();

    txtFieldAmountWebFocusNode?.dispose();
    txtFieldAmountWebTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
