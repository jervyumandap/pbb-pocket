// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportSelectionItemsStruct extends BaseStruct {
  ReportSelectionItemsStruct({
    String? item,
    String? value,
    String? status,
    DateTime? transactionDate,
    double? balance,
  })  : _item = item,
        _value = value,
        _status = status,
        _transactionDate = transactionDate,
        _balance = balance;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;

  bool hasItem() => _item != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "transactionDate" field.
  DateTime? _transactionDate;
  DateTime? get transactionDate => _transactionDate;
  set transactionDate(DateTime? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  set balance(double? val) => _balance = val;

  void incrementBalance(double amount) => balance = balance + amount;

  bool hasBalance() => _balance != null;

  static ReportSelectionItemsStruct fromMap(Map<String, dynamic> data) =>
      ReportSelectionItemsStruct(
        item: data['item'] as String?,
        value: data['value'] as String?,
        status: data['status'] as String?,
        transactionDate: data['transactionDate'] as DateTime?,
        balance: castToType<double>(data['balance']),
      );

  static ReportSelectionItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportSelectionItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item': _item,
        'value': _value,
        'status': _status,
        'transactionDate': _transactionDate,
        'balance': _balance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item': serializeParam(
          _item,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'transactionDate': serializeParam(
          _transactionDate,
          ParamType.DateTime,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.double,
        ),
      }.withoutNulls;

  static ReportSelectionItemsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportSelectionItemsStruct(
        item: deserializeParam(
          data['item'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transactionDate'],
          ParamType.DateTime,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ReportSelectionItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportSelectionItemsStruct &&
        item == other.item &&
        value == other.value &&
        status == other.status &&
        transactionDate == other.transactionDate &&
        balance == other.balance;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([item, value, status, transactionDate, balance]);
}

ReportSelectionItemsStruct createReportSelectionItemsStruct({
  String? item,
  String? value,
  String? status,
  DateTime? transactionDate,
  double? balance,
}) =>
    ReportSelectionItemsStruct(
      item: item,
      value: value,
      status: status,
      transactionDate: transactionDate,
      balance: balance,
    );
