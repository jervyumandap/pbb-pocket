// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyRegistrationVerifyResponseDataStruct extends BaseStruct {
  PasskeyRegistrationVerifyResponseDataStruct({
    String? attestationObject,
    String? clientDataJSON,
    List<String>? transports,
    String? publicKey,
    int? publicKeyAlgorithm,
    String? authenticatorData,
  })  : _attestationObject = attestationObject,
        _clientDataJSON = clientDataJSON,
        _transports = transports,
        _publicKey = publicKey,
        _publicKeyAlgorithm = publicKeyAlgorithm,
        _authenticatorData = authenticatorData;

  // "attestationObject" field.
  String? _attestationObject;
  String get attestationObject => _attestationObject ?? '';
  set attestationObject(String? val) => _attestationObject = val;

  bool hasAttestationObject() => _attestationObject != null;

  // "clientDataJSON" field.
  String? _clientDataJSON;
  String get clientDataJSON => _clientDataJSON ?? '';
  set clientDataJSON(String? val) => _clientDataJSON = val;

  bool hasClientDataJSON() => _clientDataJSON != null;

  // "transports" field.
  List<String>? _transports;
  List<String> get transports => _transports ?? const [];
  set transports(List<String>? val) => _transports = val;

  void updateTransports(Function(List<String>) updateFn) {
    updateFn(_transports ??= []);
  }

  bool hasTransports() => _transports != null;

  // "publicKey" field.
  String? _publicKey;
  String get publicKey => _publicKey ?? '';
  set publicKey(String? val) => _publicKey = val;

  bool hasPublicKey() => _publicKey != null;

  // "publicKeyAlgorithm" field.
  int? _publicKeyAlgorithm;
  int get publicKeyAlgorithm => _publicKeyAlgorithm ?? 0;
  set publicKeyAlgorithm(int? val) => _publicKeyAlgorithm = val;

  void incrementPublicKeyAlgorithm(int amount) =>
      publicKeyAlgorithm = publicKeyAlgorithm + amount;

  bool hasPublicKeyAlgorithm() => _publicKeyAlgorithm != null;

  // "authenticatorData" field.
  String? _authenticatorData;
  String get authenticatorData => _authenticatorData ?? '';
  set authenticatorData(String? val) => _authenticatorData = val;

  bool hasAuthenticatorData() => _authenticatorData != null;

  static PasskeyRegistrationVerifyResponseDataStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationVerifyResponseDataStruct(
        attestationObject: data['attestationObject'] as String?,
        clientDataJSON: data['clientDataJSON'] as String?,
        transports: getDataList(data['transports']),
        publicKey: data['publicKey'] as String?,
        publicKeyAlgorithm: castToType<int>(data['publicKeyAlgorithm']),
        authenticatorData: data['authenticatorData'] as String?,
      );

  static PasskeyRegistrationVerifyResponseDataStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? PasskeyRegistrationVerifyResponseDataStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'attestationObject': _attestationObject,
        'clientDataJSON': _clientDataJSON,
        'transports': _transports,
        'publicKey': _publicKey,
        'publicKeyAlgorithm': _publicKeyAlgorithm,
        'authenticatorData': _authenticatorData,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'attestationObject': serializeParam(
          _attestationObject,
          ParamType.String,
        ),
        'clientDataJSON': serializeParam(
          _clientDataJSON,
          ParamType.String,
        ),
        'transports': serializeParam(
          _transports,
          ParamType.String,
          isList: true,
        ),
        'publicKey': serializeParam(
          _publicKey,
          ParamType.String,
        ),
        'publicKeyAlgorithm': serializeParam(
          _publicKeyAlgorithm,
          ParamType.int,
        ),
        'authenticatorData': serializeParam(
          _authenticatorData,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyRegistrationVerifyResponseDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationVerifyResponseDataStruct(
        attestationObject: deserializeParam(
          data['attestationObject'],
          ParamType.String,
          false,
        ),
        clientDataJSON: deserializeParam(
          data['clientDataJSON'],
          ParamType.String,
          false,
        ),
        transports: deserializeParam<String>(
          data['transports'],
          ParamType.String,
          true,
        ),
        publicKey: deserializeParam(
          data['publicKey'],
          ParamType.String,
          false,
        ),
        publicKeyAlgorithm: deserializeParam(
          data['publicKeyAlgorithm'],
          ParamType.int,
          false,
        ),
        authenticatorData: deserializeParam(
          data['authenticatorData'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() =>
      'PasskeyRegistrationVerifyResponseDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PasskeyRegistrationVerifyResponseDataStruct &&
        attestationObject == other.attestationObject &&
        clientDataJSON == other.clientDataJSON &&
        listEquality.equals(transports, other.transports) &&
        publicKey == other.publicKey &&
        publicKeyAlgorithm == other.publicKeyAlgorithm &&
        authenticatorData == other.authenticatorData;
  }

  @override
  int get hashCode => const ListEquality().hash([
        attestationObject,
        clientDataJSON,
        transports,
        publicKey,
        publicKeyAlgorithm,
        authenticatorData
      ]);
}

PasskeyRegistrationVerifyResponseDataStruct
    createPasskeyRegistrationVerifyResponseDataStruct({
  String? attestationObject,
  String? clientDataJSON,
  String? publicKey,
  int? publicKeyAlgorithm,
  String? authenticatorData,
}) =>
        PasskeyRegistrationVerifyResponseDataStruct(
          attestationObject: attestationObject,
          clientDataJSON: clientDataJSON,
          publicKey: publicKey,
          publicKeyAlgorithm: publicKeyAlgorithm,
          authenticatorData: authenticatorData,
        );
