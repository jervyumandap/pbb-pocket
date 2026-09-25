// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetAccountDetailsResponseStruct extends BaseStruct {
  GetAccountDetailsResponseStruct({
    String? statusCode,
    String? statusName,
    String? statusMessage,
    AccountDetailsStruct? accountDetails,
    CIFDetailsStruct? cIFDetails,
    AccountBalanceStruct? accountBalance,
    String? dateProcessed,
  })  : _statusCode = statusCode,
        _statusName = statusName,
        _statusMessage = statusMessage,
        _accountDetails = accountDetails,
        _cIFDetails = cIFDetails,
        _accountBalance = accountBalance,
        _dateProcessed = dateProcessed;

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

  // "AccountDetails" field.
  AccountDetailsStruct? _accountDetails;
  AccountDetailsStruct get accountDetails =>
      _accountDetails ?? AccountDetailsStruct();
  set accountDetails(AccountDetailsStruct? val) => _accountDetails = val;

  void updateAccountDetails(Function(AccountDetailsStruct) updateFn) {
    updateFn(_accountDetails ??= AccountDetailsStruct());
  }

  bool hasAccountDetails() => _accountDetails != null;

  // "CIFDetails" field.
  CIFDetailsStruct? _cIFDetails;
  CIFDetailsStruct get cIFDetails => _cIFDetails ?? CIFDetailsStruct();
  set cIFDetails(CIFDetailsStruct? val) => _cIFDetails = val;

  void updateCIFDetails(Function(CIFDetailsStruct) updateFn) {
    updateFn(_cIFDetails ??= CIFDetailsStruct());
  }

  bool hasCIFDetails() => _cIFDetails != null;

  // "AccountBalance" field.
  AccountBalanceStruct? _accountBalance;
  AccountBalanceStruct get accountBalance =>
      _accountBalance ?? AccountBalanceStruct();
  set accountBalance(AccountBalanceStruct? val) => _accountBalance = val;

  void updateAccountBalance(Function(AccountBalanceStruct) updateFn) {
    updateFn(_accountBalance ??= AccountBalanceStruct());
  }

  bool hasAccountBalance() => _accountBalance != null;

  // "DateProcessed" field.
  String? _dateProcessed;
  String get dateProcessed => _dateProcessed ?? '';
  set dateProcessed(String? val) => _dateProcessed = val;

  bool hasDateProcessed() => _dateProcessed != null;

  static GetAccountDetailsResponseStruct fromMap(Map<String, dynamic> data) =>
      GetAccountDetailsResponseStruct(
        statusCode: data['StatusCode'] as String?,
        statusName: data['StatusName'] as String?,
        statusMessage: data['StatusMessage'] as String?,
        accountDetails: data['AccountDetails'] is AccountDetailsStruct
            ? data['AccountDetails']
            : AccountDetailsStruct.maybeFromMap(data['AccountDetails']),
        cIFDetails: data['CIFDetails'] is CIFDetailsStruct
            ? data['CIFDetails']
            : CIFDetailsStruct.maybeFromMap(data['CIFDetails']),
        accountBalance: data['AccountBalance'] is AccountBalanceStruct
            ? data['AccountBalance']
            : AccountBalanceStruct.maybeFromMap(data['AccountBalance']),
        dateProcessed: data['DateProcessed'] as String?,
      );

  static GetAccountDetailsResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? GetAccountDetailsResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StatusCode': _statusCode,
        'StatusName': _statusName,
        'StatusMessage': _statusMessage,
        'AccountDetails': _accountDetails?.toMap(),
        'CIFDetails': _cIFDetails?.toMap(),
        'AccountBalance': _accountBalance?.toMap(),
        'DateProcessed': _dateProcessed,
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
        'AccountDetails': serializeParam(
          _accountDetails,
          ParamType.DataStruct,
        ),
        'CIFDetails': serializeParam(
          _cIFDetails,
          ParamType.DataStruct,
        ),
        'AccountBalance': serializeParam(
          _accountBalance,
          ParamType.DataStruct,
        ),
        'DateProcessed': serializeParam(
          _dateProcessed,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetAccountDetailsResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetAccountDetailsResponseStruct(
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
        accountDetails: deserializeStructParam(
          data['AccountDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountDetailsStruct.fromSerializableMap,
        ),
        cIFDetails: deserializeStructParam(
          data['CIFDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: CIFDetailsStruct.fromSerializableMap,
        ),
        accountBalance: deserializeStructParam(
          data['AccountBalance'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountBalanceStruct.fromSerializableMap,
        ),
        dateProcessed: deserializeParam(
          data['DateProcessed'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetAccountDetailsResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetAccountDetailsResponseStruct &&
        statusCode == other.statusCode &&
        statusName == other.statusName &&
        statusMessage == other.statusMessage &&
        accountDetails == other.accountDetails &&
        cIFDetails == other.cIFDetails &&
        accountBalance == other.accountBalance &&
        dateProcessed == other.dateProcessed;
  }

  @override
  int get hashCode => const ListEquality().hash([
        statusCode,
        statusName,
        statusMessage,
        accountDetails,
        cIFDetails,
        accountBalance,
        dateProcessed
      ]);
}

GetAccountDetailsResponseStruct createGetAccountDetailsResponseStruct({
  String? statusCode,
  String? statusName,
  String? statusMessage,
  AccountDetailsStruct? accountDetails,
  CIFDetailsStruct? cIFDetails,
  AccountBalanceStruct? accountBalance,
  String? dateProcessed,
}) =>
    GetAccountDetailsResponseStruct(
      statusCode: statusCode,
      statusName: statusName,
      statusMessage: statusMessage,
      accountDetails: accountDetails ?? AccountDetailsStruct(),
      cIFDetails: cIFDetails ?? CIFDetailsStruct(),
      accountBalance: accountBalance ?? AccountBalanceStruct(),
      dateProcessed: dateProcessed,
    );
