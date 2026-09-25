// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBPendingDeviceTrustRequestStruct extends BaseStruct {
  WBPendingDeviceTrustRequestStruct({
    String? id,
    WBRequestingDeviceStruct? requestingDevice,
    String? createdAt,
    String? expiresAt,
  })  : _id = id,
        _requestingDevice = requestingDevice,
        _createdAt = createdAt,
        _expiresAt = expiresAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "requestingDevice" field.
  WBRequestingDeviceStruct? _requestingDevice;
  WBRequestingDeviceStruct get requestingDevice =>
      _requestingDevice ?? WBRequestingDeviceStruct();
  set requestingDevice(WBRequestingDeviceStruct? val) =>
      _requestingDevice = val;

  void updateRequestingDevice(Function(WBRequestingDeviceStruct) updateFn) {
    updateFn(_requestingDevice ??= WBRequestingDeviceStruct());
  }

  bool hasRequestingDevice() => _requestingDevice != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  static WBPendingDeviceTrustRequestStruct fromMap(Map<String, dynamic> data) =>
      WBPendingDeviceTrustRequestStruct(
        id: data['id'] as String?,
        requestingDevice: data['requestingDevice'] is WBRequestingDeviceStruct
            ? data['requestingDevice']
            : WBRequestingDeviceStruct.maybeFromMap(data['requestingDevice']),
        createdAt: data['createdAt'] as String?,
        expiresAt: data['expiresAt'] as String?,
      );

  static WBPendingDeviceTrustRequestStruct? maybeFromMap(dynamic data) => data
          is Map
      ? WBPendingDeviceTrustRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'requestingDevice': _requestingDevice?.toMap(),
        'createdAt': _createdAt,
        'expiresAt': _expiresAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'requestingDevice': serializeParam(
          _requestingDevice,
          ParamType.DataStruct,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBPendingDeviceTrustRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBPendingDeviceTrustRequestStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        requestingDevice: deserializeStructParam(
          data['requestingDevice'],
          ParamType.DataStruct,
          false,
          structBuilder: WBRequestingDeviceStruct.fromSerializableMap,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBPendingDeviceTrustRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBPendingDeviceTrustRequestStruct &&
        id == other.id &&
        requestingDevice == other.requestingDevice &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, requestingDevice, createdAt, expiresAt]);
}

WBPendingDeviceTrustRequestStruct createWBPendingDeviceTrustRequestStruct({
  String? id,
  WBRequestingDeviceStruct? requestingDevice,
  String? createdAt,
  String? expiresAt,
}) =>
    WBPendingDeviceTrustRequestStruct(
      id: id,
      requestingDevice: requestingDevice ?? WBRequestingDeviceStruct(),
      createdAt: createdAt,
      expiresAt: expiresAt,
    );
