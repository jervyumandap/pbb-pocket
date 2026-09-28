// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RetailStopChequePrepareResponseStruct extends BaseStruct {
  RetailStopChequePrepareResponseStruct({
    String? pendingRequestId,
    String? accountNumber,
    String? chequeNumber,
    String? reason,
    String? requestedAt,
    String? expiresAt,
  })  : _pendingRequestId = pendingRequestId,
        _accountNumber = accountNumber,
        _chequeNumber = chequeNumber,
        _reason = reason,
        _requestedAt = requestedAt,
        _expiresAt = expiresAt;

  // "pendingRequestId" field.
  String? _pendingRequestId;
  String get pendingRequestId => _pendingRequestId ?? '';
  set pendingRequestId(String? val) => _pendingRequestId = val;

  bool hasPendingRequestId() => _pendingRequestId != null;

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

  // "requestedAt" field.
  String? _requestedAt;
  String get requestedAt => _requestedAt ?? '';
  set requestedAt(String? val) => _requestedAt = val;

  bool hasRequestedAt() => _requestedAt != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  static RetailStopChequePrepareResponseStruct fromMap(
          Map<String, dynamic> data) =>
      RetailStopChequePrepareResponseStruct(
        pendingRequestId: data['pendingRequestId'] as String?,
        accountNumber: data['accountNumber'] as String?,
        chequeNumber: data['chequeNumber'] as String?,
        reason: data['reason'] as String?,
        requestedAt: data['requestedAt'] as String?,
        expiresAt: data['expiresAt'] as String?,
      );

  static RetailStopChequePrepareResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? RetailStopChequePrepareResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'pendingRequestId': _pendingRequestId,
        'accountNumber': _accountNumber,
        'chequeNumber': _chequeNumber,
        'reason': _reason,
        'requestedAt': _requestedAt,
        'expiresAt': _expiresAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pendingRequestId': serializeParam(
          _pendingRequestId,
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
        'requestedAt': serializeParam(
          _requestedAt,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static RetailStopChequePrepareResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RetailStopChequePrepareResponseStruct(
        pendingRequestId: deserializeParam(
          data['pendingRequestId'],
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
        requestedAt: deserializeParam(
          data['requestedAt'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RetailStopChequePrepareResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RetailStopChequePrepareResponseStruct &&
        pendingRequestId == other.pendingRequestId &&
        accountNumber == other.accountNumber &&
        chequeNumber == other.chequeNumber &&
        reason == other.reason &&
        requestedAt == other.requestedAt &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pendingRequestId,
        accountNumber,
        chequeNumber,
        reason,
        requestedAt,
        expiresAt
      ]);
}

RetailStopChequePrepareResponseStruct
    createRetailStopChequePrepareResponseStruct({
  String? pendingRequestId,
  String? accountNumber,
  String? chequeNumber,
  String? reason,
  String? requestedAt,
  String? expiresAt,
}) =>
        RetailStopChequePrepareResponseStruct(
          pendingRequestId: pendingRequestId,
          accountNumber: accountNumber,
          chequeNumber: chequeNumber,
          reason: reason,
          requestedAt: requestedAt,
          expiresAt: expiresAt,
        );
