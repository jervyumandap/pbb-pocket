// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SourceAccountStruct extends BaseStruct {
  SourceAccountStruct({
    String? accountNumber,
    String? accountName,
  })  : _accountNumber = accountNumber,
        _accountName = accountName;

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

  static SourceAccountStruct fromMap(Map<String, dynamic> data) =>
      SourceAccountStruct(
        accountNumber: data['accountNumber'] as String?,
        accountName: data['accountName'] as String?,
      );

  static SourceAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? SourceAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'accountName': _accountName,
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
      }.withoutNulls;

  static SourceAccountStruct fromSerializableMap(Map<String, dynamic> data) =>
      SourceAccountStruct(
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
      );

  @override
  String toString() => 'SourceAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SourceAccountStruct &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName;
  }

  @override
  int get hashCode => const ListEquality().hash([accountNumber, accountName]);
}

SourceAccountStruct createSourceAccountStruct({
  String? accountNumber,
  String? accountName,
}) =>
    SourceAccountStruct(
      accountNumber: accountNumber,
      accountName: accountName,
    );
