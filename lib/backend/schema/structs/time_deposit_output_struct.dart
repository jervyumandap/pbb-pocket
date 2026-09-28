// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeDepositOutputStruct extends BaseStruct {
  TimeDepositOutputStruct({
    List<TimeDepositsStruct>? timeDeposits,
    String? retrievedAt,
  })  : _timeDeposits = timeDeposits,
        _retrievedAt = retrievedAt;

  // "timeDeposits" field.
  List<TimeDepositsStruct>? _timeDeposits;
  List<TimeDepositsStruct> get timeDeposits => _timeDeposits ?? const [];
  set timeDeposits(List<TimeDepositsStruct>? val) => _timeDeposits = val;

  void updateTimeDeposits(Function(List<TimeDepositsStruct>) updateFn) {
    updateFn(_timeDeposits ??= []);
  }

  bool hasTimeDeposits() => _timeDeposits != null;

  // "retrievedAt" field.
  String? _retrievedAt;
  String get retrievedAt => _retrievedAt ?? '';
  set retrievedAt(String? val) => _retrievedAt = val;

  bool hasRetrievedAt() => _retrievedAt != null;

  static TimeDepositOutputStruct fromMap(Map<String, dynamic> data) =>
      TimeDepositOutputStruct(
        timeDeposits: getStructList(
          data['timeDeposits'],
          TimeDepositsStruct.fromMap,
        ),
        retrievedAt: data['retrievedAt'] as String?,
      );

  static TimeDepositOutputStruct? maybeFromMap(dynamic data) => data is Map
      ? TimeDepositOutputStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'timeDeposits': _timeDeposits?.map((e) => e.toMap()).toList(),
        'retrievedAt': _retrievedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'timeDeposits': serializeParam(
          _timeDeposits,
          ParamType.DataStruct,
          isList: true,
        ),
        'retrievedAt': serializeParam(
          _retrievedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static TimeDepositOutputStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TimeDepositOutputStruct(
        timeDeposits: deserializeStructParam<TimeDepositsStruct>(
          data['timeDeposits'],
          ParamType.DataStruct,
          true,
          structBuilder: TimeDepositsStruct.fromSerializableMap,
        ),
        retrievedAt: deserializeParam(
          data['retrievedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TimeDepositOutputStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TimeDepositOutputStruct &&
        listEquality.equals(timeDeposits, other.timeDeposits) &&
        retrievedAt == other.retrievedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([timeDeposits, retrievedAt]);
}

TimeDepositOutputStruct createTimeDepositOutputStruct({
  String? retrievedAt,
}) =>
    TimeDepositOutputStruct(
      retrievedAt: retrievedAt,
    );
