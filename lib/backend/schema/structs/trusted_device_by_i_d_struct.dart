// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrustedDeviceByIDStruct extends BaseStruct {
  TrustedDeviceByIDStruct({
    int? id,
    String? createdAt,
    String? deviceId,
    String? linkedSince,
    String? deviceOs,
    String? osVersion,
    String? isActive,
    String? lastLogin,
    String? metadata,
    int? userId,
    String? deviceModel,
  })  : _id = id,
        _createdAt = createdAt,
        _deviceId = deviceId,
        _linkedSince = linkedSince,
        _deviceOs = deviceOs,
        _osVersion = osVersion,
        _isActive = isActive,
        _lastLogin = lastLogin,
        _metadata = metadata,
        _userId = userId,
        _deviceModel = deviceModel;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "device_id" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "linked_since" field.
  String? _linkedSince;
  String get linkedSince => _linkedSince ?? '';
  set linkedSince(String? val) => _linkedSince = val;

  bool hasLinkedSince() => _linkedSince != null;

  // "device_os" field.
  String? _deviceOs;
  String get deviceOs => _deviceOs ?? '';
  set deviceOs(String? val) => _deviceOs = val;

  bool hasDeviceOs() => _deviceOs != null;

  // "os_version" field.
  String? _osVersion;
  String get osVersion => _osVersion ?? '';
  set osVersion(String? val) => _osVersion = val;

  bool hasOsVersion() => _osVersion != null;

  // "is_active" field.
  String? _isActive;
  String get isActive => _isActive ?? '';
  set isActive(String? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "last_login" field.
  String? _lastLogin;
  String get lastLogin => _lastLogin ?? '';
  set lastLogin(String? val) => _lastLogin = val;

  bool hasLastLogin() => _lastLogin != null;

  // "metadata" field.
  String? _metadata;
  String get metadata => _metadata ?? '';
  set metadata(String? val) => _metadata = val;

  bool hasMetadata() => _metadata != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "device_model" field.
  String? _deviceModel;
  String get deviceModel => _deviceModel ?? '';
  set deviceModel(String? val) => _deviceModel = val;

  bool hasDeviceModel() => _deviceModel != null;

  static TrustedDeviceByIDStruct fromMap(Map<String, dynamic> data) =>
      TrustedDeviceByIDStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        deviceId: data['device_id'] as String?,
        linkedSince: data['linked_since'] as String?,
        deviceOs: data['device_os'] as String?,
        osVersion: data['os_version'] as String?,
        isActive: data['is_active'] as String?,
        lastLogin: data['last_login'] as String?,
        metadata: data['metadata'] as String?,
        userId: castToType<int>(data['user_id']),
        deviceModel: data['device_model'] as String?,
      );

  static TrustedDeviceByIDStruct? maybeFromMap(dynamic data) => data is Map
      ? TrustedDeviceByIDStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'device_id': _deviceId,
        'linked_since': _linkedSince,
        'device_os': _deviceOs,
        'os_version': _osVersion,
        'is_active': _isActive,
        'last_login': _lastLogin,
        'metadata': _metadata,
        'user_id': _userId,
        'device_model': _deviceModel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'device_id': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'linked_since': serializeParam(
          _linkedSince,
          ParamType.String,
        ),
        'device_os': serializeParam(
          _deviceOs,
          ParamType.String,
        ),
        'os_version': serializeParam(
          _osVersion,
          ParamType.String,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.String,
        ),
        'last_login': serializeParam(
          _lastLogin,
          ParamType.String,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'device_model': serializeParam(
          _deviceModel,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrustedDeviceByIDStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrustedDeviceByIDStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['device_id'],
          ParamType.String,
          false,
        ),
        linkedSince: deserializeParam(
          data['linked_since'],
          ParamType.String,
          false,
        ),
        deviceOs: deserializeParam(
          data['device_os'],
          ParamType.String,
          false,
        ),
        osVersion: deserializeParam(
          data['os_version'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.String,
          false,
        ),
        lastLogin: deserializeParam(
          data['last_login'],
          ParamType.String,
          false,
        ),
        metadata: deserializeParam(
          data['metadata'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        deviceModel: deserializeParam(
          data['device_model'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrustedDeviceByIDStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrustedDeviceByIDStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        deviceId == other.deviceId &&
        linkedSince == other.linkedSince &&
        deviceOs == other.deviceOs &&
        osVersion == other.osVersion &&
        isActive == other.isActive &&
        lastLogin == other.lastLogin &&
        metadata == other.metadata &&
        userId == other.userId &&
        deviceModel == other.deviceModel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        deviceId,
        linkedSince,
        deviceOs,
        osVersion,
        isActive,
        lastLogin,
        metadata,
        userId,
        deviceModel
      ]);
}

TrustedDeviceByIDStruct createTrustedDeviceByIDStruct({
  int? id,
  String? createdAt,
  String? deviceId,
  String? linkedSince,
  String? deviceOs,
  String? osVersion,
  String? isActive,
  String? lastLogin,
  String? metadata,
  int? userId,
  String? deviceModel,
}) =>
    TrustedDeviceByIDStruct(
      id: id,
      createdAt: createdAt,
      deviceId: deviceId,
      linkedSince: linkedSince,
      deviceOs: deviceOs,
      osVersion: osVersion,
      isActive: isActive,
      lastLogin: lastLogin,
      metadata: metadata,
      userId: userId,
      deviceModel: deviceModel,
    );
