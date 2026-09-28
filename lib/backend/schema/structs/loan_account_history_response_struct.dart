// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanAccountHistoryResponseStruct extends BaseStruct {
  LoanAccountHistoryResponseStruct({
    String? statusCode,
    String? statusName,
    String? statusMessage,
    String? dateProcessed,
    List<LoanTransactionModelStruct>? loanTransactions,
  })  : _statusCode = statusCode,
        _statusName = statusName,
        _statusMessage = statusMessage,
        _dateProcessed = dateProcessed,
        _loanTransactions = loanTransactions;

  // "StatusCode" field.
  String? _statusCode;
  String get statusCode => _statusCode ?? '';
  set statusCode(String? val) => _statusCode = val;

  bool hasStatusCode() => _statusCode != null;

  // "StatusName" field.
  String? _statusName;
  String get statusName => _statusName ?? '';
  set statusName(String? val) => _statusName = val;

  bool hasStatusName() => _statusName != null;

  // "StatusMessage" field.
  String? _statusMessage;
  String get statusMessage => _statusMessage ?? '';
  set statusMessage(String? val) => _statusMessage = val;

  bool hasStatusMessage() => _statusMessage != null;

  // "DateProcessed" field.
  String? _dateProcessed;
  String get dateProcessed => _dateProcessed ?? '';
  set dateProcessed(String? val) => _dateProcessed = val;

  bool hasDateProcessed() => _dateProcessed != null;

  // "LoanTransactions" field.
  List<LoanTransactionModelStruct>? _loanTransactions;
  List<LoanTransactionModelStruct> get loanTransactions =>
      _loanTransactions ?? const [];
  set loanTransactions(List<LoanTransactionModelStruct>? val) =>
      _loanTransactions = val;

  void updateLoanTransactions(
      Function(List<LoanTransactionModelStruct>) updateFn) {
    updateFn(_loanTransactions ??= []);
  }

  bool hasLoanTransactions() => _loanTransactions != null;

  static LoanAccountHistoryResponseStruct fromMap(Map<String, dynamic> data) =>
      LoanAccountHistoryResponseStruct(
        statusCode: data['StatusCode'] as String?,
        statusName: data['StatusName'] as String?,
        statusMessage: data['StatusMessage'] as String?,
        dateProcessed: data['DateProcessed'] as String?,
        loanTransactions: getStructList(
          data['LoanTransactions'],
          LoanTransactionModelStruct.fromMap,
        ),
      );

  static LoanAccountHistoryResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? LoanAccountHistoryResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StatusCode': _statusCode,
        'StatusName': _statusName,
        'StatusMessage': _statusMessage,
        'DateProcessed': _dateProcessed,
        'LoanTransactions': _loanTransactions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'StatusCode': serializeParam(
          _statusCode,
          ParamType.String,
        ),
        'StatusName': serializeParam(
          _statusName,
          ParamType.String,
        ),
        'StatusMessage': serializeParam(
          _statusMessage,
          ParamType.String,
        ),
        'DateProcessed': serializeParam(
          _dateProcessed,
          ParamType.String,
        ),
        'LoanTransactions': serializeParam(
          _loanTransactions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static LoanAccountHistoryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanAccountHistoryResponseStruct(
        statusCode: deserializeParam(
          data['StatusCode'],
          ParamType.String,
          false,
        ),
        statusName: deserializeParam(
          data['StatusName'],
          ParamType.String,
          false,
        ),
        statusMessage: deserializeParam(
          data['StatusMessage'],
          ParamType.String,
          false,
        ),
        dateProcessed: deserializeParam(
          data['DateProcessed'],
          ParamType.String,
          false,
        ),
        loanTransactions: deserializeStructParam<LoanTransactionModelStruct>(
          data['LoanTransactions'],
          ParamType.DataStruct,
          true,
          structBuilder: LoanTransactionModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'LoanAccountHistoryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LoanAccountHistoryResponseStruct &&
        statusCode == other.statusCode &&
        statusName == other.statusName &&
        statusMessage == other.statusMessage &&
        dateProcessed == other.dateProcessed &&
        listEquality.equals(loanTransactions, other.loanTransactions);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [statusCode, statusName, statusMessage, dateProcessed, loanTransactions]);
}

LoanAccountHistoryResponseStruct createLoanAccountHistoryResponseStruct({
  String? statusCode,
  String? statusName,
  String? statusMessage,
  String? dateProcessed,
}) =>
    LoanAccountHistoryResponseStruct(
      statusCode: statusCode,
      statusName: statusName,
      statusMessage: statusMessage,
      dateProcessed: dateProcessed,
    );
