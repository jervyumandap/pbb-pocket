// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeStopModelStruct extends BaseStruct {
  ChequeStopModelStruct({
    String? accountNumber,
    double? accountBalance,
    String? challenge,
    String? chequeId,
  })  : _accountNumber = accountNumber,
        _accountBalance = accountBalance,
        _challenge = challenge,
        _chequeId = chequeId;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "accountBalance" field.
  double? _accountBalance;
  double get accountBalance => _accountBalance ?? 0.0;
  set accountBalance(double? val) => _accountBalance = val;

  void incrementAccountBalance(double amount) =>
      accountBalance = accountBalance + amount;

  bool hasAccountBalance() => _accountBalance != null;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "chequeId" field.
  String? _chequeId;
  String get chequeId => _chequeId ?? '';
  set chequeId(String? val) => _chequeId = val;

  bool hasChequeId() => _chequeId != null;

  static ChequeStopModelStruct fromMap(Map<String, dynamic> data) =>
      ChequeStopModelStruct(
        accountNumber: data['accountNumber'] as String?,
        accountBalance: castToType<double>(data['accountBalance']),
        challenge: data['challenge'] as String?,
        chequeId: data['chequeId'] as String?,
      );

  static ChequeStopModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChequeStopModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'accountBalance': _accountBalance,
        'challenge': _challenge,
        'chequeId': _chequeId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'accountBalance': serializeParam(
          _accountBalance,
          ParamType.double,
        ),
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'chequeId': serializeParam(
          _chequeId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeStopModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChequeStopModelStruct(
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        accountBalance: deserializeParam(
          data['accountBalance'],
          ParamType.double,
          false,
        ),
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        chequeId: deserializeParam(
          data['chequeId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeStopModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequeStopModelStruct &&
        accountNumber == other.accountNumber &&
        accountBalance == other.accountBalance &&
        challenge == other.challenge &&
        chequeId == other.chequeId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accountNumber, accountBalance, challenge, chequeId]);
}

ChequeStopModelStruct createChequeStopModelStruct({
  String? accountNumber,
  double? accountBalance,
  String? challenge,
  String? chequeId,
}) =>
    ChequeStopModelStruct(
      accountNumber: accountNumber,
      accountBalance: accountBalance,
      challenge: challenge,
      chequeId: chequeId,
    );
