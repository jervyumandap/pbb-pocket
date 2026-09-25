// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBStepupAuthOptionsPayloadStruct extends BaseStruct {
  WBStepupAuthOptionsPayloadStruct({
    String? transactionType,
    String? transactionId,
    double? amount,
    String? currency,
    String? context,
  })  : _transactionType = transactionType,
        _transactionId = transactionId,
        _amount = amount,
        _currency = currency,
        _context = context;

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

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

  // "context" field.
  String? _context;
  String get context => _context ?? '';
  set context(String? val) => _context = val;

  bool hasContext() => _context != null;

  static WBStepupAuthOptionsPayloadStruct fromMap(Map<String, dynamic> data) =>
      WBStepupAuthOptionsPayloadStruct(
        transactionType: data['transactionType'] as String?,
        transactionId: data['transactionId'] as String?,
        amount: castToType<double>(data['amount']),
        currency: data['currency'] as String?,
        context: data['context'] as String?,
      );

  static WBStepupAuthOptionsPayloadStruct? maybeFromMap(dynamic data) => data
          is Map
      ? WBStepupAuthOptionsPayloadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'transactionType': _transactionType,
        'transactionId': _transactionId,
        'amount': _amount,
        'currency': _currency,
        'context': _context,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'transactionId': serializeParam(
          _transactionId,
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
        'context': serializeParam(
          _context,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBStepupAuthOptionsPayloadStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBStepupAuthOptionsPayloadStruct(
        transactionType: deserializeParam(
          data['transactionType'],
          ParamType.String,
          false,
        ),
        transactionId: deserializeParam(
          data['transactionId'],
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
        context: deserializeParam(
          data['context'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBStepupAuthOptionsPayloadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBStepupAuthOptionsPayloadStruct &&
        transactionType == other.transactionType &&
        transactionId == other.transactionId &&
        amount == other.amount &&
        currency == other.currency &&
        context == other.context;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([transactionType, transactionId, amount, currency, context]);
}

WBStepupAuthOptionsPayloadStruct createWBStepupAuthOptionsPayloadStruct({
  String? transactionType,
  String? transactionId,
  double? amount,
  String? currency,
  String? context,
}) =>
    WBStepupAuthOptionsPayloadStruct(
      transactionType: transactionType,
      transactionId: transactionId,
      amount: amount,
      currency: currency,
      context: context,
    );
