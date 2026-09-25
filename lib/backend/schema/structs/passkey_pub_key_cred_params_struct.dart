// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyPubKeyCredParamsStruct extends BaseStruct {
  PasskeyPubKeyCredParamsStruct({
    int? alg,
    String? type,
  })  : _alg = alg,
        _type = type;

  // "alg" field.
  int? _alg;
  int get alg => _alg ?? 0;
  set alg(int? val) => _alg = val;

  void incrementAlg(int amount) => alg = alg + amount;

  bool hasAlg() => _alg != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static PasskeyPubKeyCredParamsStruct fromMap(Map<String, dynamic> data) =>
      PasskeyPubKeyCredParamsStruct(
        alg: castToType<int>(data['alg']),
        type: data['type'] as String?,
      );

  static PasskeyPubKeyCredParamsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyPubKeyCredParamsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'alg': _alg,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'alg': serializeParam(
          _alg,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyPubKeyCredParamsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyPubKeyCredParamsStruct(
        alg: deserializeParam(
          data['alg'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyPubKeyCredParamsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyPubKeyCredParamsStruct &&
        alg == other.alg &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([alg, type]);
}

PasskeyPubKeyCredParamsStruct createPasskeyPubKeyCredParamsStruct({
  int? alg,
  String? type,
}) =>
    PasskeyPubKeyCredParamsStruct(
      alg: alg,
      type: type,
    );
