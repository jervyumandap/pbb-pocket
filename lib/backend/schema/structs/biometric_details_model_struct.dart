// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiometricDetailsModelStruct extends BaseStruct {
  BiometricDetailsModelStruct({
    bool? enabled,
    String? deviceId,
    String? deviceName,
    bool? isRegistered,
    bool? isBiometricEnrolled,
  })  : _enabled = enabled,
        _deviceId = deviceId,
        _deviceName = deviceName,
        _isRegistered = isRegistered,
        _isBiometricEnrolled = isBiometricEnrolled;

  // "enabled" field.
  bool? _enabled;
  bool get enabled => _enabled ?? false;
  set enabled(bool? val) => _enabled = val;

  bool hasEnabled() => _enabled != null;

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

  // "isRegistered" field.
  bool? _isRegistered;
  bool get isRegistered => _isRegistered ?? false;
  set isRegistered(bool? val) => _isRegistered = val;

  bool hasIsRegistered() => _isRegistered != null;

  // "isBiometricEnrolled" field.
  bool? _isBiometricEnrolled;
  bool get isBiometricEnrolled => _isBiometricEnrolled ?? false;
  set isBiometricEnrolled(bool? val) => _isBiometricEnrolled = val;

  bool hasIsBiometricEnrolled() => _isBiometricEnrolled != null;

  static BiometricDetailsModelStruct fromMap(Map<String, dynamic> data) =>
      BiometricDetailsModelStruct(
        enabled: data['enabled'] as bool?,
        deviceId: data['deviceId'] as String?,
        deviceName: data['deviceName'] as String?,
        isRegistered: data['isRegistered'] as bool?,
        isBiometricEnrolled: data['isBiometricEnrolled'] as bool?,
      );

  static BiometricDetailsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BiometricDetailsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'enabled': _enabled,
        'deviceId': _deviceId,
        'deviceName': _deviceName,
        'isRegistered': _isRegistered,
        'isBiometricEnrolled': _isBiometricEnrolled,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'enabled': serializeParam(
          _enabled,
          ParamType.bool,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'isRegistered': serializeParam(
          _isRegistered,
          ParamType.bool,
        ),
        'isBiometricEnrolled': serializeParam(
          _isBiometricEnrolled,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BiometricDetailsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BiometricDetailsModelStruct(
        enabled: deserializeParam(
          data['enabled'],
          ParamType.bool,
          false,
        ),
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
        isRegistered: deserializeParam(
          data['isRegistered'],
          ParamType.bool,
          false,
        ),
        isBiometricEnrolled: deserializeParam(
          data['isBiometricEnrolled'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BiometricDetailsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BiometricDetailsModelStruct &&
        enabled == other.enabled &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        isRegistered == other.isRegistered &&
        isBiometricEnrolled == other.isBiometricEnrolled;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([enabled, deviceId, deviceName, isRegistered, isBiometricEnrolled]);
}

BiometricDetailsModelStruct createBiometricDetailsModelStruct({
  bool? enabled,
  String? deviceId,
  String? deviceName,
  bool? isRegistered,
  bool? isBiometricEnrolled,
}) =>
    BiometricDetailsModelStruct(
      enabled: enabled,
      deviceId: deviceId,
      deviceName: deviceName,
      isRegistered: isRegistered,
      isBiometricEnrolled: isBiometricEnrolled,
    );
