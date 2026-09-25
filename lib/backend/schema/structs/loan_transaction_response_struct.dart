// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanTransactionResponseStruct extends BaseStruct {
  LoanTransactionResponseStruct({
    List<LoanTransactionsListModelStruct>? transactions,
    PaginationStruct? pagination,
    String? loanAccountNumber,
  })  : _transactions = transactions,
        _pagination = pagination,
        _loanAccountNumber = loanAccountNumber;

  // "transactions" field.
  List<LoanTransactionsListModelStruct>? _transactions;
  List<LoanTransactionsListModelStruct> get transactions =>
      _transactions ?? const [];
  set transactions(List<LoanTransactionsListModelStruct>? val) =>
      _transactions = val;

  void updateTransactions(
      Function(List<LoanTransactionsListModelStruct>) updateFn) {
    updateFn(_transactions ??= []);
  }

  bool hasTransactions() => _transactions != null;

  // "pagination" field.
  PaginationStruct? _pagination;
  PaginationStruct get pagination => _pagination ?? PaginationStruct();
  set pagination(PaginationStruct? val) => _pagination = val;

  void updatePagination(Function(PaginationStruct) updateFn) {
    updateFn(_pagination ??= PaginationStruct());
  }

  bool hasPagination() => _pagination != null;

  // "loanAccountNumber" field.
  String? _loanAccountNumber;
  String get loanAccountNumber => _loanAccountNumber ?? '';
  set loanAccountNumber(String? val) => _loanAccountNumber = val;

  bool hasLoanAccountNumber() => _loanAccountNumber != null;

  static LoanTransactionResponseStruct fromMap(Map<String, dynamic> data) =>
      LoanTransactionResponseStruct(
        transactions: getStructList(
          data['transactions'],
          LoanTransactionsListModelStruct.fromMap,
        ),
        pagination: data['pagination'] is PaginationStruct
            ? data['pagination']
            : PaginationStruct.maybeFromMap(data['pagination']),
        loanAccountNumber: data['loanAccountNumber'] as String?,
      );

  static LoanTransactionResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? LoanTransactionResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'transactions': _transactions?.map((e) => e.toMap()).toList(),
        'pagination': _pagination?.toMap(),
        'loanAccountNumber': _loanAccountNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactions': serializeParam(
          _transactions,
          ParamType.DataStruct,
          isList: true,
        ),
        'pagination': serializeParam(
          _pagination,
          ParamType.DataStruct,
        ),
        'loanAccountNumber': serializeParam(
          _loanAccountNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanTransactionResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanTransactionResponseStruct(
        transactions: deserializeStructParam<LoanTransactionsListModelStruct>(
          data['transactions'],
          ParamType.DataStruct,
          true,
          structBuilder: LoanTransactionsListModelStruct.fromSerializableMap,
        ),
        pagination: deserializeStructParam(
          data['pagination'],
          ParamType.DataStruct,
          false,
          structBuilder: PaginationStruct.fromSerializableMap,
        ),
        loanAccountNumber: deserializeParam(
          data['loanAccountNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanTransactionResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LoanTransactionResponseStruct &&
        listEquality.equals(transactions, other.transactions) &&
        pagination == other.pagination &&
        loanAccountNumber == other.loanAccountNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([transactions, pagination, loanAccountNumber]);
}

LoanTransactionResponseStruct createLoanTransactionResponseStruct({
  PaginationStruct? pagination,
  String? loanAccountNumber,
}) =>
    LoanTransactionResponseStruct(
      pagination: pagination ?? PaginationStruct(),
      loanAccountNumber: loanAccountNumber,
    );
