// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportScamPhishingSelectedStruct extends BaseStruct {
  ReportScamPhishingSelectedStruct({
    String? selectedIssue,
    String? selectedContacted,
    String? selectedHappened,
    String? selectedInformation,
    String? reportType,
  })  : _selectedIssue = selectedIssue,
        _selectedContacted = selectedContacted,
        _selectedHappened = selectedHappened,
        _selectedInformation = selectedInformation,
        _reportType = reportType;

  // "selectedIssue" field.
  String? _selectedIssue;
  String get selectedIssue => _selectedIssue ?? '';
  set selectedIssue(String? val) => _selectedIssue = val;

  bool hasSelectedIssue() => _selectedIssue != null;

  // "selectedContacted" field.
  String? _selectedContacted;
  String get selectedContacted => _selectedContacted ?? '';
  set selectedContacted(String? val) => _selectedContacted = val;

  bool hasSelectedContacted() => _selectedContacted != null;

  // "selectedHappened" field.
  String? _selectedHappened;
  String get selectedHappened => _selectedHappened ?? '';
  set selectedHappened(String? val) => _selectedHappened = val;

  bool hasSelectedHappened() => _selectedHappened != null;

  // "selectedInformation" field.
  String? _selectedInformation;
  String get selectedInformation => _selectedInformation ?? '';
  set selectedInformation(String? val) => _selectedInformation = val;

  bool hasSelectedInformation() => _selectedInformation != null;

  // "reportType" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  set reportType(String? val) => _reportType = val;

  bool hasReportType() => _reportType != null;

  static ReportScamPhishingSelectedStruct fromMap(Map<String, dynamic> data) =>
      ReportScamPhishingSelectedStruct(
        selectedIssue: data['selectedIssue'] as String?,
        selectedContacted: data['selectedContacted'] as String?,
        selectedHappened: data['selectedHappened'] as String?,
        selectedInformation: data['selectedInformation'] as String?,
        reportType: data['reportType'] as String?,
      );

  static ReportScamPhishingSelectedStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ReportScamPhishingSelectedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedIssue': _selectedIssue,
        'selectedContacted': _selectedContacted,
        'selectedHappened': _selectedHappened,
        'selectedInformation': _selectedInformation,
        'reportType': _reportType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedIssue': serializeParam(
          _selectedIssue,
          ParamType.String,
        ),
        'selectedContacted': serializeParam(
          _selectedContacted,
          ParamType.String,
        ),
        'selectedHappened': serializeParam(
          _selectedHappened,
          ParamType.String,
        ),
        'selectedInformation': serializeParam(
          _selectedInformation,
          ParamType.String,
        ),
        'reportType': serializeParam(
          _reportType,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportScamPhishingSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportScamPhishingSelectedStruct(
        selectedIssue: deserializeParam(
          data['selectedIssue'],
          ParamType.String,
          false,
        ),
        selectedContacted: deserializeParam(
          data['selectedContacted'],
          ParamType.String,
          false,
        ),
        selectedHappened: deserializeParam(
          data['selectedHappened'],
          ParamType.String,
          false,
        ),
        selectedInformation: deserializeParam(
          data['selectedInformation'],
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
  String toString() => 'ReportScamPhishingSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportScamPhishingSelectedStruct &&
        selectedIssue == other.selectedIssue &&
        selectedContacted == other.selectedContacted &&
        selectedHappened == other.selectedHappened &&
        selectedInformation == other.selectedInformation &&
        reportType == other.reportType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        selectedIssue,
        selectedContacted,
        selectedHappened,
        selectedInformation,
        reportType
      ]);
}

ReportScamPhishingSelectedStruct createReportScamPhishingSelectedStruct({
  String? selectedIssue,
  String? selectedContacted,
  String? selectedHappened,
  String? selectedInformation,
  String? reportType,
}) =>
    ReportScamPhishingSelectedStruct(
      selectedIssue: selectedIssue,
      selectedContacted: selectedContacted,
      selectedHappened: selectedHappened,
      selectedInformation: selectedInformation,
      reportType: reportType,
    );
