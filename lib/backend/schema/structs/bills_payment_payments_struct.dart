// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsPaymentPaymentsStruct extends BaseStruct {
  BillsPaymentPaymentsStruct({
    String? id,
    String? referenceNumber,
    String? status,
    BillerStruct? biller,
    String? accountNumber,
    double? amount,
    double? convenienceFee,
    double? totalAmount,
    String? currency,
    String? processedAt,
    String? createdAt,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _biller = biller,
        _accountNumber = accountNumber,
        _amount = amount,
        _convenienceFee = convenienceFee,
        _totalAmount = totalAmount,
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

  // "biller" field.
  BillerStruct? _biller;
  BillerStruct get biller => _biller ?? BillerStruct();
  set biller(BillerStruct? val) => _biller = val;

  void updateBiller(Function(BillerStruct) updateFn) {
    updateFn(_biller ??= BillerStruct());
  }

  bool hasBiller() => _biller != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "convenienceFee" field.
  double? _convenienceFee;
  double get convenienceFee => _convenienceFee ?? 0.0;
  set convenienceFee(double? val) => _convenienceFee = val;

  void incrementConvenienceFee(double amount) =>
      convenienceFee = convenienceFee + amount;

  bool hasConvenienceFee() => _convenienceFee != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

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

  static BillsPaymentPaymentsStruct fromMap(Map<String, dynamic> data) =>
      BillsPaymentPaymentsStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        biller: data['biller'] is BillerStruct
            ? data['biller']
            : BillerStruct.maybeFromMap(data['biller']),
        accountNumber: data['accountNumber'] as String?,
        amount: castToType<double>(data['amount']),
        convenienceFee: castToType<double>(data['convenienceFee']),
        totalAmount: castToType<double>(data['totalAmount']),
        currency: data['currency'] as String?,
        processedAt: data['processedAt'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static BillsPaymentPaymentsStruct? maybeFromMap(dynamic data) => data is Map
      ? BillsPaymentPaymentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'biller': _biller?.toMap(),
        'accountNumber': _accountNumber,
        'amount': _amount,
        'convenienceFee': _convenienceFee,
        'totalAmount': _totalAmount,
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
        'biller': serializeParam(
          _biller,
          ParamType.DataStruct,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'convenienceFee': serializeParam(
          _convenienceFee,
          ParamType.double,
        ),
        'totalAmount': serializeParam(
          _totalAmount,
          ParamType.double,
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

  static BillsPaymentPaymentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BillsPaymentPaymentsStruct(
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
        biller: deserializeStructParam(
          data['biller'],
          ParamType.DataStruct,
          false,
          structBuilder: BillerStruct.fromSerializableMap,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        convenienceFee: deserializeParam(
          data['convenienceFee'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['totalAmount'],
          ParamType.double,
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
  String toString() => 'BillsPaymentPaymentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillsPaymentPaymentsStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        biller == other.biller &&
        accountNumber == other.accountNumber &&
        amount == other.amount &&
        convenienceFee == other.convenienceFee &&
        totalAmount == other.totalAmount &&
        currency == other.currency &&
        processedAt == other.processedAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        status,
        biller,
        accountNumber,
        amount,
        convenienceFee,
        totalAmount,
        currency,
        processedAt,
        createdAt
      ]);
}

BillsPaymentPaymentsStruct createBillsPaymentPaymentsStruct({
  String? id,
  String? referenceNumber,
  String? status,
  BillerStruct? biller,
  String? accountNumber,
  double? amount,
  double? convenienceFee,
  double? totalAmount,
  String? currency,
  String? processedAt,
  String? createdAt,
}) =>
    BillsPaymentPaymentsStruct(
      id: id,
      referenceNumber: referenceNumber,
      status: status,
      biller: biller ?? BillerStruct(),
      accountNumber: accountNumber,
      amount: amount,
      convenienceFee: convenienceFee,
      totalAmount: totalAmount,
      currency: currency,
      processedAt: processedAt,
      createdAt: createdAt,
    );
