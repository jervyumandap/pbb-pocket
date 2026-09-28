// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyAuthVerifyRequestStruct extends BaseStruct {
  PasskeyAuthVerifyRequestStruct({
    String? id,
    String? rawId,
    String? type,
    PasskeyVerifyResponseDataStruct? response,
    String? authenticatorAttachment,
    String? deviceId,
  })  : _id = id,
        _rawId = rawId,
        _type = type,
        _response = response,
        _authenticatorAttachment = authenticatorAttachment,
        _deviceId = deviceId;

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
  PasskeyVerifyResponseDataStruct? _response;
  PasskeyVerifyResponseDataStruct get response =>
      _response ?? PasskeyVerifyResponseDataStruct();
  set response(PasskeyVerifyResponseDataStruct? val) => _response = val;

  void updateResponse(Function(PasskeyVerifyResponseDataStruct) updateFn) {
    updateFn(_response ??= PasskeyVerifyResponseDataStruct());
  }

  bool hasResponse() => _response != null;

  // "authenticatorAttachment" field.
  String? _authenticatorAttachment;
  String get authenticatorAttachment => _authenticatorAttachment ?? '';
  set authenticatorAttachment(String? val) => _authenticatorAttachment = val;

  bool hasAuthenticatorAttachment() => _authenticatorAttachment != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  static PasskeyAuthVerifyRequestStruct fromMap(Map<String, dynamic> data) =>
      PasskeyAuthVerifyRequestStruct(
        id: data['id'] as String?,
        rawId: data['rawId'] as String?,
        type: data['type'] as String?,
        response: data['response'] is PasskeyVerifyResponseDataStruct
            ? data['response']
            : PasskeyVerifyResponseDataStruct.maybeFromMap(data['response']),
        authenticatorAttachment: data['authenticatorAttachment'] as String?,
        deviceId: data['deviceId'] as String?,
      );

  static PasskeyAuthVerifyRequestStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyAuthVerifyRequestStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'rawId': _rawId,
        'type': _type,
        'response': _response?.toMap(),
        'authenticatorAttachment': _authenticatorAttachment,
        'deviceId': _deviceId,
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
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyAuthVerifyRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyAuthVerifyRequestStruct(
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
          structBuilder: PasskeyVerifyResponseDataStruct.fromSerializableMap,
        ),
        authenticatorAttachment: deserializeParam(
          data['authenticatorAttachment'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyAuthVerifyRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyAuthVerifyRequestStruct &&
        id == other.id &&
        rawId == other.rawId &&
        type == other.type &&
        response == other.response &&
        authenticatorAttachment == other.authenticatorAttachment &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, rawId, type, response, authenticatorAttachment, deviceId]);
}

PasskeyAuthVerifyRequestStruct createPasskeyAuthVerifyRequestStruct({
  String? id,
  String? rawId,
  String? type,
  PasskeyVerifyResponseDataStruct? response,
  String? authenticatorAttachment,
  String? deviceId,
}) =>
    PasskeyAuthVerifyRequestStruct(
      id: id,
      rawId: rawId,
      type: type,
      response: response ?? PasskeyVerifyResponseDataStruct(),
      authenticatorAttachment: authenticatorAttachment,
      deviceId: deviceId,
    );
