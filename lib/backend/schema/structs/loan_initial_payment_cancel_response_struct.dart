// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanInitialPaymentCancelResponseStruct extends BaseStruct {
  LoanInitialPaymentCancelResponseStruct({
    String? id,
    String? referenceNumber,
    String? status,
    String? cancelledAt,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _cancelledAt = cancelledAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "cancelledAt" field.
  String? _cancelledAt;
  String get cancelledAt => _cancelledAt ?? '';
  set cancelledAt(String? val) => _cancelledAt = val;

  bool hasCancelledAt() => _cancelledAt != null;

  static LoanInitialPaymentCancelResponseStruct fromMap(
          Map<String, dynamic> data) =>
      LoanInitialPaymentCancelResponseStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        cancelledAt: data['cancelledAt'] as String?,
      );

  static LoanInitialPaymentCancelResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? LoanInitialPaymentCancelResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'cancelledAt': _cancelledAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'cancelledAt': serializeParam(
          _cancelledAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanInitialPaymentCancelResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanInitialPaymentCancelResponseStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
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
        cancelledAt: deserializeParam(
          data['cancelledAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanInitialPaymentCancelResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanInitialPaymentCancelResponseStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        cancelledAt == other.cancelledAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, referenceNumber, status, cancelledAt]);
}

LoanInitialPaymentCancelResponseStruct
    createLoanInitialPaymentCancelResponseStruct({
  String? id,
  String? referenceNumber,
  String? status,
  String? cancelledAt,
}) =>
        LoanInitialPaymentCancelResponseStruct(
          id: id,
          referenceNumber: referenceNumber,
          status: status,
          cancelledAt: cancelledAt,
        );
