// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserV3Struct extends BaseStruct {
  UserV3Struct({
    String? id,
    String? uid,
    int? statusId,
    String? role,
    String? firstName,
    String? lastName,
    String? middleName,
    String? suffix,
    String? birthDate,
    String? gender,
    String? email,
    String? userName,
    String? mobileNumber,
    String? countryCode,
    String? mpin,
    String? mpinUpdatedAt,
    String? lockedAt,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? cifNumber,
    String? fullName,
    String? maskedContact,
    String? maskedEmail,
    String? branchName,
    String? branchCode,
  })  : _id = id,
        _uid = uid,
        _statusId = statusId,
        _role = role,
        _firstName = firstName,
        _lastName = lastName,
        _middleName = middleName,
        _suffix = suffix,
        _birthDate = birthDate,
        _gender = gender,
        _email = email,
        _userName = userName,
        _mobileNumber = mobileNumber,
        _countryCode = countryCode,
        _mpin = mpin,
        _mpinUpdatedAt = mpinUpdatedAt,
        _lockedAt = lockedAt,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt,
        _cifNumber = cifNumber,
        _fullName = fullName,
        _maskedContact = maskedContact,
        _maskedEmail = maskedEmail,
        _branchName = branchName,
        _branchCode = branchCode;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

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

  // "suffix" field.
  String? _suffix;
  String get suffix => _suffix ?? '';
  set suffix(String? val) => _suffix = val;

  bool hasSuffix() => _suffix != null;

  // "birth_date" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "mobile_number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "mpin" field.
  String? _mpin;
  String get mpin => _mpin ?? '';
  set mpin(String? val) => _mpin = val;

  bool hasMpin() => _mpin != null;

  // "mpin_updated_at" field.
  String? _mpinUpdatedAt;
  String get mpinUpdatedAt => _mpinUpdatedAt ?? '';
  set mpinUpdatedAt(String? val) => _mpinUpdatedAt = val;

  bool hasMpinUpdatedAt() => _mpinUpdatedAt != null;

  // "locked_at" field.
  String? _lockedAt;
  String get lockedAt => _lockedAt ?? '';
  set lockedAt(String? val) => _lockedAt = val;

  bool hasLockedAt() => _lockedAt != null;

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

  // "cif_number" field.
  String? _cifNumber;
  String get cifNumber => _cifNumber ?? '';
  set cifNumber(String? val) => _cifNumber = val;

  bool hasCifNumber() => _cifNumber != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "maskedContact" field.
  String? _maskedContact;
  String get maskedContact => _maskedContact ?? '';
  set maskedContact(String? val) => _maskedContact = val;

  bool hasMaskedContact() => _maskedContact != null;

  // "maskedEmail" field.
  String? _maskedEmail;
  String get maskedEmail => _maskedEmail ?? '';
  set maskedEmail(String? val) => _maskedEmail = val;

  bool hasMaskedEmail() => _maskedEmail != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  set branchName(String? val) => _branchName = val;

  bool hasBranchName() => _branchName != null;

  // "branchCode" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  static UserV3Struct fromMap(Map<String, dynamic> data) => UserV3Struct(
        id: data['id'] as String?,
        uid: data['uid'] as String?,
        statusId: castToType<int>(data['status_id']),
        role: data['role'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        middleName: data['middle_name'] as String?,
        suffix: data['suffix'] as String?,
        birthDate: data['birth_date'] as String?,
        gender: data['gender'] as String?,
        email: data['email'] as String?,
        userName: data['user_name'] as String?,
        mobileNumber: data['mobile_number'] as String?,
        countryCode: data['country_code'] as String?,
        mpin: data['mpin'] as String?,
        mpinUpdatedAt: data['mpin_updated_at'] as String?,
        lockedAt: data['locked_at'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        deletedAt: data['deleted_at'] as String?,
        cifNumber: data['cif_number'] as String?,
        fullName: data['full_name'] as String?,
        maskedContact: data['maskedContact'] as String?,
        maskedEmail: data['maskedEmail'] as String?,
        branchName: data['branchName'] as String?,
        branchCode: data['branchCode'] as String?,
      );

  static UserV3Struct? maybeFromMap(dynamic data) =>
      data is Map ? UserV3Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uid': _uid,
        'status_id': _statusId,
        'role': _role,
        'first_name': _firstName,
        'last_name': _lastName,
        'middle_name': _middleName,
        'suffix': _suffix,
        'birth_date': _birthDate,
        'gender': _gender,
        'email': _email,
        'user_name': _userName,
        'mobile_number': _mobileNumber,
        'country_code': _countryCode,
        'mpin': _mpin,
        'mpin_updated_at': _mpinUpdatedAt,
        'locked_at': _lockedAt,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
        'cif_number': _cifNumber,
        'full_name': _fullName,
        'maskedContact': _maskedContact,
        'maskedEmail': _maskedEmail,
        'branchName': _branchName,
        'branchCode': _branchCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'role': serializeParam(
          _role,
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
        'suffix': serializeParam(
          _suffix,
          ParamType.String,
        ),
        'birth_date': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'mobile_number': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'country_code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'mpin': serializeParam(
          _mpin,
          ParamType.String,
        ),
        'mpin_updated_at': serializeParam(
          _mpinUpdatedAt,
          ParamType.String,
        ),
        'locked_at': serializeParam(
          _lockedAt,
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
        'cif_number': serializeParam(
          _cifNumber,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'maskedContact': serializeParam(
          _maskedContact,
          ParamType.String,
        ),
        'maskedEmail': serializeParam(
          _maskedEmail,
          ParamType.String,
        ),
        'branchName': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'branchCode': serializeParam(
          _branchCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserV3Struct fromSerializableMap(Map<String, dynamic> data) =>
      UserV3Struct(
        id: deserializeParam(
          data['id'],
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
        role: deserializeParam(
          data['role'],
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
        suffix: deserializeParam(
          data['suffix'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birth_date'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobile_number'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['country_code'],
          ParamType.String,
          false,
        ),
        mpin: deserializeParam(
          data['mpin'],
          ParamType.String,
          false,
        ),
        mpinUpdatedAt: deserializeParam(
          data['mpin_updated_at'],
          ParamType.String,
          false,
        ),
        lockedAt: deserializeParam(
          data['locked_at'],
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
        cifNumber: deserializeParam(
          data['cif_number'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        maskedContact: deserializeParam(
          data['maskedContact'],
          ParamType.String,
          false,
        ),
        maskedEmail: deserializeParam(
          data['maskedEmail'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['branchName'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['branchCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserV3Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserV3Struct &&
        id == other.id &&
        uid == other.uid &&
        statusId == other.statusId &&
        role == other.role &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        middleName == other.middleName &&
        suffix == other.suffix &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        email == other.email &&
        userName == other.userName &&
        mobileNumber == other.mobileNumber &&
        countryCode == other.countryCode &&
        mpin == other.mpin &&
        mpinUpdatedAt == other.mpinUpdatedAt &&
        lockedAt == other.lockedAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        cifNumber == other.cifNumber &&
        fullName == other.fullName &&
        maskedContact == other.maskedContact &&
        maskedEmail == other.maskedEmail &&
        branchName == other.branchName &&
        branchCode == other.branchCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        uid,
        statusId,
        role,
        firstName,
        lastName,
        middleName,
        suffix,
        birthDate,
        gender,
        email,
        userName,
        mobileNumber,
        countryCode,
        mpin,
        mpinUpdatedAt,
        lockedAt,
        createdAt,
        updatedAt,
        deletedAt,
        cifNumber,
        fullName,
        maskedContact,
        maskedEmail,
        branchName,
        branchCode
      ]);
}

UserV3Struct createUserV3Struct({
  String? id,
  String? uid,
  int? statusId,
  String? role,
  String? firstName,
  String? lastName,
  String? middleName,
  String? suffix,
  String? birthDate,
  String? gender,
  String? email,
  String? userName,
  String? mobileNumber,
  String? countryCode,
  String? mpin,
  String? mpinUpdatedAt,
  String? lockedAt,
  String? createdAt,
  String? updatedAt,
  String? deletedAt,
  String? cifNumber,
  String? fullName,
  String? maskedContact,
  String? maskedEmail,
  String? branchName,
  String? branchCode,
}) =>
    UserV3Struct(
      id: id,
      uid: uid,
      statusId: statusId,
      role: role,
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      suffix: suffix,
      birthDate: birthDate,
      gender: gender,
      email: email,
      userName: userName,
      mobileNumber: mobileNumber,
      countryCode: countryCode,
      mpin: mpin,
      mpinUpdatedAt: mpinUpdatedAt,
      lockedAt: lockedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
      cifNumber: cifNumber,
      fullName: fullName,
      maskedContact: maskedContact,
      maskedEmail: maskedEmail,
      branchName: branchName,
      branchCode: branchCode,
    );
