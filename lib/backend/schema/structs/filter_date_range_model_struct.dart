// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterDateRangeModelStruct extends BaseStruct {
  FilterDateRangeModelStruct({
    DateTime? fromDate,
    DateTime? toDate,
  })  : _fromDate = fromDate,
        _toDate = toDate;

  // "fromDate" field.
  DateTime? _fromDate;
  DateTime? get fromDate => _fromDate;
  set fromDate(DateTime? val) => _fromDate = val;

  bool hasFromDate() => _fromDate != null;

  // "toDate" field.
  DateTime? _toDate;
  DateTime? get toDate => _toDate;
  set toDate(DateTime? val) => _toDate = val;

  bool hasToDate() => _toDate != null;

  static FilterDateRangeModelStruct fromMap(Map<String, dynamic> data) =>
      FilterDateRangeModelStruct(
        fromDate: data['fromDate'] as DateTime?,
        toDate: data['toDate'] as DateTime?,
      );

  static FilterDateRangeModelStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterDateRangeModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fromDate': _fromDate,
        'toDate': _toDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fromDate': serializeParam(
          _fromDate,
          ParamType.DateTime,
        ),
        'toDate': serializeParam(
          _toDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static FilterDateRangeModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FilterDateRangeModelStruct(
        fromDate: deserializeParam(
          data['fromDate'],
          ParamType.DateTime,
          false,
        ),
        toDate: deserializeParam(
          data['toDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'FilterDateRangeModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterDateRangeModelStruct &&
        fromDate == other.fromDate &&
        toDate == other.toDate;
  }

  @override
  int get hashCode => const ListEquality().hash([fromDate, toDate]);
}

FilterDateRangeModelStruct createFilterDateRangeModelStruct({
  DateTime? fromDate,
  DateTime? toDate,
}) =>
    FilterDateRangeModelStruct(
      fromDate: fromDate,
      toDate: toDate,
    );
