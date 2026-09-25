// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceDataStruct extends BaseStruct {
  DeviceDataStruct({
    String? deviceId,
    String? model,
    String? os,
    String? osVersion,
    String? name,

    /// Web Browser only
    String? userAgent,
  })  : _deviceId = deviceId,
        _model = model,
        _os = os,
        _osVersion = osVersion,
        _name = name,
        _userAgent = userAgent;

  // "device_id" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "os" field.
  String? _os;
  String get os => _os ?? '';
  set os(String? val) => _os = val;

  bool hasOs() => _os != null;

  // "os_version" field.
  String? _osVersion;
  String get osVersion => _osVersion ?? '';
  set osVersion(String? val) => _osVersion = val;

  bool hasOsVersion() => _osVersion != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "user_agent" field.
  String? _userAgent;
  String get userAgent => _userAgent ?? '';
  set userAgent(String? val) => _userAgent = val;

  bool hasUserAgent() => _userAgent != null;

  static DeviceDataStruct fromMap(Map<String, dynamic> data) =>
      DeviceDataStruct(
        deviceId: data['device_id'] as String?,
        model: data['model'] as String?,
        os: data['os'] as String?,
        osVersion: data['os_version'] as String?,
        name: data['name'] as String?,
        userAgent: data['user_agent'] as String?,
      );

  static DeviceDataStruct? maybeFromMap(dynamic data) => data is Map
      ? DeviceDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'device_id': _deviceId,
        'model': _model,
        'os': _os,
        'os_version': _osVersion,
        'name': _name,
        'user_agent': _userAgent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'device_id': serializeParam(
          _deviceId,
          ParamType.String,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'os': serializeParam(
          _os,
          ParamType.String,
        ),
        'os_version': serializeParam(
          _osVersion,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'user_agent': serializeParam(
          _userAgent,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeviceDataStruct(
        deviceId: deserializeParam(
          data['device_id'],
          ParamType.String,
          false,
        ),
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        os: deserializeParam(
          data['os'],
          ParamType.String,
          false,
        ),
        osVersion: deserializeParam(
          data['os_version'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        userAgent: deserializeParam(
          data['user_agent'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceDataStruct &&
        deviceId == other.deviceId &&
        model == other.model &&
        os == other.os &&
        osVersion == other.osVersion &&
        name == other.name &&
        userAgent == other.userAgent;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([deviceId, model, os, osVersion, name, userAgent]);
}

DeviceDataStruct createDeviceDataStruct({
  String? deviceId,
  String? model,
  String? os,
  String? osVersion,
  String? name,
  String? userAgent,
}) =>
    DeviceDataStruct(
      deviceId: deviceId,
      model: model,
      os: os,
      osVersion: osVersion,
      name: name,
      userAgent: userAgent,
    );
