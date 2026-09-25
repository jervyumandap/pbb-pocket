// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportReferenceNumberStruct extends BaseStruct {
  ReportReferenceNumberStruct({
    String? referenceNumber,
  }) : _referenceNumber = referenceNumber;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  static ReportReferenceNumberStruct fromMap(Map<String, dynamic> data) =>
      ReportReferenceNumberStruct(
        referenceNumber: data['referenceNumber'] as String?,
      );

  static ReportReferenceNumberStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportReferenceNumberStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'referenceNumber': _referenceNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportReferenceNumberStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportReferenceNumberStruct(
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportReferenceNumberStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportReferenceNumberStruct &&
        referenceNumber == other.referenceNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([referenceNumber]);
}

ReportReferenceNumberStruct createReportReferenceNumberStruct({
  String? referenceNumber,
}) =>
    ReportReferenceNumberStruct(
      referenceNumber: referenceNumber,
    );
