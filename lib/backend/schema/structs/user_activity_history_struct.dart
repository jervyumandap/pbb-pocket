// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserActivityHistoryStruct extends BaseStruct {
  UserActivityHistoryStruct({
    String? activityType,
    String? description,
    String? dateTimePerformed,
  })  : _activityType = activityType,
        _description = description,
        _dateTimePerformed = dateTimePerformed;

  // "ActivityType" field.
  String? _activityType;
  String get activityType => _activityType ?? '';
  set activityType(String? val) => _activityType = val;

  bool hasActivityType() => _activityType != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "DateTimePerformed" field.
  String? _dateTimePerformed;
  String get dateTimePerformed => _dateTimePerformed ?? '';
  set dateTimePerformed(String? val) => _dateTimePerformed = val;

  bool hasDateTimePerformed() => _dateTimePerformed != null;

  static UserActivityHistoryStruct fromMap(Map<String, dynamic> data) =>
      UserActivityHistoryStruct(
        activityType: data['ActivityType'] as String?,
        description: data['Description'] as String?,
        dateTimePerformed: data['DateTimePerformed'] as String?,
      );

  static UserActivityHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? UserActivityHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ActivityType': _activityType,
        'Description': _description,
        'DateTimePerformed': _dateTimePerformed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ActivityType': serializeParam(
          _activityType,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'DateTimePerformed': serializeParam(
          _dateTimePerformed,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserActivityHistoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserActivityHistoryStruct(
        activityType: deserializeParam(
          data['ActivityType'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        dateTimePerformed: deserializeParam(
          data['DateTimePerformed'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserActivityHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserActivityHistoryStruct &&
        activityType == other.activityType &&
        description == other.description &&
        dateTimePerformed == other.dateTimePerformed;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([activityType, description, dateTimePerformed]);
}

UserActivityHistoryStruct createUserActivityHistoryStruct({
  String? activityType,
  String? description,
  String? dateTimePerformed,
}) =>
    UserActivityHistoryStruct(
      activityType: activityType,
      description: description,
      dateTimePerformed: dateTimePerformed,
    );
