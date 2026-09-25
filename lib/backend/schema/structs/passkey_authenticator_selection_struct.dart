// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyAuthenticatorSelectionStruct extends BaseStruct {
  PasskeyAuthenticatorSelectionStruct({
    String? residentKey,
    String? userVerification,
    String? authenticatorAttachment,
    bool? requireResidentKey,
  })  : _residentKey = residentKey,
        _userVerification = userVerification,
        _authenticatorAttachment = authenticatorAttachment,
        _requireResidentKey = requireResidentKey;

  // "residentKey" field.
  String? _residentKey;
  String get residentKey => _residentKey ?? '';
  set residentKey(String? val) => _residentKey = val;

  bool hasResidentKey() => _residentKey != null;

  // "userVerification" field.
  String? _userVerification;
  String get userVerification => _userVerification ?? '';
  set userVerification(String? val) => _userVerification = val;

  bool hasUserVerification() => _userVerification != null;

  // "authenticatorAttachment" field.
  String? _authenticatorAttachment;
  String get authenticatorAttachment => _authenticatorAttachment ?? '';
  set authenticatorAttachment(String? val) => _authenticatorAttachment = val;

  bool hasAuthenticatorAttachment() => _authenticatorAttachment != null;

  // "requireResidentKey" field.
  bool? _requireResidentKey;
  bool get requireResidentKey => _requireResidentKey ?? false;
  set requireResidentKey(bool? val) => _requireResidentKey = val;

  bool hasRequireResidentKey() => _requireResidentKey != null;

  static PasskeyAuthenticatorSelectionStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyAuthenticatorSelectionStruct(
        residentKey: data['residentKey'] as String?,
        userVerification: data['userVerification'] as String?,
        authenticatorAttachment: data['authenticatorAttachment'] as String?,
        requireResidentKey: data['requireResidentKey'] as bool?,
      );

  static PasskeyAuthenticatorSelectionStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyAuthenticatorSelectionStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'residentKey': _residentKey,
        'userVerification': _userVerification,
        'authenticatorAttachment': _authenticatorAttachment,
        'requireResidentKey': _requireResidentKey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'residentKey': serializeParam(
          _residentKey,
          ParamType.String,
        ),
        'userVerification': serializeParam(
          _userVerification,
          ParamType.String,
        ),
        'authenticatorAttachment': serializeParam(
          _authenticatorAttachment,
          ParamType.String,
        ),
        'requireResidentKey': serializeParam(
          _requireResidentKey,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PasskeyAuthenticatorSelectionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyAuthenticatorSelectionStruct(
        residentKey: deserializeParam(
          data['residentKey'],
          ParamType.String,
          false,
        ),
        userVerification: deserializeParam(
          data['userVerification'],
          ParamType.String,
          false,
        ),
        authenticatorAttachment: deserializeParam(
          data['authenticatorAttachment'],
          ParamType.String,
          false,
        ),
        requireResidentKey: deserializeParam(
          data['requireResidentKey'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyAuthenticatorSelectionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyAuthenticatorSelectionStruct &&
        residentKey == other.residentKey &&
        userVerification == other.userVerification &&
        authenticatorAttachment == other.authenticatorAttachment &&
        requireResidentKey == other.requireResidentKey;
  }

  @override
  int get hashCode => const ListEquality().hash([
        residentKey,
        userVerification,
        authenticatorAttachment,
        requireResidentKey
      ]);
}

PasskeyAuthenticatorSelectionStruct createPasskeyAuthenticatorSelectionStruct({
  String? residentKey,
  String? userVerification,
  String? authenticatorAttachment,
  bool? requireResidentKey,
}) =>
    PasskeyAuthenticatorSelectionStruct(
      residentKey: residentKey,
      userVerification: userVerification,
      authenticatorAttachment: authenticatorAttachment,
      requireResidentKey: requireResidentKey,
    );
