// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetUserDetailsStruct extends BaseStruct {
  GetUserDetailsStruct({
    int? id,
    String? email,
    String? mobileNumber,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? firstName,
    String? lastName,
    String? middleName,
    String? birthDate,
    String? userName,
    String? gender,
    String? suffix,
    String? uid,
    int? statusId,
  })  : _id = id,
        _email = email,
        _mobileNumber = mobileNumber,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        _firstName = firstName,
        _lastName = lastName,
        _middleName = middleName,
        _birthDate = birthDate,
        _userName = userName,
        _gender = gender,
        _suffix = suffix,
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

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "middle_name" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;

  bool hasMiddleName() => _middleName != null;

  // "birth_date" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

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

  // "suffix" field.
  String? _suffix;
  String get suffix => _suffix ?? '';
  set suffix(String? val) => _suffix = val;

  bool hasSuffix() => _suffix != null;

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

  static GetUserDetailsStruct fromMap(Map<String, dynamic> data) =>
      GetUserDetailsStruct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
        mobileNumber: data['mobile_number'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        deletedAt: data['deleted_at'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        middleName: data['middle_name'] as String?,
        birthDate: data['birth_date'] as String?,
        userName: data['user_name'] as String?,
        gender: data['gender'] as String?,
        suffix: data['suffix'] as String?,
        uid: data['uid'] as String?,
        statusId: castToType<int>(data['status_id']),
      );

  static GetUserDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? GetUserDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'mobile_number': _mobileNumber,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
        'first_name': _firstName,
        'last_name': _lastName,
        'middle_name': _middleName,
        'birth_date': _birthDate,
        'user_name': _userName,
        'gender': _gender,
        'suffix': _suffix,
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
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'middle_name': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'birth_date': serializeParam(
          _birthDate,
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
        'suffix': serializeParam(
          _suffix,
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

  static GetUserDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetUserDetailsStruct(
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
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        middleName: deserializeParam(
          data['middle_name'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birth_date'],
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
        suffix: deserializeParam(
          data['suffix'],
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
  String toString() => 'GetUserDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetUserDetailsStruct &&
        id == other.id &&
        email == other.email &&
        mobileNumber == other.mobileNumber &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        middleName == other.middleName &&
        birthDate == other.birthDate &&
        userName == other.userName &&
        gender == other.gender &&
        suffix == other.suffix &&
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
        firstName,
        lastName,
        middleName,
        birthDate,
        userName,
        gender,
        suffix,
        uid,
        statusId
      ]);
}

GetUserDetailsStruct createGetUserDetailsStruct({
  int? id,
  String? email,
  String? mobileNumber,
  String? createdAt,
  String? updatedAt,
  String? deletedAt,
  String? firstName,
  String? lastName,
  String? middleName,
  String? birthDate,
  String? userName,
  String? gender,
  String? suffix,
  String? uid,
  int? statusId,
}) =>
    GetUserDetailsStruct(
      id: id,
      email: email,
      mobileNumber: mobileNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      birthDate: birthDate,
      userName: userName,
      gender: gender,
      suffix: suffix,
      uid: uid,
      statusId: statusId,
    );
