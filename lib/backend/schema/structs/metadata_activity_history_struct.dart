// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetadataActivityHistoryStruct extends BaseStruct {
  MetadataActivityHistoryStruct({
    String? action,
    String? signingMethod,
    String? targetDeviceId,
    String? signingDeviceId,
    String? targetDeviceName,
    String? targetDeviceEntityId,
  })  : _action = action,
        _signingMethod = signingMethod,
        _targetDeviceId = targetDeviceId,
        _signingDeviceId = signingDeviceId,
        _targetDeviceName = targetDeviceName,
        _targetDeviceEntityId = targetDeviceEntityId;

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  set action(String? val) => _action = val;

  bool hasAction() => _action != null;

  // "signingMethod" field.
  String? _signingMethod;
  String get signingMethod => _signingMethod ?? '';
  set signingMethod(String? val) => _signingMethod = val;

  bool hasSigningMethod() => _signingMethod != null;

  // "targetDeviceId" field.
  String? _targetDeviceId;
  String get targetDeviceId => _targetDeviceId ?? '';
  set targetDeviceId(String? val) => _targetDeviceId = val;

  bool hasTargetDeviceId() => _targetDeviceId != null;

  // "signingDeviceId" field.
  String? _signingDeviceId;
  String get signingDeviceId => _signingDeviceId ?? '';
  set signingDeviceId(String? val) => _signingDeviceId = val;

  bool hasSigningDeviceId() => _signingDeviceId != null;

  // "targetDeviceName" field.
  String? _targetDeviceName;
  String get targetDeviceName => _targetDeviceName ?? '';
  set targetDeviceName(String? val) => _targetDeviceName = val;

  bool hasTargetDeviceName() => _targetDeviceName != null;

  // "targetDeviceEntityId" field.
  String? _targetDeviceEntityId;
  String get targetDeviceEntityId => _targetDeviceEntityId ?? '';
  set targetDeviceEntityId(String? val) => _targetDeviceEntityId = val;

  bool hasTargetDeviceEntityId() => _targetDeviceEntityId != null;

  static MetadataActivityHistoryStruct fromMap(Map<String, dynamic> data) =>
      MetadataActivityHistoryStruct(
        action: data['action'] as String?,
        signingMethod: data['signingMethod'] as String?,
        targetDeviceId: data['targetDeviceId'] as String?,
        signingDeviceId: data['signingDeviceId'] as String?,
        targetDeviceName: data['targetDeviceName'] as String?,
        targetDeviceEntityId: data['targetDeviceEntityId'] as String?,
      );

  static MetadataActivityHistoryStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? MetadataActivityHistoryStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'action': _action,
        'signingMethod': _signingMethod,
        'targetDeviceId': _targetDeviceId,
        'signingDeviceId': _signingDeviceId,
        'targetDeviceName': _targetDeviceName,
        'targetDeviceEntityId': _targetDeviceEntityId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'action': serializeParam(
          _action,
          ParamType.String,
        ),
        'signingMethod': serializeParam(
          _signingMethod,
          ParamType.String,
        ),
        'targetDeviceId': serializeParam(
          _targetDeviceId,
          ParamType.String,
        ),
        'signingDeviceId': serializeParam(
          _signingDeviceId,
          ParamType.String,
        ),
        'targetDeviceName': serializeParam(
          _targetDeviceName,
          ParamType.String,
        ),
        'targetDeviceEntityId': serializeParam(
          _targetDeviceEntityId,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetadataActivityHistoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MetadataActivityHistoryStruct(
        action: deserializeParam(
          data['action'],
          ParamType.String,
          false,
        ),
        signingMethod: deserializeParam(
          data['signingMethod'],
          ParamType.String,
          false,
        ),
        targetDeviceId: deserializeParam(
          data['targetDeviceId'],
          ParamType.String,
          false,
        ),
        signingDeviceId: deserializeParam(
          data['signingDeviceId'],
          ParamType.String,
          false,
        ),
        targetDeviceName: deserializeParam(
          data['targetDeviceName'],
          ParamType.String,
          false,
        ),
        targetDeviceEntityId: deserializeParam(
          data['targetDeviceEntityId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MetadataActivityHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataActivityHistoryStruct &&
        action == other.action &&
        signingMethod == other.signingMethod &&
        targetDeviceId == other.targetDeviceId &&
        signingDeviceId == other.signingDeviceId &&
        targetDeviceName == other.targetDeviceName &&
        targetDeviceEntityId == other.targetDeviceEntityId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        action,
        signingMethod,
        targetDeviceId,
        signingDeviceId,
        targetDeviceName,
        targetDeviceEntityId
      ]);
}

MetadataActivityHistoryStruct createMetadataActivityHistoryStruct({
  String? action,
  String? signingMethod,
  String? targetDeviceId,
  String? signingDeviceId,
  String? targetDeviceName,
  String? targetDeviceEntityId,
}) =>
    MetadataActivityHistoryStruct(
      action: action,
      signingMethod: signingMethod,
      targetDeviceId: targetDeviceId,
      signingDeviceId: signingDeviceId,
      targetDeviceName: targetDeviceName,
      targetDeviceEntityId: targetDeviceEntityId,
    );
