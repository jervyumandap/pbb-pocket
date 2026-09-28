// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillerInfoStruct extends BaseStruct {
  BillerInfoStruct({
    String? billerCode,
    String? billerName,
  })  : _billerCode = billerCode,
        _billerName = billerName;

  // "BillerCode" field.
  String? _billerCode;
  String get billerCode => _billerCode ?? '';
  set billerCode(String? val) => _billerCode = val;

  bool hasBillerCode() => _billerCode != null;

  // "BillerName" field.
  String? _billerName;
  String get billerName => _billerName ?? '';
  set billerName(String? val) => _billerName = val;

  bool hasBillerName() => _billerName != null;

  static BillerInfoStruct fromMap(Map<String, dynamic> data) =>
      BillerInfoStruct(
        billerCode: data['BillerCode'] as String?,
        billerName: data['BillerName'] as String?,
      );

  static BillerInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? BillerInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'BillerCode': _billerCode,
        'BillerName': _billerName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'BillerCode': serializeParam(
          _billerCode,
          ParamType.String,
        ),
        'BillerName': serializeParam(
          _billerName,
          ParamType.String,
        ),
      }.withoutNulls;

  static BillerInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillerInfoStruct(
        billerCode: deserializeParam(
          data['BillerCode'],
          ParamType.String,
          false,
        ),
        billerName: deserializeParam(
          data['BillerName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BillerInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillerInfoStruct &&
        billerCode == other.billerCode &&
        billerName == other.billerName;
  }

  @override
  int get hashCode => const ListEquality().hash([billerCode, billerName]);
}

BillerInfoStruct createBillerInfoStruct({
  String? billerCode,
  String? billerName,
}) =>
    BillerInfoStruct(
      billerCode: billerCode,
      billerName: billerName,
    );
