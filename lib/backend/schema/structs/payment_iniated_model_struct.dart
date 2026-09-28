// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentIniatedModelStruct extends BaseStruct {
  PaymentIniatedModelStruct({
    String? id,
    String? referenceNumber,
    String? status,
    bool? otpRequired,
    String? expiresAt,
    double? fee,
    double? totalAmount,
    String? bankName,
    String? destinationAccountNumber,
    double? amount,
    String? remarks,
    String? sourceAccountNumber,
    String? destinationAccountName,
    String? destinationBankCode,
    String? currency,
    String? accountType,
    String? transferType,
    String? billerId,
    String? qrType,
    TransactionScheduleType? frequency,
    String? startDate,
    String? endCondition,
    String? endDate,
    int? maxOccurrences,
    String? deviceId,
    bool? isScheduledTransfer,
    String? nextRunAt,
    String? maskedAccountNumber,
    String? maskedDestinationAccountNumber,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _otpRequired = otpRequired,
        _expiresAt = expiresAt,
        _fee = fee,
        _totalAmount = totalAmount,
        _bankName = bankName,
        _destinationAccountNumber = destinationAccountNumber,
        _amount = amount,
        _remarks = remarks,
        _sourceAccountNumber = sourceAccountNumber,
        _destinationAccountName = destinationAccountName,
        _destinationBankCode = destinationBankCode,
        _currency = currency,
        _accountType = accountType,
        _transferType = transferType,
        _billerId = billerId,
        _qrType = qrType,
        _frequency = frequency,
        _startDate = startDate,
        _endCondition = endCondition,
        _endDate = endDate,
        _maxOccurrences = maxOccurrences,
        _deviceId = deviceId,
        _isScheduledTransfer = isScheduledTransfer,
        _nextRunAt = nextRunAt,
        _maskedAccountNumber = maskedAccountNumber,
        _maskedDestinationAccountNumber = maskedDestinationAccountNumber;

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

  // "otpRequired" field.
  bool? _otpRequired;
  bool get otpRequired => _otpRequired ?? false;
  set otpRequired(bool? val) => _otpRequired = val;

  bool hasOtpRequired() => _otpRequired != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "fee" field.
  double? _fee;
  double get fee => _fee ?? 0.0;
  set fee(double? val) => _fee = val;

  void incrementFee(double amount) => fee = fee + amount;

  bool hasFee() => _fee != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "bankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "destinationAccountNumber" field.
  String? _destinationAccountNumber;
  String get destinationAccountNumber => _destinationAccountNumber ?? '';
  set destinationAccountNumber(String? val) => _destinationAccountNumber = val;

  bool hasDestinationAccountNumber() => _destinationAccountNumber != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "sourceAccountNumber" field.
  String? _sourceAccountNumber;
  String get sourceAccountNumber => _sourceAccountNumber ?? '';
  set sourceAccountNumber(String? val) => _sourceAccountNumber = val;

  bool hasSourceAccountNumber() => _sourceAccountNumber != null;

  // "destinationAccountName" field.
  String? _destinationAccountName;
  String get destinationAccountName => _destinationAccountName ?? '';
  set destinationAccountName(String? val) => _destinationAccountName = val;

  bool hasDestinationAccountName() => _destinationAccountName != null;

  // "destinationBankCode" field.
  String? _destinationBankCode;
  String get destinationBankCode => _destinationBankCode ?? '';
  set destinationBankCode(String? val) => _destinationBankCode = val;

  bool hasDestinationBankCode() => _destinationBankCode != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "accountType" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  set accountType(String? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

  // "transferType" field.
  String? _transferType;
  String get transferType => _transferType ?? '';
  set transferType(String? val) => _transferType = val;

  bool hasTransferType() => _transferType != null;

  // "billerId" field.
  String? _billerId;
  String get billerId => _billerId ?? '';
  set billerId(String? val) => _billerId = val;

  bool hasBillerId() => _billerId != null;

  // "qrType" field.
  String? _qrType;
  String get qrType => _qrType ?? '';
  set qrType(String? val) => _qrType = val;

  bool hasQrType() => _qrType != null;

  // "frequency" field.
  TransactionScheduleType? _frequency;
  TransactionScheduleType? get frequency => _frequency;
  set frequency(TransactionScheduleType? val) => _frequency = val;

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

  // "isScheduledTransfer" field.
  bool? _isScheduledTransfer;
  bool get isScheduledTransfer => _isScheduledTransfer ?? false;
  set isScheduledTransfer(bool? val) => _isScheduledTransfer = val;

  bool hasIsScheduledTransfer() => _isScheduledTransfer != null;

  // "nextRunAt" field.
  String? _nextRunAt;
  String get nextRunAt => _nextRunAt ?? '';
  set nextRunAt(String? val) => _nextRunAt = val;

  bool hasNextRunAt() => _nextRunAt != null;

  // "maskedAccountNumber" field.
  String? _maskedAccountNumber;
  String get maskedAccountNumber => _maskedAccountNumber ?? '';
  set maskedAccountNumber(String? val) => _maskedAccountNumber = val;

  bool hasMaskedAccountNumber() => _maskedAccountNumber != null;

  // "maskedDestinationAccountNumber" field.
  String? _maskedDestinationAccountNumber;
  String get maskedDestinationAccountNumber =>
      _maskedDestinationAccountNumber ?? '';
  set maskedDestinationAccountNumber(String? val) =>
      _maskedDestinationAccountNumber = val;

  bool hasMaskedDestinationAccountNumber() =>
      _maskedDestinationAccountNumber != null;

  static PaymentIniatedModelStruct fromMap(Map<String, dynamic> data) =>
      PaymentIniatedModelStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        otpRequired: data['otpRequired'] as bool?,
        expiresAt: data['expiresAt'] as String?,
        fee: castToType<double>(data['fee']),
        totalAmount: castToType<double>(data['totalAmount']),
        bankName: data['bankName'] as String?,
        destinationAccountNumber: data['destinationAccountNumber'] as String?,
        amount: castToType<double>(data['amount']),
        remarks: data['remarks'] as String?,
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        destinationAccountName: data['destinationAccountName'] as String?,
        destinationBankCode: data['destinationBankCode'] as String?,
        currency: data['currency'] as String?,
        accountType: data['accountType'] as String?,
        transferType: data['transferType'] as String?,
        billerId: data['billerId'] as String?,
        qrType: data['qrType'] as String?,
        frequency: data['frequency'] is TransactionScheduleType
            ? data['frequency']
            : deserializeEnum<TransactionScheduleType>(data['frequency']),
        startDate: data['startDate'] as String?,
        endCondition: data['endCondition'] as String?,
        endDate: data['endDate'] as String?,
        maxOccurrences: castToType<int>(data['maxOccurrences']),
        deviceId: data['deviceId'] as String?,
        isScheduledTransfer: data['isScheduledTransfer'] as bool?,
        nextRunAt: data['nextRunAt'] as String?,
        maskedAccountNumber: data['maskedAccountNumber'] as String?,
        maskedDestinationAccountNumber:
            data['maskedDestinationAccountNumber'] as String?,
      );

  static PaymentIniatedModelStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentIniatedModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'otpRequired': _otpRequired,
        'expiresAt': _expiresAt,
        'fee': _fee,
        'totalAmount': _totalAmount,
        'bankName': _bankName,
        'destinationAccountNumber': _destinationAccountNumber,
        'amount': _amount,
        'remarks': _remarks,
        'sourceAccountNumber': _sourceAccountNumber,
        'destinationAccountName': _destinationAccountName,
        'destinationBankCode': _destinationBankCode,
        'currency': _currency,
        'accountType': _accountType,
        'transferType': _transferType,
        'billerId': _billerId,
        'qrType': _qrType,
        'frequency': _frequency?.serialize(),
        'startDate': _startDate,
        'endCondition': _endCondition,
        'endDate': _endDate,
        'maxOccurrences': _maxOccurrences,
        'deviceId': _deviceId,
        'isScheduledTransfer': _isScheduledTransfer,
        'nextRunAt': _nextRunAt,
        'maskedAccountNumber': _maskedAccountNumber,
        'maskedDestinationAccountNumber': _maskedDestinationAccountNumber,
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
        'otpRequired': serializeParam(
          _otpRequired,
          ParamType.bool,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'fee': serializeParam(
          _fee,
          ParamType.double,
        ),
        'totalAmount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
        'bankName': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'destinationAccountNumber': serializeParam(
          _destinationAccountNumber,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'destinationAccountName': serializeParam(
          _destinationAccountName,
          ParamType.String,
        ),
        'destinationBankCode': serializeParam(
          _destinationBankCode,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'accountType': serializeParam(
          _accountType,
          ParamType.String,
        ),
        'transferType': serializeParam(
          _transferType,
          ParamType.String,
        ),
        'billerId': serializeParam(
          _billerId,
          ParamType.String,
        ),
        'qrType': serializeParam(
          _qrType,
          ParamType.String,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.Enum,
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
        'isScheduledTransfer': serializeParam(
          _isScheduledTransfer,
          ParamType.bool,
        ),
        'nextRunAt': serializeParam(
          _nextRunAt,
          ParamType.String,
        ),
        'maskedAccountNumber': serializeParam(
          _maskedAccountNumber,
          ParamType.String,
        ),
        'maskedDestinationAccountNumber': serializeParam(
          _maskedDestinationAccountNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentIniatedModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PaymentIniatedModelStruct(
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
        otpRequired: deserializeParam(
          data['otpRequired'],
          ParamType.bool,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
        fee: deserializeParam(
          data['fee'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['totalAmount'],
          ParamType.double,
          false,
        ),
        bankName: deserializeParam(
          data['bankName'],
          ParamType.String,
          false,
        ),
        destinationAccountNumber: deserializeParam(
          data['destinationAccountNumber'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        sourceAccountNumber: deserializeParam(
          data['sourceAccountNumber'],
          ParamType.String,
          false,
        ),
        destinationAccountName: deserializeParam(
          data['destinationAccountName'],
          ParamType.String,
          false,
        ),
        destinationBankCode: deserializeParam(
          data['destinationBankCode'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        accountType: deserializeParam(
          data['accountType'],
          ParamType.String,
          false,
        ),
        transferType: deserializeParam(
          data['transferType'],
          ParamType.String,
          false,
        ),
        billerId: deserializeParam(
          data['billerId'],
          ParamType.String,
          false,
        ),
        qrType: deserializeParam(
          data['qrType'],
          ParamType.String,
          false,
        ),
        frequency: deserializeParam<TransactionScheduleType>(
          data['frequency'],
          ParamType.Enum,
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
        isScheduledTransfer: deserializeParam(
          data['isScheduledTransfer'],
          ParamType.bool,
          false,
        ),
        nextRunAt: deserializeParam(
          data['nextRunAt'],
          ParamType.String,
          false,
        ),
        maskedAccountNumber: deserializeParam(
          data['maskedAccountNumber'],
          ParamType.String,
          false,
        ),
        maskedDestinationAccountNumber: deserializeParam(
          data['maskedDestinationAccountNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentIniatedModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentIniatedModelStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        otpRequired == other.otpRequired &&
        expiresAt == other.expiresAt &&
        fee == other.fee &&
        totalAmount == other.totalAmount &&
        bankName == other.bankName &&
        destinationAccountNumber == other.destinationAccountNumber &&
        amount == other.amount &&
        remarks == other.remarks &&
        sourceAccountNumber == other.sourceAccountNumber &&
        destinationAccountName == other.destinationAccountName &&
        destinationBankCode == other.destinationBankCode &&
        currency == other.currency &&
        accountType == other.accountType &&
        transferType == other.transferType &&
        billerId == other.billerId &&
        qrType == other.qrType &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        endCondition == other.endCondition &&
        endDate == other.endDate &&
        maxOccurrences == other.maxOccurrences &&
        deviceId == other.deviceId &&
        isScheduledTransfer == other.isScheduledTransfer &&
        nextRunAt == other.nextRunAt &&
        maskedAccountNumber == other.maskedAccountNumber &&
        maskedDestinationAccountNumber == other.maskedDestinationAccountNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        status,
        otpRequired,
        expiresAt,
        fee,
        totalAmount,
        bankName,
        destinationAccountNumber,
        amount,
        remarks,
        sourceAccountNumber,
        destinationAccountName,
        destinationBankCode,
        currency,
        accountType,
        transferType,
        billerId,
        qrType,
        frequency,
        startDate,
        endCondition,
        endDate,
        maxOccurrences,
        deviceId,
        isScheduledTransfer,
        nextRunAt,
        maskedAccountNumber,
        maskedDestinationAccountNumber
      ]);
}

PaymentIniatedModelStruct createPaymentIniatedModelStruct({
  String? id,
  String? referenceNumber,
  String? status,
  bool? otpRequired,
  String? expiresAt,
  double? fee,
  double? totalAmount,
  String? bankName,
  String? destinationAccountNumber,
  double? amount,
  String? remarks,
  String? sourceAccountNumber,
  String? destinationAccountName,
  String? destinationBankCode,
  String? currency,
  String? accountType,
  String? transferType,
  String? billerId,
  String? qrType,
  TransactionScheduleType? frequency,
  String? startDate,
  String? endCondition,
  String? endDate,
  int? maxOccurrences,
  String? deviceId,
  bool? isScheduledTransfer,
  String? nextRunAt,
  String? maskedAccountNumber,
  String? maskedDestinationAccountNumber,
}) =>
    PaymentIniatedModelStruct(
      id: id,
      referenceNumber: referenceNumber,
      status: status,
      otpRequired: otpRequired,
      expiresAt: expiresAt,
      fee: fee,
      totalAmount: totalAmount,
      bankName: bankName,
      destinationAccountNumber: destinationAccountNumber,
      amount: amount,
      remarks: remarks,
      sourceAccountNumber: sourceAccountNumber,
      destinationAccountName: destinationAccountName,
      destinationBankCode: destinationBankCode,
      currency: currency,
      accountType: accountType,
      transferType: transferType,
      billerId: billerId,
      qrType: qrType,
      frequency: frequency,
      startDate: startDate,
      endCondition: endCondition,
      endDate: endDate,
      maxOccurrences: maxOccurrences,
      deviceId: deviceId,
      isScheduledTransfer: isScheduledTransfer,
      nextRunAt: nextRunAt,
      maskedAccountNumber: maskedAccountNumber,
      maskedDestinationAccountNumber: maskedDestinationAccountNumber,
    );
