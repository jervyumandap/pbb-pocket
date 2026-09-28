import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pay_bill_page_widget.dart' show PayBillPageWidget;
import 'package:flutter/material.dart';

class PayBillPageModel extends FlutterFlowModel<PayBillPageWidget> {
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

  String? balanceAmountErrorMessage;

  bool isAccountSelected = true;

  String? selectedAccountNumber;

  String? selectedAccountName;

  String fundTransferType = 'empty';

  bool checkBoxValue = false;

  List<WBSavedBillerStruct> savedBillerFav = [];
  void addToSavedBillerFav(WBSavedBillerStruct item) =>
      savedBillerFav.add(item);
  void removeFromSavedBillerFav(WBSavedBillerStruct item) =>
      savedBillerFav.remove(item);
  void removeAtIndexFromSavedBillerFav(int index) =>
      savedBillerFav.removeAt(index);
  void insertAtIndexInSavedBillerFav(int index, WBSavedBillerStruct item) =>
      savedBillerFav.insert(index, item);
  void updateSavedBillerFavAtIndex(
          int index, Function(WBSavedBillerStruct) updateFn) =>
      savedBillerFav[index] = updateFn(savedBillerFav[index]);

  List<BillerListInfoStruct> billerList = [];
  void addToBillerList(BillerListInfoStruct item) => billerList.add(item);
  void removeFromBillerList(BillerListInfoStruct item) =>
      billerList.remove(item);
  void removeAtIndexFromBillerList(int index) => billerList.removeAt(index);
  void insertAtIndexInBillerList(int index, BillerListInfoStruct item) =>
      billerList.insert(index, item);
  void updateBillerListAtIndex(
          int index, Function(BillerListInfoStruct) updateFn) =>
      billerList[index] = updateFn(billerList[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Get Banks)] action in PayBillPage widget.
  ApiCallResponse? getBanksResponse;
  // Stores action output result for [Backend Call - API (Get Beneficiaries)] action in PayBillPage widget.
  ApiCallResponse? beneficiaryResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for AccountNumberTextfield.
  late TextfieldDoubleModel accountNumberTextfieldModel;
  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Retail Saved Biller Update)] action in TransactionItem widget.
  ApiCallResponse? updateBillersss;
  // Stores action output result for [Backend Call - API (Retail Saved Biller Delete)] action in TransactionItem widget.
  ApiCallResponse? apiResulthml;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Validate Form] action in PrimaryButtonComponent widget.
  bool? validateForm;
  // Stores action output result for [Backend Call - API (Validate Account)] action in PrimaryButtonComponent widget.
  ApiCallResponse? validateAccountOutput;
  // Stores action output result for [Action Block - OTP] action in SubmitButtonConfirmation widget.
  String? otpBlock;
  // Stores action output result for [Custom Action - genReferenceNumber] action in Button widget.
  String? referenceNumber13v2;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    accountNumberTextfieldModel =
        createModel(context, () => TextfieldDoubleModel());
    accountNameTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    accountNumberTextfieldModel.textControllerValidator =
        _formTextFieldValidator1;
    accountNameTextfieldModel.textControllerValidator =
        _formTextFieldValidator2;
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    accountNumberTextfieldModel.dispose();
    accountNameTextfieldModel.dispose();
    primaryButtonComponentModel.dispose();
    loadingStateComponentModel.dispose();
  }

  /// Action blocks.
  Future getBillerList(BuildContext context) async {
    ApiCallResponse? apiResultm66;

    apiResultm66 =
        await WhitebankGroupAPIGroup.retailBillsPaymentBillerDetailsCall.call(
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
    );

    if ((apiResultm66.succeeded ?? true)) {
      billerList = (getJsonField(
        (apiResultm66.jsonBody ?? ''),
        r'''$.billers''',
        true,
      )!
              .toList()
              .map<BillerListInfoStruct?>(BillerListInfoStruct.maybeFromMap)
              .toList() as Iterable<BillerListInfoStruct?>)
          .withoutNulls
          .toList()
          .cast<BillerListInfoStruct>();
    }
  }

  Future getSavedBillers(BuildContext context) async {
    ApiCallResponse? getSavedBillers;

    getSavedBillers =
        await WhitebankGroupAPIGroup.retailSavedBillersListCall.call(
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
    );

    if ((getSavedBillers.succeeded ?? true)) {
      savedBillerFav = (getJsonField(
        (getSavedBillers.jsonBody ?? ''),
        r'''$.savedBillers''',
        true,
      )!
              .toList()
              .map<WBSavedBillerStruct?>(WBSavedBillerStruct.maybeFromMap)
              .toList() as Iterable<WBSavedBillerStruct?>)
          .withoutNulls
          .toList()
          .cast<WBSavedBillerStruct>();
    }
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

    return null;
  }
}
