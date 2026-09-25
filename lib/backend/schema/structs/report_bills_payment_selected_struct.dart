// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportBillsPaymentSelectedStruct extends BaseStruct {
  ReportBillsPaymentSelectedStruct({
    String? selectedIssue,
    String? selectedTransferType,
    String? reportType,
  })  : _selectedIssue = selectedIssue,
        _selectedTransferType = selectedTransferType,
        _reportType = reportType;

  // "selectedIssue" field.
  String? _selectedIssue;
  String get selectedIssue => _selectedIssue ?? '';
  set selectedIssue(String? val) => _selectedIssue = val;

  bool hasSelectedIssue() => _selectedIssue != null;

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

  static ReportBillsPaymentSelectedStruct fromMap(Map<String, dynamic> data) =>
      ReportBillsPaymentSelectedStruct(
        selectedIssue: data['selectedIssue'] as String?,
        selectedTransferType: data['selectedTransferType'] as String?,
        reportType: data['reportType'] as String?,
      );

  static ReportBillsPaymentSelectedStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ReportBillsPaymentSelectedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedIssue': _selectedIssue,
        'selectedTransferType': _selectedTransferType,
        'reportType': _reportType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedIssue': serializeParam(
          _selectedIssue,
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

  static ReportBillsPaymentSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportBillsPaymentSelectedStruct(
        selectedIssue: deserializeParam(
          data['selectedIssue'],
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
  String toString() => 'ReportBillsPaymentSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportBillsPaymentSelectedStruct &&
        selectedIssue == other.selectedIssue &&
        selectedTransferType == other.selectedTransferType &&
        reportType == other.reportType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([selectedIssue, selectedTransferType, reportType]);
}

ReportBillsPaymentSelectedStruct createReportBillsPaymentSelectedStruct({
  String? selectedIssue,
  String? selectedTransferType,
  String? reportType,
}) =>
    ReportBillsPaymentSelectedStruct(
      selectedIssue: selectedIssue,
      selectedTransferType: selectedTransferType,
      reportType: reportType,
    );
