// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValidityDetailsStruct extends BaseStruct {
  ValidityDetailsStruct({
    String? pin,
  }) : _pin = pin;

  // "PIN" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) => _pin = val;

  bool hasPin() => _pin != null;

  static ValidityDetailsStruct fromMap(Map<String, dynamic> data) =>
      ValidityDetailsStruct(
        pin: data['PIN'] as String?,
      );

  static ValidityDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ValidityDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PIN': _pin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PIN': serializeParam(
          _pin,
          ParamType.String,
        ),
      }.withoutNulls;

  static ValidityDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ValidityDetailsStruct(
        pin: deserializeParam(
          data['PIN'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ValidityDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ValidityDetailsStruct && pin == other.pin;
  }

  @override
  int get hashCode => const ListEquality().hash([pin]);
}

ValidityDetailsStruct createValidityDetailsStruct({
  String? pin,
}) =>
    ValidityDetailsStruct(
      pin: pin,
    );
