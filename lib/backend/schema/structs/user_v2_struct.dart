// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserV2Struct extends BaseStruct {
  UserV2Struct({
    int? id,
    String? email,
    String? mobileNumber,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? userName,
    String? gender,
    String? uid,
    int? statusId,
  })  : _id = id,
        _email = email,
        _mobileNumber = mobileNumber,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        _userName = userName,
        _gender = gender,
        _uid = uid,
        _statusId = statusId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "mobile_number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "status_id" field.
  int? _statusId;
  int get statusId => _statusId ?? 0;
  set statusId(int? val) => _statusId = val;

  void incrementStatusId(int amount) => statusId = statusId + amount;

  bool hasStatusId() => _statusId != null;

  static UserV2Struct fromMap(Map<String, dynamic> data) => UserV2Struct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
        mobileNumber: data['mobile_number'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        deletedAt: data['deleted_at'] as String?,
        userName: data['user_name'] as String?,
        gender: data['gender'] as String?,
        uid: data['uid'] as String?,
        statusId: castToType<int>(data['status_id']),
      );

  static UserV2Struct? maybeFromMap(dynamic data) =>
      data is Map ? UserV2Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'mobile_number': _mobileNumber,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
        'user_name': _userName,
        'gender': _gender,
        'uid': _uid,
        'status_id': _statusId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'mobile_number': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.String,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'status_id': serializeParam(
          _statusId,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserV2Struct fromSerializableMap(Map<String, dynamic> data) =>
      UserV2Struct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobile_number'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        statusId: deserializeParam(
          data['status_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserV2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserV2Struct &&
        id == other.id &&
        email == other.email &&
        mobileNumber == other.mobileNumber &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        userName == other.userName &&
        gender == other.gender &&
        uid == other.uid &&
        statusId == other.statusId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        email,
        mobileNumber,
        createdAt,
        updatedAt,
        deletedAt,
        userName,
        gender,
        uid,
        statusId
      ]);
}

UserV2Struct createUserV2Struct({
  int? id,
  String? email,
  String? mobileNumber,
  String? createdAt,
  String? updatedAt,
  String? deletedAt,
  String? userName,
  String? gender,
  String? uid,
  int? statusId,
}) =>
    UserV2Struct(
      id: id,
      email: email,
      mobileNumber: mobileNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      userName: userName,
      gender: gender,
      uid: uid,
      statusId: statusId,
    );
