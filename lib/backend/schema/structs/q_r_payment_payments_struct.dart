// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QRPaymentPaymentsStruct extends BaseStruct {
  QRPaymentPaymentsStruct({
    String? id,
    String? referenceNumber,
    String? status,
    String? qrType,
    RecipientStruct? recipient,
    int? amount,
    String? currency,
    String? processedAt,
    String? createdAt,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _qrType = qrType,
        _recipient = recipient,
        _amount = amount,
        _currency = currency,
        _processedAt = processedAt,
        _createdAt = createdAt;

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

  // "qrType" field.
  String? _qrType;
  String get qrType => _qrType ?? '';
  set qrType(String? val) => _qrType = val;

  bool hasQrType() => _qrType != null;

  // "recipient" field.
  RecipientStruct? _recipient;
  RecipientStruct get recipient => _recipient ?? RecipientStruct();
  set recipient(RecipientStruct? val) => _recipient = val;

  void updateRecipient(Function(RecipientStruct) updateFn) {
    updateFn(_recipient ??= RecipientStruct());
  }

  bool hasRecipient() => _recipient != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "processedAt" field.
  String? _processedAt;
  String get processedAt => _processedAt ?? '';
  set processedAt(String? val) => _processedAt = val;

  bool hasProcessedAt() => _processedAt != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static QRPaymentPaymentsStruct fromMap(Map<String, dynamic> data) =>
      QRPaymentPaymentsStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        qrType: data['qrType'] as String?,
        recipient: data['recipient'] is RecipientStruct
            ? data['recipient']
            : RecipientStruct.maybeFromMap(data['recipient']),
        amount: castToType<int>(data['amount']),
        currency: data['currency'] as String?,
        processedAt: data['processedAt'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static QRPaymentPaymentsStruct? maybeFromMap(dynamic data) => data is Map
      ? QRPaymentPaymentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'qrType': _qrType,
        'recipient': _recipient?.toMap(),
        'amount': _amount,
        'currency': _currency,
        'processedAt': _processedAt,
        'createdAt': _createdAt,
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
        'qrType': serializeParam(
          _qrType,
          ParamType.String,
        ),
        'recipient': serializeParam(
          _recipient,
          ParamType.DataStruct,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'processedAt': serializeParam(
          _processedAt,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static QRPaymentPaymentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      QRPaymentPaymentsStruct(
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
        qrType: deserializeParam(
          data['qrType'],
          ParamType.String,
          false,
        ),
        recipient: deserializeStructParam(
          data['recipient'],
          ParamType.DataStruct,
          false,
          structBuilder: RecipientStruct.fromSerializableMap,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        processedAt: deserializeParam(
          data['processedAt'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QRPaymentPaymentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QRPaymentPaymentsStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        qrType == other.qrType &&
        recipient == other.recipient &&
        amount == other.amount &&
        currency == other.currency &&
        processedAt == other.processedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        status,
        qrType,
        recipient,
        amount,
        currency,
        processedAt,
        createdAt
      ]);
}

QRPaymentPaymentsStruct createQRPaymentPaymentsStruct({
  String? id,
  String? referenceNumber,
  String? status,
  String? qrType,
  RecipientStruct? recipient,
  int? amount,
  String? currency,
  String? processedAt,
  String? createdAt,
}) =>
    QRPaymentPaymentsStruct(
      id: id,
      referenceNumber: referenceNumber,
      status: status,
      qrType: qrType,
      recipient: recipient ?? RecipientStruct(),
      amount: amount,
      currency: currency,
      processedAt: processedAt,
      createdAt: createdAt,
    );
