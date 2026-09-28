// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDepositProblemSelectedStruct extends BaseStruct {
  ReportDepositProblemSelectedStruct({
    String? selectedIssue,
    String? reportType,
  })  : _selectedIssue = selectedIssue,
        _reportType = reportType;

  // "selectedIssue" field.
  String? _selectedIssue;
  String get selectedIssue => _selectedIssue ?? '';
  set selectedIssue(String? val) => _selectedIssue = val;

  bool hasSelectedIssue() => _selectedIssue != null;

  // "reportType" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  set reportType(String? val) => _reportType = val;

  bool hasReportType() => _reportType != null;

  static ReportDepositProblemSelectedStruct fromMap(
          Map<String, dynamic> data) =>
      ReportDepositProblemSelectedStruct(
        selectedIssue: data['selectedIssue'] as String?,
        reportType: data['reportType'] as String?,
      );

  static ReportDepositProblemSelectedStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ReportDepositProblemSelectedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedIssue': _selectedIssue,
        'reportType': _reportType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedIssue': serializeParam(
          _selectedIssue,
          ParamType.String,
        ),
        'reportType': serializeParam(
          _reportType,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportDepositProblemSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportDepositProblemSelectedStruct(
        selectedIssue: deserializeParam(
          data['selectedIssue'],
          ParamType.String,
          false,
        ),
        reportType: deserializeParam(
          data['reportType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportDepositProblemSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportDepositProblemSelectedStruct &&
        selectedIssue == other.selectedIssue &&
        reportType == other.reportType;
  }

  @override
  int get hashCode => const ListEquality().hash([selectedIssue, reportType]);
}

ReportDepositProblemSelectedStruct createReportDepositProblemSelectedStruct({
  String? selectedIssue,
  String? reportType,
}) =>
    ReportDepositProblemSelectedStruct(
      selectedIssue: selectedIssue,
      reportType: reportType,
    );
