// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankLimitsStruct extends BaseStruct {
  BankLimitsStruct({
    double? minAmount,
    double? maxAmount,
    double? dailyLimit,
  })  : _minAmount = minAmount,
        _maxAmount = maxAmount,
        _dailyLimit = dailyLimit;

  // "minAmount" field.
  double? _minAmount;
  double get minAmount => _minAmount ?? 0.0;
  set minAmount(double? val) => _minAmount = val;

  void incrementMinAmount(double amount) => minAmount = minAmount + amount;

  bool hasMinAmount() => _minAmount != null;

  // "maxAmount" field.
  double? _maxAmount;
  double get maxAmount => _maxAmount ?? 0.0;
  set maxAmount(double? val) => _maxAmount = val;

  void incrementMaxAmount(double amount) => maxAmount = maxAmount + amount;

  bool hasMaxAmount() => _maxAmount != null;

  // "dailyLimit" field.
  double? _dailyLimit;
  double get dailyLimit => _dailyLimit ?? 0.0;
  set dailyLimit(double? val) => _dailyLimit = val;

  void incrementDailyLimit(double amount) => dailyLimit = dailyLimit + amount;

  bool hasDailyLimit() => _dailyLimit != null;

  static BankLimitsStruct fromMap(Map<String, dynamic> data) =>
      BankLimitsStruct(
        minAmount: castToType<double>(data['minAmount']),
        maxAmount: castToType<double>(data['maxAmount']),
        dailyLimit: castToType<double>(data['dailyLimit']),
      );

  static BankLimitsStruct? maybeFromMap(dynamic data) => data is Map
      ? BankLimitsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'minAmount': _minAmount,
        'maxAmount': _maxAmount,
        'dailyLimit': _dailyLimit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'minAmount': serializeParam(
          _minAmount,
          ParamType.double,
        ),
        'maxAmount': serializeParam(
          _maxAmount,
          ParamType.double,
        ),
        'dailyLimit': serializeParam(
          _dailyLimit,
          ParamType.double,
        ),
      }.withoutNulls;

  static BankLimitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankLimitsStruct(
        minAmount: deserializeParam(
          data['minAmount'],
          ParamType.double,
          false,
        ),
        maxAmount: deserializeParam(
          data['maxAmount'],
          ParamType.double,
          false,
        ),
        dailyLimit: deserializeParam(
          data['dailyLimit'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BankLimitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankLimitsStruct &&
        minAmount == other.minAmount &&
        maxAmount == other.maxAmount &&
        dailyLimit == other.dailyLimit;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([minAmount, maxAmount, dailyLimit]);
}

BankLimitsStruct createBankLimitsStruct({
  double? minAmount,
  double? maxAmount,
  double? dailyLimit,
}) =>
    BankLimitsStruct(
      minAmount: minAmount,
      maxAmount: maxAmount,
      dailyLimit: dailyLimit,
    );
