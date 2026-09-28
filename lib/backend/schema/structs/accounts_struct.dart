// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsStruct extends BaseStruct {
  AccountsStruct({
    String? accountNumber,
    BankAccountType? accountType,
    String? accountName,
    String? currency,
    double? availableBalance,
    double? currentBalance,
    String? status,
    String? fullAccountNumber,
    bool? isVisible,
    int? sortOrder,
    String? openedDate,
    bool? isPrimary,
    String? alias,
    String? asOf,
    String? maskedAccountNumber,
  })  : _accountNumber = accountNumber,
        _accountType = accountType,
        _accountName = accountName,
        _currency = currency,
        _availableBalance = availableBalance,
        _currentBalance = currentBalance,
        _status = status,
        _fullAccountNumber = fullAccountNumber,
        _isVisible = isVisible,
        _sortOrder = sortOrder,
        _openedDate = openedDate,
        _isPrimary = isPrimary,
        _alias = alias,
        _asOf = asOf,
        _maskedAccountNumber = maskedAccountNumber;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "accountType" field.
  BankAccountType? _accountType;
  BankAccountType? get accountType => _accountType;
  set accountType(BankAccountType? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "availableBalance" field.
  double? _availableBalance;
  double get availableBalance => _availableBalance ?? 0.0;
  set availableBalance(double? val) => _availableBalance = val;

  void incrementAvailableBalance(double amount) =>
      availableBalance = availableBalance + amount;

  bool hasAvailableBalance() => _availableBalance != null;

  // "currentBalance" field.
  double? _currentBalance;
  double get currentBalance => _currentBalance ?? 0.0;
  set currentBalance(double? val) => _currentBalance = val;

  void incrementCurrentBalance(double amount) =>
      currentBalance = currentBalance + amount;

  bool hasCurrentBalance() => _currentBalance != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "fullAccountNumber" field.
  String? _fullAccountNumber;
  String get fullAccountNumber => _fullAccountNumber ?? '';
  set fullAccountNumber(String? val) => _fullAccountNumber = val;

  bool hasFullAccountNumber() => _fullAccountNumber != null;

  // "isVisible" field.
  bool? _isVisible;
  bool get isVisible => _isVisible ?? false;
  set isVisible(bool? val) => _isVisible = val;

  bool hasIsVisible() => _isVisible != null;

  // "sortOrder" field.
  int? _sortOrder;
  int get sortOrder => _sortOrder ?? 1000;
  set sortOrder(int? val) => _sortOrder = val;

  void incrementSortOrder(int amount) => sortOrder = sortOrder + amount;

  bool hasSortOrder() => _sortOrder != null;

  // "openedDate" field.
  String? _openedDate;
  String get openedDate => _openedDate ?? '2020-01-15';
  set openedDate(String? val) => _openedDate = val;

  bool hasOpenedDate() => _openedDate != null;

  // "isPrimary" field.
  bool? _isPrimary;
  bool get isPrimary => _isPrimary ?? false;
  set isPrimary(bool? val) => _isPrimary = val;

  bool hasIsPrimary() => _isPrimary != null;

  // "alias" field.
  String? _alias;
  String get alias => _alias ?? 'test';
  set alias(String? val) => _alias = val;

  bool hasAlias() => _alias != null;

  // "asOf" field.
  String? _asOf;
  String get asOf => _asOf ?? '';
  set asOf(String? val) => _asOf = val;

  bool hasAsOf() => _asOf != null;

  // "maskedAccountNumber" field.
  String? _maskedAccountNumber;
  String get maskedAccountNumber => _maskedAccountNumber ?? '';
  set maskedAccountNumber(String? val) => _maskedAccountNumber = val;

  bool hasMaskedAccountNumber() => _maskedAccountNumber != null;

  static AccountsStruct fromMap(Map<String, dynamic> data) => AccountsStruct(
        accountNumber: data['accountNumber'] as String?,
        accountType: data['accountType'] is BankAccountType
            ? data['accountType']
            : deserializeEnum<BankAccountType>(data['accountType']),
        accountName: data['accountName'] as String?,
        currency: data['currency'] as String?,
        availableBalance: castToType<double>(data['availableBalance']),
        currentBalance: castToType<double>(data['currentBalance']),
        status: data['status'] as String?,
        fullAccountNumber: data['fullAccountNumber'] as String?,
        isVisible: data['isVisible'] as bool?,
        sortOrder: castToType<int>(data['sortOrder']),
        openedDate: data['openedDate'] as String?,
        isPrimary: data['isPrimary'] as bool?,
        alias: data['alias'] as String?,
        asOf: data['asOf'] as String?,
        maskedAccountNumber: data['maskedAccountNumber'] as String?,
      );

  static AccountsStruct? maybeFromMap(dynamic data) =>
      data is Map ? AccountsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'accountType': _accountType?.serialize(),
        'accountName': _accountName,
        'currency': _currency,
        'availableBalance': _availableBalance,
        'currentBalance': _currentBalance,
        'status': _status,
        'fullAccountNumber': _fullAccountNumber,
        'isVisible': _isVisible,
        'sortOrder': _sortOrder,
        'openedDate': _openedDate,
        'isPrimary': _isPrimary,
        'alias': _alias,
        'asOf': _asOf,
        'maskedAccountNumber': _maskedAccountNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'accountType': serializeParam(
          _accountType,
          ParamType.Enum,
        ),
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'availableBalance': serializeParam(
          _availableBalance,
          ParamType.double,
        ),
        'currentBalance': serializeParam(
          _currentBalance,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'fullAccountNumber': serializeParam(
          _fullAccountNumber,
          ParamType.String,
        ),
        'isVisible': serializeParam(
          _isVisible,
          ParamType.bool,
        ),
        'sortOrder': serializeParam(
          _sortOrder,
          ParamType.int,
        ),
        'openedDate': serializeParam(
          _openedDate,
          ParamType.String,
        ),
        'isPrimary': serializeParam(
          _isPrimary,
          ParamType.bool,
        ),
        'alias': serializeParam(
          _alias,
          ParamType.String,
        ),
        'asOf': serializeParam(
          _asOf,
          ParamType.String,
        ),
        'maskedAccountNumber': serializeParam(
          _maskedAccountNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountsStruct(
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        accountType: deserializeParam<BankAccountType>(
          data['accountType'],
          ParamType.Enum,
          false,
        ),
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        availableBalance: deserializeParam(
          data['availableBalance'],
          ParamType.double,
          false,
        ),
        currentBalance: deserializeParam(
          data['currentBalance'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        fullAccountNumber: deserializeParam(
          data['fullAccountNumber'],
          ParamType.String,
          false,
        ),
        isVisible: deserializeParam(
          data['isVisible'],
          ParamType.bool,
          false,
        ),
        sortOrder: deserializeParam(
          data['sortOrder'],
          ParamType.int,
          false,
        ),
        openedDate: deserializeParam(
          data['openedDate'],
          ParamType.String,
          false,
        ),
        isPrimary: deserializeParam(
          data['isPrimary'],
          ParamType.bool,
          false,
        ),
        alias: deserializeParam(
          data['alias'],
          ParamType.String,
          false,
        ),
        asOf: deserializeParam(
          data['asOf'],
          ParamType.String,
          false,
        ),
        maskedAccountNumber: deserializeParam(
          data['maskedAccountNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountsStruct &&
        accountNumber == other.accountNumber &&
        accountType == other.accountType &&
        accountName == other.accountName &&
        currency == other.currency &&
        availableBalance == other.availableBalance &&
        currentBalance == other.currentBalance &&
        status == other.status &&
        fullAccountNumber == other.fullAccountNumber &&
        isVisible == other.isVisible &&
        sortOrder == other.sortOrder &&
        openedDate == other.openedDate &&
        isPrimary == other.isPrimary &&
        alias == other.alias &&
        asOf == other.asOf &&
        maskedAccountNumber == other.maskedAccountNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNumber,
        accountType,
        accountName,
        currency,
        availableBalance,
        currentBalance,
        status,
        fullAccountNumber,
        isVisible,
        sortOrder,
        openedDate,
        isPrimary,
        alias,
        asOf,
        maskedAccountNumber
      ]);
}

AccountsStruct createAccountsStruct({
  String? accountNumber,
  BankAccountType? accountType,
  String? accountName,
  String? currency,
  double? availableBalance,
  double? currentBalance,
  String? status,
  String? fullAccountNumber,
  bool? isVisible,
  int? sortOrder,
  String? openedDate,
  bool? isPrimary,
  String? alias,
  String? asOf,
  String? maskedAccountNumber,
}) =>
    AccountsStruct(
      accountNumber: accountNumber,
      accountType: accountType,
      accountName: accountName,
      currency: currency,
      availableBalance: availableBalance,
      currentBalance: currentBalance,
      status: status,
      fullAccountNumber: fullAccountNumber,
      isVisible: isVisible,
      sortOrder: sortOrder,
      openedDate: openedDate,
      isPrimary: isPrimary,
      alias: alias,
      asOf: asOf,
      maskedAccountNumber: maskedAccountNumber,
    );
