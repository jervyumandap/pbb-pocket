// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrustFundResponseSuccessStruct extends BaseStruct {
  TrustFundResponseSuccessStruct({
    String? referenceNumber,
    String? status,
    String? dateApplied,
  })  : _referenceNumber = referenceNumber,
        _status = status,
        _dateApplied = dateApplied;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "dateApplied" field.
  String? _dateApplied;
  String get dateApplied => _dateApplied ?? '';
  set dateApplied(String? val) => _dateApplied = val;

  bool hasDateApplied() => _dateApplied != null;

  static TrustFundResponseSuccessStruct fromMap(Map<String, dynamic> data) =>
      TrustFundResponseSuccessStruct(
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        dateApplied: data['dateApplied'] as String?,
      );

  static TrustFundResponseSuccessStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TrustFundResponseSuccessStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'referenceNumber': _referenceNumber,
        'status': _status,
        'dateApplied': _dateApplied,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'dateApplied': serializeParam(
          _dateApplied,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrustFundResponseSuccessStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrustFundResponseSuccessStruct(
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        dateApplied: deserializeParam(
          data['dateApplied'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrustFundResponseSuccessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrustFundResponseSuccessStruct &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        dateApplied == other.dateApplied;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([referenceNumber, status, dateApplied]);
}

TrustFundResponseSuccessStruct createTrustFundResponseSuccessStruct({
  String? referenceNumber,
  String? status,
  String? dateApplied,
}) =>
    TrustFundResponseSuccessStruct(
      referenceNumber: referenceNumber,
      status: status,
      dateApplied: dateApplied,
    );
