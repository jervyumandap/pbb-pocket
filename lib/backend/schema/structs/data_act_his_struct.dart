// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataActHisStruct extends BaseStruct {
  DataActHisStruct({
    String? id,
    String? customerId,
    String? activityType,
    String? description,
    String? ipAddress,
    String? userAgent,
    String? deviceId,
    MetadataActivityHistoryStruct? metadata,
    String? createdAt,
  })  : _id = id,
        _customerId = customerId,
        _activityType = activityType,
        _description = description,
        _ipAddress = ipAddress,
        _userAgent = userAgent,
        _deviceId = deviceId,
        _metadata = metadata,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "activityType" field.
  String? _activityType;
  String get activityType => _activityType ?? '';
  set activityType(String? val) => _activityType = val;

  bool hasActivityType() => _activityType != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

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

  // "metadata" field.
  MetadataActivityHistoryStruct? _metadata;
  MetadataActivityHistoryStruct get metadata =>
      _metadata ?? MetadataActivityHistoryStruct();
  set metadata(MetadataActivityHistoryStruct? val) => _metadata = val;

  void updateMetadata(Function(MetadataActivityHistoryStruct) updateFn) {
    updateFn(_metadata ??= MetadataActivityHistoryStruct());
  }

  bool hasMetadata() => _metadata != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static DataActHisStruct fromMap(Map<String, dynamic> data) =>
      DataActHisStruct(
        id: data['id'] as String?,
        customerId: data['customerId'] as String?,
        activityType: data['activityType'] as String?,
        description: data['description'] as String?,
        ipAddress: data['ipAddress'] as String?,
        userAgent: data['userAgent'] as String?,
        deviceId: data['deviceId'] as String?,
        metadata: data['metadata'] is MetadataActivityHistoryStruct
            ? data['metadata']
            : MetadataActivityHistoryStruct.maybeFromMap(data['metadata']),
        createdAt: data['createdAt'] as String?,
      );

  static DataActHisStruct? maybeFromMap(dynamic data) => data is Map
      ? DataActHisStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'customerId': _customerId,
        'activityType': _activityType,
        'description': _description,
        'ipAddress': _ipAddress,
        'userAgent': _userAgent,
        'deviceId': _deviceId,
        'metadata': _metadata?.toMap(),
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'activityType': serializeParam(
          _activityType,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
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
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataActHisStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataActHisStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
        activityType: deserializeParam(
          data['activityType'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
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
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: MetadataActivityHistoryStruct.fromSerializableMap,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataActHisStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataActHisStruct &&
        id == other.id &&
        customerId == other.customerId &&
        activityType == other.activityType &&
        description == other.description &&
        ipAddress == other.ipAddress &&
        userAgent == other.userAgent &&
        deviceId == other.deviceId &&
        metadata == other.metadata &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        customerId,
        activityType,
        description,
        ipAddress,
        userAgent,
        deviceId,
        metadata,
        createdAt
      ]);
}

DataActHisStruct createDataActHisStruct({
  String? id,
  String? customerId,
  String? activityType,
  String? description,
  String? ipAddress,
  String? userAgent,
  String? deviceId,
  MetadataActivityHistoryStruct? metadata,
  String? createdAt,
}) =>
    DataActHisStruct(
      id: id,
      customerId: customerId,
      activityType: activityType,
      description: description,
      ipAddress: ipAddress,
      userAgent: userAgent,
      deviceId: deviceId,
      metadata: metadata ?? MetadataActivityHistoryStruct(),
      createdAt: createdAt,
    );
