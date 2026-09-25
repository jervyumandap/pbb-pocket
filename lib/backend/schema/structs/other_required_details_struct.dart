// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OtherRequiredDetailsStruct extends BaseStruct {
  OtherRequiredDetailsStruct({
    String? tranCode,
  }) : _tranCode = tranCode;

  // "TranCode" field.
  String? _tranCode;
  String get tranCode => _tranCode ?? '';
  set tranCode(String? val) => _tranCode = val;

  bool hasTranCode() => _tranCode != null;

  static OtherRequiredDetailsStruct fromMap(Map<String, dynamic> data) =>
      OtherRequiredDetailsStruct(
        tranCode: data['TranCode'] as String?,
      );

  static OtherRequiredDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? OtherRequiredDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TranCode': _tranCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TranCode': serializeParam(
          _tranCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static OtherRequiredDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OtherRequiredDetailsStruct(
        tranCode: deserializeParam(
          data['TranCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OtherRequiredDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OtherRequiredDetailsStruct && tranCode == other.tranCode;
  }

  @override
  int get hashCode => const ListEquality().hash([tranCode]);
}

OtherRequiredDetailsStruct createOtherRequiredDetailsStruct({
  String? tranCode,
}) =>
    OtherRequiredDetailsStruct(
      tranCode: tranCode,
    );
