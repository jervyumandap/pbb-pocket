// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountStatementModelStruct extends BaseStruct {
  AccountStatementModelStruct({
    String? transactionDate,
    String? description,
    String? referenceNumber,
    String? valueDate,
    String? currency,
    double? debit,
    double? credit,
    double? runningBalance,
  })  : _transactionDate = transactionDate,
        _description = description,
        _referenceNumber = referenceNumber,
        _valueDate = valueDate,
        _currency = currency,
        _debit = debit,
        _credit = credit,
        _runningBalance = runningBalance;

  // "transactionDate" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

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

  // "valueDate" field.
  String? _valueDate;
  String get valueDate => _valueDate ?? '';
  set valueDate(String? val) => _valueDate = val;

  bool hasValueDate() => _valueDate != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "debit" field.
  double? _debit;
  double get debit => _debit ?? 0.0;
  set debit(double? val) => _debit = val;

  void incrementDebit(double amount) => debit = debit + amount;

  bool hasDebit() => _debit != null;

  // "credit" field.
  double? _credit;
  double get credit => _credit ?? 0.0;
  set credit(double? val) => _credit = val;

  void incrementCredit(double amount) => credit = credit + amount;

  bool hasCredit() => _credit != null;

  // "runningBalance" field.
  double? _runningBalance;
  double get runningBalance => _runningBalance ?? 0.0;
  set runningBalance(double? val) => _runningBalance = val;

  void incrementRunningBalance(double amount) =>
      runningBalance = runningBalance + amount;

  bool hasRunningBalance() => _runningBalance != null;

  static AccountStatementModelStruct fromMap(Map<String, dynamic> data) =>
      AccountStatementModelStruct(
        transactionDate: data['transactionDate'] as String?,
        description: data['description'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        valueDate: data['valueDate'] as String?,
        currency: data['currency'] as String?,
        debit: castToType<double>(data['debit']),
        credit: castToType<double>(data['credit']),
        runningBalance: castToType<double>(data['runningBalance']),
      );

  static AccountStatementModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountStatementModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'transactionDate': _transactionDate,
        'description': _description,
        'referenceNumber': _referenceNumber,
        'valueDate': _valueDate,
        'currency': _currency,
        'debit': _debit,
        'credit': _credit,
        'runningBalance': _runningBalance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactionDate': serializeParam(
          _transactionDate,
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
        'valueDate': serializeParam(
          _valueDate,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'debit': serializeParam(
          _debit,
          ParamType.double,
        ),
        'credit': serializeParam(
          _credit,
          ParamType.double,
        ),
        'runningBalance': serializeParam(
          _runningBalance,
          ParamType.double,
        ),
      }.withoutNulls;

  static AccountStatementModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccountStatementModelStruct(
        transactionDate: deserializeParam(
          data['transactionDate'],
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
        valueDate: deserializeParam(
          data['valueDate'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        debit: deserializeParam(
          data['debit'],
          ParamType.double,
          false,
        ),
        credit: deserializeParam(
          data['credit'],
          ParamType.double,
          false,
        ),
        runningBalance: deserializeParam(
          data['runningBalance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'AccountStatementModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountStatementModelStruct &&
        transactionDate == other.transactionDate &&
        description == other.description &&
        referenceNumber == other.referenceNumber &&
        valueDate == other.valueDate &&
        currency == other.currency &&
        debit == other.debit &&
        credit == other.credit &&
        runningBalance == other.runningBalance;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactionDate,
        description,
        referenceNumber,
        valueDate,
        currency,
        debit,
        credit,
        runningBalance
      ]);
}

AccountStatementModelStruct createAccountStatementModelStruct({
  String? transactionDate,
  String? description,
  String? referenceNumber,
  String? valueDate,
  String? currency,
  double? debit,
  double? credit,
  double? runningBalance,
}) =>
    AccountStatementModelStruct(
      transactionDate: transactionDate,
      description: description,
      referenceNumber: referenceNumber,
      valueDate: valueDate,
      currency: currency,
      debit: debit,
      credit: credit,
      runningBalance: runningBalance,
    );
