// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanTransactionListModelDownloadStruct extends BaseStruct {
  LoanTransactionListModelDownloadStruct({
    String? transactionId,
    String? transactionDate,
    String? valueDate,
    double? amount,
    String? currency,
    String? transactionType,
    String? description,
    String? referenceNumber,
    double? runningBalance,
    String? direction,
  })  : _transactionId = transactionId,
        _transactionDate = transactionDate,
        _valueDate = valueDate,
        _amount = amount,
        _currency = currency,
        _transactionType = transactionType,
        _description = description,
        _referenceNumber = referenceNumber,
        _runningBalance = runningBalance,
        _direction = direction;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  // "transactionDate" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "valueDate" field.
  String? _valueDate;
  String get valueDate => _valueDate ?? '';
  set valueDate(String? val) => _valueDate = val;

  bool hasValueDate() => _valueDate != null;

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

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "runningBalance" field.
  double? _runningBalance;
  double get runningBalance => _runningBalance ?? 0.0;
  set runningBalance(double? val) => _runningBalance = val;

  void incrementRunningBalance(double amount) =>
      runningBalance = runningBalance + amount;

  bool hasRunningBalance() => _runningBalance != null;

  // "direction" field.
  String? _direction;
  String get direction => _direction ?? '';
  set direction(String? val) => _direction = val;

  bool hasDirection() => _direction != null;

  static LoanTransactionListModelDownloadStruct fromMap(
          Map<String, dynamic> data) =>
      LoanTransactionListModelDownloadStruct(
        transactionId: data['transactionId'] as String?,
        transactionDate: data['transactionDate'] as String?,
        valueDate: data['valueDate'] as String?,
        amount: castToType<double>(data['amount']),
        currency: data['currency'] as String?,
        transactionType: data['transactionType'] as String?,
        description: data['description'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        runningBalance: castToType<double>(data['runningBalance']),
        direction: data['direction'] as String?,
      );

  static LoanTransactionListModelDownloadStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? LoanTransactionListModelDownloadStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'transactionId': _transactionId,
        'transactionDate': _transactionDate,
        'valueDate': _valueDate,
        'amount': _amount,
        'currency': _currency,
        'transactionType': _transactionType,
        'description': _description,
        'referenceNumber': _referenceNumber,
        'runningBalance': _runningBalance,
        'direction': _direction,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactionId': serializeParam(
          _transactionId,
          ParamType.String,
        ),
        'transactionDate': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'valueDate': serializeParam(
          _valueDate,
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
        'transactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'runningBalance': serializeParam(
          _runningBalance,
          ParamType.double,
        ),
        'direction': serializeParam(
          _direction,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanTransactionListModelDownloadStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanTransactionListModelDownloadStruct(
        transactionId: deserializeParam(
          data['transactionId'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transactionDate'],
          ParamType.String,
          false,
        ),
        valueDate: deserializeParam(
          data['valueDate'],
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
        transactionType: deserializeParam(
          data['transactionType'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        runningBalance: deserializeParam(
          data['runningBalance'],
          ParamType.double,
          false,
        ),
        direction: deserializeParam(
          data['direction'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanTransactionListModelDownloadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanTransactionListModelDownloadStruct &&
        transactionId == other.transactionId &&
        transactionDate == other.transactionDate &&
        valueDate == other.valueDate &&
        amount == other.amount &&
        currency == other.currency &&
        transactionType == other.transactionType &&
        description == other.description &&
        referenceNumber == other.referenceNumber &&
        runningBalance == other.runningBalance &&
        direction == other.direction;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactionId,
        transactionDate,
        valueDate,
        amount,
        currency,
        transactionType,
        description,
        referenceNumber,
        runningBalance,
        direction
      ]);
}

LoanTransactionListModelDownloadStruct
    createLoanTransactionListModelDownloadStruct({
  String? transactionId,
  String? transactionDate,
  String? valueDate,
  double? amount,
  String? currency,
  String? transactionType,
  String? description,
  String? referenceNumber,
  double? runningBalance,
  String? direction,
}) =>
        LoanTransactionListModelDownloadStruct(
          transactionId: transactionId,
          transactionDate: transactionDate,
          valueDate: valueDate,
          amount: amount,
          currency: currency,
          transactionType: transactionType,
          description: description,
          referenceNumber: referenceNumber,
          runningBalance: runningBalance,
          direction: direction,
        );
