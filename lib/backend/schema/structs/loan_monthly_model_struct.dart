// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanMonthlyModelStruct extends BaseStruct {
  LoanMonthlyModelStruct({
    int? monthsPaid,
    int? totalMonths,
    bool? isOverDue,
  })  : _monthsPaid = monthsPaid,
        _totalMonths = totalMonths,
        _isOverDue = isOverDue;

  // "monthsPaid" field.
  int? _monthsPaid;
  int get monthsPaid => _monthsPaid ?? 0;
  set monthsPaid(int? val) => _monthsPaid = val;

  void incrementMonthsPaid(int amount) => monthsPaid = monthsPaid + amount;

  bool hasMonthsPaid() => _monthsPaid != null;

  // "totalMonths" field.
  int? _totalMonths;
  int get totalMonths => _totalMonths ?? 0;
  set totalMonths(int? val) => _totalMonths = val;

  void incrementTotalMonths(int amount) => totalMonths = totalMonths + amount;

  bool hasTotalMonths() => _totalMonths != null;

  // "isOverDue" field.
  bool? _isOverDue;
  bool get isOverDue => _isOverDue ?? false;
  set isOverDue(bool? val) => _isOverDue = val;

  bool hasIsOverDue() => _isOverDue != null;

  static LoanMonthlyModelStruct fromMap(Map<String, dynamic> data) =>
      LoanMonthlyModelStruct(
        monthsPaid: castToType<int>(data['monthsPaid']),
        totalMonths: castToType<int>(data['totalMonths']),
        isOverDue: data['isOverDue'] as bool?,
      );

  static LoanMonthlyModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LoanMonthlyModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'monthsPaid': _monthsPaid,
        'totalMonths': _totalMonths,
        'isOverDue': _isOverDue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'monthsPaid': serializeParam(
          _monthsPaid,
          ParamType.int,
        ),
        'totalMonths': serializeParam(
          _totalMonths,
          ParamType.int,
        ),
        'isOverDue': serializeParam(
          _isOverDue,
          ParamType.bool,
        ),
      }.withoutNulls;

  static LoanMonthlyModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanMonthlyModelStruct(
        monthsPaid: deserializeParam(
          data['monthsPaid'],
          ParamType.int,
          false,
        ),
        totalMonths: deserializeParam(
          data['totalMonths'],
          ParamType.int,
          false,
        ),
        isOverDue: deserializeParam(
          data['isOverDue'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LoanMonthlyModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanMonthlyModelStruct &&
        monthsPaid == other.monthsPaid &&
        totalMonths == other.totalMonths &&
        isOverDue == other.isOverDue;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([monthsPaid, totalMonths, isOverDue]);
}

LoanMonthlyModelStruct createLoanMonthlyModelStruct({
  int? monthsPaid,
  int? totalMonths,
  bool? isOverDue,
}) =>
    LoanMonthlyModelStruct(
      monthsPaid: monthsPaid,
      totalMonths: totalMonths,
      isOverDue: isOverDue,
    );
