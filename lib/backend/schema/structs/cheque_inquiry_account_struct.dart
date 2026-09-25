// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeInquiryAccountStruct extends BaseStruct {
  ChequeInquiryAccountStruct({
    String? accountName,
    double? accountBalance,
    String? accountNumber,
  })  : _accountName = accountName,
        _accountBalance = accountBalance,
        _accountNumber = accountNumber;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "AccountBalance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  set accountBalance(double? val) => _accountBalance = val;

  void incrementAccountBalance(double amount) =>
      accountBalance = accountBalance + amount;

  bool hasAccountBalance() => _accountBalance != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  static ChequeInquiryAccountStruct fromMap(Map<String, dynamic> data) =>
      ChequeInquiryAccountStruct(
        accountName: data['accountName'] as String?,
        accountBalance: castToType<double>(data['AccountBalance']),
        accountNumber: data['AccountNumber'] as String?,
      );

  static ChequeInquiryAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? ChequeInquiryAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountName': _accountName,
        'AccountBalance': _accountBalance,
        'AccountNumber': _accountNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'AccountBalance': serializeParam(
          _accountBalance,
          ParamType.double,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeInquiryAccountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequeInquiryAccountStruct(
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        accountBalance: deserializeParam(
          data['AccountBalance'],
          ParamType.double,
          false,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeInquiryAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequeInquiryAccountStruct &&
        accountName == other.accountName &&
        accountBalance == other.accountBalance &&
        accountNumber == other.accountNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accountName, accountBalance, accountNumber]);
}

ChequeInquiryAccountStruct createChequeInquiryAccountStruct({
  String? accountName,
  double? accountBalance,
  String? accountNumber,
}) =>
    ChequeInquiryAccountStruct(
      accountName: accountName,
      accountBalance: accountBalance,
      accountNumber: accountNumber,
    );
