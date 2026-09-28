// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataSelectedInternetBankingProblemStruct extends BaseStruct {
  DataSelectedInternetBankingProblemStruct({
    String? selectedIssue,
    String? selectedConcern,
    String? selectedDevice,
    String? reportTypeValue,
  })  : _selectedIssue = selectedIssue,
        _selectedConcern = selectedConcern,
        _selectedDevice = selectedDevice,
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

  // "selectedDevice" field.
  String? _selectedDevice;
  String get selectedDevice => _selectedDevice ?? '';
  set selectedDevice(String? val) => _selectedDevice = val;

  bool hasSelectedDevice() => _selectedDevice != null;

  // "reportTypeValue" field.
  String? _reportTypeValue;
  String get reportTypeValue => _reportTypeValue ?? '';
  set reportTypeValue(String? val) => _reportTypeValue = val;

  bool hasReportTypeValue() => _reportTypeValue != null;

  static DataSelectedInternetBankingProblemStruct fromMap(
          Map<String, dynamic> data) =>
      DataSelectedInternetBankingProblemStruct(
        selectedIssue: data['selectedIssue'] as String?,
        selectedConcern: data['selectedConcern'] as String?,
        selectedDevice: data['selectedDevice'] as String?,
        reportTypeValue: data['reportTypeValue'] as String?,
      );

  static DataSelectedInternetBankingProblemStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DataSelectedInternetBankingProblemStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'selectedIssue': _selectedIssue,
        'selectedConcern': _selectedConcern,
        'selectedDevice': _selectedDevice,
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
        'selectedDevice': serializeParam(
          _selectedDevice,
          ParamType.String,
        ),
        'reportTypeValue': serializeParam(
          _reportTypeValue,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataSelectedInternetBankingProblemStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DataSelectedInternetBankingProblemStruct(
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
        selectedDevice: deserializeParam(
          data['selectedDevice'],
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
  String toString() => 'DataSelectedInternetBankingProblemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataSelectedInternetBankingProblemStruct &&
        selectedIssue == other.selectedIssue &&
        selectedConcern == other.selectedConcern &&
        selectedDevice == other.selectedDevice &&
        reportTypeValue == other.reportTypeValue;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([selectedIssue, selectedConcern, selectedDevice, reportTypeValue]);
}

DataSelectedInternetBankingProblemStruct
    createDataSelectedInternetBankingProblemStruct({
  String? selectedIssue,
  String? selectedConcern,
  String? selectedDevice,
  String? reportTypeValue,
}) =>
        DataSelectedInternetBankingProblemStruct(
          selectedIssue: selectedIssue,
          selectedConcern: selectedConcern,
          selectedDevice: selectedDevice,
          reportTypeValue: reportTypeValue,
        );
