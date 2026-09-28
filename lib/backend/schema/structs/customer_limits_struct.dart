// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerLimitsStruct extends BaseStruct {
  CustomerLimitsStruct({
    double? maxAmount,
    double? dailyLimit,
  })  : _maxAmount = maxAmount,
        _dailyLimit = dailyLimit;

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

  static CustomerLimitsStruct fromMap(Map<String, dynamic> data) =>
      CustomerLimitsStruct(
        maxAmount: castToType<double>(data['maxAmount']),
        dailyLimit: castToType<double>(data['dailyLimit']),
      );

  static CustomerLimitsStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerLimitsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'maxAmount': _maxAmount,
        'dailyLimit': _dailyLimit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'maxAmount': serializeParam(
          _maxAmount,
          ParamType.double,
        ),
        'dailyLimit': serializeParam(
          _dailyLimit,
          ParamType.double,
        ),
      }.withoutNulls;

  static CustomerLimitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerLimitsStruct(
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
  String toString() => 'CustomerLimitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerLimitsStruct &&
        maxAmount == other.maxAmount &&
        dailyLimit == other.dailyLimit;
  }

  @override
  int get hashCode => const ListEquality().hash([maxAmount, dailyLimit]);
}

CustomerLimitsStruct createCustomerLimitsStruct({
  double? maxAmount,
  double? dailyLimit,
}) =>
    CustomerLimitsStruct(
      maxAmount: maxAmount,
      dailyLimit: dailyLimit,
    );
