// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepositAccountsResponseStruct extends BaseStruct {
  DepositAccountsResponseStruct({
    String? statusCode,
    String? statusName,
    String? statusMessage,
    String? dateProcessed,
    List<DepositAccountsStruct>? accounts,
    CIFDetailsStruct? cIFDetails,
  })  : _statusCode = statusCode,
        _statusName = statusName,
        _statusMessage = statusMessage,
        _dateProcessed = dateProcessed,
        _accounts = accounts,
        _cIFDetails = cIFDetails;

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

  // "Accounts" field.
  List<DepositAccountsStruct>? _accounts;
  List<DepositAccountsStruct> get accounts => _accounts ?? const [];
  set accounts(List<DepositAccountsStruct>? val) => _accounts = val;

  void updateAccounts(Function(List<DepositAccountsStruct>) updateFn) {
    updateFn(_accounts ??= []);
  }

  bool hasAccounts() => _accounts != null;

  // "CIFDetails" field.
  CIFDetailsStruct? _cIFDetails;
  CIFDetailsStruct get cIFDetails => _cIFDetails ?? CIFDetailsStruct();
  set cIFDetails(CIFDetailsStruct? val) => _cIFDetails = val;

  void updateCIFDetails(Function(CIFDetailsStruct) updateFn) {
    updateFn(_cIFDetails ??= CIFDetailsStruct());
  }

  bool hasCIFDetails() => _cIFDetails != null;

  static DepositAccountsResponseStruct fromMap(Map<String, dynamic> data) =>
      DepositAccountsResponseStruct(
        statusCode: data['StatusCode'] as String?,
        statusName: data['StatusName'] as String?,
        statusMessage: data['StatusMessage'] as String?,
        dateProcessed: data['DateProcessed'] as String?,
        accounts: getStructList(
          data['Accounts'],
          DepositAccountsStruct.fromMap,
        ),
        cIFDetails: data['CIFDetails'] is CIFDetailsStruct
            ? data['CIFDetails']
            : CIFDetailsStruct.maybeFromMap(data['CIFDetails']),
      );

  static DepositAccountsResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DepositAccountsResponseStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'StatusCode': _statusCode,
        'StatusName': _statusName,
        'StatusMessage': _statusMessage,
        'DateProcessed': _dateProcessed,
        'Accounts': _accounts?.map((e) => e.toMap()).toList(),
        'CIFDetails': _cIFDetails?.toMap(),
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
        'Accounts': serializeParam(
          _accounts,
          ParamType.DataStruct,
          isList: true,
        ),
        'CIFDetails': serializeParam(
          _cIFDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DepositAccountsResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DepositAccountsResponseStruct(
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
        accounts: deserializeStructParam<DepositAccountsStruct>(
          data['Accounts'],
          ParamType.DataStruct,
          true,
          structBuilder: DepositAccountsStruct.fromSerializableMap,
        ),
        cIFDetails: deserializeStructParam(
          data['CIFDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: CIFDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DepositAccountsResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DepositAccountsResponseStruct &&
        statusCode == other.statusCode &&
        statusName == other.statusName &&
        statusMessage == other.statusMessage &&
        dateProcessed == other.dateProcessed &&
        listEquality.equals(accounts, other.accounts) &&
        cIFDetails == other.cIFDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        statusCode,
        statusName,
        statusMessage,
        dateProcessed,
        accounts,
        cIFDetails
      ]);
}

DepositAccountsResponseStruct createDepositAccountsResponseStruct({
  String? statusCode,
  String? statusName,
  String? statusMessage,
  String? dateProcessed,
  CIFDetailsStruct? cIFDetails,
}) =>
    DepositAccountsResponseStruct(
      statusCode: statusCode,
      statusName: statusName,
      statusMessage: statusMessage,
      dateProcessed: dateProcessed,
      cIFDetails: cIFDetails ?? CIFDetailsStruct(),
    );
