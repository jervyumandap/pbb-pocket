// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyStepupVerifyResponseStruct extends BaseStruct {
  PasskeyStepupVerifyResponseStruct({
    bool? verified,
    String? stepupToken,
    int? expiresIn,
  })  : _verified = verified,
        _stepupToken = stepupToken,
        _expiresIn = expiresIn;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  set verified(bool? val) => _verified = val;

  bool hasVerified() => _verified != null;

  // "stepupToken" field.
  String? _stepupToken;
  String get stepupToken => _stepupToken ?? '';
  set stepupToken(String? val) => _stepupToken = val;

  bool hasStepupToken() => _stepupToken != null;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  static PasskeyStepupVerifyResponseStruct fromMap(Map<String, dynamic> data) =>
      PasskeyStepupVerifyResponseStruct(
        verified: data['verified'] as bool?,
        stepupToken: data['stepupToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
      );

  static PasskeyStepupVerifyResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? PasskeyStepupVerifyResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'verified': _verified,
        'stepupToken': _stepupToken,
        'expiresIn': _expiresIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'verified': serializeParam(
          _verified,
          ParamType.bool,
        ),
        'stepupToken': serializeParam(
          _stepupToken,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
      }.withoutNulls;

  static PasskeyStepupVerifyResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyStepupVerifyResponseStruct(
        verified: deserializeParam(
          data['verified'],
          ParamType.bool,
          false,
        ),
        stepupToken: deserializeParam(
          data['stepupToken'],
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
  String toString() => 'PasskeyStepupVerifyResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyStepupVerifyResponseStruct &&
        verified == other.verified &&
        stepupToken == other.stepupToken &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([verified, stepupToken, expiresIn]);
}

PasskeyStepupVerifyResponseStruct createPasskeyStepupVerifyResponseStruct({
  bool? verified,
  String? stepupToken,
  int? expiresIn,
}) =>
    PasskeyStepupVerifyResponseStruct(
      verified: verified,
      stepupToken: stepupToken,
      expiresIn: expiresIn,
    );
