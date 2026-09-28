// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduledTransferModelStruct extends BaseStruct {
  ScheduledTransferModelStruct({
    String? id,
    String? customerId,
    String? transferType,
    String? sourceAccountNumber,
    String? destinationAccountNumber,
    String? destinationBankCode,
    String? destinationAccountHolderName,
    String? beneficiaryId,
    int? amount,
    String? currency,
    String? remarks,
    String? frequency,
    String? startDate,
    String? endCondition,
    String? endDate,
    int? maxOccurrences,
    String? nextRunAt,
    String? status,
    String? createdAt,
    String? updatedAt,
    String? pausedAt,
    String? cancelledAt,
  })  : _id = id,
        _customerId = customerId,
        _transferType = transferType,
        _sourceAccountNumber = sourceAccountNumber,
        _destinationAccountNumber = destinationAccountNumber,
        _destinationBankCode = destinationBankCode,
        _destinationAccountHolderName = destinationAccountHolderName,
        _beneficiaryId = beneficiaryId,
        _amount = amount,
        _currency = currency,
        _remarks = remarks,
        _frequency = frequency,
        _startDate = startDate,
        _endCondition = endCondition,
        _endDate = endDate,
        _maxOccurrences = maxOccurrences,
        _nextRunAt = nextRunAt,
        _status = status,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _pausedAt = pausedAt,
        _cancelledAt = cancelledAt;

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

  // "transferType" field.
  String? _transferType;
  String get transferType => _transferType ?? '';
  set transferType(String? val) => _transferType = val;

  bool hasTransferType() => _transferType != null;

  // "sourceAccountNumber" field.
  String? _sourceAccountNumber;
  String get sourceAccountNumber => _sourceAccountNumber ?? '';
  set sourceAccountNumber(String? val) => _sourceAccountNumber = val;

  bool hasSourceAccountNumber() => _sourceAccountNumber != null;

  // "destinationAccountNumber" field.
  String? _destinationAccountNumber;
  String get destinationAccountNumber => _destinationAccountNumber ?? '';
  set destinationAccountNumber(String? val) => _destinationAccountNumber = val;

  bool hasDestinationAccountNumber() => _destinationAccountNumber != null;

  // "destinationBankCode" field.
  String? _destinationBankCode;
  String get destinationBankCode => _destinationBankCode ?? '';
  set destinationBankCode(String? val) => _destinationBankCode = val;

  bool hasDestinationBankCode() => _destinationBankCode != null;

  // "destinationAccountHolderName" field.
  String? _destinationAccountHolderName;
  String get destinationAccountHolderName =>
      _destinationAccountHolderName ?? '';
  set destinationAccountHolderName(String? val) =>
      _destinationAccountHolderName = val;

  bool hasDestinationAccountHolderName() =>
      _destinationAccountHolderName != null;

  // "beneficiaryId" field.
  String? _beneficiaryId;
  String get beneficiaryId => _beneficiaryId ?? '';
  set beneficiaryId(String? val) => _beneficiaryId = val;

  bool hasBeneficiaryId() => _beneficiaryId != null;

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

  // "maxOccurrences" field.
  int? _maxOccurrences;
  int get maxOccurrences => _maxOccurrences ?? 0;
  set maxOccurrences(int? val) => _maxOccurrences = val;

  void incrementMaxOccurrences(int amount) =>
      maxOccurrences = maxOccurrences + amount;

  bool hasMaxOccurrences() => _maxOccurrences != null;

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

  // "pausedAt" field.
  String? _pausedAt;
  String get pausedAt => _pausedAt ?? '';
  set pausedAt(String? val) => _pausedAt = val;

  bool hasPausedAt() => _pausedAt != null;

  // "cancelledAt" field.
  String? _cancelledAt;
  String get cancelledAt => _cancelledAt ?? '';
  set cancelledAt(String? val) => _cancelledAt = val;

  bool hasCancelledAt() => _cancelledAt != null;

  static ScheduledTransferModelStruct fromMap(Map<String, dynamic> data) =>
      ScheduledTransferModelStruct(
        id: data['id'] as String?,
        customerId: data['customerId'] as String?,
        transferType: data['transferType'] as String?,
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        destinationAccountNumber: data['destinationAccountNumber'] as String?,
        destinationBankCode: data['destinationBankCode'] as String?,
        destinationAccountHolderName:
            data['destinationAccountHolderName'] as String?,
        beneficiaryId: data['beneficiaryId'] as String?,
        amount: castToType<int>(data['amount']),
        currency: data['currency'] as String?,
        remarks: data['remarks'] as String?,
        frequency: data['frequency'] as String?,
        startDate: data['startDate'] as String?,
        endCondition: data['endCondition'] as String?,
        endDate: data['endDate'] as String?,
        maxOccurrences: castToType<int>(data['maxOccurrences']),
        nextRunAt: data['nextRunAt'] as String?,
        status: data['status'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        pausedAt: data['pausedAt'] as String?,
        cancelledAt: data['cancelledAt'] as String?,
      );

  static ScheduledTransferModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ScheduledTransferModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'customerId': _customerId,
        'transferType': _transferType,
        'sourceAccountNumber': _sourceAccountNumber,
        'destinationAccountNumber': _destinationAccountNumber,
        'destinationBankCode': _destinationBankCode,
        'destinationAccountHolderName': _destinationAccountHolderName,
        'beneficiaryId': _beneficiaryId,
        'amount': _amount,
        'currency': _currency,
        'remarks': _remarks,
        'frequency': _frequency,
        'startDate': _startDate,
        'endCondition': _endCondition,
        'endDate': _endDate,
        'maxOccurrences': _maxOccurrences,
        'nextRunAt': _nextRunAt,
        'status': _status,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'pausedAt': _pausedAt,
        'cancelledAt': _cancelledAt,
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
        'transferType': serializeParam(
          _transferType,
          ParamType.String,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'destinationAccountNumber': serializeParam(
          _destinationAccountNumber,
          ParamType.String,
        ),
        'destinationBankCode': serializeParam(
          _destinationBankCode,
          ParamType.String,
        ),
        'destinationAccountHolderName': serializeParam(
          _destinationAccountHolderName,
          ParamType.String,
        ),
        'beneficiaryId': serializeParam(
          _beneficiaryId,
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
        'maxOccurrences': serializeParam(
          _maxOccurrences,
          ParamType.int,
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
        'pausedAt': serializeParam(
          _pausedAt,
          ParamType.String,
        ),
        'cancelledAt': serializeParam(
          _cancelledAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ScheduledTransferModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ScheduledTransferModelStruct(
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
        transferType: deserializeParam(
          data['transferType'],
          ParamType.String,
          false,
        ),
        sourceAccountNumber: deserializeParam(
          data['sourceAccountNumber'],
          ParamType.String,
          false,
        ),
        destinationAccountNumber: deserializeParam(
          data['destinationAccountNumber'],
          ParamType.String,
          false,
        ),
        destinationBankCode: deserializeParam(
          data['destinationBankCode'],
          ParamType.String,
          false,
        ),
        destinationAccountHolderName: deserializeParam(
          data['destinationAccountHolderName'],
          ParamType.String,
          false,
        ),
        beneficiaryId: deserializeParam(
          data['beneficiaryId'],
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
        maxOccurrences: deserializeParam(
          data['maxOccurrences'],
          ParamType.int,
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
        pausedAt: deserializeParam(
          data['pausedAt'],
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
  String toString() => 'ScheduledTransferModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScheduledTransferModelStruct &&
        id == other.id &&
        customerId == other.customerId &&
        transferType == other.transferType &&
        sourceAccountNumber == other.sourceAccountNumber &&
        destinationAccountNumber == other.destinationAccountNumber &&
        destinationBankCode == other.destinationBankCode &&
        destinationAccountHolderName == other.destinationAccountHolderName &&
        beneficiaryId == other.beneficiaryId &&
        amount == other.amount &&
        currency == other.currency &&
        remarks == other.remarks &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endCondition == other.endCondition &&
        endDate == other.endDate &&
        maxOccurrences == other.maxOccurrences &&
        nextRunAt == other.nextRunAt &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        pausedAt == other.pausedAt &&
        cancelledAt == other.cancelledAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        customerId,
        transferType,
        sourceAccountNumber,
        destinationAccountNumber,
        destinationBankCode,
        destinationAccountHolderName,
        beneficiaryId,
        amount,
        currency,
        remarks,
        frequency,
        startDate,
        endCondition,
        endDate,
        maxOccurrences,
        nextRunAt,
        status,
        createdAt,
        updatedAt,
        pausedAt,
        cancelledAt
      ]);
}

ScheduledTransferModelStruct createScheduledTransferModelStruct({
  String? id,
  String? customerId,
  String? transferType,
  String? sourceAccountNumber,
  String? destinationAccountNumber,
  String? destinationBankCode,
  String? destinationAccountHolderName,
  String? beneficiaryId,
  int? amount,
  String? currency,
  String? remarks,
  String? frequency,
  String? startDate,
  String? endCondition,
  String? endDate,
  int? maxOccurrences,
  String? nextRunAt,
  String? status,
  String? createdAt,
  String? updatedAt,
  String? pausedAt,
  String? cancelledAt,
}) =>
    ScheduledTransferModelStruct(
      id: id,
      customerId: customerId,
      transferType: transferType,
      sourceAccountNumber: sourceAccountNumber,
      destinationAccountNumber: destinationAccountNumber,
      destinationBankCode: destinationBankCode,
      destinationAccountHolderName: destinationAccountHolderName,
      beneficiaryId: beneficiaryId,
      amount: amount,
      currency: currency,
      remarks: remarks,
      frequency: frequency,
      startDate: startDate,
      endCondition: endCondition,
      endDate: endDate,
      maxOccurrences: maxOccurrences,
      nextRunAt: nextRunAt,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      pausedAt: pausedAt,
      cancelledAt: cancelledAt,
    );
