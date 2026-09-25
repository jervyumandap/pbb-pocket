// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationDetailsStruct extends BaseStruct {
  NotificationDetailsStruct({
    String? countryCode,
    int? mobileNumber,
    String? message,
  })  : _countryCode = countryCode,
        _mobileNumber = mobileNumber,
        _message = message;

  // "CountryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "MobileNumber" field.
  int? _mobileNumber;
  int get mobileNumber => _mobileNumber ?? 0;
  set mobileNumber(int? val) => _mobileNumber = val;

  void incrementMobileNumber(int amount) =>
      mobileNumber = mobileNumber + amount;

  bool hasMobileNumber() => _mobileNumber != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static NotificationDetailsStruct fromMap(Map<String, dynamic> data) =>
      NotificationDetailsStruct(
        countryCode: data['CountryCode'] as String?,
        mobileNumber: castToType<int>(data['MobileNumber']),
        message: data['Message'] as String?,
      );

  static NotificationDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CountryCode': _countryCode,
        'MobileNumber': _mobileNumber,
        'Message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CountryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'MobileNumber': serializeParam(
          _mobileNumber,
          ParamType.int,
        ),
        'Message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationDetailsStruct(
        countryCode: deserializeParam(
          data['CountryCode'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['MobileNumber'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['Message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationDetailsStruct &&
        countryCode == other.countryCode &&
        mobileNumber == other.mobileNumber &&
        message == other.message;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([countryCode, mobileNumber, message]);
}

NotificationDetailsStruct createNotificationDetailsStruct({
  String? countryCode,
  int? mobileNumber,
  String? message,
}) =>
    NotificationDetailsStruct(
      countryCode: countryCode,
      mobileNumber: mobileNumber,
      message: message,
    );
