// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransferDetailsStruct extends BaseStruct {
  TransferDetailsStruct({
    String? sourceAccountName,
    String? sourceAccountNumber,
    String? sourceAccountType,
    String? recipientName,
    String? recipientAccountNumber,
    String? recipientBankCode,
    double? amount,
    double? transferFee,
    String? remarks,
    String? currency,
    String? transactionDate,
    String? referenceId,
  })  : _sourceAccountName = sourceAccountName,
        _sourceAccountNumber = sourceAccountNumber,
        _sourceAccountType = sourceAccountType,
        _recipientName = recipientName,
        _recipientAccountNumber = recipientAccountNumber,
        _recipientBankCode = recipientBankCode,
        _amount = amount,
        _transferFee = transferFee,
        _remarks = remarks,
        _currency = currency,
        _transactionDate = transactionDate,
        _referenceId = referenceId;

  // "sourceAccountName" field.
  String? _sourceAccountName;
  String get sourceAccountName => _sourceAccountName ?? '';
  set sourceAccountName(String? val) => _sourceAccountName = val;

  bool hasSourceAccountName() => _sourceAccountName != null;

  // "sourceAccountNumber" field.
  String? _sourceAccountNumber;
  String get sourceAccountNumber => _sourceAccountNumber ?? '';
  set sourceAccountNumber(String? val) => _sourceAccountNumber = val;

  bool hasSourceAccountNumber() => _sourceAccountNumber != null;

  // "sourceAccountType" field.
  String? _sourceAccountType;
  String get sourceAccountType => _sourceAccountType ?? '';
  set sourceAccountType(String? val) => _sourceAccountType = val;

  bool hasSourceAccountType() => _sourceAccountType != null;

  // "recipientName" field.
  String? _recipientName;
  String get recipientName => _recipientName ?? '';
  set recipientName(String? val) => _recipientName = val;

  bool hasRecipientName() => _recipientName != null;

  // "recipientAccountNumber" field.
  String? _recipientAccountNumber;
  String get recipientAccountNumber => _recipientAccountNumber ?? '';
  set recipientAccountNumber(String? val) => _recipientAccountNumber = val;

  bool hasRecipientAccountNumber() => _recipientAccountNumber != null;

  // "recipientBankCode" field.
  String? _recipientBankCode;
  String get recipientBankCode => _recipientBankCode ?? '';
  set recipientBankCode(String? val) => _recipientBankCode = val;

  bool hasRecipientBankCode() => _recipientBankCode != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "transferFee" field.
  double? _transferFee;
  double get transferFee => _transferFee ?? 0.0;
  set transferFee(double? val) => _transferFee = val;

  void incrementTransferFee(double amount) =>
      transferFee = transferFee + amount;

  bool hasTransferFee() => _transferFee != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "transactionDate" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "referenceId" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  static TransferDetailsStruct fromMap(Map<String, dynamic> data) =>
      TransferDetailsStruct(
        sourceAccountName: data['sourceAccountName'] as String?,
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        sourceAccountType: data['sourceAccountType'] as String?,
        recipientName: data['recipientName'] as String?,
        recipientAccountNumber: data['recipientAccountNumber'] as String?,
        recipientBankCode: data['recipientBankCode'] as String?,
        amount: castToType<double>(data['amount']),
        transferFee: castToType<double>(data['transferFee']),
        remarks: data['remarks'] as String?,
        currency: data['currency'] as String?,
        transactionDate: data['transactionDate'] as String?,
        referenceId: data['referenceId'] as String?,
      );

  static TransferDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? TransferDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sourceAccountName': _sourceAccountName,
        'sourceAccountNumber': _sourceAccountNumber,
        'sourceAccountType': _sourceAccountType,
        'recipientName': _recipientName,
        'recipientAccountNumber': _recipientAccountNumber,
        'recipientBankCode': _recipientBankCode,
        'amount': _amount,
        'transferFee': _transferFee,
        'remarks': _remarks,
        'currency': _currency,
        'transactionDate': _transactionDate,
        'referenceId': _referenceId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sourceAccountName': serializeParam(
          _sourceAccountName,
          ParamType.String,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'sourceAccountType': serializeParam(
          _sourceAccountType,
          ParamType.String,
        ),
        'recipientName': serializeParam(
          _recipientName,
          ParamType.String,
        ),
        'recipientAccountNumber': serializeParam(
          _recipientAccountNumber,
          ParamType.String,
        ),
        'recipientBankCode': serializeParam(
          _recipientBankCode,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'transferFee': serializeParam(
          _transferFee,
          ParamType.double,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'transactionDate': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'referenceId': serializeParam(
          _referenceId,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransferDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransferDetailsStruct(
        sourceAccountName: deserializeParam(
          data['sourceAccountName'],
          ParamType.String,
          false,
        ),
        sourceAccountNumber: deserializeParam(
          data['sourceAccountNumber'],
          ParamType.String,
          false,
        ),
        sourceAccountType: deserializeParam(
          data['sourceAccountType'],
          ParamType.String,
          false,
        ),
        recipientName: deserializeParam(
          data['recipientName'],
          ParamType.String,
          false,
        ),
        recipientAccountNumber: deserializeParam(
          data['recipientAccountNumber'],
          ParamType.String,
          false,
        ),
        recipientBankCode: deserializeParam(
          data['recipientBankCode'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        transferFee: deserializeParam(
          data['transferFee'],
          ParamType.double,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transactionDate'],
          ParamType.String,
          false,
        ),
        referenceId: deserializeParam(
          data['referenceId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransferDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransferDetailsStruct &&
        sourceAccountName == other.sourceAccountName &&
        sourceAccountNumber == other.sourceAccountNumber &&
        sourceAccountType == other.sourceAccountType &&
        recipientName == other.recipientName &&
        recipientAccountNumber == other.recipientAccountNumber &&
        recipientBankCode == other.recipientBankCode &&
        amount == other.amount &&
        transferFee == other.transferFee &&
        remarks == other.remarks &&
        currency == other.currency &&
        transactionDate == other.transactionDate &&
        referenceId == other.referenceId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sourceAccountName,
        sourceAccountNumber,
        sourceAccountType,
        recipientName,
        recipientAccountNumber,
        recipientBankCode,
        amount,
        transferFee,
        remarks,
        currency,
        transactionDate,
        referenceId
      ]);
}

TransferDetailsStruct createTransferDetailsStruct({
  String? sourceAccountName,
  String? sourceAccountNumber,
  String? sourceAccountType,
  String? recipientName,
  String? recipientAccountNumber,
  String? recipientBankCode,
  double? amount,
  double? transferFee,
  String? remarks,
  String? currency,
  String? transactionDate,
  String? referenceId,
}) =>
    TransferDetailsStruct(
      sourceAccountName: sourceAccountName,
      sourceAccountNumber: sourceAccountNumber,
      sourceAccountType: sourceAccountType,
      recipientName: recipientName,
      recipientAccountNumber: recipientAccountNumber,
      recipientBankCode: recipientBankCode,
      amount: amount,
      transferFee: transferFee,
      remarks: remarks,
      currency: currency,
      transactionDate: transactionDate,
      referenceId: referenceId,
    );
