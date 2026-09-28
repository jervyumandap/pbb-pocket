// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountDetailsStruct extends BaseStruct {
  AccountDetailsStruct({
    String? cif,
    String? accountNumber,
    String? accountName,
    String? accountType,
    String? accountCurrency,
    String? accountBranch,
    String? accountStatus,
  })  : _cif = cif,
        _accountNumber = accountNumber,
        _accountName = accountName,
        _accountType = accountType,
        _accountCurrency = accountCurrency,
        _accountBranch = accountBranch,
        _accountStatus = accountStatus;

  // "CIF" field.
  String? _cif;
  String get cif => _cif ?? '';
  set cif(String? val) => _cif = val;

  bool hasCif() => _cif != null;

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

  // "AccountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  set accountType(String? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

  // "AccountCurrency" field.
  String? _accountCurrency;
  String get accountCurrency => _accountCurrency ?? '';
  set accountCurrency(String? val) => _accountCurrency = val;

  bool hasAccountCurrency() => _accountCurrency != null;

  // "AccountBranch" field.
  String? _accountBranch;
  String get accountBranch => _accountBranch ?? '';
  set accountBranch(String? val) => _accountBranch = val;

  bool hasAccountBranch() => _accountBranch != null;

  // "AccountStatus" field.
  String? _accountStatus;
  String get accountStatus => _accountStatus ?? '';
  set accountStatus(String? val) => _accountStatus = val;

  bool hasAccountStatus() => _accountStatus != null;

  static AccountDetailsStruct fromMap(Map<String, dynamic> data) =>
      AccountDetailsStruct(
        cif: data['CIF'] as String?,
        accountNumber: data['AccountNumber'] as String?,
        accountName: data['AccountName'] as String?,
        accountType: data['AccountType'] as String?,
        accountCurrency: data['AccountCurrency'] as String?,
        accountBranch: data['AccountBranch'] as String?,
        accountStatus: data['AccountStatus'] as String?,
      );

  static AccountDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CIF': _cif,
        'AccountNumber': _accountNumber,
        'AccountName': _accountName,
        'AccountType': _accountType,
        'AccountCurrency': _accountCurrency,
        'AccountBranch': _accountBranch,
        'AccountStatus': _accountStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CIF': serializeParam(
          _cif,
          ParamType.String,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'AccountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'AccountType': serializeParam(
          _accountType,
          ParamType.String,
        ),
        'AccountCurrency': serializeParam(
          _accountCurrency,
          ParamType.String,
        ),
        'AccountBranch': serializeParam(
          _accountBranch,
          ParamType.String,
        ),
        'AccountStatus': serializeParam(
          _accountStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountDetailsStruct(
        cif: deserializeParam(
          data['CIF'],
          ParamType.String,
          false,
        ),
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
        accountType: deserializeParam(
          data['AccountType'],
          ParamType.String,
          false,
        ),
        accountCurrency: deserializeParam(
          data['AccountCurrency'],
          ParamType.String,
          false,
        ),
        accountBranch: deserializeParam(
          data['AccountBranch'],
          ParamType.String,
          false,
        ),
        accountStatus: deserializeParam(
          data['AccountStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountDetailsStruct &&
        cif == other.cif &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        accountType == other.accountType &&
        accountCurrency == other.accountCurrency &&
        accountBranch == other.accountBranch &&
        accountStatus == other.accountStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cif,
        accountNumber,
        accountName,
        accountType,
        accountCurrency,
        accountBranch,
        accountStatus
      ]);
}

AccountDetailsStruct createAccountDetailsStruct({
  String? cif,
  String? accountNumber,
  String? accountName,
  String? accountType,
  String? accountCurrency,
  String? accountBranch,
  String? accountStatus,
}) =>
    AccountDetailsStruct(
      cif: cif,
      accountNumber: accountNumber,
      accountName: accountName,
      accountType: accountType,
      accountCurrency: accountCurrency,
      accountBranch: accountBranch,
      accountStatus: accountStatus,
    );
