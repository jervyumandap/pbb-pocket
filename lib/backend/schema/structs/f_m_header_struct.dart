// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FMHeaderStruct extends BaseStruct {
  FMHeaderStruct({
    String? ipAddress,
    String? channelCode,
    String? originatingIPAddress,
    String? originatingChannelCode,
    String? checkpointType,
  })  : _ipAddress = ipAddress,
        _channelCode = channelCode,
        _originatingIPAddress = originatingIPAddress,
        _originatingChannelCode = originatingChannelCode,
        _checkpointType = checkpointType;

  // "IpAddress" field.
  String? _ipAddress;
  String get ipAddress => _ipAddress ?? '';
  set ipAddress(String? val) => _ipAddress = val;

  bool hasIpAddress() => _ipAddress != null;

  // "ChannelCode" field.
  String? _channelCode;
  String get channelCode => _channelCode ?? '';
  set channelCode(String? val) => _channelCode = val;

  bool hasChannelCode() => _channelCode != null;

  // "OriginatingIPAddress" field.
  String? _originatingIPAddress;
  String get originatingIPAddress => _originatingIPAddress ?? '';
  set originatingIPAddress(String? val) => _originatingIPAddress = val;

  bool hasOriginatingIPAddress() => _originatingIPAddress != null;

  // "OriginatingChannelCode" field.
  String? _originatingChannelCode;
  String get originatingChannelCode => _originatingChannelCode ?? '';
  set originatingChannelCode(String? val) => _originatingChannelCode = val;

  bool hasOriginatingChannelCode() => _originatingChannelCode != null;

  // "CheckpointType" field.
  String? _checkpointType;
  String get checkpointType => _checkpointType ?? '';
  set checkpointType(String? val) => _checkpointType = val;

  bool hasCheckpointType() => _checkpointType != null;

  static FMHeaderStruct fromMap(Map<String, dynamic> data) => FMHeaderStruct(
        ipAddress: data['IpAddress'] as String?,
        channelCode: data['ChannelCode'] as String?,
        originatingIPAddress: data['OriginatingIPAddress'] as String?,
        originatingChannelCode: data['OriginatingChannelCode'] as String?,
        checkpointType: data['CheckpointType'] as String?,
      );

  static FMHeaderStruct? maybeFromMap(dynamic data) =>
      data is Map ? FMHeaderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'IpAddress': _ipAddress,
        'ChannelCode': _channelCode,
        'OriginatingIPAddress': _originatingIPAddress,
        'OriginatingChannelCode': _originatingChannelCode,
        'CheckpointType': _checkpointType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'IpAddress': serializeParam(
          _ipAddress,
          ParamType.String,
        ),
        'ChannelCode': serializeParam(
          _channelCode,
          ParamType.String,
        ),
        'OriginatingIPAddress': serializeParam(
          _originatingIPAddress,
          ParamType.String,
        ),
        'OriginatingChannelCode': serializeParam(
          _originatingChannelCode,
          ParamType.String,
        ),
        'CheckpointType': serializeParam(
          _checkpointType,
          ParamType.String,
        ),
      }.withoutNulls;

  static FMHeaderStruct fromSerializableMap(Map<String, dynamic> data) =>
      FMHeaderStruct(
        ipAddress: deserializeParam(
          data['IpAddress'],
          ParamType.String,
          false,
        ),
        channelCode: deserializeParam(
          data['ChannelCode'],
          ParamType.String,
          false,
        ),
        originatingIPAddress: deserializeParam(
          data['OriginatingIPAddress'],
          ParamType.String,
          false,
        ),
        originatingChannelCode: deserializeParam(
          data['OriginatingChannelCode'],
          ParamType.String,
          false,
        ),
        checkpointType: deserializeParam(
          data['CheckpointType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FMHeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FMHeaderStruct &&
        ipAddress == other.ipAddress &&
        channelCode == other.channelCode &&
        originatingIPAddress == other.originatingIPAddress &&
        originatingChannelCode == other.originatingChannelCode &&
        checkpointType == other.checkpointType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        ipAddress,
        channelCode,
        originatingIPAddress,
        originatingChannelCode,
        checkpointType
      ]);
}

FMHeaderStruct createFMHeaderStruct({
  String? ipAddress,
  String? channelCode,
  String? originatingIPAddress,
  String? originatingChannelCode,
  String? checkpointType,
}) =>
    FMHeaderStruct(
      ipAddress: ipAddress,
      channelCode: channelCode,
      originatingIPAddress: originatingIPAddress,
      originatingChannelCode: originatingChannelCode,
      checkpointType: checkpointType,
    );
