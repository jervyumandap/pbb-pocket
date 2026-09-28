// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBBPSubmitParametersStruct extends BaseStruct {
  WBBPSubmitParametersStruct({
    String? billerId,
    String? accountNumber,
    String? accountHolderName,
    double? amount,
    String? currency,
    String? sourceAccountNumber,
    String? savedBillerId,
    String? remarks,
    String? idempotencyKey,
    String? frequency,
    String? startDate,
    String? endCondition,
    String? endDate,
    int? maxOccurrences,
    String? deviceId,
  })  : _billerId = billerId,
        _accountNumber = accountNumber,
        _accountHolderName = accountHolderName,
        _amount = amount,
        _currency = currency,
        _sourceAccountNumber = sourceAccountNumber,
        _savedBillerId = savedBillerId,
        _remarks = remarks,
        _idempotencyKey = idempotencyKey,
        _frequency = frequency,
        _startDate = startDate,
        _endCondition = endCondition,
        _endDate = endDate,
        _maxOccurrences = maxOccurrences,
        _deviceId = deviceId;

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
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

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

  // "savedBillerId" field.
  String? _savedBillerId;
  String get savedBillerId => _savedBillerId ?? '';
  set savedBillerId(String? val) => _savedBillerId = val;

  bool hasSavedBillerId() => _savedBillerId != null;

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

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

  static WBBPSubmitParametersStruct fromMap(Map<String, dynamic> data) =>
      WBBPSubmitParametersStruct(
        billerId: data['billerId'] as String?,
        accountNumber: data['accountNumber'] as String?,
        accountHolderName: data['accountHolderName'] as String?,
        amount: castToType<double>(data['amount']),
        currency: data['currency'] as String?,
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        savedBillerId: data['savedBillerId'] as String?,
        remarks: data['remarks'] as String?,
        idempotencyKey: data['idempotencyKey'] as String?,
        frequency: data['frequency'] as String?,
        startDate: data['startDate'] as String?,
        endCondition: data['endCondition'] as String?,
        endDate: data['endDate'] as String?,
        maxOccurrences: castToType<int>(data['maxOccurrences']),
        deviceId: data['deviceId'] as String?,
      );

  static WBBPSubmitParametersStruct? maybeFromMap(dynamic data) => data is Map
      ? WBBPSubmitParametersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'billerId': _billerId,
        'accountNumber': _accountNumber,
        'accountHolderName': _accountHolderName,
        'amount': _amount,
        'currency': _currency,
        'sourceAccountNumber': _sourceAccountNumber,
        'savedBillerId': _savedBillerId,
        'remarks': _remarks,
        'idempotencyKey': _idempotencyKey,
        'frequency': _frequency,
        'startDate': _startDate,
        'endCondition': _endCondition,
        'endDate': _endDate,
        'maxOccurrences': _maxOccurrences,
        'deviceId': _deviceId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'savedBillerId': serializeParam(
          _savedBillerId,
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
        'deviceId': serializeParam(
          _deviceId,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBBPSubmitParametersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBBPSubmitParametersStruct(
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
          ParamType.double,
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
        savedBillerId: deserializeParam(
          data['savedBillerId'],
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
        deviceId: deserializeParam(
          data['deviceId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBBPSubmitParametersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBBPSubmitParametersStruct &&
        billerId == other.billerId &&
        accountNumber == other.accountNumber &&
        accountHolderName == other.accountHolderName &&
        amount == other.amount &&
        currency == other.currency &&
        sourceAccountNumber == other.sourceAccountNumber &&
        savedBillerId == other.savedBillerId &&
        remarks == other.remarks &&
        idempotencyKey == other.idempotencyKey &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endCondition == other.endCondition &&
        endDate == other.endDate &&
        maxOccurrences == other.maxOccurrences &&
        deviceId == other.deviceId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        billerId,
        accountNumber,
        accountHolderName,
        amount,
        currency,
        sourceAccountNumber,
        savedBillerId,
        remarks,
        idempotencyKey,
        frequency,
        startDate,
        endCondition,
        endDate,
        maxOccurrences,
        deviceId
      ]);
}

WBBPSubmitParametersStruct createWBBPSubmitParametersStruct({
  String? billerId,
  String? accountNumber,
  String? accountHolderName,
  double? amount,
  String? currency,
  String? sourceAccountNumber,
  String? savedBillerId,
  String? remarks,
  String? idempotencyKey,
  String? frequency,
  String? startDate,
  String? endCondition,
  String? endDate,
  int? maxOccurrences,
  String? deviceId,
}) =>
    WBBPSubmitParametersStruct(
      billerId: billerId,
      accountNumber: accountNumber,
      accountHolderName: accountHolderName,
      amount: amount,
      currency: currency,
      sourceAccountNumber: sourceAccountNumber,
      savedBillerId: savedBillerId,
      remarks: remarks,
      idempotencyKey: idempotencyKey,
      frequency: frequency,
      startDate: startDate,
      endCondition: endCondition,
      endDate: endDate,
      maxOccurrences: maxOccurrences,
      deviceId: deviceId,
    );
