// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeSuccessStruct extends BaseStruct {
  ChequeSuccessStruct({
    String? chequeNumber,
    String? dateAndTime,
  })  : _chequeNumber = chequeNumber,
        _dateAndTime = dateAndTime;

  // "chequeNumber" field.
  String? _chequeNumber;
  String get chequeNumber => _chequeNumber ?? '';
  set chequeNumber(String? val) => _chequeNumber = val;

  bool hasChequeNumber() => _chequeNumber != null;

  // "dateAndTime" field.
  String? _dateAndTime;
  String get dateAndTime => _dateAndTime ?? '';
  set dateAndTime(String? val) => _dateAndTime = val;

  bool hasDateAndTime() => _dateAndTime != null;

  static ChequeSuccessStruct fromMap(Map<String, dynamic> data) =>
      ChequeSuccessStruct(
        chequeNumber: data['chequeNumber'] as String?,
        dateAndTime: data['dateAndTime'] as String?,
      );

  static ChequeSuccessStruct? maybeFromMap(dynamic data) => data is Map
      ? ChequeSuccessStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chequeNumber': _chequeNumber,
        'dateAndTime': _dateAndTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chequeNumber': serializeParam(
          _chequeNumber,
          ParamType.String,
        ),
        'dateAndTime': serializeParam(
          _dateAndTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeSuccessStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChequeSuccessStruct(
        chequeNumber: deserializeParam(
          data['chequeNumber'],
          ParamType.String,
          false,
        ),
        dateAndTime: deserializeParam(
          data['dateAndTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeSuccessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequeSuccessStruct &&
        chequeNumber == other.chequeNumber &&
        dateAndTime == other.dateAndTime;
  }

  @override
  int get hashCode => const ListEquality().hash([chequeNumber, dateAndTime]);
}

ChequeSuccessStruct createChequeSuccessStruct({
  String? chequeNumber,
  String? dateAndTime,
}) =>
    ChequeSuccessStruct(
      chequeNumber: chequeNumber,
      dateAndTime: dateAndTime,
    );
