// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountBalanceStruct extends BaseStruct {
  AccountBalanceStruct({
    String? accountNumber,
    String? accountName,
    double? currentBalance,
    double? availableBalance,
    double? floatBalance,
    String? accountCurrency,
  })  : _accountNumber = accountNumber,
        _accountName = accountName,
        _currentBalance = currentBalance,
        _availableBalance = availableBalance,
        _floatBalance = floatBalance,
        _accountCurrency = accountCurrency;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "AccountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "CurrentBalance" field.
  double? _currentBalance;
  double get currentBalance => _currentBalance ?? 0.0;
  set currentBalance(double? val) => _currentBalance = val;

  void incrementCurrentBalance(double amount) =>
      currentBalance = currentBalance + amount;

  bool hasCurrentBalance() => _currentBalance != null;

  // "AvailableBalance" field.
  double? _availableBalance;
  double get availableBalance => _availableBalance ?? 0.0;
  set availableBalance(double? val) => _availableBalance = val;

  void incrementAvailableBalance(double amount) =>
      availableBalance = availableBalance + amount;

  bool hasAvailableBalance() => _availableBalance != null;

  // "FloatBalance" field.
  double? _floatBalance;
  double get floatBalance => _floatBalance ?? 0.0;
  set floatBalance(double? val) => _floatBalance = val;

  void incrementFloatBalance(double amount) =>
      floatBalance = floatBalance + amount;

  bool hasFloatBalance() => _floatBalance != null;

  // "AccountCurrency" field.
  String? _accountCurrency;
  String get accountCurrency => _accountCurrency ?? '';
  set accountCurrency(String? val) => _accountCurrency = val;

  bool hasAccountCurrency() => _accountCurrency != null;

  static AccountBalanceStruct fromMap(Map<String, dynamic> data) =>
      AccountBalanceStruct(
        accountNumber: data['AccountNumber'] as String?,
        accountName: data['AccountName'] as String?,
        currentBalance: castToType<double>(data['CurrentBalance']),
        availableBalance: castToType<double>(data['AvailableBalance']),
        floatBalance: castToType<double>(data['FloatBalance']),
        accountCurrency: data['AccountCurrency'] as String?,
      );

  static AccountBalanceStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountBalanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AccountNumber': _accountNumber,
        'AccountName': _accountName,
        'CurrentBalance': _currentBalance,
        'AvailableBalance': _availableBalance,
        'FloatBalance': _floatBalance,
        'AccountCurrency': _accountCurrency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'AccountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'CurrentBalance': serializeParam(
          _currentBalance,
          ParamType.double,
        ),
        'AvailableBalance': serializeParam(
          _availableBalance,
          ParamType.double,
        ),
        'FloatBalance': serializeParam(
          _floatBalance,
          ParamType.double,
        ),
        'AccountCurrency': serializeParam(
          _accountCurrency,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountBalanceStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountBalanceStruct(
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['AccountName'],
          ParamType.String,
          false,
        ),
        currentBalance: deserializeParam(
          data['CurrentBalance'],
          ParamType.double,
          false,
        ),
        availableBalance: deserializeParam(
          data['AvailableBalance'],
          ParamType.double,
          false,
        ),
        floatBalance: deserializeParam(
          data['FloatBalance'],
          ParamType.double,
          false,
        ),
        accountCurrency: deserializeParam(
          data['AccountCurrency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountBalanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountBalanceStruct &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        currentBalance == other.currentBalance &&
        availableBalance == other.availableBalance &&
        floatBalance == other.floatBalance &&
        accountCurrency == other.accountCurrency;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNumber,
        accountName,
        currentBalance,
        availableBalance,
        floatBalance,
        accountCurrency
      ]);
}

AccountBalanceStruct createAccountBalanceStruct({
  String? accountNumber,
  String? accountName,
  double? currentBalance,
  double? availableBalance,
  double? floatBalance,
  String? accountCurrency,
}) =>
    AccountBalanceStruct(
      accountNumber: accountNumber,
      accountName: accountName,
      currentBalance: currentBalance,
      availableBalance: availableBalance,
      floatBalance: floatBalance,
      accountCurrency: accountCurrency,
    );
