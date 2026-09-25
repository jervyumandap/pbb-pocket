// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HeaderStruct extends BaseStruct {
  HeaderStruct({
    String? channelCode,
    String? originatingChannelCode,
    String? checkpointType,
    String? referenceNumber,
  })  : _channelCode = channelCode,
        _originatingChannelCode = originatingChannelCode,
        _checkpointType = checkpointType,
        _referenceNumber = referenceNumber;

  // "ChannelCode" field.
  String? _channelCode;
  String get channelCode => _channelCode ?? '';
  set channelCode(String? val) => _channelCode = val;

  bool hasChannelCode() => _channelCode != null;

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

  // "ReferenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  static HeaderStruct fromMap(Map<String, dynamic> data) => HeaderStruct(
        channelCode: data['ChannelCode'] as String?,
        originatingChannelCode: data['OriginatingChannelCode'] as String?,
        checkpointType: data['CheckpointType'] as String?,
        referenceNumber: data['ReferenceNumber'] as String?,
      );

  static HeaderStruct? maybeFromMap(dynamic data) =>
      data is Map ? HeaderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ChannelCode': _channelCode,
        'OriginatingChannelCode': _originatingChannelCode,
        'CheckpointType': _checkpointType,
        'ReferenceNumber': _referenceNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ChannelCode': serializeParam(
          _channelCode,
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
        'ReferenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static HeaderStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeaderStruct(
        channelCode: deserializeParam(
          data['ChannelCode'],
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
        referenceNumber: deserializeParam(
          data['ReferenceNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HeaderStruct &&
        channelCode == other.channelCode &&
        originatingChannelCode == other.originatingChannelCode &&
        checkpointType == other.checkpointType &&
        referenceNumber == other.referenceNumber;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [channelCode, originatingChannelCode, checkpointType, referenceNumber]);
}

HeaderStruct createHeaderStruct({
  String? channelCode,
  String? originatingChannelCode,
  String? checkpointType,
  String? referenceNumber,
}) =>
    HeaderStruct(
      channelCode: channelCode,
      originatingChannelCode: originatingChannelCode,
      checkpointType: checkpointType,
      referenceNumber: referenceNumber,
    );
