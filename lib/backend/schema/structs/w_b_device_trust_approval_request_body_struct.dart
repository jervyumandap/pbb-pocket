// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBDeviceTrustApprovalRequestBodyStruct extends BaseStruct {
  WBDeviceTrustApprovalRequestBodyStruct({
    String? method,
    String? deviceId,
    String? challenge,
    String? signature,
    String? mpin,
    String? stepupToken,
    String? transactionHash,
  })  : _method = method,
        _deviceId = deviceId,
        _challenge = challenge,
        _signature = signature,
        _mpin = mpin,
        _stepupToken = stepupToken,
        _transactionHash = transactionHash;

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

  static WBDeviceTrustApprovalRequestBodyStruct fromMap(
          Map<String, dynamic> data) =>
      WBDeviceTrustApprovalRequestBodyStruct(
        method: data['method'] as String?,
        deviceId: data['deviceId'] as String?,
        challenge: data['challenge'] as String?,
        signature: data['signature'] as String?,
        mpin: data['mpin'] as String?,
        stepupToken: data['stepupToken'] as String?,
        transactionHash: data['transactionHash'] as String?,
      );

  static WBDeviceTrustApprovalRequestBodyStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? WBDeviceTrustApprovalRequestBodyStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'method': _method,
        'deviceId': _deviceId,
        'challenge': _challenge,
        'signature': _signature,
        'mpin': _mpin,
        'stepupToken': _stepupToken,
        'transactionHash': _transactionHash,
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
        'stepupToken': serializeParam(
          _stepupToken,
          ParamType.String,
        ),
        'transactionHash': serializeParam(
          _transactionHash,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBDeviceTrustApprovalRequestBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBDeviceTrustApprovalRequestBodyStruct(
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
      );

  @override
  String toString() => 'WBDeviceTrustApprovalRequestBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBDeviceTrustApprovalRequestBodyStruct &&
        method == other.method &&
        deviceId == other.deviceId &&
        challenge == other.challenge &&
        signature == other.signature &&
        mpin == other.mpin &&
        stepupToken == other.stepupToken &&
        transactionHash == other.transactionHash;
  }

  @override
  int get hashCode => const ListEquality().hash([
        method,
        deviceId,
        challenge,
        signature,
        mpin,
        stepupToken,
        transactionHash
      ]);
}

WBDeviceTrustApprovalRequestBodyStruct
    createWBDeviceTrustApprovalRequestBodyStruct({
  String? method,
  String? deviceId,
  String? challenge,
  String? signature,
  String? mpin,
  String? stepupToken,
  String? transactionHash,
}) =>
        WBDeviceTrustApprovalRequestBodyStruct(
          method: method,
          deviceId: deviceId,
          challenge: challenge,
          signature: signature,
          mpin: mpin,
          stepupToken: stepupToken,
          transactionHash: transactionHash,
        );
