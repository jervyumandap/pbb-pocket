// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyRegistrationVerifyRequestStruct extends BaseStruct {
  PasskeyRegistrationVerifyRequestStruct({
    String? id,
    String? rawId,
    String? type,
    PasskeyRegistrationVerifyResponseDataStruct? response,
    String? authenticatorAttachment,
    String? passkeyName,
  })  : _id = id,
        _rawId = rawId,
        _type = type,
        _response = response,
        _authenticatorAttachment = authenticatorAttachment,
        _passkeyName = passkeyName;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "rawId" field.
  String? _rawId;
  String get rawId => _rawId ?? '';
  set rawId(String? val) => _rawId = val;

  bool hasRawId() => _rawId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "response" field.
  PasskeyRegistrationVerifyResponseDataStruct? _response;
  PasskeyRegistrationVerifyResponseDataStruct get response =>
      _response ?? PasskeyRegistrationVerifyResponseDataStruct();
  set response(PasskeyRegistrationVerifyResponseDataStruct? val) =>
      _response = val;

  void updateResponse(
      Function(PasskeyRegistrationVerifyResponseDataStruct) updateFn) {
    updateFn(_response ??= PasskeyRegistrationVerifyResponseDataStruct());
  }

  bool hasResponse() => _response != null;

  // "authenticatorAttachment" field.
  String? _authenticatorAttachment;
  String get authenticatorAttachment => _authenticatorAttachment ?? '';
  set authenticatorAttachment(String? val) => _authenticatorAttachment = val;

  bool hasAuthenticatorAttachment() => _authenticatorAttachment != null;

  // "passkeyName" field.
  String? _passkeyName;
  String get passkeyName => _passkeyName ?? '';
  set passkeyName(String? val) => _passkeyName = val;

  bool hasPasskeyName() => _passkeyName != null;

  static PasskeyRegistrationVerifyRequestStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationVerifyRequestStruct(
        id: data['id'] as String?,
        rawId: data['rawId'] as String?,
        type: data['type'] as String?,
        response:
            data['response'] is PasskeyRegistrationVerifyResponseDataStruct
                ? data['response']
                : PasskeyRegistrationVerifyResponseDataStruct.maybeFromMap(
                    data['response']),
        authenticatorAttachment: data['authenticatorAttachment'] as String?,
        passkeyName: data['passkeyName'] as String?,
      );

  static PasskeyRegistrationVerifyRequestStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyRegistrationVerifyRequestStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'rawId': _rawId,
        'type': _type,
        'response': _response?.toMap(),
        'authenticatorAttachment': _authenticatorAttachment,
        'passkeyName': _passkeyName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'rawId': serializeParam(
          _rawId,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
        ),
        'authenticatorAttachment': serializeParam(
          _authenticatorAttachment,
          ParamType.String,
        ),
        'passkeyName': serializeParam(
          _passkeyName,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyRegistrationVerifyRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationVerifyRequestStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        rawId: deserializeParam(
          data['rawId'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        response: deserializeStructParam(
          data['response'],
          ParamType.DataStruct,
          false,
          structBuilder:
              PasskeyRegistrationVerifyResponseDataStruct.fromSerializableMap,
        ),
        authenticatorAttachment: deserializeParam(
          data['authenticatorAttachment'],
          ParamType.String,
          false,
        ),
        passkeyName: deserializeParam(
          data['passkeyName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyRegistrationVerifyRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyRegistrationVerifyRequestStruct &&
        id == other.id &&
        rawId == other.rawId &&
        type == other.type &&
        response == other.response &&
        authenticatorAttachment == other.authenticatorAttachment &&
        passkeyName == other.passkeyName;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, rawId, type, response, authenticatorAttachment, passkeyName]);
}

PasskeyRegistrationVerifyRequestStruct
    createPasskeyRegistrationVerifyRequestStruct({
  String? id,
  String? rawId,
  String? type,
  PasskeyRegistrationVerifyResponseDataStruct? response,
  String? authenticatorAttachment,
  String? passkeyName,
}) =>
        PasskeyRegistrationVerifyRequestStruct(
          id: id,
          rawId: rawId,
          type: type,
          response: response ?? PasskeyRegistrationVerifyResponseDataStruct(),
          authenticatorAttachment: authenticatorAttachment,
          passkeyName: passkeyName,
        );
