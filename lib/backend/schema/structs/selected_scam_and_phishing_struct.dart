// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedScamAndPhishingStruct extends BaseStruct {
  SelectedScamAndPhishingStruct({
    String? issueSelected,
    String? contactedSelected,
    String? reportTypeSelected,
    String? happenedSelected,
    String? informationSelected,
  })  : _issueSelected = issueSelected,
        _contactedSelected = contactedSelected,
        _reportTypeSelected = reportTypeSelected,
        _happenedSelected = happenedSelected,
        _informationSelected = informationSelected;

  // "issueSelected" field.
  String? _issueSelected;
  String get issueSelected => _issueSelected ?? '';
  set issueSelected(String? val) => _issueSelected = val;

  bool hasIssueSelected() => _issueSelected != null;

  // "contactedSelected" field.
  String? _contactedSelected;
  String get contactedSelected => _contactedSelected ?? '';
  set contactedSelected(String? val) => _contactedSelected = val;

  bool hasContactedSelected() => _contactedSelected != null;

  // "reportTypeSelected" field.
  String? _reportTypeSelected;
  String get reportTypeSelected => _reportTypeSelected ?? '';
  set reportTypeSelected(String? val) => _reportTypeSelected = val;

  bool hasReportTypeSelected() => _reportTypeSelected != null;

  // "happenedSelected" field.
  String? _happenedSelected;
  String get happenedSelected => _happenedSelected ?? '';
  set happenedSelected(String? val) => _happenedSelected = val;

  bool hasHappenedSelected() => _happenedSelected != null;

  // "informationSelected" field.
  String? _informationSelected;
  String get informationSelected => _informationSelected ?? '';
  set informationSelected(String? val) => _informationSelected = val;

  bool hasInformationSelected() => _informationSelected != null;

  static SelectedScamAndPhishingStruct fromMap(Map<String, dynamic> data) =>
      SelectedScamAndPhishingStruct(
        issueSelected: data['issueSelected'] as String?,
        contactedSelected: data['contactedSelected'] as String?,
        reportTypeSelected: data['reportTypeSelected'] as String?,
        happenedSelected: data['happenedSelected'] as String?,
        informationSelected: data['informationSelected'] as String?,
      );

  static SelectedScamAndPhishingStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SelectedScamAndPhishingStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'issueSelected': _issueSelected,
        'contactedSelected': _contactedSelected,
        'reportTypeSelected': _reportTypeSelected,
        'happenedSelected': _happenedSelected,
        'informationSelected': _informationSelected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'issueSelected': serializeParam(
          _issueSelected,
          ParamType.String,
        ),
        'contactedSelected': serializeParam(
          _contactedSelected,
          ParamType.String,
        ),
        'reportTypeSelected': serializeParam(
          _reportTypeSelected,
          ParamType.String,
        ),
        'happenedSelected': serializeParam(
          _happenedSelected,
          ParamType.String,
        ),
        'informationSelected': serializeParam(
          _informationSelected,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelectedScamAndPhishingStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SelectedScamAndPhishingStruct(
        issueSelected: deserializeParam(
          data['issueSelected'],
          ParamType.String,
          false,
        ),
        contactedSelected: deserializeParam(
          data['contactedSelected'],
          ParamType.String,
          false,
        ),
        reportTypeSelected: deserializeParam(
          data['reportTypeSelected'],
          ParamType.String,
          false,
        ),
        happenedSelected: deserializeParam(
          data['happenedSelected'],
          ParamType.String,
          false,
        ),
        informationSelected: deserializeParam(
          data['informationSelected'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelectedScamAndPhishingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedScamAndPhishingStruct &&
        issueSelected == other.issueSelected &&
        contactedSelected == other.contactedSelected &&
        reportTypeSelected == other.reportTypeSelected &&
        happenedSelected == other.happenedSelected &&
        informationSelected == other.informationSelected;
  }

  @override
  int get hashCode => const ListEquality().hash([
        issueSelected,
        contactedSelected,
        reportTypeSelected,
        happenedSelected,
        informationSelected
      ]);
}

SelectedScamAndPhishingStruct createSelectedScamAndPhishingStruct({
  String? issueSelected,
  String? contactedSelected,
  String? reportTypeSelected,
  String? happenedSelected,
  String? informationSelected,
}) =>
    SelectedScamAndPhishingStruct(
      issueSelected: issueSelected,
      contactedSelected: contactedSelected,
      reportTypeSelected: reportTypeSelected,
      happenedSelected: happenedSelected,
      informationSelected: informationSelected,
    );
