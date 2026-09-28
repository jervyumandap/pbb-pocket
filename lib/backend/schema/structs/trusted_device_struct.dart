// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrustedDeviceStruct extends BaseStruct {
  TrustedDeviceStruct({
    String? id,
    String? deviceId,
    String? deviceName,
    bool? enabled,
    bool? hasBiometric,
    bool? hasDeviceKey,
    bool? trusted,
    String? lastUsedAt,
    String? registeredAt,
    bool? isCurrent,
    String? createdAt,
    String? updatedAt,
    String? pushPlatform,
    String? deviceType,
  })  : _id = id,
        _deviceId = deviceId,
        _deviceName = deviceName,
        _enabled = enabled,
        _hasBiometric = hasBiometric,
        _hasDeviceKey = hasDeviceKey,
        _trusted = trusted,
        _lastUsedAt = lastUsedAt,
        _registeredAt = registeredAt,
        _isCurrent = isCurrent,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _pushPlatform = pushPlatform,
        _deviceType = deviceType;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "enabled" field.
  bool? _enabled;
  bool get enabled => _enabled ?? false;
  set enabled(bool? val) => _enabled = val;

  bool hasEnabled() => _enabled != null;

  // "hasBiometric" field.
  bool? _hasBiometric;
  bool get hasBiometric => _hasBiometric ?? false;
  set hasBiometric(bool? val) => _hasBiometric = val;

  bool hasHasBiometric() => _hasBiometric != null;

  // "hasDeviceKey" field.
  bool? _hasDeviceKey;
  bool get hasDeviceKey => _hasDeviceKey ?? false;
  set hasDeviceKey(bool? val) => _hasDeviceKey = val;

  bool hasHasDeviceKey() => _hasDeviceKey != null;

  // "trusted" field.
  bool? _trusted;
  bool get trusted => _trusted ?? false;
  set trusted(bool? val) => _trusted = val;

  bool hasTrusted() => _trusted != null;

  // "lastUsedAt" field.
  String? _lastUsedAt;
  String get lastUsedAt => _lastUsedAt ?? '';
  set lastUsedAt(String? val) => _lastUsedAt = val;

  bool hasLastUsedAt() => _lastUsedAt != null;

  // "registeredAt" field.
  String? _registeredAt;
  String get registeredAt => _registeredAt ?? '';
  set registeredAt(String? val) => _registeredAt = val;

  bool hasRegisteredAt() => _registeredAt != null;

  // "isCurrent" field.
  bool? _isCurrent;
  bool get isCurrent => _isCurrent ?? false;
  set isCurrent(bool? val) => _isCurrent = val;

  bool hasIsCurrent() => _isCurrent != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "pushPlatform" field.
  String? _pushPlatform;
  String get pushPlatform => _pushPlatform ?? '';
  set pushPlatform(String? val) => _pushPlatform = val;

  bool hasPushPlatform() => _pushPlatform != null;

  // "deviceType" field.
  String? _deviceType;
  String get deviceType => _deviceType ?? '';
  set deviceType(String? val) => _deviceType = val;

  bool hasDeviceType() => _deviceType != null;

  static TrustedDeviceStruct fromMap(Map<String, dynamic> data) =>
      TrustedDeviceStruct(
        id: data['id'] as String?,
        deviceId: data['deviceId'] as String?,
        deviceName: data['deviceName'] as String?,
        enabled: data['enabled'] as bool?,
        hasBiometric: data['hasBiometric'] as bool?,
        hasDeviceKey: data['hasDeviceKey'] as bool?,
        trusted: data['trusted'] as bool?,
        lastUsedAt: data['lastUsedAt'] as String?,
        registeredAt: data['registeredAt'] as String?,
        isCurrent: data['isCurrent'] as bool?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        pushPlatform: data['pushPlatform'] as String?,
        deviceType: data['deviceType'] as String?,
      );

  static TrustedDeviceStruct? maybeFromMap(dynamic data) => data is Map
      ? TrustedDeviceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'deviceId': _deviceId,
        'deviceName': _deviceName,
        'enabled': _enabled,
        'hasBiometric': _hasBiometric,
        'hasDeviceKey': _hasDeviceKey,
        'trusted': _trusted,
        'lastUsedAt': _lastUsedAt,
        'registeredAt': _registeredAt,
        'isCurrent': _isCurrent,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'pushPlatform': _pushPlatform,
        'deviceType': _deviceType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'enabled': serializeParam(
          _enabled,
          ParamType.bool,
        ),
        'hasBiometric': serializeParam(
          _hasBiometric,
          ParamType.bool,
        ),
        'hasDeviceKey': serializeParam(
          _hasDeviceKey,
          ParamType.bool,
        ),
        'trusted': serializeParam(
          _trusted,
          ParamType.bool,
        ),
        'lastUsedAt': serializeParam(
          _lastUsedAt,
          ParamType.String,
        ),
        'registeredAt': serializeParam(
          _registeredAt,
          ParamType.String,
        ),
        'isCurrent': serializeParam(
          _isCurrent,
          ParamType.bool,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'pushPlatform': serializeParam(
          _pushPlatform,
          ParamType.String,
        ),
        'deviceType': serializeParam(
          _deviceType,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrustedDeviceStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrustedDeviceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
        enabled: deserializeParam(
          data['enabled'],
          ParamType.bool,
          false,
        ),
        hasBiometric: deserializeParam(
          data['hasBiometric'],
          ParamType.bool,
          false,
        ),
        hasDeviceKey: deserializeParam(
          data['hasDeviceKey'],
          ParamType.bool,
          false,
        ),
        trusted: deserializeParam(
          data['trusted'],
          ParamType.bool,
          false,
        ),
        lastUsedAt: deserializeParam(
          data['lastUsedAt'],
          ParamType.String,
          false,
        ),
        registeredAt: deserializeParam(
          data['registeredAt'],
          ParamType.String,
          false,
        ),
        isCurrent: deserializeParam(
          data['isCurrent'],
          ParamType.bool,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        pushPlatform: deserializeParam(
          data['pushPlatform'],
          ParamType.String,
          false,
        ),
        deviceType: deserializeParam(
          data['deviceType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrustedDeviceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrustedDeviceStruct &&
        id == other.id &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        enabled == other.enabled &&
        hasBiometric == other.hasBiometric &&
        hasDeviceKey == other.hasDeviceKey &&
        trusted == other.trusted &&
        lastUsedAt == other.lastUsedAt &&
        registeredAt == other.registeredAt &&
        isCurrent == other.isCurrent &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pushPlatform == other.pushPlatform &&
        deviceType == other.deviceType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        deviceId,
        deviceName,
        enabled,
        hasBiometric,
        hasDeviceKey,
        trusted,
        lastUsedAt,
        registeredAt,
        isCurrent,
        createdAt,
        updatedAt,
        pushPlatform,
        deviceType
      ]);
}

TrustedDeviceStruct createTrustedDeviceStruct({
  String? id,
  String? deviceId,
  String? deviceName,
  bool? enabled,
  bool? hasBiometric,
  bool? hasDeviceKey,
  bool? trusted,
  String? lastUsedAt,
  String? registeredAt,
  bool? isCurrent,
  String? createdAt,
  String? updatedAt,
  String? pushPlatform,
  String? deviceType,
}) =>
    TrustedDeviceStruct(
      id: id,
      deviceId: deviceId,
      deviceName: deviceName,
      enabled: enabled,
      hasBiometric: hasBiometric,
      hasDeviceKey: hasDeviceKey,
      trusted: trusted,
      lastUsedAt: lastUsedAt,
      registeredAt: registeredAt,
      isCurrent: isCurrent,
      createdAt: createdAt,
      updatedAt: updatedAt,
      pushPlatform: pushPlatform,
      deviceType: deviceType,
    );
