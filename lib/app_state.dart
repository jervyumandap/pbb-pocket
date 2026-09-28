import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isEbillingWTCompleted =
          prefs.getBool('ff_isEbillingWTCompleted') ?? _isEbillingWTCompleted;
    });
    _safeInit(() {
      _isDarkMode = prefs.getBool('ff_isDarkMode') ?? _isDarkMode;
    });
    _safeInit(() {
      _sideBarControl = prefs.getString('ff_sideBarControl') ?? _sideBarControl;
    });
    _safeInit(() {
      _prefModeOfContacts =
          prefs.getBool('ff_prefModeOfContacts') ?? _prefModeOfContacts;
    });
    _safeInit(() {
      _lastLoggedInEmail =
          prefs.getString('ff_lastLoggedInEmail') ?? _lastLoggedInEmail;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_UserDetailsState')) {
        try {
          final serializedData = prefs.getString('ff_UserDetailsState') ?? '{}';
          _UserDetailsState =
              UserDetailsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_DeviceDetails')) {
        try {
          final serializedData = prefs.getString('ff_DeviceDetails') ?? '{}';
          _DeviceDetails =
              DeviceDataStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _AccountsCardStylePreferenceAppState =
          prefs.containsKey('ff_AccountsCardStylePreferenceAppState')
              ? deserializeEnum<AccountsCardStylePreference>(
                  prefs.getString('ff_AccountsCardStylePreferenceAppState'))
              : _AccountsCardStylePreferenceAppState;
    });
    _safeInit(() {
      _userID = prefs.getString('ff_userID') ?? _userID;
    });
    _safeInit(() {
      _globalRoute = prefs.getString('ff_globalRoute') ?? _globalRoute;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_SelectedFavoriteFundTransfer')) {
        try {
          final serializedData =
              prefs.getString('ff_SelectedFavoriteFundTransfer') ?? '{}';
          _SelectedFavoriteFundTransfer =
              FavoriteTransfersStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _module = prefs.getString('ff_module') ?? _module;
    });
    _safeInit(() {
      _isBalanceVisible =
          prefs.getBool('ff_isBalanceVisible') ?? _isBalanceVisible;
    });
    _safeInit(() {
      _isBiometricsEnabled =
          prefs.getBool('ff_isBiometricsEnabled') ?? _isBiometricsEnabled;
    });
    _safeInit(() {
      _canMpinLogin = prefs.getBool('ff_canMpinLogin') ?? _canMpinLogin;
    });
    _safeInit(() {
      _canBiometricsLogin =
          prefs.getBool('ff_canBiometricsLogin') ?? _canBiometricsLogin;
    });
    _safeInit(() {
      _mpinLengthConfig =
          prefs.getInt('ff_mpinLengthConfig') ?? _mpinLengthConfig;
    });
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
    _safeInit(() {
      _isDeviceSetupDone =
          prefs.getBool('ff_isDeviceSetupDone') ?? _isDeviceSetupDone;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_CurrentDeviceDetailsAppState')) {
        try {
          final serializedData =
              prefs.getString('ff_CurrentDeviceDetailsAppState') ?? '{}';
          _CurrentDeviceDetailsAppState =
              RegisteredDeviceDataStruct.fromSerializableMap(
                  jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _hasPasskey = prefs.getBool('ff_hasPasskey') ?? _hasPasskey;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _makePhoto = false;
  bool get makePhoto => _makePhoto;
  set makePhoto(bool value) {
    _makePhoto = value;
  }

  String _fileBase64 = '';
  String get fileBase64 => _fileBase64;
  set fileBase64(String value) {
    _fileBase64 = value;
  }

  bool _isEbillingWTCompleted = false;
  bool get isEbillingWTCompleted => _isEbillingWTCompleted;
  set isEbillingWTCompleted(bool value) {
    _isEbillingWTCompleted = value;
    prefs.setBool('ff_isEbillingWTCompleted', value);
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool value) {
    _isDarkMode = value;
    prefs.setBool('ff_isDarkMode', value);
  }

  bool _isDrawerOpen = false;
  bool get isDrawerOpen => _isDrawerOpen;
  set isDrawerOpen(bool value) {
    _isDrawerOpen = value;
  }

  /// expanded or collapsed or expand_on_hover
  String _sideBarControl = 'expanded';
  String get sideBarControl => _sideBarControl;
  set sideBarControl(String value) {
    _sideBarControl = value;
    prefs.setString('ff_sideBarControl', value);
  }

  /// For updating state
  bool _isDateOfBirthSet = false;
  bool get isDateOfBirthSet => _isDateOfBirthSet;
  set isDateOfBirthSet(bool value) {
    _isDateOfBirthSet = value;
  }

  bool _IsInstaPayChannelSelected = true;
  bool get IsInstaPayChannelSelected => _IsInstaPayChannelSelected;
  set IsInstaPayChannelSelected(bool value) {
    _IsInstaPayChannelSelected = value;
  }

  PBBAPIDataTypeStruct _billspaymentResponse = PBBAPIDataTypeStruct();
  PBBAPIDataTypeStruct get billspaymentResponse => _billspaymentResponse;
  set billspaymentResponse(PBBAPIDataTypeStruct value) {
    _billspaymentResponse = value;
  }

  void updateBillspaymentResponseStruct(
      Function(PBBAPIDataTypeStruct) updateFn) {
    updateFn(_billspaymentResponse);
  }

  String _checkpointType = '';
  String get checkpointType => _checkpointType;
  set checkpointType(String value) {
    _checkpointType = value;
  }

  String _chosenBankName = '';
  String get chosenBankName => _chosenBankName;
  set chosenBankName(String value) {
    _chosenBankName = value;
  }

  bool _prefModeOfContacts = true;
  bool get prefModeOfContacts => _prefModeOfContacts;
  set prefModeOfContacts(bool value) {
    _prefModeOfContacts = value;
    prefs.setBool('ff_prefModeOfContacts', value);
  }

  String _uiComplexity = 'simpleMode';
  String get uiComplexity => _uiComplexity;
  set uiComplexity(String value) {
    _uiComplexity = value;
  }

  TransferDetailsStruct _FundTransferRequest = TransferDetailsStruct();
  TransferDetailsStruct get FundTransferRequest => _FundTransferRequest;
  set FundTransferRequest(TransferDetailsStruct value) {
    _FundTransferRequest = value;
  }

  void updateFundTransferRequestStruct(
      Function(TransferDetailsStruct) updateFn) {
    updateFn(_FundTransferRequest);
  }

  bool _onChosenRecipient = false;
  bool get onChosenRecipient => _onChosenRecipient;
  set onChosenRecipient(bool value) {
    _onChosenRecipient = value;
  }

  String _lastLoggedInEmail = '';
  String get lastLoggedInEmail => _lastLoggedInEmail;
  set lastLoggedInEmail(String value) {
    _lastLoggedInEmail = value;
    prefs.setString('ff_lastLoggedInEmail', value);
  }

  String _selectedAmount = '';
  String get selectedAmount => _selectedAmount;
  set selectedAmount(String value) {
    _selectedAmount = value;
  }

  List<int> _numbers = [0, 1, 2, 3, 4, 5, 6];
  List<int> get numbers => _numbers;
  set numbers(List<int> value) {
    _numbers = value;
  }

  void addToNumbers(int value) {
    numbers.add(value);
  }

  void removeFromNumbers(int value) {
    numbers.remove(value);
  }

  void removeAtIndexFromNumbers(int index) {
    numbers.removeAt(index);
  }

  void updateNumbersAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    numbers[index] = updateFn(_numbers[index]);
  }

  void insertAtIndexInNumbers(int index, int value) {
    numbers.insert(index, value);
  }

  bool _usePassword = false;
  bool get usePassword => _usePassword;
  set usePassword(bool value) {
    _usePassword = value;
  }

  UserDetailsStruct _UserDetailsState = UserDetailsStruct();
  UserDetailsStruct get UserDetailsState => _UserDetailsState;
  set UserDetailsState(UserDetailsStruct value) {
    _UserDetailsState = value;
    prefs.setString('ff_UserDetailsState', value.serialize());
  }

  void updateUserDetailsStateStruct(Function(UserDetailsStruct) updateFn) {
    updateFn(_UserDetailsState);
    prefs.setString('ff_UserDetailsState', _UserDetailsState.serialize());
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  bool _biometrics = false;
  bool get biometrics => _biometrics;
  set biometrics(bool value) {
    _biometrics = value;
  }

  String _currentPin = '';
  String get currentPin => _currentPin;
  set currentPin(String value) {
    _currentPin = value;
  }

  String _pinInput = '';
  String get pinInput => _pinInput;
  set pinInput(String value) {
    _pinInput = value;
  }

  String _confirmedMpin = '';
  String get confirmedMpin => _confirmedMpin;
  set confirmedMpin(String value) {
    _confirmedMpin = value;
  }

  bool _pinIsIncorrect = false;
  bool get pinIsIncorrect => _pinIsIncorrect;
  set pinIsIncorrect(bool value) {
    _pinIsIncorrect = value;
  }

  int _numberOfAttempts = 0;
  int get numberOfAttempts => _numberOfAttempts;
  set numberOfAttempts(int value) {
    _numberOfAttempts = value;
  }

  int _pinFailedAttempts = 0;
  int get pinFailedAttempts => _pinFailedAttempts;
  set pinFailedAttempts(int value) {
    _pinFailedAttempts = value;
  }

  DeviceDataStruct _DeviceDetails = DeviceDataStruct();
  DeviceDataStruct get DeviceDetails => _DeviceDetails;
  set DeviceDetails(DeviceDataStruct value) {
    _DeviceDetails = value;
    prefs.setString('ff_DeviceDetails', value.serialize());
  }

  void updateDeviceDetailsStruct(Function(DeviceDataStruct) updateFn) {
    updateFn(_DeviceDetails);
    prefs.setString('ff_DeviceDetails', _DeviceDetails.serialize());
  }

  dynamic _jsonv2;
  dynamic get jsonv2 => _jsonv2;
  set jsonv2(dynamic value) {
    _jsonv2 = value;
  }

  CIFDetailsStruct _CIF = CIFDetailsStruct();
  CIFDetailsStruct get CIF => _CIF;
  set CIF(CIFDetailsStruct value) {
    _CIF = value;
  }

  void updateCIFStruct(Function(CIFDetailsStruct) updateFn) {
    updateFn(_CIF);
  }

  String _dateOfBirth = '';
  String get dateOfBirth => _dateOfBirth;
  set dateOfBirth(String value) {
    _dateOfBirth = value;
  }

  AccountsCardStylePreference? _AccountsCardStylePreferenceAppState =
      AccountsCardStylePreference.card;
  AccountsCardStylePreference? get AccountsCardStylePreferenceAppState =>
      _AccountsCardStylePreferenceAppState;
  set AccountsCardStylePreferenceAppState(AccountsCardStylePreference? value) {
    _AccountsCardStylePreferenceAppState = value;
    value != null
        ? prefs.setString(
            'ff_AccountsCardStylePreferenceAppState', value.serialize())
        : prefs.remove('ff_AccountsCardStylePreferenceAppState');
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String value) {
    _userID = value;
    prefs.setString('ff_userID', value);
  }

  UserV3Struct _userv3 = UserV3Struct();
  UserV3Struct get userv3 => _userv3;
  set userv3(UserV3Struct value) {
    _userv3 = value;
  }

  void updateUserv3Struct(Function(UserV3Struct) updateFn) {
    updateFn(_userv3);
  }

  BillsPaymentRequestBodyStruct _BillsPaymentRequestBodyAppState =
      BillsPaymentRequestBodyStruct();
  BillsPaymentRequestBodyStruct get BillsPaymentRequestBodyAppState =>
      _BillsPaymentRequestBodyAppState;
  set BillsPaymentRequestBodyAppState(BillsPaymentRequestBodyStruct value) {
    _BillsPaymentRequestBodyAppState = value;
  }

  void updateBillsPaymentRequestBodyAppStateStruct(
      Function(BillsPaymentRequestBodyStruct) updateFn) {
    updateFn(_BillsPaymentRequestBodyAppState);
  }

  AccountsV2Struct _PaymentFromSelectedAccountAppState = AccountsV2Struct();
  AccountsV2Struct get PaymentFromSelectedAccountAppState =>
      _PaymentFromSelectedAccountAppState;
  set PaymentFromSelectedAccountAppState(AccountsV2Struct value) {
    _PaymentFromSelectedAccountAppState = value;
  }

  void updatePaymentFromSelectedAccountAppStateStruct(
      Function(AccountsV2Struct) updateFn) {
    updateFn(_PaymentFromSelectedAccountAppState);
  }

  FrequentBillerDataModelStruct _PaymentToSelectedBillerAppState =
      FrequentBillerDataModelStruct();
  FrequentBillerDataModelStruct get PaymentToSelectedBillerAppState =>
      _PaymentToSelectedBillerAppState;
  set PaymentToSelectedBillerAppState(FrequentBillerDataModelStruct value) {
    _PaymentToSelectedBillerAppState = value;
  }

  void updatePaymentToSelectedBillerAppStateStruct(
      Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(_PaymentToSelectedBillerAppState);
  }

  AccountsV2Struct _currentAccount = AccountsV2Struct();
  AccountsV2Struct get currentAccount => _currentAccount;
  set currentAccount(AccountsV2Struct value) {
    _currentAccount = value;
  }

  void updateCurrentAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(_currentAccount);
  }

  HeaderStruct _SmsRequestHeaderAppState = HeaderStruct();
  HeaderStruct get SmsRequestHeaderAppState => _SmsRequestHeaderAppState;
  set SmsRequestHeaderAppState(HeaderStruct value) {
    _SmsRequestHeaderAppState = value;
  }

  void updateSmsRequestHeaderAppStateStruct(Function(HeaderStruct) updateFn) {
    updateFn(_SmsRequestHeaderAppState);
  }

  OTPDetailsStruct _OTPDetailsAppState = OTPDetailsStruct();
  OTPDetailsStruct get OTPDetailsAppState => _OTPDetailsAppState;
  set OTPDetailsAppState(OTPDetailsStruct value) {
    _OTPDetailsAppState = value;
  }

  void updateOTPDetailsAppStateStruct(Function(OTPDetailsStruct) updateFn) {
    updateFn(_OTPDetailsAppState);
  }

  GenerateQRModelStruct _GenerateQRModelAppState = GenerateQRModelStruct();
  GenerateQRModelStruct get GenerateQRModelAppState => _GenerateQRModelAppState;
  set GenerateQRModelAppState(GenerateQRModelStruct value) {
    _GenerateQRModelAppState = value;
  }

  void updateGenerateQRModelAppStateStruct(
      Function(GenerateQRModelStruct) updateFn) {
    updateFn(_GenerateQRModelAppState);
  }

  AccountsV2Struct _GenerateQRFromAccountAppState = AccountsV2Struct();
  AccountsV2Struct get GenerateQRFromAccountAppState =>
      _GenerateQRFromAccountAppState;
  set GenerateQRFromAccountAppState(AccountsV2Struct value) {
    _GenerateQRFromAccountAppState = value;
  }

  void updateGenerateQRFromAccountAppStateStruct(
      Function(AccountsV2Struct) updateFn) {
    updateFn(_GenerateQRFromAccountAppState);
  }

  String _globalRoute = '';
  String get globalRoute => _globalRoute;
  set globalRoute(String value) {
    _globalRoute = value;
    prefs.setString('ff_globalRoute', value);
  }

  FavoriteTransfersStruct _SelectedFavoriteFundTransfer =
      FavoriteTransfersStruct();
  FavoriteTransfersStruct get SelectedFavoriteFundTransfer =>
      _SelectedFavoriteFundTransfer;
  set SelectedFavoriteFundTransfer(FavoriteTransfersStruct value) {
    _SelectedFavoriteFundTransfer = value;
    prefs.setString('ff_SelectedFavoriteFundTransfer', value.serialize());
  }

  void updateSelectedFavoriteFundTransferStruct(
      Function(FavoriteTransfersStruct) updateFn) {
    updateFn(_SelectedFavoriteFundTransfer);
    prefs.setString('ff_SelectedFavoriteFundTransfer',
        _SelectedFavoriteFundTransfer.serialize());
  }

  String _module = '';
  String get module => _module;
  set module(String value) {
    _module = value;
    prefs.setString('ff_module', value);
  }

  AccountsV2Struct _accounts = AccountsV2Struct();
  AccountsV2Struct get accounts => _accounts;
  set accounts(AccountsV2Struct value) {
    _accounts = value;
  }

  void updateAccountsStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(_accounts);
  }

  /// for inbox badge count
  int _InboxUnreadCount = 9;
  int get InboxUnreadCount => _InboxUnreadCount;
  set InboxUnreadCount(int value) {
    _InboxUnreadCount = value;
  }

  PaymentIniatedModelStruct _FundTransferiniatedResponse =
      PaymentIniatedModelStruct();
  PaymentIniatedModelStruct get FundTransferiniatedResponse =>
      _FundTransferiniatedResponse;
  set FundTransferiniatedResponse(PaymentIniatedModelStruct value) {
    _FundTransferiniatedResponse = value;
  }

  void updateFundTransferiniatedResponseStruct(
      Function(PaymentIniatedModelStruct) updateFn) {
    updateFn(_FundTransferiniatedResponse);
  }

  List<AccountsStruct> _AccountsState = [];
  List<AccountsStruct> get AccountsState => _AccountsState;
  set AccountsState(List<AccountsStruct> value) {
    _AccountsState = value;
  }

  void addToAccountsState(AccountsStruct value) {
    AccountsState.add(value);
  }

  void removeFromAccountsState(AccountsStruct value) {
    AccountsState.remove(value);
  }

  void removeAtIndexFromAccountsState(int index) {
    AccountsState.removeAt(index);
  }

  void updateAccountsStateAtIndex(
    int index,
    AccountsStruct Function(AccountsStruct) updateFn,
  ) {
    AccountsState[index] = updateFn(_AccountsState[index]);
  }

  void insertAtIndexInAccountsState(int index, AccountsStruct value) {
    AccountsState.insert(index, value);
  }

  EnrollingUserStruct _EnrollingUserAppstate = EnrollingUserStruct();
  EnrollingUserStruct get EnrollingUserAppstate => _EnrollingUserAppstate;
  set EnrollingUserAppstate(EnrollingUserStruct value) {
    _EnrollingUserAppstate = value;
  }

  void updateEnrollingUserAppstateStruct(
      Function(EnrollingUserStruct) updateFn) {
    updateFn(_EnrollingUserAppstate);
  }

  List<TransactionTypesModelStruct> _TransactionTypes = [];
  List<TransactionTypesModelStruct> get TransactionTypes => _TransactionTypes;
  set TransactionTypes(List<TransactionTypesModelStruct> value) {
    _TransactionTypes = value;
  }

  void addToTransactionTypes(TransactionTypesModelStruct value) {
    TransactionTypes.add(value);
  }

  void removeFromTransactionTypes(TransactionTypesModelStruct value) {
    TransactionTypes.remove(value);
  }

  void removeAtIndexFromTransactionTypes(int index) {
    TransactionTypes.removeAt(index);
  }

  void updateTransactionTypesAtIndex(
    int index,
    TransactionTypesModelStruct Function(TransactionTypesModelStruct) updateFn,
  ) {
    TransactionTypes[index] = updateFn(_TransactionTypes[index]);
  }

  void insertAtIndexInTransactionTypes(
      int index, TransactionTypesModelStruct value) {
    TransactionTypes.insert(index, value);
  }

  AccountsStruct _currentAccountV2 = AccountsStruct();
  AccountsStruct get currentAccountV2 => _currentAccountV2;
  set currentAccountV2(AccountsStruct value) {
    _currentAccountV2 = value;
  }

  void updateCurrentAccountV2Struct(Function(AccountsStruct) updateFn) {
    updateFn(_currentAccountV2);
  }

  dynamic _accountsJson = jsonDecode(
      '{\"accounts\":[{\"accountNumber\":\"****0001\",\"fullAccountNumber\":\"1234567890001\",\"accountType\":\"SAVINGS\",\"accountName\":\"Peso Savings Account\",\"currency\":\"PHP\",\"availableBalance\":50000,\"currentBalance\":50000,\"status\":\"ACTIVE\",\"isPrimary\":true,\"openedDate\":\"2020-01-15\"},{\"accountNumber\":\"****0002\",\"fullAccountNumber\":\"1234567890002\",\"accountType\":\"CHECKING\",\"accountName\":\"Peso Checking Account\",\"currency\":\"PHP\",\"availableBalance\":25000,\"currentBalance\":25500,\"status\":\"ACTIVE\",\"isPrimary\":false,\"openedDate\":\"2020-03-20\"},{\"accountNumber\":\"****0003\",\"fullAccountNumber\":\"1234567890003\",\"accountType\":\"TIME_DEPOSIT\",\"accountName\":\"6-Month Time Deposit\",\"currency\":\"PHP\",\"availableBalance\":100000,\"currentBalance\":100000,\"status\":\"ACTIVE\",\"isPrimary\":false,\"openedDate\":\"2024-06-01\"},{\"accountNumber\":\"****0004\",\"fullAccountNumber\":\"1234567890004\",\"accountType\":\"SAVINGS\",\"accountName\":\"High-Yield Savings Account\",\"currency\":\"PHP\",\"availableBalance\":250000,\"currentBalance\":250000,\"status\":\"ACTIVE\",\"isPrimary\":false,\"openedDate\":\"2025-01-10\"}],\"lastRefreshedAt\":\"2026-03-31T06:27:28.111Z\"}');
  dynamic get accountsJson => _accountsJson;
  set accountsJson(dynamic value) {
    _accountsJson = value;
  }

  List<TransactionLimitsModelV2Struct> _transactionLimits = [];
  List<TransactionLimitsModelV2Struct> get transactionLimits =>
      _transactionLimits;
  set transactionLimits(List<TransactionLimitsModelV2Struct> value) {
    _transactionLimits = value;
  }

  void addToTransactionLimits(TransactionLimitsModelV2Struct value) {
    transactionLimits.add(value);
  }

  void removeFromTransactionLimits(TransactionLimitsModelV2Struct value) {
    transactionLimits.remove(value);
  }

  void removeAtIndexFromTransactionLimits(int index) {
    transactionLimits.removeAt(index);
  }

  void updateTransactionLimitsAtIndex(
    int index,
    TransactionLimitsModelV2Struct Function(TransactionLimitsModelV2Struct)
        updateFn,
  ) {
    transactionLimits[index] = updateFn(_transactionLimits[index]);
  }

  void insertAtIndexInTransactionLimits(
      int index, TransactionLimitsModelV2Struct value) {
    transactionLimits.insert(index, value);
  }

  int _limitsCachedAt = 0;
  int get limitsCachedAt => _limitsCachedAt;
  set limitsCachedAt(int value) {
    _limitsCachedAt = value;
  }

  String _selectedTransferType = '';
  String get selectedTransferType => _selectedTransferType;
  set selectedTransferType(String value) {
    _selectedTransferType = value;
  }

  double _selectedLimit = 0.0;
  double get selectedLimit => _selectedLimit;
  set selectedLimit(double value) {
    _selectedLimit = value;
  }

  QuickActionModelStruct _DashboardQuickActionState = QuickActionModelStruct();
  QuickActionModelStruct get DashboardQuickActionState =>
      _DashboardQuickActionState;
  set DashboardQuickActionState(QuickActionModelStruct value) {
    _DashboardQuickActionState = value;
  }

  void updateDashboardQuickActionStateStruct(
      Function(QuickActionModelStruct) updateFn) {
    updateFn(_DashboardQuickActionState);
  }

  bool _shouldRefreshTransactions = false;
  bool get shouldRefreshTransactions => _shouldRefreshTransactions;
  set shouldRefreshTransactions(bool value) {
    _shouldRefreshTransactions = value;
  }

  bool _isBalanceVisible = false;
  bool get isBalanceVisible => _isBalanceVisible;
  set isBalanceVisible(bool value) {
    _isBalanceVisible = value;
    prefs.setBool('ff_isBalanceVisible', value);
  }

  bool _isBiometricsEnabled = false;
  bool get isBiometricsEnabled => _isBiometricsEnabled;
  set isBiometricsEnabled(bool value) {
    _isBiometricsEnabled = value;
    prefs.setBool('ff_isBiometricsEnabled', value);
  }

  bool _isMpinSet = false;
  bool get isMpinSet => _isMpinSet;
  set isMpinSet(bool value) {
    _isMpinSet = value;
  }

  /// Use in changing Mpin, should clear after success Mpin change.
  String _currentMpinToChangeAppState = '';
  String get currentMpinToChangeAppState => _currentMpinToChangeAppState;
  set currentMpinToChangeAppState(String value) {
    _currentMpinToChangeAppState = value;
  }

  WBTransactionLimitsModelStruct _TransactionLimit =
      WBTransactionLimitsModelStruct();
  WBTransactionLimitsModelStruct get TransactionLimit => _TransactionLimit;
  set TransactionLimit(WBTransactionLimitsModelStruct value) {
    _TransactionLimit = value;
  }

  void updateTransactionLimitStruct(
      Function(WBTransactionLimitsModelStruct) updateFn) {
    updateFn(_TransactionLimit);
  }

  bool _transactionLimitUpdated = true;
  bool get transactionLimitUpdated => _transactionLimitUpdated;
  set transactionLimitUpdated(bool value) {
    _transactionLimitUpdated = value;
  }

  /// For switching login method
  bool _canMpinLogin = false;
  bool get canMpinLogin => _canMpinLogin;
  set canMpinLogin(bool value) {
    _canMpinLogin = value;
    prefs.setBool('ff_canMpinLogin', value);
  }

  /// For switching login method
  bool _canBiometricsLogin = false;
  bool get canBiometricsLogin => _canBiometricsLogin;
  set canBiometricsLogin(bool value) {
    _canBiometricsLogin = value;
    prefs.setBool('ff_canBiometricsLogin', value);
  }

  bool _headerCollapsed = false;
  bool get headerCollapsed => _headerCollapsed;
  set headerCollapsed(bool value) {
    _headerCollapsed = value;
  }

  String _alias = '';
  String get alias => _alias;
  set alias(String value) {
    _alias = value;
  }

  /// /retail/config/mpin
  int _mpinLengthConfig = 4;
  int get mpinLengthConfig => _mpinLengthConfig;
  set mpinLengthConfig(int value) {
    _mpinLengthConfig = value;
    prefs.setInt('ff_mpinLengthConfig', value);
  }

  double _accountBalance = 0.0;
  double get accountBalance => _accountBalance;
  set accountBalance(double value) {
    _accountBalance = value;
  }

  List<BeneficiaryModelStruct> _BeneficiaryListState = [];
  List<BeneficiaryModelStruct> get BeneficiaryListState =>
      _BeneficiaryListState;
  set BeneficiaryListState(List<BeneficiaryModelStruct> value) {
    _BeneficiaryListState = value;
  }

  void addToBeneficiaryListState(BeneficiaryModelStruct value) {
    BeneficiaryListState.add(value);
  }

  void removeFromBeneficiaryListState(BeneficiaryModelStruct value) {
    BeneficiaryListState.remove(value);
  }

  void removeAtIndexFromBeneficiaryListState(int index) {
    BeneficiaryListState.removeAt(index);
  }

  void updateBeneficiaryListStateAtIndex(
    int index,
    BeneficiaryModelStruct Function(BeneficiaryModelStruct) updateFn,
  ) {
    BeneficiaryListState[index] = updateFn(_BeneficiaryListState[index]);
  }

  void insertAtIndexInBeneficiaryListState(
      int index, BeneficiaryModelStruct value) {
    BeneficiaryListState.insert(index, value);
  }

  List<AccountsStruct> _accountListOrder = [];
  List<AccountsStruct> get accountListOrder => _accountListOrder;
  set accountListOrder(List<AccountsStruct> value) {
    _accountListOrder = value;
  }

  void addToAccountListOrder(AccountsStruct value) {
    accountListOrder.add(value);
  }

  void removeFromAccountListOrder(AccountsStruct value) {
    accountListOrder.remove(value);
  }

  void removeAtIndexFromAccountListOrder(int index) {
    accountListOrder.removeAt(index);
  }

  void updateAccountListOrderAtIndex(
    int index,
    AccountsStruct Function(AccountsStruct) updateFn,
  ) {
    accountListOrder[index] = updateFn(_accountListOrder[index]);
  }

  void insertAtIndexInAccountListOrder(int index, AccountsStruct value) {
    accountListOrder.insert(index, value);
  }

  bool _isFromFavorite = false;
  bool get isFromFavorite => _isFromFavorite;
  set isFromFavorite(bool value) {
    _isFromFavorite = value;
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    prefs.setString('ff_userName', value);
  }

  List<dynamic> _balances = [];
  List<dynamic> get balances => _balances;
  set balances(List<dynamic> value) {
    _balances = value;
  }

  void addToBalances(dynamic value) {
    balances.add(value);
  }

  void removeFromBalances(dynamic value) {
    balances.remove(value);
  }

  void removeAtIndexFromBalances(int index) {
    balances.removeAt(index);
  }

  void updateBalancesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    balances[index] = updateFn(_balances[index]);
  }

  void insertAtIndexInBalances(int index, dynamic value) {
    balances.insert(index, value);
  }

  WBTransferLimitModelStruct _fetchedTransactionLimit =
      WBTransferLimitModelStruct();
  WBTransferLimitModelStruct get fetchedTransactionLimit =>
      _fetchedTransactionLimit;
  set fetchedTransactionLimit(WBTransferLimitModelStruct value) {
    _fetchedTransactionLimit = value;
  }

  void updateFetchedTransactionLimitStruct(
      Function(WBTransferLimitModelStruct) updateFn) {
    updateFn(_fetchedTransactionLimit);
  }

  AccountsStruct _payingSourceAccountAppState = AccountsStruct();
  AccountsStruct get payingSourceAccountAppState =>
      _payingSourceAccountAppState;
  set payingSourceAccountAppState(AccountsStruct value) {
    _payingSourceAccountAppState = value;
  }

  void updatePayingSourceAccountAppStateStruct(
      Function(AccountsStruct) updateFn) {
    updateFn(_payingSourceAccountAppState);
  }

  /// For paying, limits are refreshed on page load (e.g., Bills Payment) or on
  /// other pages when needed.
  WBPaymentLimitsStruct _payingUserLimits = WBPaymentLimitsStruct();
  WBPaymentLimitsStruct get payingUserLimits => _payingUserLimits;
  set payingUserLimits(WBPaymentLimitsStruct value) {
    _payingUserLimits = value;
  }

  void updatePayingUserLimitsStruct(Function(WBPaymentLimitsStruct) updateFn) {
    updateFn(_payingUserLimits);
  }

  WBQrPaymentInitiateModelStruct _QRPaymentInitiateModelAppState =
      WBQrPaymentInitiateModelStruct();
  WBQrPaymentInitiateModelStruct get QRPaymentInitiateModelAppState =>
      _QRPaymentInitiateModelAppState;
  set QRPaymentInitiateModelAppState(WBQrPaymentInitiateModelStruct value) {
    _QRPaymentInitiateModelAppState = value;
  }

  void updateQRPaymentInitiateModelAppStateStruct(
      Function(WBQrPaymentInitiateModelStruct) updateFn) {
    updateFn(_QRPaymentInitiateModelAppState);
  }

  WBFlagsStruct _FeatureFlagsAppstate = WBFlagsStruct.fromSerializableMap(
      jsonDecode(
          '{\"instant_transfers\":\"true\",\"mobile_banking\":\"true\",\"retail_account_preferences\":\"true\",\"retail_bill_payments\":\"true\",\"retail_bills_payment\":\"true\",\"retail_bills_payment_save_biller\":\"true\",\"retail_bills_payment_signing\":\"true\",\"retail_biometric_login\":\"true\",\"retail_customer_inbox\":\"true\",\"retail_dashboard\":\"true\",\"retail_device_registration\":\"true\",\"retail_login\":\"true\",\"retail_mpin_enabled\":\"true\",\"retail_mpin_login\":\"true\",\"retail_notification_preferences\":\"true\",\"retail_onboarding\":\"true\",\"retail_password_reset\":\"true\",\"retail_push_notifications\":\"true\",\"retail_qr_payments\":\"true\",\"retail_quick_transfers\":\"true\",\"retail_self_registration\":\"true\",\"retail_transfer_instapay\":\"true\",\"retail_transfer_other_pbb\":\"true\",\"retail_transfer_own_account\":\"true\",\"retail_transfer_pesonet\":\"true\",\"retail_transfers\":\"true\",\"retail_transfer_signing\":\"true\",\"retail_username_recovery\":\"true\",\"retail_user_settings\":\"true\",\"unified_transaction_limits\":\"true\"}'));
  WBFlagsStruct get FeatureFlagsAppstate => _FeatureFlagsAppstate;
  set FeatureFlagsAppstate(WBFlagsStruct value) {
    _FeatureFlagsAppstate = value;
  }

  void updateFeatureFlagsAppstateStruct(Function(WBFlagsStruct) updateFn) {
    updateFn(_FeatureFlagsAppstate);
  }

  String _dailyTransferLimit = '';
  String get dailyTransferLimit => _dailyTransferLimit;
  set dailyTransferLimit(String value) {
    _dailyTransferLimit = value;
  }

  String _perTransactionLimit = '';
  String get perTransactionLimit => _perTransactionLimit;
  set perTransactionLimit(String value) {
    _perTransactionLimit = value;
  }

  WBBPSubmitParametersStruct _PaybillsInitiateModelAppState =
      WBBPSubmitParametersStruct();
  WBBPSubmitParametersStruct get PaybillsInitiateModelAppState =>
      _PaybillsInitiateModelAppState;
  set PaybillsInitiateModelAppState(WBBPSubmitParametersStruct value) {
    _PaybillsInitiateModelAppState = value;
  }

  void updatePaybillsInitiateModelAppStateStruct(
      Function(WBBPSubmitParametersStruct) updateFn) {
    updateFn(_PaybillsInitiateModelAppState);
  }

  /// trust device, mpin, biometrics...
  bool _isDeviceSetupDone = false;
  bool get isDeviceSetupDone => _isDeviceSetupDone;
  set isDeviceSetupDone(bool value) {
    _isDeviceSetupDone = value;
    prefs.setBool('ff_isDeviceSetupDone', value);
  }

  bool _isLimitsComponentFormValid = false;
  bool get isLimitsComponentFormValid => _isLimitsComponentFormValid;
  set isLimitsComponentFormValid(bool value) {
    _isLimitsComponentFormValid = value;
  }

  bool _isEndDateEmpty = false;
  bool get isEndDateEmpty => _isEndDateEmpty;
  set isEndDateEmpty(bool value) {
    _isEndDateEmpty = value;
  }

  bool _isPaymentDateEmpty = false;
  bool get isPaymentDateEmpty => _isPaymentDateEmpty;
  set isPaymentDateEmpty(bool value) {
    _isPaymentDateEmpty = value;
  }

  bool _isLimitSetTo0 = false;
  bool get isLimitSetTo0 => _isLimitSetTo0;
  set isLimitSetTo0(bool value) {
    _isLimitSetTo0 = value;
  }

  bool _offline = false;
  bool get offline => _offline;
  set offline(bool value) {
    _offline = value;
  }

  dynamic _PayBillsRequestBody;
  dynamic get PayBillsRequestBody => _PayBillsRequestBody;
  set PayBillsRequestBody(dynamic value) {
    _PayBillsRequestBody = value;
  }

  ChangePasswordModelStruct _changePasswordState = ChangePasswordModelStruct();
  ChangePasswordModelStruct get changePasswordState => _changePasswordState;
  set changePasswordState(ChangePasswordModelStruct value) {
    _changePasswordState = value;
  }

  void updateChangePasswordStateStruct(
      Function(ChangePasswordModelStruct) updateFn) {
    updateFn(_changePasswordState);
  }

  RegisteredDeviceDataStruct _CurrentDeviceDetailsAppState =
      RegisteredDeviceDataStruct();
  RegisteredDeviceDataStruct get CurrentDeviceDetailsAppState =>
      _CurrentDeviceDetailsAppState;
  set CurrentDeviceDetailsAppState(RegisteredDeviceDataStruct value) {
    _CurrentDeviceDetailsAppState = value;
    prefs.setString('ff_CurrentDeviceDetailsAppState', value.serialize());
  }

  void updateCurrentDeviceDetailsAppStateStruct(
      Function(RegisteredDeviceDataStruct) updateFn) {
    updateFn(_CurrentDeviceDetailsAppState);
    prefs.setString('ff_CurrentDeviceDetailsAppState',
        _CurrentDeviceDetailsAppState.serialize());
  }

  List<WBSavedBillerStruct> _SavedBillersAppState = [];
  List<WBSavedBillerStruct> get SavedBillersAppState => _SavedBillersAppState;
  set SavedBillersAppState(List<WBSavedBillerStruct> value) {
    _SavedBillersAppState = value;
  }

  void addToSavedBillersAppState(WBSavedBillerStruct value) {
    SavedBillersAppState.add(value);
  }

  void removeFromSavedBillersAppState(WBSavedBillerStruct value) {
    SavedBillersAppState.remove(value);
  }

  void removeAtIndexFromSavedBillersAppState(int index) {
    SavedBillersAppState.removeAt(index);
  }

  void updateSavedBillersAppStateAtIndex(
    int index,
    WBSavedBillerStruct Function(WBSavedBillerStruct) updateFn,
  ) {
    SavedBillersAppState[index] = updateFn(_SavedBillersAppState[index]);
  }

  void insertAtIndexInSavedBillersAppState(
      int index, WBSavedBillerStruct value) {
    SavedBillersAppState.insert(index, value);
  }

  AccountsStruct _selectedAccount = AccountsStruct();
  AccountsStruct get selectedAccount => _selectedAccount;
  set selectedAccount(AccountsStruct value) {
    _selectedAccount = value;
  }

  void updateSelectedAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(_selectedAccount);
  }

  TimeDepositComputationModelStruct _openTimeDepositState =
      TimeDepositComputationModelStruct();
  TimeDepositComputationModelStruct get openTimeDepositState =>
      _openTimeDepositState;
  set openTimeDepositState(TimeDepositComputationModelStruct value) {
    _openTimeDepositState = value;
  }

  void updateOpenTimeDepositStateStruct(
      Function(TimeDepositComputationModelStruct) updateFn) {
    updateFn(_openTimeDepositState);
  }

  TimeDepositSuccessOutputStruct _TimeDepositSuccessOutputState =
      TimeDepositSuccessOutputStruct();
  TimeDepositSuccessOutputStruct get TimeDepositSuccessOutputState =>
      _TimeDepositSuccessOutputState;
  set TimeDepositSuccessOutputState(TimeDepositSuccessOutputStruct value) {
    _TimeDepositSuccessOutputState = value;
  }

  void updateTimeDepositSuccessOutputStateStruct(
      Function(TimeDepositSuccessOutputStruct) updateFn) {
    updateFn(_TimeDepositSuccessOutputState);
  }

  LoanInitialPaymentDetailsStruct _GlobalLoanInitialPaymentDetails =
      LoanInitialPaymentDetailsStruct();
  LoanInitialPaymentDetailsStruct get GlobalLoanInitialPaymentDetails =>
      _GlobalLoanInitialPaymentDetails;
  set GlobalLoanInitialPaymentDetails(LoanInitialPaymentDetailsStruct value) {
    _GlobalLoanInitialPaymentDetails = value;
  }

  void updateGlobalLoanInitialPaymentDetailsStruct(
      Function(LoanInitialPaymentDetailsStruct) updateFn) {
    updateFn(_GlobalLoanInitialPaymentDetails);
  }

  LoanPaymentConfirmationResponseStruct _GlobalLoanPaymentConfirmation =
      LoanPaymentConfirmationResponseStruct();
  LoanPaymentConfirmationResponseStruct get GlobalLoanPaymentConfirmation =>
      _GlobalLoanPaymentConfirmation;
  set GlobalLoanPaymentConfirmation(
      LoanPaymentConfirmationResponseStruct value) {
    _GlobalLoanPaymentConfirmation = value;
  }

  void updateGlobalLoanPaymentConfirmationStruct(
      Function(LoanPaymentConfirmationResponseStruct) updateFn) {
    updateFn(_GlobalLoanPaymentConfirmation);
  }

  ChequeBookSuccessResponseStruct _ChequeBookSuccessResponseState =
      ChequeBookSuccessResponseStruct();
  ChequeBookSuccessResponseStruct get ChequeBookSuccessResponseState =>
      _ChequeBookSuccessResponseState;
  set ChequeBookSuccessResponseState(ChequeBookSuccessResponseStruct value) {
    _ChequeBookSuccessResponseState = value;
  }

  void updateChequeBookSuccessResponseStateStruct(
      Function(ChequeBookSuccessResponseStruct) updateFn) {
    updateFn(_ChequeBookSuccessResponseState);
  }

  ChequeBookListModelStruct _ChequeDepositRequest = ChequeBookListModelStruct();
  ChequeBookListModelStruct get ChequeDepositRequest => _ChequeDepositRequest;
  set ChequeDepositRequest(ChequeBookListModelStruct value) {
    _ChequeDepositRequest = value;
  }

  void updateChequeDepositRequestStruct(
      Function(ChequeBookListModelStruct) updateFn) {
    updateFn(_ChequeDepositRequest);
  }

  String _selectedEligibleChequeAccountState = '';
  String get selectedEligibleChequeAccountState =>
      _selectedEligibleChequeAccountState;
  set selectedEligibleChequeAccountState(String value) {
    _selectedEligibleChequeAccountState = value;
  }

  List<AccountsStruct> _ChequeEligibleAccountsState = [];
  List<AccountsStruct> get ChequeEligibleAccountsState =>
      _ChequeEligibleAccountsState;
  set ChequeEligibleAccountsState(List<AccountsStruct> value) {
    _ChequeEligibleAccountsState = value;
  }

  void addToChequeEligibleAccountsState(AccountsStruct value) {
    ChequeEligibleAccountsState.add(value);
  }

  void removeFromChequeEligibleAccountsState(AccountsStruct value) {
    ChequeEligibleAccountsState.remove(value);
  }

  void removeAtIndexFromChequeEligibleAccountsState(int index) {
    ChequeEligibleAccountsState.removeAt(index);
  }

  void updateChequeEligibleAccountsStateAtIndex(
    int index,
    AccountsStruct Function(AccountsStruct) updateFn,
  ) {
    ChequeEligibleAccountsState[index] =
        updateFn(_ChequeEligibleAccountsState[index]);
  }

  void insertAtIndexInChequeEligibleAccountsState(
      int index, AccountsStruct value) {
    ChequeEligibleAccountsState.insert(index, value);
  }

  AccountsStruct _SelectedChequeAccountState = AccountsStruct();
  AccountsStruct get SelectedChequeAccountState => _SelectedChequeAccountState;
  set SelectedChequeAccountState(AccountsStruct value) {
    _SelectedChequeAccountState = value;
  }

  void updateSelectedChequeAccountStateStruct(
      Function(AccountsStruct) updateFn) {
    updateFn(_SelectedChequeAccountState);
  }

  int _selectedNumOfBooklet = 1;
  int get selectedNumOfBooklet => _selectedNumOfBooklet;
  set selectedNumOfBooklet(int value) {
    _selectedNumOfBooklet = value;
  }

  ChequePrepareSuccessModelStruct _chequeBookPrepareResponseState =
      ChequePrepareSuccessModelStruct();
  ChequePrepareSuccessModelStruct get chequeBookPrepareResponseState =>
      _chequeBookPrepareResponseState;
  set chequeBookPrepareResponseState(ChequePrepareSuccessModelStruct value) {
    _chequeBookPrepareResponseState = value;
  }

  void updateChequeBookPrepareResponseStateStruct(
      Function(ChequePrepareSuccessModelStruct) updateFn) {
    updateFn(_chequeBookPrepareResponseState);
  }

  String _selectedStartDate = '';
  String get selectedStartDate => _selectedStartDate;
  set selectedStartDate(String value) {
    _selectedStartDate = value;
  }

  String _selectedEndDate = '';
  String get selectedEndDate => _selectedEndDate;
  set selectedEndDate(String value) {
    _selectedEndDate = value;
  }

  List<ChequeInquiryRecordsStruct> _chequeInquiryRecords = [];
  List<ChequeInquiryRecordsStruct> get chequeInquiryRecords =>
      _chequeInquiryRecords;
  set chequeInquiryRecords(List<ChequeInquiryRecordsStruct> value) {
    _chequeInquiryRecords = value;
  }

  void addToChequeInquiryRecords(ChequeInquiryRecordsStruct value) {
    chequeInquiryRecords.add(value);
  }

  void removeFromChequeInquiryRecords(ChequeInquiryRecordsStruct value) {
    chequeInquiryRecords.remove(value);
  }

  void removeAtIndexFromChequeInquiryRecords(int index) {
    chequeInquiryRecords.removeAt(index);
  }

  void updateChequeInquiryRecordsAtIndex(
    int index,
    ChequeInquiryRecordsStruct Function(ChequeInquiryRecordsStruct) updateFn,
  ) {
    chequeInquiryRecords[index] = updateFn(_chequeInquiryRecords[index]);
  }

  void insertAtIndexInChequeInquiryRecords(
      int index, ChequeInquiryRecordsStruct value) {
    chequeInquiryRecords.insert(index, value);
  }

  bool _hasPasskey = false;
  bool get hasPasskey => _hasPasskey;
  set hasPasskey(bool value) {
    _hasPasskey = value;
    prefs.setBool('ff_hasPasskey', value);
  }

  bool _LoanPaymentPushThrough = false;
  bool get LoanPaymentPushThrough => _LoanPaymentPushThrough;
  set LoanPaymentPushThrough(bool value) {
    _LoanPaymentPushThrough = value;
  }

  bool _articleCompleted = false;
  bool get articleCompleted => _articleCompleted;
  set articleCompleted(bool value) {
    _articleCompleted = value;
  }

  bool _hasReachedBottom = false;
  bool get hasReachedBottom => _hasReachedBottom;
  set hasReachedBottom(bool value) {
    _hasReachedBottom = value;
  }

  bool _hasScrolled = false;
  bool get hasScrolled => _hasScrolled;
  set hasScrolled(bool value) {
    _hasScrolled = value;
  }

  DateTime? _dwellStartTime;
  DateTime? get dwellStartTime => _dwellStartTime;
  set dwellStartTime(DateTime? value) {
    _dwellStartTime = value;
  }

  ReportDisputeRequestStruct _reportDisputeRequestDetails =
      ReportDisputeRequestStruct();
  ReportDisputeRequestStruct get reportDisputeRequestDetails =>
      _reportDisputeRequestDetails;
  set reportDisputeRequestDetails(ReportDisputeRequestStruct value) {
    _reportDisputeRequestDetails = value;
  }

  void updateReportDisputeRequestDetailsStruct(
      Function(ReportDisputeRequestStruct) updateFn) {
    updateFn(_reportDisputeRequestDetails);
  }

  bool _isKillSwitchActive = false;
  bool get isKillSwitchActive => _isKillSwitchActive;
  set isKillSwitchActive(bool value) {
    _isKillSwitchActive = value;
  }

  ChequeStopModelStruct _StopChequeModel = ChequeStopModelStruct();
  ChequeStopModelStruct get StopChequeModel => _StopChequeModel;
  set StopChequeModel(ChequeStopModelStruct value) {
    _StopChequeModel = value;
  }

  void updateStopChequeModelStruct(Function(ChequeStopModelStruct) updateFn) {
    updateFn(_StopChequeModel);
  }

  ChequeInquiryAccountStruct _chequeInquiryAccountDetails =
      ChequeInquiryAccountStruct();
  ChequeInquiryAccountStruct get chequeInquiryAccountDetails =>
      _chequeInquiryAccountDetails;
  set chequeInquiryAccountDetails(ChequeInquiryAccountStruct value) {
    _chequeInquiryAccountDetails = value;
  }

  void updateChequeInquiryAccountDetailsStruct(
      Function(ChequeInquiryAccountStruct) updateFn) {
    updateFn(_chequeInquiryAccountDetails);
  }

  ChequeSuccessStruct _chequeSuccess = ChequeSuccessStruct();
  ChequeSuccessStruct get chequeSuccess => _chequeSuccess;
  set chequeSuccess(ChequeSuccessStruct value) {
    _chequeSuccess = value;
  }

  void updateChequeSuccessStruct(Function(ChequeSuccessStruct) updateFn) {
    updateFn(_chequeSuccess);
  }

  ReportReferenceNumberStruct _reportRefNum = ReportReferenceNumberStruct();
  ReportReferenceNumberStruct get reportRefNum => _reportRefNum;
  set reportRefNum(ReportReferenceNumberStruct value) {
    _reportRefNum = value;
  }

  void updateReportRefNumStruct(
      Function(ReportReferenceNumberStruct) updateFn) {
    updateFn(_reportRefNum);
  }

  LoanMonthlyModelStruct _LoanMonthlyModel = LoanMonthlyModelStruct();
  LoanMonthlyModelStruct get LoanMonthlyModel => _LoanMonthlyModel;
  set LoanMonthlyModel(LoanMonthlyModelStruct value) {
    _LoanMonthlyModel = value;
  }

  void updateLoanMonthlyModelStruct(Function(LoanMonthlyModelStruct) updateFn) {
    updateFn(_LoanMonthlyModel);
  }

  List<String> _SelectedDepositBankList = [];
  List<String> get SelectedDepositBankList => _SelectedDepositBankList;
  set SelectedDepositBankList(List<String> value) {
    _SelectedDepositBankList = value;
  }

  void addToSelectedDepositBankList(String value) {
    SelectedDepositBankList.add(value);
  }

  void removeFromSelectedDepositBankList(String value) {
    SelectedDepositBankList.remove(value);
  }

  void removeAtIndexFromSelectedDepositBankList(int index) {
    SelectedDepositBankList.removeAt(index);
  }

  void updateSelectedDepositBankListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SelectedDepositBankList[index] = updateFn(_SelectedDepositBankList[index]);
  }

  void insertAtIndexInSelectedDepositBankList(int index, String value) {
    SelectedDepositBankList.insert(index, value);
  }

  String _safetyDepositBoxSelectedBranch = '';
  String get safetyDepositBoxSelectedBranch => _safetyDepositBoxSelectedBranch;
  set safetyDepositBoxSelectedBranch(String value) {
    _safetyDepositBoxSelectedBranch = value;
  }

  String _safetyDepositBranchName = '';
  String get safetyDepositBranchName => _safetyDepositBranchName;
  set safetyDepositBranchName(String value) {
    _safetyDepositBranchName = value;
  }

  LoanInquireSuccessResponseStruct _LoanInquireSuccess =
      LoanInquireSuccessResponseStruct();
  LoanInquireSuccessResponseStruct get LoanInquireSuccess =>
      _LoanInquireSuccess;
  set LoanInquireSuccess(LoanInquireSuccessResponseStruct value) {
    _LoanInquireSuccess = value;
  }

  void updateLoanInquireSuccessStruct(
      Function(LoanInquireSuccessResponseStruct) updateFn) {
    updateFn(_LoanInquireSuccess);
  }

  TrustFundResponseSuccessStruct _trustFundResponse =
      TrustFundResponseSuccessStruct();
  TrustFundResponseSuccessStruct get trustFundResponse => _trustFundResponse;
  set trustFundResponse(TrustFundResponseSuccessStruct value) {
    _trustFundResponse = value;
  }

  void updateTrustFundResponseStruct(
      Function(TrustFundResponseSuccessStruct) updateFn) {
    updateFn(_trustFundResponse);
  }

  WBTimerConfigStruct _WBTimerConfigAppState =
      WBTimerConfigStruct.fromSerializableMap(jsonDecode(
          '{\"sessionWarning\":\"60\",\"sessionAutoLogout\":\"180\"}'));
  WBTimerConfigStruct get WBTimerConfigAppState => _WBTimerConfigAppState;
  set WBTimerConfigAppState(WBTimerConfigStruct value) {
    _WBTimerConfigAppState = value;
  }

  void updateWBTimerConfigAppStateStruct(
      Function(WBTimerConfigStruct) updateFn) {
    updateFn(_WBTimerConfigAppState);
  }

  MpinChangeVerifyStruct _NewMpinChangeModel = MpinChangeVerifyStruct();
  MpinChangeVerifyStruct get NewMpinChangeModel => _NewMpinChangeModel;
  set NewMpinChangeModel(MpinChangeVerifyStruct value) {
    _NewMpinChangeModel = value;
  }

  void updateNewMpinChangeModelStruct(
      Function(MpinChangeVerifyStruct) updateFn) {
    updateFn(_NewMpinChangeModel);
  }

  MpinChangeVerifyStruct _MpinChangeVerify = MpinChangeVerifyStruct();
  MpinChangeVerifyStruct get MpinChangeVerify => _MpinChangeVerify;
  set MpinChangeVerify(MpinChangeVerifyStruct value) {
    _MpinChangeVerify = value;
  }

  void updateMpinChangeVerifyStruct(Function(MpinChangeVerifyStruct) updateFn) {
    updateFn(_MpinChangeVerify);
  }

  String _mpinVerify = '';
  String get mpinVerify => _mpinVerify;
  set mpinVerify(String value) {
    _mpinVerify = value;
  }

  final _loanQueriesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> loanQueries({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _loanQueriesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoanQueriesCache() => _loanQueriesManager.clear();
  void clearLoanQueriesCacheKey(String? uniqueKey) =>
      _loanQueriesManager.clearRequest(uniqueKey);

  final _loanReschedManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> loanResched({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _loanReschedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoanReschedCache() => _loanReschedManager.clear();
  void clearLoanReschedCacheKey(String? uniqueKey) =>
      _loanReschedManager.clearRequest(uniqueKey);

  final _loansManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> loans({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _loansManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoansCache() => _loansManager.clear();
  void clearLoansCacheKey(String? uniqueKey) =>
      _loansManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
