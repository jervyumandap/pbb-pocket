// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanInquireAccountStruct extends BaseStruct {
  LoanInquireAccountStruct({
    String? accountNumber,
    String? accountName,
    String? accountNumberMasked,
  })  : _accountNumber = accountNumber,
        _accountName = accountName,
        _accountNumberMasked = accountNumberMasked;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "accountNumberMasked" field.
  String? _accountNumberMasked;
  String get accountNumberMasked => _accountNumberMasked ?? '';
  set accountNumberMasked(String? val) => _accountNumberMasked = val;

  bool hasAccountNumberMasked() => _accountNumberMasked != null;

  static LoanInquireAccountStruct fromMap(Map<String, dynamic> data) =>
      LoanInquireAccountStruct(
        accountNumber: data['accountNumber'] as String?,
        accountName: data['accountName'] as String?,
        accountNumberMasked: data['accountNumberMasked'] as String?,
      );

  static LoanInquireAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? LoanInquireAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'accountName': _accountName,
        'accountNumberMasked': _accountNumberMasked,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'accountNumberMasked': serializeParam(
          _accountNumberMasked,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanInquireAccountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanInquireAccountStruct(
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        accountNumberMasked: deserializeParam(
          data['accountNumberMasked'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanInquireAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanInquireAccountStruct &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        accountNumberMasked == other.accountNumberMasked;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accountNumber, accountName, accountNumberMasked]);
}

LoanInquireAccountStruct createLoanInquireAccountStruct({
  String? accountNumber,
  String? accountName,
  String? accountNumberMasked,
}) =>
    LoanInquireAccountStruct(
      accountNumber: accountNumber,
      accountName: accountName,
      accountNumberMasked: accountNumberMasked,
    );
