// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatusHistoryStruct extends BaseStruct {
  StatusHistoryStruct({
    String? id,
    String? fromStatus,
    String? toStatus,
    String? changedBy,
    String? changedByType,
    String? reason,
    String? createdAt,
  })  : _id = id,
        _fromStatus = fromStatus,
        _toStatus = toStatus,
        _changedBy = changedBy,
        _changedByType = changedByType,
        _reason = reason,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "fromStatus" field.
  String? _fromStatus;
  String get fromStatus => _fromStatus ?? '';
  set fromStatus(String? val) => _fromStatus = val;

  bool hasFromStatus() => _fromStatus != null;

  // "toStatus" field.
  String? _toStatus;
  String get toStatus => _toStatus ?? '';
  set toStatus(String? val) => _toStatus = val;

  bool hasToStatus() => _toStatus != null;

  // "changedBy" field.
  String? _changedBy;
  String get changedBy => _changedBy ?? '';
  set changedBy(String? val) => _changedBy = val;

  bool hasChangedBy() => _changedBy != null;

  // "changedByType" field.
  String? _changedByType;
  String get changedByType => _changedByType ?? '';
  set changedByType(String? val) => _changedByType = val;

  bool hasChangedByType() => _changedByType != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static StatusHistoryStruct fromMap(Map<String, dynamic> data) =>
      StatusHistoryStruct(
        id: data['id'] as String?,
        fromStatus: data['fromStatus'] as String?,
        toStatus: data['toStatus'] as String?,
        changedBy: data['changedBy'] as String?,
        changedByType: data['changedByType'] as String?,
        reason: data['reason'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static StatusHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? StatusHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fromStatus': _fromStatus,
        'toStatus': _toStatus,
        'changedBy': _changedBy,
        'changedByType': _changedByType,
        'reason': _reason,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'fromStatus': serializeParam(
          _fromStatus,
          ParamType.String,
        ),
        'toStatus': serializeParam(
          _toStatus,
          ParamType.String,
        ),
        'changedBy': serializeParam(
          _changedBy,
          ParamType.String,
        ),
        'changedByType': serializeParam(
          _changedByType,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static StatusHistoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatusHistoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        fromStatus: deserializeParam(
          data['fromStatus'],
          ParamType.String,
          false,
        ),
        toStatus: deserializeParam(
          data['toStatus'],
          ParamType.String,
          false,
        ),
        changedBy: deserializeParam(
          data['changedBy'],
          ParamType.String,
          false,
        ),
        changedByType: deserializeParam(
          data['changedByType'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
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
  String toString() => 'StatusHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatusHistoryStruct &&
        id == other.id &&
        fromStatus == other.fromStatus &&
        toStatus == other.toStatus &&
        changedBy == other.changedBy &&
        changedByType == other.changedByType &&
        reason == other.reason &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, fromStatus, toStatus, changedBy, changedByType, reason, createdAt]);
}

StatusHistoryStruct createStatusHistoryStruct({
  String? id,
  String? fromStatus,
  String? toStatus,
  String? changedBy,
  String? changedByType,
  String? reason,
  String? createdAt,
}) =>
    StatusHistoryStruct(
      id: id,
      fromStatus: fromStatus,
      toStatus: toStatus,
      changedBy: changedBy,
      changedByType: changedByType,
      reason: reason,
      createdAt: createdAt,
    );
