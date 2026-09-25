// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageDetailsStruct extends BaseStruct {
  MessageDetailsStruct({
    String? statusMessage,
    String? otherInfo,
  })  : _statusMessage = statusMessage,
        _otherInfo = otherInfo;

  // "StatusMessage" field.
  String? _statusMessage;
  String get statusMessage => _statusMessage ?? '';
  set statusMessage(String? val) => _statusMessage = val;

  bool hasStatusMessage() => _statusMessage != null;

  // "OtherInfo" field.
  String? _otherInfo;
  String get otherInfo => _otherInfo ?? '';
  set otherInfo(String? val) => _otherInfo = val;

  bool hasOtherInfo() => _otherInfo != null;

  static MessageDetailsStruct fromMap(Map<String, dynamic> data) =>
      MessageDetailsStruct(
        statusMessage: data['StatusMessage'] as String?,
        otherInfo: data['OtherInfo'] as String?,
      );

  static MessageDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StatusMessage': _statusMessage,
        'OtherInfo': _otherInfo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'StatusMessage': serializeParam(
          _statusMessage,
          ParamType.String,
        ),
        'OtherInfo': serializeParam(
          _otherInfo,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessageDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageDetailsStruct(
        statusMessage: deserializeParam(
          data['StatusMessage'],
          ParamType.String,
          false,
        ),
        otherInfo: deserializeParam(
          data['OtherInfo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MessageDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageDetailsStruct &&
        statusMessage == other.statusMessage &&
        otherInfo == other.otherInfo;
  }

  @override
  int get hashCode => const ListEquality().hash([statusMessage, otherInfo]);
}

MessageDetailsStruct createMessageDetailsStruct({
  String? statusMessage,
  String? otherInfo,
}) =>
    MessageDetailsStruct(
      statusMessage: statusMessage,
      otherInfo: otherInfo,
    );
