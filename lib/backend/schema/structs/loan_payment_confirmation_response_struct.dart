// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanPaymentConfirmationResponseStruct extends BaseStruct {
  LoanPaymentConfirmationResponseStruct({
    String? id,
    String? referenceNumber,
    String? status,
    double? amount,
    String? currency,
    String? loanAccountNumber,
    SourceAccountStruct? sourceAccount,
    String? remarks,
    String? cbsTransactionId,
    String? expiresAt,
    String? createdAt,
    String? confirmedAt,
    String? processedAt,
    String? errorMessage,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _amount = amount,
        _currency = currency,
        _loanAccountNumber = loanAccountNumber,
        _sourceAccount = sourceAccount,
        _remarks = remarks,
        _cbsTransactionId = cbsTransactionId,
        _expiresAt = expiresAt,
        _createdAt = createdAt,
        _confirmedAt = confirmedAt,
        _processedAt = processedAt,
        _errorMessage = errorMessage;

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

  // "loanAccountNumber" field.
  String? _loanAccountNumber;
  String get loanAccountNumber => _loanAccountNumber ?? '';
  set loanAccountNumber(String? val) => _loanAccountNumber = val;

  bool hasLoanAccountNumber() => _loanAccountNumber != null;

  // "sourceAccount" field.
  SourceAccountStruct? _sourceAccount;
  SourceAccountStruct get sourceAccount =>
      _sourceAccount ?? SourceAccountStruct();
  set sourceAccount(SourceAccountStruct? val) => _sourceAccount = val;

  void updateSourceAccount(Function(SourceAccountStruct) updateFn) {
    updateFn(_sourceAccount ??= SourceAccountStruct());
  }

  bool hasSourceAccount() => _sourceAccount != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "cbsTransactionId" field.
  String? _cbsTransactionId;
  String get cbsTransactionId => _cbsTransactionId ?? '';
  set cbsTransactionId(String? val) => _cbsTransactionId = val;

  bool hasCbsTransactionId() => _cbsTransactionId != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "confirmedAt" field.
  String? _confirmedAt;
  String get confirmedAt => _confirmedAt ?? '';
  set confirmedAt(String? val) => _confirmedAt = val;

  bool hasConfirmedAt() => _confirmedAt != null;

  // "processedAt" field.
  String? _processedAt;
  String get processedAt => _processedAt ?? '';
  set processedAt(String? val) => _processedAt = val;

  bool hasProcessedAt() => _processedAt != null;

  // "errorMessage" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  static LoanPaymentConfirmationResponseStruct fromMap(
          Map<String, dynamic> data) =>
      LoanPaymentConfirmationResponseStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        amount: castToType<double>(data['amount']),
        currency: data['currency'] as String?,
        loanAccountNumber: data['loanAccountNumber'] as String?,
        sourceAccount: data['sourceAccount'] is SourceAccountStruct
            ? data['sourceAccount']
            : SourceAccountStruct.maybeFromMap(data['sourceAccount']),
        remarks: data['remarks'] as String?,
        cbsTransactionId: data['cbsTransactionId'] as String?,
        expiresAt: data['expiresAt'] as String?,
        createdAt: data['createdAt'] as String?,
        confirmedAt: data['confirmedAt'] as String?,
        processedAt: data['processedAt'] as String?,
        errorMessage: data['errorMessage'] as String?,
      );

  static LoanPaymentConfirmationResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? LoanPaymentConfirmationResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'amount': _amount,
        'currency': _currency,
        'loanAccountNumber': _loanAccountNumber,
        'sourceAccount': _sourceAccount?.toMap(),
        'remarks': _remarks,
        'cbsTransactionId': _cbsTransactionId,
        'expiresAt': _expiresAt,
        'createdAt': _createdAt,
        'confirmedAt': _confirmedAt,
        'processedAt': _processedAt,
        'errorMessage': _errorMessage,
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
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'loanAccountNumber': serializeParam(
          _loanAccountNumber,
          ParamType.String,
        ),
        'sourceAccount': serializeParam(
          _sourceAccount,
          ParamType.DataStruct,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'cbsTransactionId': serializeParam(
          _cbsTransactionId,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'confirmedAt': serializeParam(
          _confirmedAt,
          ParamType.String,
        ),
        'processedAt': serializeParam(
          _processedAt,
          ParamType.String,
        ),
        'errorMessage': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanPaymentConfirmationResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanPaymentConfirmationResponseStruct(
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
        loanAccountNumber: deserializeParam(
          data['loanAccountNumber'],
          ParamType.String,
          false,
        ),
        sourceAccount: deserializeStructParam(
          data['sourceAccount'],
          ParamType.DataStruct,
          false,
          structBuilder: SourceAccountStruct.fromSerializableMap,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        cbsTransactionId: deserializeParam(
          data['cbsTransactionId'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        confirmedAt: deserializeParam(
          data['confirmedAt'],
          ParamType.String,
          false,
        ),
        processedAt: deserializeParam(
          data['processedAt'],
          ParamType.String,
          false,
        ),
        errorMessage: deserializeParam(
          data['errorMessage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanPaymentConfirmationResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanPaymentConfirmationResponseStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        amount == other.amount &&
        currency == other.currency &&
        loanAccountNumber == other.loanAccountNumber &&
        sourceAccount == other.sourceAccount &&
        remarks == other.remarks &&
        cbsTransactionId == other.cbsTransactionId &&
        expiresAt == other.expiresAt &&
        createdAt == other.createdAt &&
        confirmedAt == other.confirmedAt &&
        processedAt == other.processedAt &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        status,
        amount,
        currency,
        loanAccountNumber,
        sourceAccount,
        remarks,
        cbsTransactionId,
        expiresAt,
        createdAt,
        confirmedAt,
        processedAt,
        errorMessage
      ]);
}

LoanPaymentConfirmationResponseStruct
    createLoanPaymentConfirmationResponseStruct({
  String? id,
  String? referenceNumber,
  String? status,
  double? amount,
  String? currency,
  String? loanAccountNumber,
  SourceAccountStruct? sourceAccount,
  String? remarks,
  String? cbsTransactionId,
  String? expiresAt,
  String? createdAt,
  String? confirmedAt,
  String? processedAt,
  String? errorMessage,
}) =>
        LoanPaymentConfirmationResponseStruct(
          id: id,
          referenceNumber: referenceNumber,
          status: status,
          amount: amount,
          currency: currency,
          loanAccountNumber: loanAccountNumber,
          sourceAccount: sourceAccount ?? SourceAccountStruct(),
          remarks: remarks,
          cbsTransactionId: cbsTransactionId,
          expiresAt: expiresAt,
          createdAt: createdAt,
          confirmedAt: confirmedAt,
          processedAt: processedAt,
          errorMessage: errorMessage,
        );
