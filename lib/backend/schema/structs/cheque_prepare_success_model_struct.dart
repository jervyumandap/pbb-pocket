// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequePrepareSuccessModelStruct extends BaseStruct {
  ChequePrepareSuccessModelStruct({
    String? pendingRequestId,
    String? accountNumber,
    int? bookletCount,
    int? processingFee,
    String? currency,
    String? requestedAt,
    String? expiresAt,
    String? remarks,
    String? idempotencyKey,
  })  : _pendingRequestId = pendingRequestId,
        _accountNumber = accountNumber,
        _bookletCount = bookletCount,
        _processingFee = processingFee,
        _currency = currency,
        _requestedAt = requestedAt,
        _expiresAt = expiresAt,
        _remarks = remarks,
        _idempotencyKey = idempotencyKey;

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

  // "bookletCount" field.
  int? _bookletCount;
  int get bookletCount => _bookletCount ?? 0;
  set bookletCount(int? val) => _bookletCount = val;

  void incrementBookletCount(int amount) =>
      bookletCount = bookletCount + amount;

  bool hasBookletCount() => _bookletCount != null;

  // "processingFee" field.
  int? _processingFee;
  int get processingFee => _processingFee ?? 0;
  set processingFee(int? val) => _processingFee = val;

  void incrementProcessingFee(int amount) =>
      processingFee = processingFee + amount;

  bool hasProcessingFee() => _processingFee != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

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

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "idempotencyKey" field.
  String? _idempotencyKey;
  String get idempotencyKey => _idempotencyKey ?? '';
  set idempotencyKey(String? val) => _idempotencyKey = val;

  bool hasIdempotencyKey() => _idempotencyKey != null;

  static ChequePrepareSuccessModelStruct fromMap(Map<String, dynamic> data) =>
      ChequePrepareSuccessModelStruct(
        pendingRequestId: data['pendingRequestId'] as String?,
        accountNumber: data['accountNumber'] as String?,
        bookletCount: castToType<int>(data['bookletCount']),
        processingFee: castToType<int>(data['processingFee']),
        currency: data['currency'] as String?,
        requestedAt: data['requestedAt'] as String?,
        expiresAt: data['expiresAt'] as String?,
        remarks: data['remarks'] as String?,
        idempotencyKey: data['idempotencyKey'] as String?,
      );

  static ChequePrepareSuccessModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ChequePrepareSuccessModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pendingRequestId': _pendingRequestId,
        'accountNumber': _accountNumber,
        'bookletCount': _bookletCount,
        'processingFee': _processingFee,
        'currency': _currency,
        'requestedAt': _requestedAt,
        'expiresAt': _expiresAt,
        'remarks': _remarks,
        'idempotencyKey': _idempotencyKey,
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
        'bookletCount': serializeParam(
          _bookletCount,
          ParamType.int,
        ),
        'processingFee': serializeParam(
          _processingFee,
          ParamType.int,
        ),
        'currency': serializeParam(
          _currency,
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
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'idempotencyKey': serializeParam(
          _idempotencyKey,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequePrepareSuccessModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequePrepareSuccessModelStruct(
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
        bookletCount: deserializeParam(
          data['bookletCount'],
          ParamType.int,
          false,
        ),
        processingFee: deserializeParam(
          data['processingFee'],
          ParamType.int,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
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
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        idempotencyKey: deserializeParam(
          data['idempotencyKey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequePrepareSuccessModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequePrepareSuccessModelStruct &&
        pendingRequestId == other.pendingRequestId &&
        accountNumber == other.accountNumber &&
        bookletCount == other.bookletCount &&
        processingFee == other.processingFee &&
        currency == other.currency &&
        requestedAt == other.requestedAt &&
        expiresAt == other.expiresAt &&
        remarks == other.remarks &&
        idempotencyKey == other.idempotencyKey;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pendingRequestId,
        accountNumber,
        bookletCount,
        processingFee,
        currency,
        requestedAt,
        expiresAt,
        remarks,
        idempotencyKey
      ]);
}

ChequePrepareSuccessModelStruct createChequePrepareSuccessModelStruct({
  String? pendingRequestId,
  String? accountNumber,
  int? bookletCount,
  int? processingFee,
  String? currency,
  String? requestedAt,
  String? expiresAt,
  String? remarks,
  String? idempotencyKey,
}) =>
    ChequePrepareSuccessModelStruct(
      pendingRequestId: pendingRequestId,
      accountNumber: accountNumber,
      bookletCount: bookletCount,
      processingFee: processingFee,
      currency: currency,
      requestedAt: requestedAt,
      expiresAt: expiresAt,
      remarks: remarks,
      idempotencyKey: idempotencyKey,
    );
