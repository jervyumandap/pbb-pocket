// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportATMRelatedSelectedStruct extends BaseStruct {
  ReportATMRelatedSelectedStruct({
    String? selectedIssue,
    String? selectedConcern,
    String? selectedATMLocation,
    String? reportTypeValue,
  })  : _selectedIssue = selectedIssue,
        _selectedConcern = selectedConcern,
        _selectedATMLocation = selectedATMLocation,
        _reportTypeValue = reportTypeValue;

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

  // "selectedATMLocation" field.
  String? _selectedATMLocation;
  String get selectedATMLocation => _selectedATMLocation ?? '';
  set selectedATMLocation(String? val) => _selectedATMLocation = val;

  bool hasSelectedATMLocation() => _selectedATMLocation != null;

  // "reportTypeValue" field.
  String? _reportTypeValue;
  String get reportTypeValue => _reportTypeValue ?? '';
  set reportTypeValue(String? val) => _reportTypeValue = val;

  bool hasReportTypeValue() => _reportTypeValue != null;

  static ReportATMRelatedSelectedStruct fromMap(Map<String, dynamic> data) =>
      ReportATMRelatedSelectedStruct(
        selectedIssue: data['selectedIssue'] as String?,
        selectedConcern: data['selectedConcern'] as String?,
        selectedATMLocation: data['selectedATMLocation'] as String?,
        reportTypeValue: data['reportTypeValue'] as String?,
      );

  static ReportATMRelatedSelectedStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ReportATMRelatedSelectedStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'selectedIssue': _selectedIssue,
        'selectedConcern': _selectedConcern,
        'selectedATMLocation': _selectedATMLocation,
        'reportTypeValue': _reportTypeValue,
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
        'selectedATMLocation': serializeParam(
          _selectedATMLocation,
          ParamType.String,
        ),
        'reportTypeValue': serializeParam(
          _reportTypeValue,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportATMRelatedSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportATMRelatedSelectedStruct(
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
        selectedATMLocation: deserializeParam(
          data['selectedATMLocation'],
          ParamType.String,
          false,
        ),
        reportTypeValue: deserializeParam(
          data['reportTypeValue'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportATMRelatedSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportATMRelatedSelectedStruct &&
        selectedIssue == other.selectedIssue &&
        selectedConcern == other.selectedConcern &&
        selectedATMLocation == other.selectedATMLocation &&
        reportTypeValue == other.reportTypeValue;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [selectedIssue, selectedConcern, selectedATMLocation, reportTypeValue]);
}

ReportATMRelatedSelectedStruct createReportATMRelatedSelectedStruct({
  String? selectedIssue,
  String? selectedConcern,
  String? selectedATMLocation,
  String? reportTypeValue,
}) =>
    ReportATMRelatedSelectedStruct(
      selectedIssue: selectedIssue,
      selectedConcern: selectedConcern,
      selectedATMLocation: selectedATMLocation,
      reportTypeValue: reportTypeValue,
    );
