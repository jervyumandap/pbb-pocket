// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBScheduledPaymentStruct extends BaseStruct {
  WBScheduledPaymentStruct({
    String? id,
    String? customerId,
    String? billerId,
    String? accountNumber,
    String? accountHolderName,
    int? amount,
    String? currency,
    String? sourceAccountNumber,
    String? remarks,
    String? frequency,
    String? startDate,
    String? endCondition,
    String? endDate,
    String? nextRunAt,
    String? status,
    String? createdAt,
    String? updatedAt,
    String? referenceNumber,
    String? billerName,
  })  : _id = id,
        _customerId = customerId,
        _billerId = billerId,
        _accountNumber = accountNumber,
        _accountHolderName = accountHolderName,
        _amount = amount,
        _currency = currency,
        _sourceAccountNumber = sourceAccountNumber,
        _remarks = remarks,
        _frequency = frequency,
        _startDate = startDate,
        _endCondition = endCondition,
        _endDate = endDate,
        _nextRunAt = nextRunAt,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _referenceNumber = referenceNumber,
        _billerName = billerName;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "billerId" field.
  String? _billerId;
  String get billerId => _billerId ?? '';
  set billerId(String? val) => _billerId = val;

  bool hasBillerId() => _billerId != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "accountHolderName" field.
  String? _accountHolderName;
  String get accountHolderName => _accountHolderName ?? '';
  set accountHolderName(String? val) => _accountHolderName = val;

  bool hasAccountHolderName() => _accountHolderName != null;

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

  // "sourceAccountNumber" field.
  String? _sourceAccountNumber;
  String get sourceAccountNumber => _sourceAccountNumber ?? '';
  set sourceAccountNumber(String? val) => _sourceAccountNumber = val;

  bool hasSourceAccountNumber() => _sourceAccountNumber != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;

  bool hasFrequency() => _frequency != null;

  // "startDate" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endCondition" field.
  String? _endCondition;
  String get endCondition => _endCondition ?? '';
  set endCondition(String? val) => _endCondition = val;

  bool hasEndCondition() => _endCondition != null;

  // "endDate" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "nextRunAt" field.
  String? _nextRunAt;
  String get nextRunAt => _nextRunAt ?? '';
  set nextRunAt(String? val) => _nextRunAt = val;

  bool hasNextRunAt() => _nextRunAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "billerName" field.
  String? _billerName;
  String get billerName => _billerName ?? '';
  set billerName(String? val) => _billerName = val;

  bool hasBillerName() => _billerName != null;

  static WBScheduledPaymentStruct fromMap(Map<String, dynamic> data) =>
      WBScheduledPaymentStruct(
        id: data['id'] as String?,
        customerId: data['customerId'] as String?,
        billerId: data['billerId'] as String?,
        accountNumber: data['accountNumber'] as String?,
        accountHolderName: data['accountHolderName'] as String?,
        amount: castToType<int>(data['amount']),
        currency: data['currency'] as String?,
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        remarks: data['remarks'] as String?,
        frequency: data['frequency'] as String?,
        startDate: data['startDate'] as String?,
        endCondition: data['endCondition'] as String?,
        endDate: data['endDate'] as String?,
        nextRunAt: data['nextRunAt'] as String?,
        status: data['status'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        billerName: data['billerName'] as String?,
      );

  static WBScheduledPaymentStruct? maybeFromMap(dynamic data) => data is Map
      ? WBScheduledPaymentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'customerId': _customerId,
        'billerId': _billerId,
        'accountNumber': _accountNumber,
        'accountHolderName': _accountHolderName,
        'amount': _amount,
        'currency': _currency,
        'sourceAccountNumber': _sourceAccountNumber,
        'remarks': _remarks,
        'frequency': _frequency,
        'startDate': _startDate,
        'endCondition': _endCondition,
        'endDate': _endDate,
        'nextRunAt': _nextRunAt,
        'status': _status,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'referenceNumber': _referenceNumber,
        'billerName': _billerName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'billerId': serializeParam(
          _billerId,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'accountHolderName': serializeParam(
          _accountHolderName,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'endCondition': serializeParam(
          _endCondition,
          ParamType.String,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'nextRunAt': serializeParam(
          _nextRunAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'billerName': serializeParam(
          _billerName,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBScheduledPaymentStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBScheduledPaymentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
        billerId: deserializeParam(
          data['billerId'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        accountHolderName: deserializeParam(
          data['accountHolderName'],
          ParamType.String,
          false,
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
        sourceAccountNumber: deserializeParam(
          data['sourceAccountNumber'],
          ParamType.String,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.String,
          false,
        ),
        endCondition: deserializeParam(
          data['endCondition'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.String,
          false,
        ),
        nextRunAt: deserializeParam(
          data['nextRunAt'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        billerName: deserializeParam(
          data['billerName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBScheduledPaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBScheduledPaymentStruct &&
        id == other.id &&
        customerId == other.customerId &&
        billerId == other.billerId &&
        accountNumber == other.accountNumber &&
        accountHolderName == other.accountHolderName &&
        amount == other.amount &&
        currency == other.currency &&
        sourceAccountNumber == other.sourceAccountNumber &&
        remarks == other.remarks &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endCondition == other.endCondition &&
        endDate == other.endDate &&
        nextRunAt == other.nextRunAt &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        referenceNumber == other.referenceNumber &&
        billerName == other.billerName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        customerId,
        billerId,
        accountNumber,
        accountHolderName,
        amount,
        currency,
        sourceAccountNumber,
        remarks,
        frequency,
        startDate,
        endCondition,
        endDate,
        nextRunAt,
        status,
        createdAt,
        updatedAt,
        referenceNumber,
        billerName
      ]);
}

WBScheduledPaymentStruct createWBScheduledPaymentStruct({
  String? id,
  String? customerId,
  String? billerId,
  String? accountNumber,
  String? accountHolderName,
  int? amount,
  String? currency,
  String? sourceAccountNumber,
  String? remarks,
  String? frequency,
  String? startDate,
  String? endCondition,
  String? endDate,
  String? nextRunAt,
  String? status,
  String? createdAt,
  String? updatedAt,
  String? referenceNumber,
  String? billerName,
}) =>
    WBScheduledPaymentStruct(
      id: id,
      customerId: customerId,
      billerId: billerId,
      accountNumber: accountNumber,
      accountHolderName: accountHolderName,
      amount: amount,
      currency: currency,
      sourceAccountNumber: sourceAccountNumber,
      remarks: remarks,
      frequency: frequency,
      startDate: startDate,
      endCondition: endCondition,
      endDate: endDate,
      nextRunAt: nextRunAt,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      referenceNumber: referenceNumber,
      billerName: billerName,
    );
