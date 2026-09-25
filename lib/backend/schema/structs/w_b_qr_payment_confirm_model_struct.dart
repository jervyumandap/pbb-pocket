// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBQrPaymentConfirmModelStruct extends BaseStruct {
  WBQrPaymentConfirmModelStruct({
    String? method,
    String? deviceId,
    String? challenge,
    String? signature,
    String? mpin,
  })  : _method = method,
        _deviceId = deviceId,
        _challenge = challenge,
        _signature = signature,
        _mpin = mpin;

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

  static WBQrPaymentConfirmModelStruct fromMap(Map<String, dynamic> data) =>
      WBQrPaymentConfirmModelStruct(
        method: data['method'] as String?,
        deviceId: data['deviceId'] as String?,
        challenge: data['challenge'] as String?,
        signature: data['signature'] as String?,
        mpin: data['mpin'] as String?,
      );

  static WBQrPaymentConfirmModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? WBQrPaymentConfirmModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'method': _method,
        'deviceId': _deviceId,
        'challenge': _challenge,
        'signature': _signature,
        'mpin': _mpin,
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
      }.withoutNulls;

  static WBQrPaymentConfirmModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBQrPaymentConfirmModelStruct(
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
      );

  @override
  String toString() => 'WBQrPaymentConfirmModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBQrPaymentConfirmModelStruct &&
        method == other.method &&
        deviceId == other.deviceId &&
        challenge == other.challenge &&
        signature == other.signature &&
        mpin == other.mpin;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([method, deviceId, challenge, signature, mpin]);
}

WBQrPaymentConfirmModelStruct createWBQrPaymentConfirmModelStruct({
  String? method,
  String? deviceId,
  String? challenge,
  String? signature,
  String? mpin,
}) =>
    WBQrPaymentConfirmModelStruct(
      method: method,
      deviceId: deviceId,
      challenge: challenge,
      signature: signature,
      mpin: mpin,
    );
