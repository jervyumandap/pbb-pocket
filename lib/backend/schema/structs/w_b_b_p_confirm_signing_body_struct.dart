// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBBPConfirmSigningBodyStruct extends BaseStruct {
  WBBPConfirmSigningBodyStruct({
    String? method,
    String? deviceId,
    String? challenge,
    String? signature,
    String? mpin,
    String? operationId,
    String? stepupToken,
    String? transactionHash,
    String? credentialId,
    String? openingId,
  })  : _method = method,
        _deviceId = deviceId,
        _challenge = challenge,
        _signature = signature,
        _mpin = mpin,
        _operationId = operationId,
        _stepupToken = stepupToken,
        _transactionHash = transactionHash,
        _credentialId = credentialId,
        _openingId = openingId;

  // "method" field.
  String? _method;
  String get method => _method ?? '';
  set method(String? val) => _method = val;

  bool hasMethod() => _method != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  set signature(String? val) => _signature = val;

  bool hasSignature() => _signature != null;

  // "mpin" field.
  String? _mpin;
  String get mpin => _mpin ?? '';
  set mpin(String? val) => _mpin = val;

  bool hasMpin() => _mpin != null;

  // "operationId" field.
  String? _operationId;
  String get operationId => _operationId ?? '';
  set operationId(String? val) => _operationId = val;

  bool hasOperationId() => _operationId != null;

  // "stepupToken" field.
  String? _stepupToken;
  String get stepupToken => _stepupToken ?? '';
  set stepupToken(String? val) => _stepupToken = val;

  bool hasStepupToken() => _stepupToken != null;

  // "transactionHash" field.
  String? _transactionHash;
  String get transactionHash => _transactionHash ?? '';
  set transactionHash(String? val) => _transactionHash = val;

  bool hasTransactionHash() => _transactionHash != null;

  // "credentialId" field.
  String? _credentialId;
  String get credentialId => _credentialId ?? '';
  set credentialId(String? val) => _credentialId = val;

  bool hasCredentialId() => _credentialId != null;

  // "openingId" field.
  String? _openingId;
  String get openingId => _openingId ?? '';
  set openingId(String? val) => _openingId = val;

  bool hasOpeningId() => _openingId != null;

  static WBBPConfirmSigningBodyStruct fromMap(Map<String, dynamic> data) =>
      WBBPConfirmSigningBodyStruct(
        method: data['method'] as String?,
        deviceId: data['deviceId'] as String?,
        challenge: data['challenge'] as String?,
        signature: data['signature'] as String?,
        mpin: data['mpin'] as String?,
        operationId: data['operationId'] as String?,
        stepupToken: data['stepupToken'] as String?,
        transactionHash: data['transactionHash'] as String?,
        credentialId: data['credentialId'] as String?,
        openingId: data['openingId'] as String?,
      );

  static WBBPConfirmSigningBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? WBBPConfirmSigningBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'method': _method,
        'deviceId': _deviceId,
        'challenge': _challenge,
        'signature': _signature,
        'mpin': _mpin,
        'operationId': _operationId,
        'stepupToken': _stepupToken,
        'transactionHash': _transactionHash,
        'credentialId': _credentialId,
        'openingId': _openingId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'method': serializeParam(
          _method,
          ParamType.String,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'signature': serializeParam(
          _signature,
          ParamType.String,
        ),
        'mpin': serializeParam(
          _mpin,
          ParamType.String,
        ),
        'operationId': serializeParam(
          _operationId,
          ParamType.String,
        ),
        'stepupToken': serializeParam(
          _stepupToken,
          ParamType.String,
        ),
        'transactionHash': serializeParam(
          _transactionHash,
          ParamType.String,
        ),
        'credentialId': serializeParam(
          _credentialId,
          ParamType.String,
        ),
        'openingId': serializeParam(
          _openingId,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBBPConfirmSigningBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBBPConfirmSigningBodyStruct(
        method: deserializeParam(
          data['method'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        signature: deserializeParam(
          data['signature'],
          ParamType.String,
          false,
        ),
        mpin: deserializeParam(
          data['mpin'],
          ParamType.String,
          false,
        ),
        operationId: deserializeParam(
          data['operationId'],
          ParamType.String,
          false,
        ),
        stepupToken: deserializeParam(
          data['stepupToken'],
          ParamType.String,
          false,
        ),
        transactionHash: deserializeParam(
          data['transactionHash'],
          ParamType.String,
          false,
        ),
        credentialId: deserializeParam(
          data['credentialId'],
          ParamType.String,
          false,
        ),
        openingId: deserializeParam(
          data['openingId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBBPConfirmSigningBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBBPConfirmSigningBodyStruct &&
        method == other.method &&
        deviceId == other.deviceId &&
        challenge == other.challenge &&
        signature == other.signature &&
        mpin == other.mpin &&
        operationId == other.operationId &&
        stepupToken == other.stepupToken &&
        transactionHash == other.transactionHash &&
        credentialId == other.credentialId &&
        openingId == other.openingId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        method,
        deviceId,
        challenge,
        signature,
        mpin,
        operationId,
        stepupToken,
        transactionHash,
        credentialId,
        openingId
      ]);
}

WBBPConfirmSigningBodyStruct createWBBPConfirmSigningBodyStruct({
  String? method,
  String? deviceId,
  String? challenge,
  String? signature,
  String? mpin,
  String? operationId,
  String? stepupToken,
  String? transactionHash,
  String? credentialId,
  String? openingId,
}) =>
    WBBPConfirmSigningBodyStruct(
      method: method,
      deviceId: deviceId,
      challenge: challenge,
      signature: signature,
      mpin: mpin,
      operationId: operationId,
      stepupToken: stepupToken,
      transactionHash: transactionHash,
      credentialId: credentialId,
      openingId: openingId,
    );
