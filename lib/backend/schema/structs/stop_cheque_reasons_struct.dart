// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StopChequeReasonsStruct extends BaseStruct {
  StopChequeReasonsStruct({
    String? reason,
  }) : _reason = reason;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  static StopChequeReasonsStruct fromMap(Map<String, dynamic> data) =>
      StopChequeReasonsStruct(
        reason: data['reason'] as String?,
      );

  static StopChequeReasonsStruct? maybeFromMap(dynamic data) => data is Map
      ? StopChequeReasonsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reason': _reason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
      }.withoutNulls;

  static StopChequeReasonsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StopChequeReasonsStruct(
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StopChequeReasonsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StopChequeReasonsStruct && reason == other.reason;
  }

  @override
  int get hashCode => const ListEquality().hash([reason]);
}

StopChequeReasonsStruct createStopChequeReasonsStruct({
  String? reason,
}) =>
    StopChequeReasonsStruct(
      reason: reason,
    );
