// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MpinChangeVerifyStruct extends BaseStruct {
  MpinChangeVerifyStruct({
    String? changeToken,
    int? expiresIn,
  })  : _changeToken = changeToken,
        _expiresIn = expiresIn;

  // "changeToken" field.
  String? _changeToken;
  String get changeToken => _changeToken ?? '';
  set changeToken(String? val) => _changeToken = val;

  bool hasChangeToken() => _changeToken != null;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  static MpinChangeVerifyStruct fromMap(Map<String, dynamic> data) =>
      MpinChangeVerifyStruct(
        changeToken: data['changeToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
      );

  static MpinChangeVerifyStruct? maybeFromMap(dynamic data) => data is Map
      ? MpinChangeVerifyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'changeToken': _changeToken,
        'expiresIn': _expiresIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'changeToken': serializeParam(
          _changeToken,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
      }.withoutNulls;

  static MpinChangeVerifyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MpinChangeVerifyStruct(
        changeToken: deserializeParam(
          data['changeToken'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MpinChangeVerifyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MpinChangeVerifyStruct &&
        changeToken == other.changeToken &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode => const ListEquality().hash([changeToken, expiresIn]);
}

MpinChangeVerifyStruct createMpinChangeVerifyStruct({
  String? changeToken,
  int? expiresIn,
}) =>
    MpinChangeVerifyStruct(
      changeToken: changeToken,
      expiresIn: expiresIn,
    );
