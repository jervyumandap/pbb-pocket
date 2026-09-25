// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotalBalanceStruct extends BaseStruct {
  TotalBalanceStruct({
    int? amount,
    String? currency,
  })  : _amount = amount,
        _currency = currency;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  static TotalBalanceStruct fromMap(Map<String, dynamic> data) =>
      TotalBalanceStruct(
        amount: castToType<int>(data['amount']),
        currency: data['currency'] as String?,
      );

  static TotalBalanceStruct? maybeFromMap(dynamic data) => data is Map
      ? TotalBalanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'currency': _currency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
      }.withoutNulls;

  static TotalBalanceStruct fromSerializableMap(Map<String, dynamic> data) =>
      TotalBalanceStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TotalBalanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TotalBalanceStruct &&
        amount == other.amount &&
        currency == other.currency;
  }

  @override
  int get hashCode => const ListEquality().hash([amount, currency]);
}

TotalBalanceStruct createTotalBalanceStruct({
  int? amount,
  String? currency,
}) =>
    TotalBalanceStruct(
      amount: amount,
      currency: currency,
    );
