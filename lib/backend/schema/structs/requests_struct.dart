// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestsStruct extends BaseStruct {
  RequestsStruct({
    String? id,
    String? referenceNumber,
    String? accountNumber,
    String? accountType,
    int? bookletCount,
    int? processingFee,
    String? status,
    String? requestedAt,
    String? confirmedAt,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _accountNumber = accountNumber,
        _accountType = accountType,
        _bookletCount = bookletCount,
        _processingFee = processingFee,
        _status = status,
        _requestedAt = requestedAt,
        _confirmedAt = confirmedAt;

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

  // "accountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  set accountType(String? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

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

  static RequestsStruct fromMap(Map<String, dynamic> data) => RequestsStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        accountNumber: data['accountNumber'] as String?,
        accountType: data['accountType'] as String?,
        bookletCount: castToType<int>(data['bookletCount']),
        processingFee: castToType<int>(data['processingFee']),
        status: data['status'] as String?,
        requestedAt: data['requestedAt'] as String?,
        confirmedAt: data['confirmedAt'] as String?,
      );

  static RequestsStruct? maybeFromMap(dynamic data) =>
      data is Map ? RequestsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'accountNumber': _accountNumber,
        'accountType': _accountType,
        'bookletCount': _bookletCount,
        'processingFee': _processingFee,
        'status': _status,
        'requestedAt': _requestedAt,
        'confirmedAt': _confirmedAt,
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
        'accountType': serializeParam(
          _accountType,
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
      }.withoutNulls;

  static RequestsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RequestsStruct(
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
        accountType: deserializeParam(
          data['accountType'],
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
      );

  @override
  String toString() => 'RequestsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RequestsStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        accountNumber == other.accountNumber &&
        accountType == other.accountType &&
        bookletCount == other.bookletCount &&
        processingFee == other.processingFee &&
        status == other.status &&
        requestedAt == other.requestedAt &&
        confirmedAt == other.confirmedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        accountNumber,
        accountType,
        bookletCount,
        processingFee,
        status,
        requestedAt,
        confirmedAt
      ]);
}

RequestsStruct createRequestsStruct({
  String? id,
  String? referenceNumber,
  String? accountNumber,
  String? accountType,
  int? bookletCount,
  int? processingFee,
  String? status,
  String? requestedAt,
  String? confirmedAt,
}) =>
    RequestsStruct(
      id: id,
      referenceNumber: referenceNumber,
      accountNumber: accountNumber,
      accountType: accountType,
      bookletCount: bookletCount,
      processingFee: processingFee,
      status: status,
      requestedAt: requestedAt,
      confirmedAt: confirmedAt,
    );
