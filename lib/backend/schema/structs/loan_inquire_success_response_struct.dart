// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanInquireSuccessResponseStruct extends BaseStruct {
  LoanInquireSuccessResponseStruct({
    String? referenceNumber,
    String? loanType,
    String? dateApplied,
  })  : _referenceNumber = referenceNumber,
        _loanType = loanType,
        _dateApplied = dateApplied;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "loanType" field.
  String? _loanType;
  String get loanType => _loanType ?? '';
  set loanType(String? val) => _loanType = val;

  bool hasLoanType() => _loanType != null;

  // "dateApplied" field.
  String? _dateApplied;
  String get dateApplied => _dateApplied ?? '';
  set dateApplied(String? val) => _dateApplied = val;

  bool hasDateApplied() => _dateApplied != null;

  static LoanInquireSuccessResponseStruct fromMap(Map<String, dynamic> data) =>
      LoanInquireSuccessResponseStruct(
        referenceNumber: data['referenceNumber'] as String?,
        loanType: data['loanType'] as String?,
        dateApplied: data['dateApplied'] as String?,
      );

  static LoanInquireSuccessResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? LoanInquireSuccessResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'referenceNumber': _referenceNumber,
        'loanType': _loanType,
        'dateApplied': _dateApplied,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'loanType': serializeParam(
          _loanType,
          ParamType.String,
        ),
        'dateApplied': serializeParam(
          _dateApplied,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanInquireSuccessResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanInquireSuccessResponseStruct(
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        loanType: deserializeParam(
          data['loanType'],
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
  String toString() => 'LoanInquireSuccessResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanInquireSuccessResponseStruct &&
        referenceNumber == other.referenceNumber &&
        loanType == other.loanType &&
        dateApplied == other.dateApplied;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([referenceNumber, loanType, dateApplied]);
}

LoanInquireSuccessResponseStruct createLoanInquireSuccessResponseStruct({
  String? referenceNumber,
  String? loanType,
  String? dateApplied,
}) =>
    LoanInquireSuccessResponseStruct(
      referenceNumber: referenceNumber,
      loanType: loanType,
      dateApplied: dateApplied,
    );
