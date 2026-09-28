// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeConfirmSigningResponseStruct extends BaseStruct {
  ChequeConfirmSigningResponseStruct({
    String? id,
    String? referenceNumber,
    String? accountNumber,
    String? chequeNumber,
    String? reason,
    String? status,
    String? requestedAt,
    String? confirmedAt,
    String? cbsMessage,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _accountNumber = accountNumber,
        _chequeNumber = chequeNumber,
        _reason = reason,
        _status = status,
        _requestedAt = requestedAt,
        _confirmedAt = confirmedAt,
        _cbsMessage = cbsMessage;

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

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "chequeNumber" field.
  String? _chequeNumber;
  String get chequeNumber => _chequeNumber ?? '';
  set chequeNumber(String? val) => _chequeNumber = val;

  bool hasChequeNumber() => _chequeNumber != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "requestedAt" field.
  String? _requestedAt;
  String get requestedAt => _requestedAt ?? '';
  set requestedAt(String? val) => _requestedAt = val;

  bool hasRequestedAt() => _requestedAt != null;

  // "confirmedAt" field.
  String? _confirmedAt;
  String get confirmedAt => _confirmedAt ?? '';
  set confirmedAt(String? val) => _confirmedAt = val;

  bool hasConfirmedAt() => _confirmedAt != null;

  // "cbsMessage" field.
  String? _cbsMessage;
  String get cbsMessage => _cbsMessage ?? '';
  set cbsMessage(String? val) => _cbsMessage = val;

  bool hasCbsMessage() => _cbsMessage != null;

  static ChequeConfirmSigningResponseStruct fromMap(
          Map<String, dynamic> data) =>
      ChequeConfirmSigningResponseStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        accountNumber: data['accountNumber'] as String?,
        chequeNumber: data['chequeNumber'] as String?,
        reason: data['reason'] as String?,
        status: data['status'] as String?,
        requestedAt: data['requestedAt'] as String?,
        confirmedAt: data['confirmedAt'] as String?,
        cbsMessage: data['cbsMessage'] as String?,
      );

  static ChequeConfirmSigningResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ChequeConfirmSigningResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'accountNumber': _accountNumber,
        'chequeNumber': _chequeNumber,
        'reason': _reason,
        'status': _status,
        'requestedAt': _requestedAt,
        'confirmedAt': _confirmedAt,
        'cbsMessage': _cbsMessage,
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
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'chequeNumber': serializeParam(
          _chequeNumber,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'requestedAt': serializeParam(
          _requestedAt,
          ParamType.String,
        ),
        'confirmedAt': serializeParam(
          _confirmedAt,
          ParamType.String,
        ),
        'cbsMessage': serializeParam(
          _cbsMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeConfirmSigningResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequeConfirmSigningResponseStruct(
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
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        chequeNumber: deserializeParam(
          data['chequeNumber'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        requestedAt: deserializeParam(
          data['requestedAt'],
          ParamType.String,
          false,
        ),
        confirmedAt: deserializeParam(
          data['confirmedAt'],
          ParamType.String,
          false,
        ),
        cbsMessage: deserializeParam(
          data['cbsMessage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeConfirmSigningResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequeConfirmSigningResponseStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        accountNumber == other.accountNumber &&
        chequeNumber == other.chequeNumber &&
        reason == other.reason &&
        status == other.status &&
        requestedAt == other.requestedAt &&
        confirmedAt == other.confirmedAt &&
        cbsMessage == other.cbsMessage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        accountNumber,
        chequeNumber,
        reason,
        status,
        requestedAt,
        confirmedAt,
        cbsMessage
      ]);
}

ChequeConfirmSigningResponseStruct createChequeConfirmSigningResponseStruct({
  String? id,
  String? referenceNumber,
  String? accountNumber,
  String? chequeNumber,
  String? reason,
  String? status,
  String? requestedAt,
  String? confirmedAt,
  String? cbsMessage,
}) =>
    ChequeConfirmSigningResponseStruct(
      id: id,
      referenceNumber: referenceNumber,
      accountNumber: accountNumber,
      chequeNumber: chequeNumber,
      reason: reason,
      status: status,
      requestedAt: requestedAt,
      confirmedAt: confirmedAt,
      cbsMessage: cbsMessage,
    );
