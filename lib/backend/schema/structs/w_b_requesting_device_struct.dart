// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBRequestingDeviceStruct extends BaseStruct {
  WBRequestingDeviceStruct({
    String? id,
    String? deviceName,
    String? deviceType,
    String? createdAt,
  })  : _id = id,
        _deviceName = deviceName,
        _deviceType = deviceType,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "deviceName" field.
  String? _deviceName;
  String get deviceName => _deviceName ?? '';
  set deviceName(String? val) => _deviceName = val;

  bool hasDeviceName() => _deviceName != null;

  // "deviceType" field.
  String? _deviceType;
  String get deviceType => _deviceType ?? '';
  set deviceType(String? val) => _deviceType = val;

  bool hasDeviceType() => _deviceType != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static WBRequestingDeviceStruct fromMap(Map<String, dynamic> data) =>
      WBRequestingDeviceStruct(
        id: data['id'] as String?,
        deviceName: data['deviceName'] as String?,
        deviceType: data['deviceType'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static WBRequestingDeviceStruct? maybeFromMap(dynamic data) => data is Map
      ? WBRequestingDeviceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'deviceName': _deviceName,
        'deviceType': _deviceType,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'deviceName': serializeParam(
          _deviceName,
          ParamType.String,
        ),
        'deviceType': serializeParam(
          _deviceType,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBRequestingDeviceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBRequestingDeviceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        deviceName: deserializeParam(
          data['deviceName'],
          ParamType.String,
          false,
        ),
        deviceType: deserializeParam(
          data['deviceType'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBRequestingDeviceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBRequestingDeviceStruct &&
        id == other.id &&
        deviceName == other.deviceName &&
        deviceType == other.deviceType &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, deviceName, deviceType, createdAt]);
}

WBRequestingDeviceStruct createWBRequestingDeviceStruct({
  String? id,
  String? deviceName,
  String? deviceType,
  String? createdAt,
}) =>
    WBRequestingDeviceStruct(
      id: id,
      deviceName: deviceName,
      deviceType: deviceType,
      createdAt: createdAt,
    );
