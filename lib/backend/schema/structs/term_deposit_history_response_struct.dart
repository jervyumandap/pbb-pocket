// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TermDepositHistoryResponseStruct extends BaseStruct {
  TermDepositHistoryResponseStruct({
    String? statusCode,
    String? statusName,
    String? statusMessage,
    String? dateProcessed,
    List<StatementTransactionModelStruct>? depositTransactions,
  })  : _statusCode = statusCode,
        _statusName = statusName,
        _statusMessage = statusMessage,
        _dateProcessed = dateProcessed,
        _depositTransactions = depositTransactions;

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

  // "DepositTransactions" field.
  List<StatementTransactionModelStruct>? _depositTransactions;
  List<StatementTransactionModelStruct> get depositTransactions =>
      _depositTransactions ?? const [];
  set depositTransactions(List<StatementTransactionModelStruct>? val) =>
      _depositTransactions = val;

  void updateDepositTransactions(
      Function(List<StatementTransactionModelStruct>) updateFn) {
    updateFn(_depositTransactions ??= []);
  }

  bool hasDepositTransactions() => _depositTransactions != null;

  static TermDepositHistoryResponseStruct fromMap(Map<String, dynamic> data) =>
      TermDepositHistoryResponseStruct(
        statusCode: data['StatusCode'] as String?,
        statusName: data['StatusName'] as String?,
        statusMessage: data['StatusMessage'] as String?,
        dateProcessed: data['DateProcessed'] as String?,
        depositTransactions: getStructList(
          data['DepositTransactions'],
          StatementTransactionModelStruct.fromMap,
        ),
      );

  static TermDepositHistoryResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TermDepositHistoryResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StatusCode': _statusCode,
        'StatusName': _statusName,
        'StatusMessage': _statusMessage,
        'DateProcessed': _dateProcessed,
        'DepositTransactions':
            _depositTransactions?.map((e) => e.toMap()).toList(),
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
        'DepositTransactions': serializeParam(
          _depositTransactions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TermDepositHistoryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TermDepositHistoryResponseStruct(
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
        depositTransactions:
            deserializeStructParam<StatementTransactionModelStruct>(
          data['DepositTransactions'],
          ParamType.DataStruct,
          true,
          structBuilder: StatementTransactionModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TermDepositHistoryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TermDepositHistoryResponseStruct &&
        statusCode == other.statusCode &&
        statusName == other.statusName &&
        statusMessage == other.statusMessage &&
        dateProcessed == other.dateProcessed &&
        listEquality.equals(depositTransactions, other.depositTransactions);
  }

  @override
  int get hashCode => const ListEquality().hash([
        statusCode,
        statusName,
        statusMessage,
        dateProcessed,
        depositTransactions
      ]);
}

TermDepositHistoryResponseStruct createTermDepositHistoryResponseStruct({
  String? statusCode,
  String? statusName,
  String? statusMessage,
  String? dateProcessed,
}) =>
    TermDepositHistoryResponseStruct(
      statusCode: statusCode,
      statusName: statusName,
      statusMessage: statusMessage,
      dateProcessed: dateProcessed,
    );
