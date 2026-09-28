// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiometricDeviceRegisterModelStruct extends BaseStruct {
  BiometricDeviceRegisterModelStruct({
    String? deviceId,
    String? deviceName,
    String? publicKey,
  })  : _deviceId = deviceId,
        _deviceName = deviceName,
        _publicKey = publicKey;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "deviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "publicKey" field.
  String? _publicKey;
  String get publicKey => _publicKey ?? '';
  set publicKey(String? val) => _publicKey = val;

  bool hasPublicKey() => _publicKey != null;

  static BiometricDeviceRegisterModelStruct fromMap(
          Map<String, dynamic> data) =>
      BiometricDeviceRegisterModelStruct(
        deviceId: data['deviceId'] as String?,
        deviceName: data['deviceName'] as String?,
        publicKey: data['publicKey'] as String?,
      );

  static BiometricDeviceRegisterModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? BiometricDeviceRegisterModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'deviceId': _deviceId,
        'deviceName': _deviceName,
        'publicKey': _publicKey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'publicKey': serializeParam(
          _publicKey,
          ParamType.String,
        ),
      }.withoutNulls;

  static BiometricDeviceRegisterModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BiometricDeviceRegisterModelStruct(
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['deviceName'],
          ParamType.String,
          false,
        ),
        publicKey: deserializeParam(
          data['publicKey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BiometricDeviceRegisterModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BiometricDeviceRegisterModelStruct &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        publicKey == other.publicKey;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([deviceId, deviceName, publicKey]);
}

BiometricDeviceRegisterModelStruct createBiometricDeviceRegisterModelStruct({
  String? deviceId,
  String? deviceName,
  String? publicKey,
}) =>
    BiometricDeviceRegisterModelStruct(
      deviceId: deviceId,
      deviceName: deviceName,
      publicKey: publicKey,
    );
