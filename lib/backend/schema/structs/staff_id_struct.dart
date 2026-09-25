// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StaffIdStruct extends BaseStruct {
  StaffIdStruct({
    String? staffId,
  }) : _staffId = staffId;

  // "staffId" field.
  String? _staffId;
  String get staffId => _staffId ?? '';
  set staffId(String? val) => _staffId = val;

  bool hasStaffId() => _staffId != null;

  static StaffIdStruct fromMap(Map<String, dynamic> data) => StaffIdStruct(
        staffId: data['staffId'] as String?,
      );

  static StaffIdStruct? maybeFromMap(dynamic data) =>
      data is Map ? StaffIdStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'staffId': _staffId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'staffId': serializeParam(
          _staffId,
          ParamType.String,
        ),
      }.withoutNulls;

  static StaffIdStruct fromSerializableMap(Map<String, dynamic> data) =>
      StaffIdStruct(
        staffId: deserializeParam(
          data['staffId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StaffIdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StaffIdStruct && staffId == other.staffId;
  }

  @override
  int get hashCode => const ListEquality().hash([staffId]);
}

StaffIdStruct createStaffIdStruct({
  String? staffId,
}) =>
    StaffIdStruct(
      staffId: staffId,
    );
