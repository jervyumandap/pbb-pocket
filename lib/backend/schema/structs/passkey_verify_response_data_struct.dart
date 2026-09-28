// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyVerifyResponseDataStruct extends BaseStruct {
  PasskeyVerifyResponseDataStruct({
    String? authenticatorData,
    String? clientDataJSON,
    String? signature,
    String? userHandle,
  })  : _authenticatorData = authenticatorData,
        _clientDataJSON = clientDataJSON,
        _signature = signature,
        _userHandle = userHandle;

  // "authenticatorData" field.
  String? _authenticatorData;
  String get authenticatorData => _authenticatorData ?? '';
  set authenticatorData(String? val) => _authenticatorData = val;

  bool hasAuthenticatorData() => _authenticatorData != null;

  // "clientDataJSON" field.
  String? _clientDataJSON;
  String get clientDataJSON => _clientDataJSON ?? '';
  set clientDataJSON(String? val) => _clientDataJSON = val;

  bool hasClientDataJSON() => _clientDataJSON != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  set signature(String? val) => _signature = val;

  bool hasSignature() => _signature != null;

  // "userHandle" field.
  String? _userHandle;
  String get userHandle => _userHandle ?? '';
  set userHandle(String? val) => _userHandle = val;

  bool hasUserHandle() => _userHandle != null;

  static PasskeyVerifyResponseDataStruct fromMap(Map<String, dynamic> data) =>
      PasskeyVerifyResponseDataStruct(
        authenticatorData: data['authenticatorData'] as String?,
        clientDataJSON: data['clientDataJSON'] as String?,
        signature: data['signature'] as String?,
        userHandle: data['userHandle'] as String?,
      );

  static PasskeyVerifyResponseDataStruct? maybeFromMap(dynamic data) => data
          is Map
      ? PasskeyVerifyResponseDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'authenticatorData': _authenticatorData,
        'clientDataJSON': _clientDataJSON,
        'signature': _signature,
        'userHandle': _userHandle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'authenticatorData': serializeParam(
          _authenticatorData,
          ParamType.String,
        ),
        'clientDataJSON': serializeParam(
          _clientDataJSON,
          ParamType.String,
        ),
        'signature': serializeParam(
          _signature,
          ParamType.String,
        ),
        'userHandle': serializeParam(
          _userHandle,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyVerifyResponseDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyVerifyResponseDataStruct(
        authenticatorData: deserializeParam(
          data['authenticatorData'],
          ParamType.String,
          false,
        ),
        clientDataJSON: deserializeParam(
          data['clientDataJSON'],
          ParamType.String,
          false,
        ),
        signature: deserializeParam(
          data['signature'],
          ParamType.String,
          false,
        ),
        userHandle: deserializeParam(
          data['userHandle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyVerifyResponseDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyVerifyResponseDataStruct &&
        authenticatorData == other.authenticatorData &&
        clientDataJSON == other.clientDataJSON &&
        signature == other.signature &&
        userHandle == other.userHandle;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([authenticatorData, clientDataJSON, signature, userHandle]);
}

PasskeyVerifyResponseDataStruct createPasskeyVerifyResponseDataStruct({
  String? authenticatorData,
  String? clientDataJSON,
  String? signature,
  String? userHandle,
}) =>
    PasskeyVerifyResponseDataStruct(
      authenticatorData: authenticatorData,
      clientDataJSON: clientDataJSON,
      signature: signature,
      userHandle: userHandle,
    );
