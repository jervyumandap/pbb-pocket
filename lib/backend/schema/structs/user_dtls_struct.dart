// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDtlsStruct extends BaseStruct {
  UserDtlsStruct({
    String? userId,
    String? registeredEmail,
    String? userFullName,
    String? userName,
    String? accountType,
    String? isKYCVerified,
    String? registeredPhoneNumber,
    String? isPhoneUserVerified,
    int? registrationDate,
    UserAddressStruct? userAddress,
  })  : _userId = userId,
        _registeredEmail = registeredEmail,
        _userFullName = userFullName,
        _userName = userName,
        _accountType = accountType,
        _isKYCVerified = isKYCVerified,
        _registeredPhoneNumber = registeredPhoneNumber,
        _isPhoneUserVerified = isPhoneUserVerified,
        _registrationDate = registrationDate,
        _userAddress = userAddress;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "RegisteredEmail" field.
  String? _registeredEmail;
  String get registeredEmail => _registeredEmail ?? '';
  set registeredEmail(String? val) => _registeredEmail = val;

  bool hasRegisteredEmail() => _registeredEmail != null;

  // "UserFullName" field.
  String? _userFullName;
  String get userFullName => _userFullName ?? '';
  set userFullName(String? val) => _userFullName = val;

  bool hasUserFullName() => _userFullName != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "AccountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  set accountType(String? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

  // "IsKYCVerified" field.
  String? _isKYCVerified;
  String get isKYCVerified => _isKYCVerified ?? '';
  set isKYCVerified(String? val) => _isKYCVerified = val;

  bool hasIsKYCVerified() => _isKYCVerified != null;

  // "RegisteredPhoneNumber" field.
  String? _registeredPhoneNumber;
  String get registeredPhoneNumber => _registeredPhoneNumber ?? '';
  set registeredPhoneNumber(String? val) => _registeredPhoneNumber = val;

  bool hasRegisteredPhoneNumber() => _registeredPhoneNumber != null;

  // "IsPhoneUserVerified" field.
  String? _isPhoneUserVerified;
  String get isPhoneUserVerified => _isPhoneUserVerified ?? '';
  set isPhoneUserVerified(String? val) => _isPhoneUserVerified = val;

  bool hasIsPhoneUserVerified() => _isPhoneUserVerified != null;

  // "RegistrationDate" field.
  int? _registrationDate;
  int get registrationDate => _registrationDate ?? 0;
  set registrationDate(int? val) => _registrationDate = val;

  void incrementRegistrationDate(int amount) =>
      registrationDate = registrationDate + amount;

  bool hasRegistrationDate() => _registrationDate != null;

  // "UserAddress" field.
  UserAddressStruct? _userAddress;
  UserAddressStruct get userAddress => _userAddress ?? UserAddressStruct();
  set userAddress(UserAddressStruct? val) => _userAddress = val;

  void updateUserAddress(Function(UserAddressStruct) updateFn) {
    updateFn(_userAddress ??= UserAddressStruct());
  }

  bool hasUserAddress() => _userAddress != null;

  static UserDtlsStruct fromMap(Map<String, dynamic> data) => UserDtlsStruct(
        userId: data['UserId'] as String?,
        registeredEmail: data['RegisteredEmail'] as String?,
        userFullName: data['UserFullName'] as String?,
        userName: data['UserName'] as String?,
        accountType: data['AccountType'] as String?,
        isKYCVerified: data['IsKYCVerified'] as String?,
        registeredPhoneNumber: data['RegisteredPhoneNumber'] as String?,
        isPhoneUserVerified: data['IsPhoneUserVerified'] as String?,
        registrationDate: castToType<int>(data['RegistrationDate']),
        userAddress: data['UserAddress'] is UserAddressStruct
            ? data['UserAddress']
            : UserAddressStruct.maybeFromMap(data['UserAddress']),
      );

  static UserDtlsStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDtlsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'UserId': _userId,
        'RegisteredEmail': _registeredEmail,
        'UserFullName': _userFullName,
        'UserName': _userName,
        'AccountType': _accountType,
        'IsKYCVerified': _isKYCVerified,
        'RegisteredPhoneNumber': _registeredPhoneNumber,
        'IsPhoneUserVerified': _isPhoneUserVerified,
        'RegistrationDate': _registrationDate,
        'UserAddress': _userAddress?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'UserId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'RegisteredEmail': serializeParam(
          _registeredEmail,
          ParamType.String,
        ),
        'UserFullName': serializeParam(
          _userFullName,
          ParamType.String,
        ),
        'UserName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'AccountType': serializeParam(
          _accountType,
          ParamType.String,
        ),
        'IsKYCVerified': serializeParam(
          _isKYCVerified,
          ParamType.String,
        ),
        'RegisteredPhoneNumber': serializeParam(
          _registeredPhoneNumber,
          ParamType.String,
        ),
        'IsPhoneUserVerified': serializeParam(
          _isPhoneUserVerified,
          ParamType.String,
        ),
        'RegistrationDate': serializeParam(
          _registrationDate,
          ParamType.int,
        ),
        'UserAddress': serializeParam(
          _userAddress,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserDtlsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDtlsStruct(
        userId: deserializeParam(
          data['UserId'],
          ParamType.String,
          false,
        ),
        registeredEmail: deserializeParam(
          data['RegisteredEmail'],
          ParamType.String,
          false,
        ),
        userFullName: deserializeParam(
          data['UserFullName'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['UserName'],
          ParamType.String,
          false,
        ),
        accountType: deserializeParam(
          data['AccountType'],
          ParamType.String,
          false,
        ),
        isKYCVerified: deserializeParam(
          data['IsKYCVerified'],
          ParamType.String,
          false,
        ),
        registeredPhoneNumber: deserializeParam(
          data['RegisteredPhoneNumber'],
          ParamType.String,
          false,
        ),
        isPhoneUserVerified: deserializeParam(
          data['IsPhoneUserVerified'],
          ParamType.String,
          false,
        ),
        registrationDate: deserializeParam(
          data['RegistrationDate'],
          ParamType.int,
          false,
        ),
        userAddress: deserializeStructParam(
          data['UserAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: UserAddressStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserDtlsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDtlsStruct &&
        userId == other.userId &&
        registeredEmail == other.registeredEmail &&
        userFullName == other.userFullName &&
        userName == other.userName &&
        accountType == other.accountType &&
        isKYCVerified == other.isKYCVerified &&
        registeredPhoneNumber == other.registeredPhoneNumber &&
        isPhoneUserVerified == other.isPhoneUserVerified &&
        registrationDate == other.registrationDate &&
        userAddress == other.userAddress;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        registeredEmail,
        userFullName,
        userName,
        accountType,
        isKYCVerified,
        registeredPhoneNumber,
        isPhoneUserVerified,
        registrationDate,
        userAddress
      ]);
}

UserDtlsStruct createUserDtlsStruct({
  String? userId,
  String? registeredEmail,
  String? userFullName,
  String? userName,
  String? accountType,
  String? isKYCVerified,
  String? registeredPhoneNumber,
  String? isPhoneUserVerified,
  int? registrationDate,
  UserAddressStruct? userAddress,
}) =>
    UserDtlsStruct(
      userId: userId,
      registeredEmail: registeredEmail,
      userFullName: userFullName,
      userName: userName,
      accountType: accountType,
      isKYCVerified: isKYCVerified,
      registeredPhoneNumber: registeredPhoneNumber,
      isPhoneUserVerified: isPhoneUserVerified,
      registrationDate: registrationDate,
      userAddress: userAddress ?? UserAddressStruct(),
    );
