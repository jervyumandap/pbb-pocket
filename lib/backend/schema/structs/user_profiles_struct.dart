// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfilesStruct extends BaseStruct {
  UserProfilesStruct({
    int? id,
    String? suffix,
    String? address,
    int? userId,
    String? lastName,
    String? cifNumber,
    String? createdAt,
    String? deletedAt,
    String? firstName,
    String? updatedAt,
    String? middleName,
    String? dateOfBirth,
    String? accountNumber,
  })  : _id = id,
        _suffix = suffix,
        _address = address,
        _userId = userId,
        _lastName = lastName,
        _cifNumber = cifNumber,
        _createdAt = createdAt,
        _deletedAt = deletedAt,
        _firstName = firstName,
        _updatedAt = updatedAt,
        _middleName = middleName,
        _dateOfBirth = dateOfBirth,
        _accountNumber = accountNumber;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "suffix" field.
  String? _suffix;
  String get suffix => _suffix ?? '';
  set suffix(String? val) => _suffix = val;

  bool hasSuffix() => _suffix != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "cif_number" field.
  String? _cifNumber;
  String get cifNumber => _cifNumber ?? '';
  set cifNumber(String? val) => _cifNumber = val;

  bool hasCifNumber() => _cifNumber != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

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

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "middle_name" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;

  bool hasMiddleName() => _middleName != null;

  // "date_of_birth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  static UserProfilesStruct fromMap(Map<String, dynamic> data) =>
      UserProfilesStruct(
        id: castToType<int>(data['id']),
        suffix: data['suffix'] as String?,
        address: data['address'] as String?,
        userId: castToType<int>(data['user_id']),
        lastName: data['last_name'] as String?,
        cifNumber: data['cif_number'] as String?,
        createdAt: data['created_at'] as String?,
        deletedAt: data['deleted_at'] as String?,
        firstName: data['first_name'] as String?,
        updatedAt: data['updated_at'] as String?,
        middleName: data['middle_name'] as String?,
        dateOfBirth: data['date_of_birth'] as String?,
        accountNumber: data['account_number'] as String?,
      );

  static UserProfilesStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfilesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'suffix': _suffix,
        'address': _address,
        'user_id': _userId,
        'last_name': _lastName,
        'cif_number': _cifNumber,
        'created_at': _createdAt,
        'deleted_at': _deletedAt,
        'first_name': _firstName,
        'updated_at': _updatedAt,
        'middle_name': _middleName,
        'date_of_birth': _dateOfBirth,
        'account_number': _accountNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'suffix': serializeParam(
          _suffix,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'cif_number': serializeParam(
          _cifNumber,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
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
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'middle_name': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'date_of_birth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'account_number': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserProfilesStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfilesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        suffix: deserializeParam(
          data['suffix'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        cifNumber: deserializeParam(
          data['cif_number'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
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
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        middleName: deserializeParam(
          data['middle_name'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['date_of_birth'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['account_number'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserProfilesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfilesStruct &&
        id == other.id &&
        suffix == other.suffix &&
        address == other.address &&
        userId == other.userId &&
        lastName == other.lastName &&
        cifNumber == other.cifNumber &&
        createdAt == other.createdAt &&
        deletedAt == other.deletedAt &&
        firstName == other.firstName &&
        updatedAt == other.updatedAt &&
        middleName == other.middleName &&
        dateOfBirth == other.dateOfBirth &&
        accountNumber == other.accountNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        suffix,
        address,
        userId,
        lastName,
        cifNumber,
        createdAt,
        deletedAt,
        firstName,
        updatedAt,
        middleName,
        dateOfBirth,
        accountNumber
      ]);
}

UserProfilesStruct createUserProfilesStruct({
  int? id,
  String? suffix,
  String? address,
  int? userId,
  String? lastName,
  String? cifNumber,
  String? createdAt,
  String? deletedAt,
  String? firstName,
  String? updatedAt,
  String? middleName,
  String? dateOfBirth,
  String? accountNumber,
}) =>
    UserProfilesStruct(
      id: id,
      suffix: suffix,
      address: address,
      userId: userId,
      lastName: lastName,
      cifNumber: cifNumber,
      createdAt: createdAt,
      deletedAt: deletedAt,
      firstName: firstName,
      updatedAt: updatedAt,
      middleName: middleName,
      dateOfBirth: dateOfBirth,
      accountNumber: accountNumber,
    );
