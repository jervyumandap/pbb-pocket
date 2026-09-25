// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDisputeSelectedAccountStruct extends BaseStruct {
  ReportDisputeSelectedAccountStruct({
    String? accountName,
    String? accountNumber,
    String? referenceNumber,
    double? transactionBalance,
    DateTime? transactionDate,
    String? transactionId,
  })  : _accountName = accountName,
        _accountNumber = accountNumber,
        _referenceNumber = referenceNumber,
        _transactionBalance = transactionBalance,
        _transactionDate = transactionDate,
        _transactionId = transactionId;

  // "AccountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "ReferenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "TransactionBalance" field.
  double? _transactionBalance;
  double get transactionBalance => _transactionBalance ?? 0.0;
  set transactionBalance(double? val) => _transactionBalance = val;

  void incrementTransactionBalance(double amount) =>
      transactionBalance = transactionBalance + amount;

  bool hasTransactionBalance() => _transactionBalance != null;

  // "TransactionDate" field.
  DateTime? _transactionDate;
  DateTime? get transactionDate => _transactionDate;
  set transactionDate(DateTime? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "TransactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  static ReportDisputeSelectedAccountStruct fromMap(
          Map<String, dynamic> data) =>
      ReportDisputeSelectedAccountStruct(
        accountName: data['AccountName'] as String?,
        accountNumber: data['AccountNumber'] as String?,
        referenceNumber: data['ReferenceNumber'] as String?,
        transactionBalance: castToType<double>(data['TransactionBalance']),
        transactionDate: data['TransactionDate'] as DateTime?,
        transactionId: data['TransactionId'] as String?,
      );

  static ReportDisputeSelectedAccountStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ReportDisputeSelectedAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AccountName': _accountName,
        'AccountNumber': _accountNumber,
        'ReferenceNumber': _referenceNumber,
        'TransactionBalance': _transactionBalance,
        'TransactionDate': _transactionDate,
        'TransactionId': _transactionId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'ReferenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'TransactionBalance': serializeParam(
          _transactionBalance,
          ParamType.double,
        ),
        'TransactionDate': serializeParam(
          _transactionDate,
          ParamType.DateTime,
        ),
        'TransactionId': serializeParam(
          _transactionId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportDisputeSelectedAccountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportDisputeSelectedAccountStruct(
        accountName: deserializeParam(
          data['AccountName'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['ReferenceNumber'],
          ParamType.String,
          false,
        ),
        transactionBalance: deserializeParam(
          data['TransactionBalance'],
          ParamType.double,
          false,
        ),
        transactionDate: deserializeParam(
          data['TransactionDate'],
          ParamType.DateTime,
          false,
        ),
        transactionId: deserializeParam(
          data['TransactionId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportDisputeSelectedAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportDisputeSelectedAccountStruct &&
        accountName == other.accountName &&
        accountNumber == other.accountNumber &&
        referenceNumber == other.referenceNumber &&
        transactionBalance == other.transactionBalance &&
        transactionDate == other.transactionDate &&
        transactionId == other.transactionId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountName,
        accountNumber,
        referenceNumber,
        transactionBalance,
        transactionDate,
        transactionId
      ]);
}

ReportDisputeSelectedAccountStruct createReportDisputeSelectedAccountStruct({
  String? accountName,
  String? accountNumber,
  String? referenceNumber,
  double? transactionBalance,
  DateTime? transactionDate,
  String? transactionId,
}) =>
    ReportDisputeSelectedAccountStruct(
      accountName: accountName,
      accountNumber: accountNumber,
      referenceNumber: referenceNumber,
      transactionBalance: transactionBalance,
      transactionDate: transactionDate,
      transactionId: transactionId,
    );
