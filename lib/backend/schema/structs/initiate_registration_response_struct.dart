// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InitiateRegistrationResponseStruct extends BaseStruct {
  InitiateRegistrationResponseStruct({
    String? sessionToken,
    String? expiresAt,
    String? status,
  })  : _sessionToken = sessionToken,
        _expiresAt = expiresAt,
        _status = status;

  // "sessionToken" field.
  String? _sessionToken;
  String get sessionToken => _sessionToken ?? '';
  set sessionToken(String? val) => _sessionToken = val;

  bool hasSessionToken() => _sessionToken != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static InitiateRegistrationResponseStruct fromMap(
          Map<String, dynamic> data) =>
      InitiateRegistrationResponseStruct(
        sessionToken: data['sessionToken'] as String?,
        expiresAt: data['expiresAt'] as String?,
        status: data['status'] as String?,
      );

  static InitiateRegistrationResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? InitiateRegistrationResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sessionToken': _sessionToken,
        'expiresAt': _expiresAt,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sessionToken': serializeParam(
          _sessionToken,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static InitiateRegistrationResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InitiateRegistrationResponseStruct(
        sessionToken: deserializeParam(
          data['sessionToken'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InitiateRegistrationResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InitiateRegistrationResponseStruct &&
        sessionToken == other.sessionToken &&
        expiresAt == other.expiresAt &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sessionToken, expiresAt, status]);
}

InitiateRegistrationResponseStruct createInitiateRegistrationResponseStruct({
  String? sessionToken,
  String? expiresAt,
  String? status,
}) =>
    InitiateRegistrationResponseStruct(
      sessionToken: sessionToken,
      expiresAt: expiresAt,
      status: status,
    );
