// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanInitialPaymentResponseStruct extends BaseStruct {
  LoanInitialPaymentResponseStruct({
    String? id,
    String? referenceNumber,
    String? status,
    double? amount,
    String? currency,
    String? loanAccountNumber,
    SourceAccountStruct? sourceAccount,
    String? expiresAt,
    String? createdAt,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _amount = amount,
        _currency = currency,
        _loanAccountNumber = loanAccountNumber,
        _sourceAccount = sourceAccount,
        _expiresAt = expiresAt,
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

  static LoanInitialPaymentResponseStruct fromMap(Map<String, dynamic> data) =>
      LoanInitialPaymentResponseStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        amount: castToType<double>(data['amount']),
        currency: data['currency'] as String?,
        loanAccountNumber: data['loanAccountNumber'] as String?,
        sourceAccount: data['sourceAccount'] is SourceAccountStruct
            ? data['sourceAccount']
            : SourceAccountStruct.maybeFromMap(data['sourceAccount']),
        expiresAt: data['expiresAt'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static LoanInitialPaymentResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? LoanInitialPaymentResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'amount': _amount,
        'currency': _currency,
        'loanAccountNumber': _loanAccountNumber,
        'sourceAccount': _sourceAccount?.toMap(),
        'expiresAt': _expiresAt,
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
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanInitialPaymentResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanInitialPaymentResponseStruct(
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
      );

  @override
  String toString() => 'LoanInitialPaymentResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanInitialPaymentResponseStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        amount == other.amount &&
        currency == other.currency &&
        loanAccountNumber == other.loanAccountNumber &&
        sourceAccount == other.sourceAccount &&
        expiresAt == other.expiresAt &&
        createdAt == other.createdAt;
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
        expiresAt,
        createdAt
      ]);
}

LoanInitialPaymentResponseStruct createLoanInitialPaymentResponseStruct({
  String? id,
  String? referenceNumber,
  String? status,
  double? amount,
  String? currency,
  String? loanAccountNumber,
  SourceAccountStruct? sourceAccount,
  String? expiresAt,
  String? createdAt,
}) =>
    LoanInitialPaymentResponseStruct(
      id: id,
      referenceNumber: referenceNumber,
      status: status,
      amount: amount,
      currency: currency,
      loanAccountNumber: loanAccountNumber,
      sourceAccount: sourceAccount ?? SourceAccountStruct(),
      expiresAt: expiresAt,
      createdAt: createdAt,
    );
