// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuspiciousReportReferenceNumberStruct extends BaseStruct {
  SuspiciousReportReferenceNumberStruct({
    String? referenceNumber,
  }) : _referenceNumber = referenceNumber;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  static SuspiciousReportReferenceNumberStruct fromMap(
          Map<String, dynamic> data) =>
      SuspiciousReportReferenceNumberStruct(
        referenceNumber: data['referenceNumber'] as String?,
      );

  static SuspiciousReportReferenceNumberStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? SuspiciousReportReferenceNumberStruct.fromMap(
              data.cast<String, dynamic>())
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

  static SuspiciousReportReferenceNumberStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SuspiciousReportReferenceNumberStruct(
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SuspiciousReportReferenceNumberStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SuspiciousReportReferenceNumberStruct &&
        referenceNumber == other.referenceNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([referenceNumber]);
}

SuspiciousReportReferenceNumberStruct
    createSuspiciousReportReferenceNumberStruct({
  String? referenceNumber,
}) =>
        SuspiciousReportReferenceNumberStruct(
          referenceNumber: referenceNumber,
        );
