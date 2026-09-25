// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountSetupDataTypeStruct extends BaseStruct {
  AccountSetupDataTypeStruct({
    CIFDetailsStruct? cIFDetails,
    String? accountNumber,
    String? phoneNumber,
  })  : _cIFDetails = cIFDetails,
        _accountNumber = accountNumber,
        _phoneNumber = phoneNumber;

  // "CIFDetails" field.
  CIFDetailsStruct? _cIFDetails;
  CIFDetailsStruct get cIFDetails => _cIFDetails ?? CIFDetailsStruct();
  set cIFDetails(CIFDetailsStruct? val) => _cIFDetails = val;

  void updateCIFDetails(Function(CIFDetailsStruct) updateFn) {
    updateFn(_cIFDetails ??= CIFDetailsStruct());
  }

  bool hasCIFDetails() => _cIFDetails != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  static AccountSetupDataTypeStruct fromMap(Map<String, dynamic> data) =>
      AccountSetupDataTypeStruct(
        cIFDetails: data['CIFDetails'] is CIFDetailsStruct
            ? data['CIFDetails']
            : CIFDetailsStruct.maybeFromMap(data['CIFDetails']),
        accountNumber: data['AccountNumber'] as String?,
        phoneNumber: data['PhoneNumber'] as String?,
      );

  static AccountSetupDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountSetupDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CIFDetails': _cIFDetails?.toMap(),
        'AccountNumber': _accountNumber,
        'PhoneNumber': _phoneNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CIFDetails': serializeParam(
          _cIFDetails,
          ParamType.DataStruct,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'PhoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountSetupDataTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccountSetupDataTypeStruct(
        cIFDetails: deserializeStructParam(
          data['CIFDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: CIFDetailsStruct.fromSerializableMap,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['PhoneNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountSetupDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountSetupDataTypeStruct &&
        cIFDetails == other.cIFDetails &&
        accountNumber == other.accountNumber &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cIFDetails, accountNumber, phoneNumber]);
}

AccountSetupDataTypeStruct createAccountSetupDataTypeStruct({
  CIFDetailsStruct? cIFDetails,
  String? accountNumber,
  String? phoneNumber,
}) =>
    AccountSetupDataTypeStruct(
      cIFDetails: cIFDetails ?? CIFDetailsStruct(),
      accountNumber: accountNumber,
      phoneNumber: phoneNumber,
    );
