// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountBalanceModelStruct extends BaseStruct {
  AccountBalanceModelStruct({
    String? accountNumber,
    int? availableBalance,
    int? currentBalance,
    String? currency,
    String? asOf,
  })  : _accountNumber = accountNumber,
        _availableBalance = availableBalance,
        _currentBalance = currentBalance,
        _currency = currency,
        _asOf = asOf;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "availableBalance" field.
  int? _availableBalance;
  int get availableBalance => _availableBalance ?? 0;
  set availableBalance(int? val) => _availableBalance = val;

  void incrementAvailableBalance(int amount) =>
      availableBalance = availableBalance + amount;

  bool hasAvailableBalance() => _availableBalance != null;

  // "currentBalance" field.
  int? _currentBalance;
  int get currentBalance => _currentBalance ?? 0;
  set currentBalance(int? val) => _currentBalance = val;

  void incrementCurrentBalance(int amount) =>
      currentBalance = currentBalance + amount;

  bool hasCurrentBalance() => _currentBalance != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "asOf" field.
  String? _asOf;
  String get asOf => _asOf ?? '';
  set asOf(String? val) => _asOf = val;

  bool hasAsOf() => _asOf != null;

  static AccountBalanceModelStruct fromMap(Map<String, dynamic> data) =>
      AccountBalanceModelStruct(
        accountNumber: data['accountNumber'] as String?,
        availableBalance: castToType<int>(data['availableBalance']),
        currentBalance: castToType<int>(data['currentBalance']),
        currency: data['currency'] as String?,
        asOf: data['asOf'] as String?,
      );

  static AccountBalanceModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountBalanceModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'availableBalance': _availableBalance,
        'currentBalance': _currentBalance,
        'currency': _currency,
        'asOf': _asOf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'availableBalance': serializeParam(
          _availableBalance,
          ParamType.int,
        ),
        'currentBalance': serializeParam(
          _currentBalance,
          ParamType.int,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'asOf': serializeParam(
          _asOf,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountBalanceModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccountBalanceModelStruct(
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        availableBalance: deserializeParam(
          data['availableBalance'],
          ParamType.int,
          false,
        ),
        currentBalance: deserializeParam(
          data['currentBalance'],
          ParamType.int,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        asOf: deserializeParam(
          data['asOf'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountBalanceModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountBalanceModelStruct &&
        accountNumber == other.accountNumber &&
        availableBalance == other.availableBalance &&
        currentBalance == other.currentBalance &&
        currency == other.currency &&
        asOf == other.asOf;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accountNumber, availableBalance, currentBalance, currency, asOf]);
}

AccountBalanceModelStruct createAccountBalanceModelStruct({
  String? accountNumber,
  int? availableBalance,
  int? currentBalance,
  String? currency,
  String? asOf,
}) =>
    AccountBalanceModelStruct(
      accountNumber: accountNumber,
      availableBalance: availableBalance,
      currentBalance: currentBalance,
      currency: currency,
      asOf: asOf,
    );
