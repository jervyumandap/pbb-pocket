// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportFundTransferProblemSelectedStruct extends BaseStruct {
  ReportFundTransferProblemSelectedStruct({
    String? selectedIssue,
    String? selectedConcern,
    String? selectedTransferType,
    String? reportType,
  })  : _selectedIssue = selectedIssue,
        _selectedConcern = selectedConcern,
        _selectedTransferType = selectedTransferType,
        _reportType = reportType;

  // "selectedIssue" field.
  String? _selectedIssue;
  String get selectedIssue => _selectedIssue ?? '';
  set selectedIssue(String? val) => _selectedIssue = val;

  bool hasSelectedIssue() => _selectedIssue != null;

  // "selectedConcern" field.
  String? _selectedConcern;
  String get selectedConcern => _selectedConcern ?? '';
  set selectedConcern(String? val) => _selectedConcern = val;

  bool hasSelectedConcern() => _selectedConcern != null;

  // "selectedTransferType" field.
  String? _selectedTransferType;
  String get selectedTransferType => _selectedTransferType ?? '';
  set selectedTransferType(String? val) => _selectedTransferType = val;

  bool hasSelectedTransferType() => _selectedTransferType != null;

  // "reportType" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  set reportType(String? val) => _reportType = val;

  bool hasReportType() => _reportType != null;

  static ReportFundTransferProblemSelectedStruct fromMap(
          Map<String, dynamic> data) =>
      ReportFundTransferProblemSelectedStruct(
        selectedIssue: data['selectedIssue'] as String?,
        selectedConcern: data['selectedConcern'] as String?,
        selectedTransferType: data['selectedTransferType'] as String?,
        reportType: data['reportType'] as String?,
      );

  static ReportFundTransferProblemSelectedStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ReportFundTransferProblemSelectedStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'selectedIssue': _selectedIssue,
        'selectedConcern': _selectedConcern,
        'selectedTransferType': _selectedTransferType,
        'reportType': _reportType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedIssue': serializeParam(
          _selectedIssue,
          ParamType.String,
        ),
        'selectedConcern': serializeParam(
          _selectedConcern,
          ParamType.String,
        ),
        'selectedTransferType': serializeParam(
          _selectedTransferType,
          ParamType.String,
        ),
        'reportType': serializeParam(
          _reportType,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportFundTransferProblemSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportFundTransferProblemSelectedStruct(
        selectedIssue: deserializeParam(
          data['selectedIssue'],
          ParamType.String,
          false,
        ),
        selectedConcern: deserializeParam(
          data['selectedConcern'],
          ParamType.String,
          false,
        ),
        selectedTransferType: deserializeParam(
          data['selectedTransferType'],
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
  String toString() => 'ReportFundTransferProblemSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportFundTransferProblemSelectedStruct &&
        selectedIssue == other.selectedIssue &&
        selectedConcern == other.selectedConcern &&
        selectedTransferType == other.selectedTransferType &&
        reportType == other.reportType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([selectedIssue, selectedConcern, selectedTransferType, reportType]);
}

ReportFundTransferProblemSelectedStruct
    createReportFundTransferProblemSelectedStruct({
  String? selectedIssue,
  String? selectedConcern,
  String? selectedTransferType,
  String? reportType,
}) =>
        ReportFundTransferProblemSelectedStruct(
          selectedIssue: selectedIssue,
          selectedConcern: selectedConcern,
          selectedTransferType: selectedTransferType,
          reportType: reportType,
        );
