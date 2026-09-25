// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceInfoStruct extends BaseStruct {
  DeviceInfoStruct({
    String? deviceIpAddress,
    String? deviceUserAgent,
    String? deviceId,
    String? acceptLanguage,
    String? cookie,
  })  : _deviceIpAddress = deviceIpAddress,
        _deviceUserAgent = deviceUserAgent,
        _deviceId = deviceId,
        _acceptLanguage = acceptLanguage,
        _cookie = cookie;

  // "DeviceIpAddress" field.
  String? _deviceIpAddress;
  String get deviceIpAddress => _deviceIpAddress ?? '';
  set deviceIpAddress(String? val) => _deviceIpAddress = val;

  bool hasDeviceIpAddress() => _deviceIpAddress != null;

  // "DeviceUserAgent" field.
  String? _deviceUserAgent;
  String get deviceUserAgent => _deviceUserAgent ?? '';
  set deviceUserAgent(String? val) => _deviceUserAgent = val;

  bool hasDeviceUserAgent() => _deviceUserAgent != null;

  // "DeviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "AcceptLanguage" field.
  String? _acceptLanguage;
  String get acceptLanguage => _acceptLanguage ?? '';
  set acceptLanguage(String? val) => _acceptLanguage = val;

  bool hasAcceptLanguage() => _acceptLanguage != null;

  // "Cookie" field.
  String? _cookie;
  String get cookie => _cookie ?? '';
  set cookie(String? val) => _cookie = val;

  bool hasCookie() => _cookie != null;

  static DeviceInfoStruct fromMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        deviceIpAddress: data['DeviceIpAddress'] as String?,
        deviceUserAgent: data['DeviceUserAgent'] as String?,
        deviceId: data['DeviceId'] as String?,
        acceptLanguage: data['AcceptLanguage'] as String?,
        cookie: data['Cookie'] as String?,
      );

  static DeviceInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'DeviceIpAddress': _deviceIpAddress,
        'DeviceUserAgent': _deviceUserAgent,
        'DeviceId': _deviceId,
        'AcceptLanguage': _acceptLanguage,
        'Cookie': _cookie,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'DeviceIpAddress': serializeParam(
          _deviceIpAddress,
          ParamType.String,
        ),
        'DeviceUserAgent': serializeParam(
          _deviceUserAgent,
          ParamType.String,
        ),
        'DeviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'AcceptLanguage': serializeParam(
          _acceptLanguage,
          ParamType.String,
        ),
        'Cookie': serializeParam(
          _cookie,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceInfoStruct(
        deviceIpAddress: deserializeParam(
          data['DeviceIpAddress'],
          ParamType.String,
          false,
        ),
        deviceUserAgent: deserializeParam(
          data['DeviceUserAgent'],
          ParamType.String,
          false,
        ),
        deviceId: deserializeParam(
          data['DeviceId'],
          ParamType.String,
          false,
        ),
        acceptLanguage: deserializeParam(
          data['AcceptLanguage'],
          ParamType.String,
          false,
        ),
        cookie: deserializeParam(
          data['Cookie'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceInfoStruct &&
        deviceIpAddress == other.deviceIpAddress &&
        deviceUserAgent == other.deviceUserAgent &&
        deviceId == other.deviceId &&
        acceptLanguage == other.acceptLanguage &&
        cookie == other.cookie;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [deviceIpAddress, deviceUserAgent, deviceId, acceptLanguage, cookie]);
}

DeviceInfoStruct createDeviceInfoStruct({
  String? deviceIpAddress,
  String? deviceUserAgent,
  String? deviceId,
  String? acceptLanguage,
  String? cookie,
}) =>
    DeviceInfoStruct(
      deviceIpAddress: deviceIpAddress,
      deviceUserAgent: deviceUserAgent,
      deviceId: deviceId,
      acceptLanguage: acceptLanguage,
      cookie: cookie,
    );
