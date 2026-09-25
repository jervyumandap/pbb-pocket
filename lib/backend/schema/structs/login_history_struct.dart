// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginHistoryStruct extends BaseStruct {
  LoginHistoryStruct({
    String? id,
    String? attemptedAt,
    bool? success,
    String? ipAddress,
    String? userAgent,
    String? deviceId,
    String? deviceName,
    String? failureReason,
    String? loginMethod,
  })  : _id = id,
        _attemptedAt = attemptedAt,
        _success = success,
        _ipAddress = ipAddress,
        _userAgent = userAgent,
        _deviceId = deviceId,
        _deviceName = deviceName,
        _failureReason = failureReason,
        _loginMethod = loginMethod;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "attemptedAt" field.
  String? _attemptedAt;
  String get attemptedAt => _attemptedAt ?? '';
  set attemptedAt(String? val) => _attemptedAt = val;

  bool hasAttemptedAt() => _attemptedAt != null;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "ipAddress" field.
  String? _ipAddress;
  String get ipAddress => _ipAddress ?? '';
  set ipAddress(String? val) => _ipAddress = val;

  bool hasIpAddress() => _ipAddress != null;

  // "userAgent" field.
  String? _userAgent;
  String get userAgent => _userAgent ?? '';
  set userAgent(String? val) => _userAgent = val;

  bool hasUserAgent() => _userAgent != null;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "deviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "failureReason" field.
  String? _failureReason;
  String get failureReason => _failureReason ?? '';
  set failureReason(String? val) => _failureReason = val;

  bool hasFailureReason() => _failureReason != null;

  // "loginMethod" field.
  String? _loginMethod;
  String get loginMethod => _loginMethod ?? '';
  set loginMethod(String? val) => _loginMethod = val;

  bool hasLoginMethod() => _loginMethod != null;

  static LoginHistoryStruct fromMap(Map<String, dynamic> data) =>
      LoginHistoryStruct(
        id: data['id'] as String?,
        attemptedAt: data['attemptedAt'] as String?,
        success: data['success'] as bool?,
        ipAddress: data['ipAddress'] as String?,
        userAgent: data['userAgent'] as String?,
        deviceId: data['deviceId'] as String?,
        deviceName: data['deviceName'] as String?,
        failureReason: data['failureReason'] as String?,
        loginMethod: data['loginMethod'] as String?,
      );

  static LoginHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'attemptedAt': _attemptedAt,
        'success': _success,
        'ipAddress': _ipAddress,
        'userAgent': _userAgent,
        'deviceId': _deviceId,
        'deviceName': _deviceName,
        'failureReason': _failureReason,
        'loginMethod': _loginMethod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'attemptedAt': serializeParam(
          _attemptedAt,
          ParamType.String,
        ),
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'ipAddress': serializeParam(
          _ipAddress,
          ParamType.String,
        ),
        'userAgent': serializeParam(
          _userAgent,
          ParamType.String,
        ),
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'failureReason': serializeParam(
          _failureReason,
          ParamType.String,
        ),
        'loginMethod': serializeParam(
          _loginMethod,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginHistoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginHistoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        attemptedAt: deserializeParam(
          data['attemptedAt'],
          ParamType.String,
          false,
        ),
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        ipAddress: deserializeParam(
          data['ipAddress'],
          ParamType.String,
          false,
        ),
        userAgent: deserializeParam(
          data['userAgent'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['deviceName'],
          ParamType.String,
          false,
        ),
        failureReason: deserializeParam(
          data['failureReason'],
          ParamType.String,
          false,
        ),
        loginMethod: deserializeParam(
          data['loginMethod'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoginHistoryStruct &&
        id == other.id &&
        attemptedAt == other.attemptedAt &&
        success == other.success &&
        ipAddress == other.ipAddress &&
        userAgent == other.userAgent &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        failureReason == other.failureReason &&
        loginMethod == other.loginMethod;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        attemptedAt,
        success,
        ipAddress,
        userAgent,
        deviceId,
        deviceName,
        failureReason,
        loginMethod
      ]);
}

LoginHistoryStruct createLoginHistoryStruct({
  String? id,
  String? attemptedAt,
  bool? success,
  String? ipAddress,
  String? userAgent,
  String? deviceId,
  String? deviceName,
  String? failureReason,
  String? loginMethod,
}) =>
    LoginHistoryStruct(
      id: id,
      attemptedAt: attemptedAt,
      success: success,
      ipAddress: ipAddress,
      userAgent: userAgent,
      deviceId: deviceId,
      deviceName: deviceName,
      failureReason: failureReason,
      loginMethod: loginMethod,
    );
