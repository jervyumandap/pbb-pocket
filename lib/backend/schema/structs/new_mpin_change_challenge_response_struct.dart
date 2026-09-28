// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewMpinChangeChallengeResponseStruct extends BaseStruct {
  NewMpinChangeChallengeResponseStruct({
    String? challenge,
    String? expiresAt,
    int? expiresIn,
  })  : _challenge = challenge,
        _expiresAt = expiresAt,
        _expiresIn = expiresIn;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  static NewMpinChangeChallengeResponseStruct fromMap(
          Map<String, dynamic> data) =>
      NewMpinChangeChallengeResponseStruct(
        challenge: data['challenge'] as String?,
        expiresAt: data['expiresAt'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
      );

  static NewMpinChangeChallengeResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? NewMpinChangeChallengeResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'expiresAt': _expiresAt,
        'expiresIn': _expiresIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
      }.withoutNulls;

  static NewMpinChangeChallengeResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NewMpinChangeChallengeResponseStruct(
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
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
  String toString() => 'NewMpinChangeChallengeResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NewMpinChangeChallengeResponseStruct &&
        challenge == other.challenge &&
        expiresAt == other.expiresAt &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([challenge, expiresAt, expiresIn]);
}

NewMpinChangeChallengeResponseStruct
    createNewMpinChangeChallengeResponseStruct({
  String? challenge,
  String? expiresAt,
  int? expiresIn,
}) =>
        NewMpinChangeChallengeResponseStruct(
          challenge: challenge,
          expiresAt: expiresAt,
          expiresIn: expiresIn,
        );
