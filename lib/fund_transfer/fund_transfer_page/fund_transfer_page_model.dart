import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fund_transfer_page_widget.dart' show FundTransferPageWidget;
import 'package:flutter/material.dart';

class FundTransferPageModel extends FlutterFlowModel<FundTransferPageWidget> {
  ///  Local state fields for this page.

  bool onSelectedSendMoneyVia = false;

  String? bankCode = '';

  FundTransferPayloadStruct? transactionPayload;
  void updateTransactionPayloadStruct(
      Function(FundTransferPayloadStruct) updateFn) {
    updateFn(transactionPayload ??= FundTransferPayloadStruct());
  }

  bool isLoading = true;

  AccountsV2Struct? currentAccount;
  void updateCurrentAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(currentAccount ??= AccountsV2Struct());
  }

  bool transactionActionState = false;

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

  PGSWithinTransferHeaderStruct? pGSWithinTransferHeader;
  void updatePGSWithinTransferHeaderStruct(
      Function(PGSWithinTransferHeaderStruct) updateFn) {
    updateFn(pGSWithinTransferHeader ??= PGSWithinTransferHeaderStruct());
  }

  PGSWithinTransferBodyStruct? pGSWithinTransferBody;
  void updatePGSWithinTransferBodyStruct(
      Function(PGSWithinTransferBodyStruct) updateFn) {
    updateFn(pGSWithinTransferBody ??= PGSWithinTransferBodyStruct());
  }

  bool isFavoritesSelected = false;

  List<BankModelStruct> bankList = [];
  void addToBankList(BankModelStruct item) => bankList.add(item);
  void removeFromBankList(BankModelStruct item) => bankList.remove(item);
  void removeAtIndexFromBankList(int index) => bankList.removeAt(index);
  void insertAtIndexInBankList(int index, BankModelStruct item) =>
      bankList.insert(index, item);
  void updateBankListAtIndex(int index, Function(BankModelStruct) updateFn) =>
      bankList[index] = updateFn(bankList[index]);

  dynamic bankValueModelState;

  String? bankName;

  AccountsStruct? ownAccountCard;
  void updateOwnAccountCardStruct(Function(AccountsStruct) updateFn) {
    updateFn(ownAccountCard ??= AccountsStruct());
  }

  bool accountInvalid = false;

  bool isLimitExceeded = false;

  String? limitAmountErrorMessage;

  bool isBankInvalid = false;

  bool isBalanceNotEnough = false;

  String? accountErrorMessage;

  bool isAccountSelected = true;

  String? selectedAccountNumber;

  String? selectedAccountName;

  String fundTransferType = 'empty';

  bool checkBoxValue = false;

  String? selectedAccountType;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Get Banks)] action in FundTransferPage widget.
  ApiCallResponse? getBanksResponse;
  // Stores action output result for [Backend Call - API (Get Beneficiaries)] action in FundTransferPage widget.
  ApiCallResponse? beneficiaryResponse;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for account_number_textfield.
  late TextfieldDoubleModel accountNumberTextfieldModel;
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Get Beneficiaries)] action in TransactionItem widget.
  ApiCallResponse? beneficiaryResponse2;
  // Stores action output result for [Backend Call - API (Update Beneficiary)] action in TransactionItem widget.
  ApiCallResponse? beneficiaryUpdateResponse;
  // Stores action output result for [Backend Call - API (Get Beneficiaries)] action in TransactionItem widget.
  ApiCallResponse? beneficiaryResponse3;
  // Stores action output result for [Backend Call - API (Delete Beneficiary)] action in TransactionItem widget.
  ApiCallResponse? beneficiaryDeleteResponse;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Retail Transfers Validate Account)] action in PrimaryButtonComponent widget.
  ApiCallResponse? validateTransfersAccount;
  // Stores action output result for [Validate Form] action in PrimaryButtonComponent widget.
  bool? validateForm;
  // Stores action output result for [Backend Call - API (Validate Account)] action in PrimaryButtonComponent widget.
  ApiCallResponse? validateAccountOutput;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    accountNumberTextfieldModel =
        createModel(context, () => TextfieldDoubleModel());
    accountNameTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    accountNumberTextfieldModel.textControllerValidator =
        _formTextFieldValidator1;
    accountNameTextfieldModel.textControllerValidator =
        _formTextFieldValidator2;
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    accountNumberTextfieldModel.dispose();
    accountNameTextfieldModel.dispose();
    primaryButtonComponentModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Invalid input';
    }

    if (val.length < 11) {
      return 'Please Enter Valid Account Number';
    }
    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter account name';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }
    if (val.length > 19) {
      return 'Maximum 19 characters allowed, currently ${val.length}.';
    }

    return null;
  }
}
