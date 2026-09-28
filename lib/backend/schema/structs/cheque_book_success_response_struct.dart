// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeBookSuccessResponseStruct extends BaseStruct {
  ChequeBookSuccessResponseStruct({
    String? referenceNumber,
    String? accountNumber,
    int? bookletCount,
    String? remarks,
    int? processingFee,
    String? currency,
    String? requestedAt,
    String? confirmedAt,
    String? status,
  })  : _referenceNumber = referenceNumber,
        _accountNumber = accountNumber,
        _bookletCount = bookletCount,
        _remarks = remarks,
        _processingFee = processingFee,
        _currency = currency,
        _requestedAt = requestedAt,
        _confirmedAt = confirmedAt,
        _status = status;

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

  // "bookletCount" field.
  int? _bookletCount;
  int get bookletCount => _bookletCount ?? 0;
  set bookletCount(int? val) => _bookletCount = val;

  void incrementBookletCount(int amount) =>
      bookletCount = bookletCount + amount;

  bool hasBookletCount() => _bookletCount != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

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

  // "confirmedAt" field.
  String? _confirmedAt;
  String get confirmedAt => _confirmedAt ?? '';
  set confirmedAt(String? val) => _confirmedAt = val;

  bool hasConfirmedAt() => _confirmedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static ChequeBookSuccessResponseStruct fromMap(Map<String, dynamic> data) =>
      ChequeBookSuccessResponseStruct(
        referenceNumber: data['referenceNumber'] as String?,
        accountNumber: data['accountNumber'] as String?,
        bookletCount: castToType<int>(data['bookletCount']),
        remarks: data['remarks'] as String?,
        processingFee: castToType<int>(data['processingFee']),
        currency: data['currency'] as String?,
        requestedAt: data['requestedAt'] as String?,
        confirmedAt: data['confirmedAt'] as String?,
        status: data['status'] as String?,
      );

  static ChequeBookSuccessResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ChequeBookSuccessResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'referenceNumber': _referenceNumber,
        'accountNumber': _accountNumber,
        'bookletCount': _bookletCount,
        'remarks': _remarks,
        'processingFee': _processingFee,
        'currency': _currency,
        'requestedAt': _requestedAt,
        'confirmedAt': _confirmedAt,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceNumber': serializeParam(
          _referenceNumber,
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
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
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
        'confirmedAt': serializeParam(
          _confirmedAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeBookSuccessResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequeBookSuccessResponseStruct(
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
        bookletCount: deserializeParam(
          data['bookletCount'],
          ParamType.int,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
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
        confirmedAt: deserializeParam(
          data['confirmedAt'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeBookSuccessResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequeBookSuccessResponseStruct &&
        referenceNumber == other.referenceNumber &&
        accountNumber == other.accountNumber &&
        bookletCount == other.bookletCount &&
        remarks == other.remarks &&
        processingFee == other.processingFee &&
        currency == other.currency &&
        requestedAt == other.requestedAt &&
        confirmedAt == other.confirmedAt &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        referenceNumber,
        accountNumber,
        bookletCount,
        remarks,
        processingFee,
        currency,
        requestedAt,
        confirmedAt,
        status
      ]);
}

ChequeBookSuccessResponseStruct createChequeBookSuccessResponseStruct({
  String? referenceNumber,
  String? accountNumber,
  int? bookletCount,
  String? remarks,
  int? processingFee,
  String? currency,
  String? requestedAt,
  String? confirmedAt,
  String? status,
}) =>
    ChequeBookSuccessResponseStruct(
      referenceNumber: referenceNumber,
      accountNumber: accountNumber,
      bookletCount: bookletCount,
      remarks: remarks,
      processingFee: processingFee,
      currency: currency,
      requestedAt: requestedAt,
      confirmedAt: confirmedAt,
      status: status,
    );
