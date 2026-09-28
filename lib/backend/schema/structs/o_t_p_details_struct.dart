// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OTPDetailsStruct extends BaseStruct {
  OTPDetailsStruct({
    String? countryCode,
    String? mobileNumber,
    String? message,
    String? validity,
    String? pin,
  })  : _countryCode = countryCode,
        _mobileNumber = mobileNumber,
        _message = message,
        _validity = validity,
        _pin = pin;

  // "CountryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "MobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "validity" field.
  String? _validity;
  String get validity => _validity ?? '';
  set validity(String? val) => _validity = val;

  bool hasValidity() => _validity != null;

  // "PIN" field.
  String? _pin;
  String get pin => _pin ?? '';
  set pin(String? val) => _pin = val;

  bool hasPin() => _pin != null;

  static OTPDetailsStruct fromMap(Map<String, dynamic> data) =>
      OTPDetailsStruct(
        countryCode: data['CountryCode'] as String?,
        mobileNumber: data['MobileNumber'] as String?,
        message: data['Message'] as String?,
        validity: data['validity'] as String?,
        pin: data['PIN'] as String?,
      );

  static OTPDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? OTPDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CountryCode': _countryCode,
        'MobileNumber': _mobileNumber,
        'Message': _message,
        'validity': _validity,
        'PIN': _pin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CountryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'MobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
        'validity': serializeParam(
          _validity,
          ParamType.String,
        ),
        'PIN': serializeParam(
          _pin,
          ParamType.String,
        ),
      }.withoutNulls;

  static OTPDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OTPDetailsStruct(
        countryCode: deserializeParam(
          data['CountryCode'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['MobileNumber'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
        validity: deserializeParam(
          data['validity'],
          ParamType.String,
          false,
        ),
        pin: deserializeParam(
          data['PIN'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OTPDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OTPDetailsStruct &&
        countryCode == other.countryCode &&
        mobileNumber == other.mobileNumber &&
        message == other.message &&
        validity == other.validity &&
        pin == other.pin;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([countryCode, mobileNumber, message, validity, pin]);
}

OTPDetailsStruct createOTPDetailsStruct({
  String? countryCode,
  String? mobileNumber,
  String? message,
  String? validity,
  String? pin,
}) =>
    OTPDetailsStruct(
      countryCode: countryCode,
      mobileNumber: mobileNumber,
      message: message,
      validity: validity,
      pin: pin,
    );
