// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CIFDataStructureStruct extends BaseStruct {
  CIFDataStructureStruct({
    String? cif,
    String? cIFStatus,
    String? customerName,
    String? customerShortName,
    String? customerCategory,
    String? emailId,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? city,
    String? country,
    String? phoneNumber,
    String? pinCode,
  })  : _cif = cif,
        _cIFStatus = cIFStatus,
        _customerName = customerName,
        _customerShortName = customerShortName,
        _customerCategory = customerCategory,
        _emailId = emailId,
        _address1 = address1,
        _address2 = address2,
        _address3 = address3,
        _address4 = address4,
        _address5 = address5,
        _city = city,
        _country = country,
        _phoneNumber = phoneNumber,
        _pinCode = pinCode;

  // "CIF" field.
  String? _cif;
  String get cif => _cif ?? '';
  set cif(String? val) => _cif = val;

  bool hasCif() => _cif != null;

  // "CIFStatus" field.
  String? _cIFStatus;
  String get cIFStatus => _cIFStatus ?? '';
  set cIFStatus(String? val) => _cIFStatus = val;

  bool hasCIFStatus() => _cIFStatus != null;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  set customerName(String? val) => _customerName = val;

  bool hasCustomerName() => _customerName != null;

  // "CustomerShortName" field.
  String? _customerShortName;
  String get customerShortName => _customerShortName ?? '';
  set customerShortName(String? val) => _customerShortName = val;

  bool hasCustomerShortName() => _customerShortName != null;

  // "CustomerCategory" field.
  String? _customerCategory;
  String get customerCategory => _customerCategory ?? '';
  set customerCategory(String? val) => _customerCategory = val;

  bool hasCustomerCategory() => _customerCategory != null;

  // "EmailId" field.
  String? _emailId;
  String get emailId => _emailId ?? '';
  set emailId(String? val) => _emailId = val;

  bool hasEmailId() => _emailId != null;

  // "Address1" field.
  String? _address1;
  String get address1 => _address1 ?? '';
  set address1(String? val) => _address1 = val;

  bool hasAddress1() => _address1 != null;

  // "Address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  set address2(String? val) => _address2 = val;

  bool hasAddress2() => _address2 != null;

  // "Address3" field.
  String? _address3;
  String get address3 => _address3 ?? '';
  set address3(String? val) => _address3 = val;

  bool hasAddress3() => _address3 != null;

  // "Address4" field.
  String? _address4;
  String get address4 => _address4 ?? '';
  set address4(String? val) => _address4 = val;

  bool hasAddress4() => _address4 != null;

  // "Address5" field.
  String? _address5;
  String get address5 => _address5 ?? '';
  set address5(String? val) => _address5 = val;

  bool hasAddress5() => _address5 != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "PinCode" field.
  String? _pinCode;
  String get pinCode => _pinCode ?? '';
  set pinCode(String? val) => _pinCode = val;

  bool hasPinCode() => _pinCode != null;

  static CIFDataStructureStruct fromMap(Map<String, dynamic> data) =>
      CIFDataStructureStruct(
        cif: data['CIF'] as String?,
        cIFStatus: data['CIFStatus'] as String?,
        customerName: data['CustomerName'] as String?,
        customerShortName: data['CustomerShortName'] as String?,
        customerCategory: data['CustomerCategory'] as String?,
        emailId: data['EmailId'] as String?,
        address1: data['Address1'] as String?,
        address2: data['Address2'] as String?,
        address3: data['Address3'] as String?,
        address4: data['Address4'] as String?,
        address5: data['Address5'] as String?,
        city: data['City'] as String?,
        country: data['Country'] as String?,
        phoneNumber: data['PhoneNumber'] as String?,
        pinCode: data['PinCode'] as String?,
      );

  static CIFDataStructureStruct? maybeFromMap(dynamic data) => data is Map
      ? CIFDataStructureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CIF': _cif,
        'CIFStatus': _cIFStatus,
        'CustomerName': _customerName,
        'CustomerShortName': _customerShortName,
        'CustomerCategory': _customerCategory,
        'EmailId': _emailId,
        'Address1': _address1,
        'Address2': _address2,
        'Address3': _address3,
        'Address4': _address4,
        'Address5': _address5,
        'City': _city,
        'Country': _country,
        'PhoneNumber': _phoneNumber,
        'PinCode': _pinCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CIF': serializeParam(
          _cif,
          ParamType.String,
        ),
        'CIFStatus': serializeParam(
          _cIFStatus,
          ParamType.String,
        ),
        'CustomerName': serializeParam(
          _customerName,
          ParamType.String,
        ),
        'CustomerShortName': serializeParam(
          _customerShortName,
          ParamType.String,
        ),
        'CustomerCategory': serializeParam(
          _customerCategory,
          ParamType.String,
        ),
        'EmailId': serializeParam(
          _emailId,
          ParamType.String,
        ),
        'Address1': serializeParam(
          _address1,
          ParamType.String,
        ),
        'Address2': serializeParam(
          _address2,
          ParamType.String,
        ),
        'Address3': serializeParam(
          _address3,
          ParamType.String,
        ),
        'Address4': serializeParam(
          _address4,
          ParamType.String,
        ),
        'Address5': serializeParam(
          _address5,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'PhoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'PinCode': serializeParam(
          _pinCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static CIFDataStructureStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CIFDataStructureStruct(
        cif: deserializeParam(
          data['CIF'],
          ParamType.String,
          false,
        ),
        cIFStatus: deserializeParam(
          data['CIFStatus'],
          ParamType.String,
          false,
        ),
        customerName: deserializeParam(
          data['CustomerName'],
          ParamType.String,
          false,
        ),
        customerShortName: deserializeParam(
          data['CustomerShortName'],
          ParamType.String,
          false,
        ),
        customerCategory: deserializeParam(
          data['CustomerCategory'],
          ParamType.String,
          false,
        ),
        emailId: deserializeParam(
          data['EmailId'],
          ParamType.String,
          false,
        ),
        address1: deserializeParam(
          data['Address1'],
          ParamType.String,
          false,
        ),
        address2: deserializeParam(
          data['Address2'],
          ParamType.String,
          false,
        ),
        address3: deserializeParam(
          data['Address3'],
          ParamType.String,
          false,
        ),
        address4: deserializeParam(
          data['Address4'],
          ParamType.String,
          false,
        ),
        address5: deserializeParam(
          data['Address5'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['PhoneNumber'],
          ParamType.String,
          false,
        ),
        pinCode: deserializeParam(
          data['PinCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CIFDataStructureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CIFDataStructureStruct &&
        cif == other.cif &&
        cIFStatus == other.cIFStatus &&
        customerName == other.customerName &&
        customerShortName == other.customerShortName &&
        customerCategory == other.customerCategory &&
        emailId == other.emailId &&
        address1 == other.address1 &&
        address2 == other.address2 &&
        address3 == other.address3 &&
        address4 == other.address4 &&
        address5 == other.address5 &&
        city == other.city &&
        country == other.country &&
        phoneNumber == other.phoneNumber &&
        pinCode == other.pinCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cif,
        cIFStatus,
        customerName,
        customerShortName,
        customerCategory,
        emailId,
        address1,
        address2,
        address3,
        address4,
        address5,
        city,
        country,
        phoneNumber,
        pinCode
      ]);
}

CIFDataStructureStruct createCIFDataStructureStruct({
  String? cif,
  String? cIFStatus,
  String? customerName,
  String? customerShortName,
  String? customerCategory,
  String? emailId,
  String? address1,
  String? address2,
  String? address3,
  String? address4,
  String? address5,
  String? city,
  String? country,
  String? phoneNumber,
  String? pinCode,
}) =>
    CIFDataStructureStruct(
      cif: cif,
      cIFStatus: cIFStatus,
      customerName: customerName,
      customerShortName: customerShortName,
      customerCategory: customerCategory,
      emailId: emailId,
      address1: address1,
      address2: address2,
      address3: address3,
      address4: address4,
      address5: address5,
      city: city,
      country: country,
      phoneNumber: phoneNumber,
      pinCode: pinCode,
    );
