// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TermDepositListResponseStruct extends BaseStruct {
  TermDepositListResponseStruct({
    String? statusCode,
    String? statusName,
    String? statusMessage,
    String? dateProcessed,
    List<DepositAccountModelStruct>? depositAccounts,
  })  : _statusCode = statusCode,
        _statusName = statusName,
        _statusMessage = statusMessage,
        _dateProcessed = dateProcessed,
        _depositAccounts = depositAccounts;

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

  // "DepositAccounts" field.
  List<DepositAccountModelStruct>? _depositAccounts;
  List<DepositAccountModelStruct> get depositAccounts =>
      _depositAccounts ?? const [];
  set depositAccounts(List<DepositAccountModelStruct>? val) =>
      _depositAccounts = val;

  void updateDepositAccounts(
      Function(List<DepositAccountModelStruct>) updateFn) {
    updateFn(_depositAccounts ??= []);
  }

  bool hasDepositAccounts() => _depositAccounts != null;

  static TermDepositListResponseStruct fromMap(Map<String, dynamic> data) =>
      TermDepositListResponseStruct(
        statusCode: data['StatusCode'] as String?,
        statusName: data['StatusName'] as String?,
        statusMessage: data['StatusMessage'] as String?,
        dateProcessed: data['DateProcessed'] as String?,
        depositAccounts: getStructList(
          data['DepositAccounts'],
          DepositAccountModelStruct.fromMap,
        ),
      );

  static TermDepositListResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TermDepositListResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'StatusCode': _statusCode,
        'StatusName': _statusName,
        'StatusMessage': _statusMessage,
        'DateProcessed': _dateProcessed,
        'DepositAccounts': _depositAccounts?.map((e) => e.toMap()).toList(),
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
        'DepositAccounts': serializeParam(
          _depositAccounts,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TermDepositListResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TermDepositListResponseStruct(
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
        depositAccounts: deserializeStructParam<DepositAccountModelStruct>(
          data['DepositAccounts'],
          ParamType.DataStruct,
          true,
          structBuilder: DepositAccountModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TermDepositListResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TermDepositListResponseStruct &&
        statusCode == other.statusCode &&
        statusName == other.statusName &&
        statusMessage == other.statusMessage &&
        dateProcessed == other.dateProcessed &&
        listEquality.equals(depositAccounts, other.depositAccounts);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [statusCode, statusName, statusMessage, dateProcessed, depositAccounts]);
}

TermDepositListResponseStruct createTermDepositListResponseStruct({
  String? statusCode,
  String? statusName,
  String? statusMessage,
  String? dateProcessed,
}) =>
    TermDepositListResponseStruct(
      statusCode: statusCode,
      statusName: statusName,
      statusMessage: statusMessage,
      dateProcessed: dateProcessed,
    );
