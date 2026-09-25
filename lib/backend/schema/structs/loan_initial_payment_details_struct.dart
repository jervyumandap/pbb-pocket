// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanInitialPaymentDetailsStruct extends BaseStruct {
  LoanInitialPaymentDetailsStruct({
    double? amount,
    String? sourceAccountNumber,
    String? sourceAccountName,
    String? currency,
    String? remarks,
    String? idempotencyKey,
    String? loanType,
    String? loanAccountNumber,
    String? challengeID,
    String? paymentID,
  })  : _amount = amount,
        _sourceAccountNumber = sourceAccountNumber,
        _sourceAccountName = sourceAccountName,
        _currency = currency,
        _remarks = remarks,
        _idempotencyKey = idempotencyKey,
        _loanType = loanType,
        _loanAccountNumber = loanAccountNumber,
        _challengeID = challengeID,
        _paymentID = paymentID;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "sourceAccountNumber" field.
  String? _sourceAccountNumber;
  String get sourceAccountNumber => _sourceAccountNumber ?? '';
  set sourceAccountNumber(String? val) => _sourceAccountNumber = val;

  bool hasSourceAccountNumber() => _sourceAccountNumber != null;

  // "sourceAccountName" field.
  String? _sourceAccountName;
  String get sourceAccountName => _sourceAccountName ?? '';
  set sourceAccountName(String? val) => _sourceAccountName = val;

  bool hasSourceAccountName() => _sourceAccountName != null;

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

  // "idempotencyKey" field.
  String? _idempotencyKey;
  String get idempotencyKey => _idempotencyKey ?? '';
  set idempotencyKey(String? val) => _idempotencyKey = val;

  bool hasIdempotencyKey() => _idempotencyKey != null;

  // "loanType" field.
  String? _loanType;
  String get loanType => _loanType ?? '';
  set loanType(String? val) => _loanType = val;

  bool hasLoanType() => _loanType != null;

  // "loanAccountNumber" field.
  String? _loanAccountNumber;
  String get loanAccountNumber => _loanAccountNumber ?? '';
  set loanAccountNumber(String? val) => _loanAccountNumber = val;

  bool hasLoanAccountNumber() => _loanAccountNumber != null;

  // "challengeID" field.
  String? _challengeID;
  String get challengeID => _challengeID ?? '';
  set challengeID(String? val) => _challengeID = val;

  bool hasChallengeID() => _challengeID != null;

  // "paymentID" field.
  String? _paymentID;
  String get paymentID => _paymentID ?? '';
  set paymentID(String? val) => _paymentID = val;

  bool hasPaymentID() => _paymentID != null;

  static LoanInitialPaymentDetailsStruct fromMap(Map<String, dynamic> data) =>
      LoanInitialPaymentDetailsStruct(
        amount: castToType<double>(data['amount']),
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        sourceAccountName: data['sourceAccountName'] as String?,
        currency: data['currency'] as String?,
        remarks: data['remarks'] as String?,
        idempotencyKey: data['idempotencyKey'] as String?,
        loanType: data['loanType'] as String?,
        loanAccountNumber: data['loanAccountNumber'] as String?,
        challengeID: data['challengeID'] as String?,
        paymentID: data['paymentID'] as String?,
      );

  static LoanInitialPaymentDetailsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? LoanInitialPaymentDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'sourceAccountNumber': _sourceAccountNumber,
        'sourceAccountName': _sourceAccountName,
        'currency': _currency,
        'remarks': _remarks,
        'idempotencyKey': _idempotencyKey,
        'loanType': _loanType,
        'loanAccountNumber': _loanAccountNumber,
        'challengeID': _challengeID,
        'paymentID': _paymentID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'sourceAccountName': serializeParam(
          _sourceAccountName,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
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
        'loanType': serializeParam(
          _loanType,
          ParamType.String,
        ),
        'loanAccountNumber': serializeParam(
          _loanAccountNumber,
          ParamType.String,
        ),
        'challengeID': serializeParam(
          _challengeID,
          ParamType.String,
        ),
        'paymentID': serializeParam(
          _paymentID,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanInitialPaymentDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanInitialPaymentDetailsStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        sourceAccountNumber: deserializeParam(
          data['sourceAccountNumber'],
          ParamType.String,
          false,
        ),
        sourceAccountName: deserializeParam(
          data['sourceAccountName'],
          ParamType.String,
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
        idempotencyKey: deserializeParam(
          data['idempotencyKey'],
          ParamType.String,
          false,
        ),
        loanType: deserializeParam(
          data['loanType'],
          ParamType.String,
          false,
        ),
        loanAccountNumber: deserializeParam(
          data['loanAccountNumber'],
          ParamType.String,
          false,
        ),
        challengeID: deserializeParam(
          data['challengeID'],
          ParamType.String,
          false,
        ),
        paymentID: deserializeParam(
          data['paymentID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanInitialPaymentDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanInitialPaymentDetailsStruct &&
        amount == other.amount &&
        sourceAccountNumber == other.sourceAccountNumber &&
        sourceAccountName == other.sourceAccountName &&
        currency == other.currency &&
        remarks == other.remarks &&
        idempotencyKey == other.idempotencyKey &&
        loanType == other.loanType &&
        loanAccountNumber == other.loanAccountNumber &&
        challengeID == other.challengeID &&
        paymentID == other.paymentID;
  }

  @override
  int get hashCode => const ListEquality().hash([
        amount,
        sourceAccountNumber,
        sourceAccountName,
        currency,
        remarks,
        idempotencyKey,
        loanType,
        loanAccountNumber,
        challengeID,
        paymentID
      ]);
}

LoanInitialPaymentDetailsStruct createLoanInitialPaymentDetailsStruct({
  double? amount,
  String? sourceAccountNumber,
  String? sourceAccountName,
  String? currency,
  String? remarks,
  String? idempotencyKey,
  String? loanType,
  String? loanAccountNumber,
  String? challengeID,
  String? paymentID,
}) =>
    LoanInitialPaymentDetailsStruct(
      amount: amount,
      sourceAccountNumber: sourceAccountNumber,
      sourceAccountName: sourceAccountName,
      currency: currency,
      remarks: remarks,
      idempotencyKey: idempotencyKey,
      loanType: loanType,
      loanAccountNumber: loanAccountNumber,
      challengeID: challengeID,
      paymentID: paymentID,
    );
