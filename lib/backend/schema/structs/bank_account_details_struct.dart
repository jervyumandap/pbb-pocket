// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankAccountDetailsStruct extends BaseStruct {
  BankAccountDetailsStruct({
    String? bankAccountNumber,
    String? bankAccountFullName,
    String? bankAccountBranchAccId,
    String? bankBvn,
    String? bankBsb,
  })  : _bankAccountNumber = bankAccountNumber,
        _bankAccountFullName = bankAccountFullName,
        _bankAccountBranchAccId = bankAccountBranchAccId,
        _bankBvn = bankBvn,
        _bankBsb = bankBsb;

  // "BankAccountNumber" field.
  String? _bankAccountNumber;
  String get bankAccountNumber => _bankAccountNumber ?? '';
  set bankAccountNumber(String? val) => _bankAccountNumber = val;

  bool hasBankAccountNumber() => _bankAccountNumber != null;

  // "BankAccountFullName" field.
  String? _bankAccountFullName;
  String get bankAccountFullName => _bankAccountFullName ?? '';
  set bankAccountFullName(String? val) => _bankAccountFullName = val;

  bool hasBankAccountFullName() => _bankAccountFullName != null;

  // "BankAccountBranchAccId" field.
  String? _bankAccountBranchAccId;
  String get bankAccountBranchAccId => _bankAccountBranchAccId ?? '';
  set bankAccountBranchAccId(String? val) => _bankAccountBranchAccId = val;

  bool hasBankAccountBranchAccId() => _bankAccountBranchAccId != null;

  // "BankBvn" field.
  String? _bankBvn;
  String get bankBvn => _bankBvn ?? '';
  set bankBvn(String? val) => _bankBvn = val;

  bool hasBankBvn() => _bankBvn != null;

  // "BankBsb" field.
  String? _bankBsb;
  String get bankBsb => _bankBsb ?? '';
  set bankBsb(String? val) => _bankBsb = val;

  bool hasBankBsb() => _bankBsb != null;

  static BankAccountDetailsStruct fromMap(Map<String, dynamic> data) =>
      BankAccountDetailsStruct(
        bankAccountNumber: data['BankAccountNumber'] as String?,
        bankAccountFullName: data['BankAccountFullName'] as String?,
        bankAccountBranchAccId: data['BankAccountBranchAccId'] as String?,
        bankBvn: data['BankBvn'] as String?,
        bankBsb: data['BankBsb'] as String?,
      );

  static BankAccountDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? BankAccountDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'BankAccountNumber': _bankAccountNumber,
        'BankAccountFullName': _bankAccountFullName,
        'BankAccountBranchAccId': _bankAccountBranchAccId,
        'BankBvn': _bankBvn,
        'BankBsb': _bankBsb,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'BankAccountNumber': serializeParam(
          _bankAccountNumber,
          ParamType.String,
        ),
        'BankAccountFullName': serializeParam(
          _bankAccountFullName,
          ParamType.String,
        ),
        'BankAccountBranchAccId': serializeParam(
          _bankAccountBranchAccId,
          ParamType.String,
        ),
        'BankBvn': serializeParam(
          _bankBvn,
          ParamType.String,
        ),
        'BankBsb': serializeParam(
          _bankBsb,
          ParamType.String,
        ),
      }.withoutNulls;

  static BankAccountDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BankAccountDetailsStruct(
        bankAccountNumber: deserializeParam(
          data['BankAccountNumber'],
          ParamType.String,
          false,
        ),
        bankAccountFullName: deserializeParam(
          data['BankAccountFullName'],
          ParamType.String,
          false,
        ),
        bankAccountBranchAccId: deserializeParam(
          data['BankAccountBranchAccId'],
          ParamType.String,
          false,
        ),
        bankBvn: deserializeParam(
          data['BankBvn'],
          ParamType.String,
          false,
        ),
        bankBsb: deserializeParam(
          data['BankBsb'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BankAccountDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankAccountDetailsStruct &&
        bankAccountNumber == other.bankAccountNumber &&
        bankAccountFullName == other.bankAccountFullName &&
        bankAccountBranchAccId == other.bankAccountBranchAccId &&
        bankBvn == other.bankBvn &&
        bankBsb == other.bankBsb;
  }

  @override
  int get hashCode => const ListEquality().hash([
        bankAccountNumber,
        bankAccountFullName,
        bankAccountBranchAccId,
        bankBvn,
        bankBsb
      ]);
}

BankAccountDetailsStruct createBankAccountDetailsStruct({
  String? bankAccountNumber,
  String? bankAccountFullName,
  String? bankAccountBranchAccId,
  String? bankBvn,
  String? bankBsb,
}) =>
    BankAccountDetailsStruct(
      bankAccountNumber: bankAccountNumber,
      bankAccountFullName: bankAccountFullName,
      bankAccountBranchAccId: bankAccountBranchAccId,
      bankBvn: bankBvn,
      bankBsb: bankBsb,
    );
