// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBPasskeyCredentialStruct extends BaseStruct {
  WBPasskeyCredentialStruct({
    String? id,
    String? name,
    String? deviceType,
    List<String>? transports,
    String? createdAt,
    String? lastUsedAt,
    String? revokedAt,
  })  : _id = id,
        _name = name,
        _deviceType = deviceType,
        _transports = transports,
        _createdAt = createdAt,
        _lastUsedAt = lastUsedAt,
        _revokedAt = revokedAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "deviceType" field.
  String? _deviceType;
  String get deviceType => _deviceType ?? '';
  set deviceType(String? val) => _deviceType = val;

  bool hasDeviceType() => _deviceType != null;

  // "transports" field.
  List<String>? _transports;
  List<String> get transports => _transports ?? const [];
  set transports(List<String>? val) => _transports = val;

  void updateTransports(Function(List<String>) updateFn) {
    updateFn(_transports ??= []);
  }

  bool hasTransports() => _transports != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "lastUsedAt" field.
  String? _lastUsedAt;
  String get lastUsedAt => _lastUsedAt ?? '';
  set lastUsedAt(String? val) => _lastUsedAt = val;

  bool hasLastUsedAt() => _lastUsedAt != null;

  // "revokedAt" field.
  String? _revokedAt;
  String get revokedAt => _revokedAt ?? '';
  set revokedAt(String? val) => _revokedAt = val;

  bool hasRevokedAt() => _revokedAt != null;

  static WBPasskeyCredentialStruct fromMap(Map<String, dynamic> data) =>
      WBPasskeyCredentialStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        deviceType: data['deviceType'] as String?,
        transports: getDataList(data['transports']),
        createdAt: data['createdAt'] as String?,
        lastUsedAt: data['lastUsedAt'] as String?,
        revokedAt: data['revokedAt'] as String?,
      );

  static WBPasskeyCredentialStruct? maybeFromMap(dynamic data) => data is Map
      ? WBPasskeyCredentialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'deviceType': _deviceType,
        'transports': _transports,
        'createdAt': _createdAt,
        'lastUsedAt': _lastUsedAt,
        'revokedAt': _revokedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'deviceType': serializeParam(
          _deviceType,
          ParamType.String,
        ),
        'transports': serializeParam(
          _transports,
          ParamType.String,
          isList: true,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'lastUsedAt': serializeParam(
          _lastUsedAt,
          ParamType.String,
        ),
        'revokedAt': serializeParam(
          _revokedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBPasskeyCredentialStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBPasskeyCredentialStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        deviceType: deserializeParam(
          data['deviceType'],
          ParamType.String,
          false,
        ),
        transports: deserializeParam<String>(
          data['transports'],
          ParamType.String,
          true,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        lastUsedAt: deserializeParam(
          data['lastUsedAt'],
          ParamType.String,
          false,
        ),
        revokedAt: deserializeParam(
          data['revokedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBPasskeyCredentialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WBPasskeyCredentialStruct &&
        id == other.id &&
        name == other.name &&
        deviceType == other.deviceType &&
        listEquality.equals(transports, other.transports) &&
        createdAt == other.createdAt &&
        lastUsedAt == other.lastUsedAt &&
        revokedAt == other.revokedAt;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, name, deviceType, transports, createdAt, lastUsedAt, revokedAt]);
}

WBPasskeyCredentialStruct createWBPasskeyCredentialStruct({
  String? id,
  String? name,
  String? deviceType,
  String? createdAt,
  String? lastUsedAt,
  String? revokedAt,
}) =>
    WBPasskeyCredentialStruct(
      id: id,
      name: name,
      deviceType: deviceType,
      createdAt: createdAt,
      lastUsedAt: lastUsedAt,
      revokedAt: revokedAt,
    );
