// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSecurityByIDStruct extends BaseStruct {
  UserSecurityByIDStruct({
    int? id,
    int? userId,
    String? mpinHash,
    bool? biometricEnabled,
    String? mpinLastChanged,
    int? failedAttempts,
    String? lockedUntil,
    String? deletedAt,
    String? biometricsRegisteredAt,
  })  : _id = id,
        _userId = userId,
        _mpinHash = mpinHash,
        _biometricEnabled = biometricEnabled,
        _mpinLastChanged = mpinLastChanged,
        _failedAttempts = failedAttempts,
        _lockedUntil = lockedUntil,
        _deletedAt = deletedAt,
        _biometricsRegisteredAt = biometricsRegisteredAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "mpin_hash" field.
  String? _mpinHash;
  String get mpinHash => _mpinHash ?? '';
  set mpinHash(String? val) => _mpinHash = val;

  bool hasMpinHash() => _mpinHash != null;

  // "biometric_enabled" field.
  bool? _biometricEnabled;
  bool get biometricEnabled => _biometricEnabled ?? false;
  set biometricEnabled(bool? val) => _biometricEnabled = val;

  bool hasBiometricEnabled() => _biometricEnabled != null;

  // "mpin_last_changed" field.
  String? _mpinLastChanged;
  String get mpinLastChanged => _mpinLastChanged ?? '';
  set mpinLastChanged(String? val) => _mpinLastChanged = val;

  bool hasMpinLastChanged() => _mpinLastChanged != null;

  // "failed_attempts" field.
  int? _failedAttempts;
  int get failedAttempts => _failedAttempts ?? 0;
  set failedAttempts(int? val) => _failedAttempts = val;

  void incrementFailedAttempts(int amount) =>
      failedAttempts = failedAttempts + amount;

  bool hasFailedAttempts() => _failedAttempts != null;

  // "locked_until" field.
  String? _lockedUntil;
  String get lockedUntil => _lockedUntil ?? '';
  set lockedUntil(String? val) => _lockedUntil = val;

  bool hasLockedUntil() => _lockedUntil != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  // "biometrics_registered_at" field.
  String? _biometricsRegisteredAt;
  String get biometricsRegisteredAt => _biometricsRegisteredAt ?? '';
  set biometricsRegisteredAt(String? val) => _biometricsRegisteredAt = val;

  bool hasBiometricsRegisteredAt() => _biometricsRegisteredAt != null;

  static UserSecurityByIDStruct fromMap(Map<String, dynamic> data) =>
      UserSecurityByIDStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        mpinHash: data['mpin_hash'] as String?,
        biometricEnabled: data['biometric_enabled'] as bool?,
        mpinLastChanged: data['mpin_last_changed'] as String?,
        failedAttempts: castToType<int>(data['failed_attempts']),
        lockedUntil: data['locked_until'] as String?,
        deletedAt: data['deleted_at'] as String?,
        biometricsRegisteredAt: data['biometrics_registered_at'] as String?,
      );

  static UserSecurityByIDStruct? maybeFromMap(dynamic data) => data is Map
      ? UserSecurityByIDStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'mpin_hash': _mpinHash,
        'biometric_enabled': _biometricEnabled,
        'mpin_last_changed': _mpinLastChanged,
        'failed_attempts': _failedAttempts,
        'locked_until': _lockedUntil,
        'deleted_at': _deletedAt,
        'biometrics_registered_at': _biometricsRegisteredAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'mpin_hash': serializeParam(
          _mpinHash,
          ParamType.String,
        ),
        'biometric_enabled': serializeParam(
          _biometricEnabled,
          ParamType.bool,
        ),
        'mpin_last_changed': serializeParam(
          _mpinLastChanged,
          ParamType.String,
        ),
        'failed_attempts': serializeParam(
          _failedAttempts,
          ParamType.int,
        ),
        'locked_until': serializeParam(
          _lockedUntil,
          ParamType.String,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.String,
        ),
        'biometrics_registered_at': serializeParam(
          _biometricsRegisteredAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserSecurityByIDStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserSecurityByIDStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        mpinHash: deserializeParam(
          data['mpin_hash'],
          ParamType.String,
          false,
        ),
        biometricEnabled: deserializeParam(
          data['biometric_enabled'],
          ParamType.bool,
          false,
        ),
        mpinLastChanged: deserializeParam(
          data['mpin_last_changed'],
          ParamType.String,
          false,
        ),
        failedAttempts: deserializeParam(
          data['failed_attempts'],
          ParamType.int,
          false,
        ),
        lockedUntil: deserializeParam(
          data['locked_until'],
          ParamType.String,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.String,
          false,
        ),
        biometricsRegisteredAt: deserializeParam(
          data['biometrics_registered_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserSecurityByIDStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSecurityByIDStruct &&
        id == other.id &&
        userId == other.userId &&
        mpinHash == other.mpinHash &&
        biometricEnabled == other.biometricEnabled &&
        mpinLastChanged == other.mpinLastChanged &&
        failedAttempts == other.failedAttempts &&
        lockedUntil == other.lockedUntil &&
        deletedAt == other.deletedAt &&
        biometricsRegisteredAt == other.biometricsRegisteredAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        mpinHash,
        biometricEnabled,
        mpinLastChanged,
        failedAttempts,
        lockedUntil,
        deletedAt,
        biometricsRegisteredAt
      ]);
}

UserSecurityByIDStruct createUserSecurityByIDStruct({
  int? id,
  int? userId,
  String? mpinHash,
  bool? biometricEnabled,
  String? mpinLastChanged,
  int? failedAttempts,
  String? lockedUntil,
  String? deletedAt,
  String? biometricsRegisteredAt,
}) =>
    UserSecurityByIDStruct(
      id: id,
      userId: userId,
      mpinHash: mpinHash,
      biometricEnabled: biometricEnabled,
      mpinLastChanged: mpinLastChanged,
      failedAttempts: failedAttempts,
      lockedUntil: lockedUntil,
      deletedAt: deletedAt,
      biometricsRegisteredAt: biometricsRegisteredAt,
    );
