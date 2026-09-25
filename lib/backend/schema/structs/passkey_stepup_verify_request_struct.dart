// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyStepupVerifyRequestStruct extends BaseStruct {
  PasskeyStepupVerifyRequestStruct({
    String? id,
    String? rawId,
    String? type,
    PasskeyVerifyResponseDataStruct? response,
    String? authenticatorAttachment,
    String? transactionHash,
  })  : _id = id,
        _rawId = rawId,
        _type = type,
        _response = response,
        _authenticatorAttachment = authenticatorAttachment,
        _transactionHash = transactionHash;

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

  // "transactionHash" field.
  String? _transactionHash;
  String get transactionHash => _transactionHash ?? '';
  set transactionHash(String? val) => _transactionHash = val;

  bool hasTransactionHash() => _transactionHash != null;

  static PasskeyStepupVerifyRequestStruct fromMap(Map<String, dynamic> data) =>
      PasskeyStepupVerifyRequestStruct(
        id: data['id'] as String?,
        rawId: data['rawId'] as String?,
        type: data['type'] as String?,
        response: data['response'] is PasskeyVerifyResponseDataStruct
            ? data['response']
            : PasskeyVerifyResponseDataStruct.maybeFromMap(data['response']),
        authenticatorAttachment: data['authenticatorAttachment'] as String?,
        transactionHash: data['transactionHash'] as String?,
      );

  static PasskeyStepupVerifyRequestStruct? maybeFromMap(dynamic data) => data
          is Map
      ? PasskeyStepupVerifyRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'rawId': _rawId,
        'type': _type,
        'response': _response?.toMap(),
        'authenticatorAttachment': _authenticatorAttachment,
        'transactionHash': _transactionHash,
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
        'transactionHash': serializeParam(
          _transactionHash,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyStepupVerifyRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyStepupVerifyRequestStruct(
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
        transactionHash: deserializeParam(
          data['transactionHash'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyStepupVerifyRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyStepupVerifyRequestStruct &&
        id == other.id &&
        rawId == other.rawId &&
        type == other.type &&
        response == other.response &&
        authenticatorAttachment == other.authenticatorAttachment &&
        transactionHash == other.transactionHash;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, rawId, type, response, authenticatorAttachment, transactionHash]);
}

PasskeyStepupVerifyRequestStruct createPasskeyStepupVerifyRequestStruct({
  String? id,
  String? rawId,
  String? type,
  PasskeyVerifyResponseDataStruct? response,
  String? authenticatorAttachment,
  String? transactionHash,
}) =>
    PasskeyStepupVerifyRequestStruct(
      id: id,
      rawId: rawId,
      type: type,
      response: response ?? PasskeyVerifyResponseDataStruct(),
      authenticatorAttachment: authenticatorAttachment,
      transactionHash: transactionHash,
    );
