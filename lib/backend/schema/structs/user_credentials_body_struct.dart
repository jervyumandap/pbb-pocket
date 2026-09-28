// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCredentialsBodyStruct extends BaseStruct {
  UserCredentialsBodyStruct({
    int? userId,
    String? mpinHash,
    int? failedAttempts,
    String? lockedUntil,
    String? mpinLastChanged,
    String? createdAt,
  })  : _userId = userId,
        _mpinHash = mpinHash,
        _failedAttempts = failedAttempts,
        _lockedUntil = lockedUntil,
        _mpinLastChanged = mpinLastChanged,
        _createdAt = createdAt;

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

  // "mpin_last_changed" field.
  String? _mpinLastChanged;
  String get mpinLastChanged => _mpinLastChanged ?? '';
  set mpinLastChanged(String? val) => _mpinLastChanged = val;

  bool hasMpinLastChanged() => _mpinLastChanged != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static UserCredentialsBodyStruct fromMap(Map<String, dynamic> data) =>
      UserCredentialsBodyStruct(
        userId: castToType<int>(data['user_id']),
        mpinHash: data['mpin_hash'] as String?,
        failedAttempts: castToType<int>(data['failed_attempts']),
        lockedUntil: data['locked_until'] as String?,
        mpinLastChanged: data['mpin_last_changed'] as String?,
        createdAt: data['created_at'] as String?,
      );

  static UserCredentialsBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? UserCredentialsBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'mpin_hash': _mpinHash,
        'failed_attempts': _failedAttempts,
        'locked_until': _lockedUntil,
        'mpin_last_changed': _mpinLastChanged,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'mpin_hash': serializeParam(
          _mpinHash,
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
        'mpin_last_changed': serializeParam(
          _mpinLastChanged,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserCredentialsBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserCredentialsBodyStruct(
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
        mpinLastChanged: deserializeParam(
          data['mpin_last_changed'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserCredentialsBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserCredentialsBodyStruct &&
        userId == other.userId &&
        mpinHash == other.mpinHash &&
        failedAttempts == other.failedAttempts &&
        lockedUntil == other.lockedUntil &&
        mpinLastChanged == other.mpinLastChanged &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        mpinHash,
        failedAttempts,
        lockedUntil,
        mpinLastChanged,
        createdAt
      ]);
}

UserCredentialsBodyStruct createUserCredentialsBodyStruct({
  int? userId,
  String? mpinHash,
  int? failedAttempts,
  String? lockedUntil,
  String? mpinLastChanged,
  String? createdAt,
}) =>
    UserCredentialsBodyStruct(
      userId: userId,
      mpinHash: mpinHash,
      failedAttempts: failedAttempts,
      lockedUntil: lockedUntil,
      mpinLastChanged: mpinLastChanged,
      createdAt: createdAt,
    );
