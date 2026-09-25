// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionFMSDataStructureStruct extends BaseStruct {
  TransactionFMSDataStructureStruct({
    TransactionStruct? transaction,
  }) : _transaction = transaction;

  // "TRANSACTION" field.
  TransactionStruct? _transaction;
  TransactionStruct get transaction => _transaction ?? TransactionStruct();
  set transaction(TransactionStruct? val) => _transaction = val;

  void updateTransaction(Function(TransactionStruct) updateFn) {
    updateFn(_transaction ??= TransactionStruct());
  }

  bool hasTransaction() => _transaction != null;

  static TransactionFMSDataStructureStruct fromMap(Map<String, dynamic> data) =>
      TransactionFMSDataStructureStruct(
        transaction: data['TRANSACTION'] is TransactionStruct
            ? data['TRANSACTION']
            : TransactionStruct.maybeFromMap(data['TRANSACTION']),
      );

  static TransactionFMSDataStructureStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TransactionFMSDataStructureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TRANSACTION': _transaction?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TRANSACTION': serializeParam(
          _transaction,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TransactionFMSDataStructureStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionFMSDataStructureStruct(
        transaction: deserializeStructParam(
          data['TRANSACTION'],
          ParamType.DataStruct,
          false,
          structBuilder: TransactionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TransactionFMSDataStructureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionFMSDataStructureStruct &&
        transaction == other.transaction;
  }

  @override
  int get hashCode => const ListEquality().hash([transaction]);
}

TransactionFMSDataStructureStruct createTransactionFMSDataStructureStruct({
  TransactionStruct? transaction,
}) =>
    TransactionFMSDataStructureStruct(
      transaction: transaction ?? TransactionStruct(),
    );
