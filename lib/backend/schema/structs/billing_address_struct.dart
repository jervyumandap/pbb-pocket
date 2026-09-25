// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillingAddressStruct extends BaseStruct {
  BillingAddressStruct({
    String? firstName,
    String? lastName,
    String? adrLine1,
    String? adrLine2,
    String? city,
    String? region,
    String? postalCode,
    String? country,
    String? contactNum,
  })  : _firstName = firstName,
        _lastName = lastName,
        _adrLine1 = adrLine1,
        _adrLine2 = adrLine2,
        _city = city,
        _region = region,
        _postalCode = postalCode,
        _country = country,
        _contactNum = contactNum;

  // "FirstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "AdrLine1" field.
  String? _adrLine1;
  String get adrLine1 => _adrLine1 ?? '';
  set adrLine1(String? val) => _adrLine1 = val;

  bool hasAdrLine1() => _adrLine1 != null;

  // "AdrLine2" field.
  String? _adrLine2;
  String get adrLine2 => _adrLine2 ?? '';
  set adrLine2(String? val) => _adrLine2 = val;

  bool hasAdrLine2() => _adrLine2 != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "Region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;

  bool hasRegion() => _region != null;

  // "PostalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  // "Country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "ContactNum" field.
  String? _contactNum;
  String get contactNum => _contactNum ?? '';
  set contactNum(String? val) => _contactNum = val;

  bool hasContactNum() => _contactNum != null;

  static BillingAddressStruct fromMap(Map<String, dynamic> data) =>
      BillingAddressStruct(
        firstName: data['FirstName'] as String?,
        lastName: data['LastName'] as String?,
        adrLine1: data['AdrLine1'] as String?,
        adrLine2: data['AdrLine2'] as String?,
        city: data['City'] as String?,
        region: data['Region'] as String?,
        postalCode: data['PostalCode'] as String?,
        country: data['Country'] as String?,
        contactNum: data['ContactNum'] as String?,
      );

  static BillingAddressStruct? maybeFromMap(dynamic data) => data is Map
      ? BillingAddressStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FirstName': _firstName,
        'LastName': _lastName,
        'AdrLine1': _adrLine1,
        'AdrLine2': _adrLine2,
        'City': _city,
        'Region': _region,
        'PostalCode': _postalCode,
        'Country': _country,
        'ContactNum': _contactNum,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FirstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'LastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'AdrLine1': serializeParam(
          _adrLine1,
          ParamType.String,
        ),
        'AdrLine2': serializeParam(
          _adrLine2,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
        'Region': serializeParam(
          _region,
          ParamType.String,
        ),
        'PostalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'Country': serializeParam(
          _country,
          ParamType.String,
        ),
        'ContactNum': serializeParam(
          _contactNum,
          ParamType.String,
        ),
      }.withoutNulls;

  static BillingAddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillingAddressStruct(
        firstName: deserializeParam(
          data['FirstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['LastName'],
          ParamType.String,
          false,
        ),
        adrLine1: deserializeParam(
          data['AdrLine1'],
          ParamType.String,
          false,
        ),
        adrLine2: deserializeParam(
          data['AdrLine2'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['Region'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['PostalCode'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['Country'],
          ParamType.String,
          false,
        ),
        contactNum: deserializeParam(
          data['ContactNum'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BillingAddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillingAddressStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        adrLine1 == other.adrLine1 &&
        adrLine2 == other.adrLine2 &&
        city == other.city &&
        region == other.region &&
        postalCode == other.postalCode &&
        country == other.country &&
        contactNum == other.contactNum;
  }

  @override
  int get hashCode => const ListEquality().hash([
        firstName,
        lastName,
        adrLine1,
        adrLine2,
        city,
        region,
        postalCode,
        country,
        contactNum
      ]);
}

BillingAddressStruct createBillingAddressStruct({
  String? firstName,
  String? lastName,
  String? adrLine1,
  String? adrLine2,
  String? city,
  String? region,
  String? postalCode,
  String? country,
  String? contactNum,
}) =>
    BillingAddressStruct(
      firstName: firstName,
      lastName: lastName,
      adrLine1: adrLine1,
      adrLine2: adrLine2,
      city: city,
      region: region,
      postalCode: postalCode,
      country: country,
      contactNum: contactNum,
    );
