// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyRegistrationVerifyResponseStruct extends BaseStruct {
  PasskeyRegistrationVerifyResponseStruct({
    bool? verified,
    String? credentialId,
    String? message,
  })  : _verified = verified,
        _credentialId = credentialId,
        _message = message;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  set verified(bool? val) => _verified = val;

  bool hasVerified() => _verified != null;

  // "credentialId" field.
  String? _credentialId;
  String get credentialId => _credentialId ?? '';
  set credentialId(String? val) => _credentialId = val;

  bool hasCredentialId() => _credentialId != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static PasskeyRegistrationVerifyResponseStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationVerifyResponseStruct(
        verified: data['verified'] as bool?,
        credentialId: data['credentialId'] as String?,
        message: data['message'] as String?,
      );

  static PasskeyRegistrationVerifyResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyRegistrationVerifyResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'verified': _verified,
        'credentialId': _credentialId,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'verified': serializeParam(
          _verified,
          ParamType.bool,
        ),
        'credentialId': serializeParam(
          _credentialId,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyRegistrationVerifyResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationVerifyResponseStruct(
        verified: deserializeParam(
          data['verified'],
          ParamType.bool,
          false,
        ),
        credentialId: deserializeParam(
          data['credentialId'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyRegistrationVerifyResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyRegistrationVerifyResponseStruct &&
        verified == other.verified &&
        credentialId == other.credentialId &&
        message == other.message;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([verified, credentialId, message]);
}

PasskeyRegistrationVerifyResponseStruct
    createPasskeyRegistrationVerifyResponseStruct({
  bool? verified,
  String? credentialId,
  String? message,
}) =>
        PasskeyRegistrationVerifyResponseStruct(
          verified: verified,
          credentialId: credentialId,
          message: message,
        );
