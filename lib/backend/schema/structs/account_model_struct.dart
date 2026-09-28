// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountModelStruct extends BaseStruct {
  AccountModelStruct({
    String? accountName,
    String? accountNumber,
    double? accountBalance,
    String? currency,
    String? subtitle,
  })  : _accountName = accountName,
        _accountNumber = accountNumber,
        _accountBalance = accountBalance,
        _currency = currency,
        _subtitle = subtitle;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

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

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  static AccountModelStruct fromMap(Map<String, dynamic> data) =>
      AccountModelStruct(
        accountName: data['accountName'] as String?,
        accountNumber: data['accountNumber'] as String?,
        accountBalance: castToType<double>(data['accountBalance']),
        currency: data['currency'] as String?,
        subtitle: data['subtitle'] as String?,
      );

  static AccountModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountName': _accountName,
        'accountNumber': _accountNumber,
        'accountBalance': _accountBalance,
        'currency': _currency,
        'subtitle': _subtitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'accountBalance': serializeParam(
          _accountBalance,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountModelStruct(
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
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
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountModelStruct &&
        accountName == other.accountName &&
        accountNumber == other.accountNumber &&
        accountBalance == other.accountBalance &&
        currency == other.currency &&
        subtitle == other.subtitle;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accountName, accountNumber, accountBalance, currency, subtitle]);
}

AccountModelStruct createAccountModelStruct({
  String? accountName,
  String? accountNumber,
  double? accountBalance,
  String? currency,
  String? subtitle,
}) =>
    AccountModelStruct(
      accountName: accountName,
      accountNumber: accountNumber,
      accountBalance: accountBalance,
      currency: currency,
      subtitle: subtitle,
    );
