// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBConfirmBillPaymentResponseStruct extends BaseStruct {
  WBConfirmBillPaymentResponseStruct({
    String? id,
    String? referenceNumber,
    String? status,
    WBBillerStruct? biller,
    String? accountNumber,
    String? accountHolderName,
    double? amount,
    double? convenienceFee,
    double? totalAmount,
    String? currency,
    AccountsStruct? sourceAccount,
    String? remarks,
    String? providerReferenceId,
    String? expiresAt,
    String? createdAt,
    String? confirmedAt,
    String? processedAt,
    String? errorMessage,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _status = status,
        _biller = biller,
        _accountNumber = accountNumber,
        _accountHolderName = accountHolderName,
        _amount = amount,
        _convenienceFee = convenienceFee,
        _totalAmount = totalAmount,
        _currency = currency,
        _sourceAccount = sourceAccount,
        _remarks = remarks,
        _providerReferenceId = providerReferenceId,
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

  // "biller" field.
  WBBillerStruct? _biller;
  WBBillerStruct get biller => _biller ?? WBBillerStruct();
  set biller(WBBillerStruct? val) => _biller = val;

  void updateBiller(Function(WBBillerStruct) updateFn) {
    updateFn(_biller ??= WBBillerStruct());
  }

  bool hasBiller() => _biller != null;

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

  // "sourceAccount" field.
  AccountsStruct? _sourceAccount;
  AccountsStruct get sourceAccount => _sourceAccount ?? AccountsStruct();
  set sourceAccount(AccountsStruct? val) => _sourceAccount = val;

  void updateSourceAccount(Function(AccountsStruct) updateFn) {
    updateFn(_sourceAccount ??= AccountsStruct());
  }

  bool hasSourceAccount() => _sourceAccount != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "providerReferenceId" field.
  String? _providerReferenceId;
  String get providerReferenceId => _providerReferenceId ?? '';
  set providerReferenceId(String? val) => _providerReferenceId = val;

  bool hasProviderReferenceId() => _providerReferenceId != null;

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

  static WBConfirmBillPaymentResponseStruct fromMap(
          Map<String, dynamic> data) =>
      WBConfirmBillPaymentResponseStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        status: data['status'] as String?,
        biller: data['biller'] is WBBillerStruct
            ? data['biller']
            : WBBillerStruct.maybeFromMap(data['biller']),
        accountNumber: data['accountNumber'] as String?,
        accountHolderName: data['accountHolderName'] as String?,
        amount: castToType<double>(data['amount']),
        convenienceFee: castToType<double>(data['convenienceFee']),
        totalAmount: castToType<double>(data['totalAmount']),
        currency: data['currency'] as String?,
        sourceAccount: data['sourceAccount'] is AccountsStruct
            ? data['sourceAccount']
            : AccountsStruct.maybeFromMap(data['sourceAccount']),
        remarks: data['remarks'] as String?,
        providerReferenceId: data['providerReferenceId'] as String?,
        expiresAt: data['expiresAt'] as String?,
        createdAt: data['createdAt'] as String?,
        confirmedAt: data['confirmedAt'] as String?,
        processedAt: data['processedAt'] as String?,
        errorMessage: data['errorMessage'] as String?,
      );

  static WBConfirmBillPaymentResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? WBConfirmBillPaymentResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'status': _status,
        'biller': _biller?.toMap(),
        'accountNumber': _accountNumber,
        'accountHolderName': _accountHolderName,
        'amount': _amount,
        'convenienceFee': _convenienceFee,
        'totalAmount': _totalAmount,
        'currency': _currency,
        'sourceAccount': _sourceAccount?.toMap(),
        'remarks': _remarks,
        'providerReferenceId': _providerReferenceId,
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
        'biller': serializeParam(
          _biller,
          ParamType.DataStruct,
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
        'sourceAccount': serializeParam(
          _sourceAccount,
          ParamType.DataStruct,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'providerReferenceId': serializeParam(
          _providerReferenceId,
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

  static WBConfirmBillPaymentResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBConfirmBillPaymentResponseStruct(
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
          structBuilder: WBBillerStruct.fromSerializableMap,
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
        sourceAccount: deserializeStructParam(
          data['sourceAccount'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountsStruct.fromSerializableMap,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        providerReferenceId: deserializeParam(
          data['providerReferenceId'],
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
  String toString() => 'WBConfirmBillPaymentResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBConfirmBillPaymentResponseStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        status == other.status &&
        biller == other.biller &&
        accountNumber == other.accountNumber &&
        accountHolderName == other.accountHolderName &&
        amount == other.amount &&
        convenienceFee == other.convenienceFee &&
        totalAmount == other.totalAmount &&
        currency == other.currency &&
        sourceAccount == other.sourceAccount &&
        remarks == other.remarks &&
        providerReferenceId == other.providerReferenceId &&
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
        biller,
        accountNumber,
        accountHolderName,
        amount,
        convenienceFee,
        totalAmount,
        currency,
        sourceAccount,
        remarks,
        providerReferenceId,
        expiresAt,
        createdAt,
        confirmedAt,
        processedAt,
        errorMessage
      ]);
}

WBConfirmBillPaymentResponseStruct createWBConfirmBillPaymentResponseStruct({
  String? id,
  String? referenceNumber,
  String? status,
  WBBillerStruct? biller,
  String? accountNumber,
  String? accountHolderName,
  double? amount,
  double? convenienceFee,
  double? totalAmount,
  String? currency,
  AccountsStruct? sourceAccount,
  String? remarks,
  String? providerReferenceId,
  String? expiresAt,
  String? createdAt,
  String? confirmedAt,
  String? processedAt,
  String? errorMessage,
}) =>
    WBConfirmBillPaymentResponseStruct(
      id: id,
      referenceNumber: referenceNumber,
      status: status,
      biller: biller ?? WBBillerStruct(),
      accountNumber: accountNumber,
      accountHolderName: accountHolderName,
      amount: amount,
      convenienceFee: convenienceFee,
      totalAmount: totalAmount,
      currency: currency,
      sourceAccount: sourceAccount ?? AccountsStruct(),
      remarks: remarks,
      providerReferenceId: providerReferenceId,
      expiresAt: expiresAt,
      createdAt: createdAt,
      confirmedAt: confirmedAt,
      processedAt: processedAt,
      errorMessage: errorMessage,
    );
