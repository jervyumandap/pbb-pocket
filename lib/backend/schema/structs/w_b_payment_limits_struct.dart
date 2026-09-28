// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBPaymentLimitsStruct extends BaseStruct {
  WBPaymentLimitsStruct({
    double? dailyLimit,
    double? usedToday,
    double? remaining,
    double? perTransactionMax,
  })  : _dailyLimit = dailyLimit,
        _usedToday = usedToday,
        _remaining = remaining,
        _perTransactionMax = perTransactionMax;

  // "dailyLimit" field.
  double? _dailyLimit;
  double get dailyLimit => _dailyLimit ?? 0.0;
  set dailyLimit(double? val) => _dailyLimit = val;

  void incrementDailyLimit(double amount) => dailyLimit = dailyLimit + amount;

  bool hasDailyLimit() => _dailyLimit != null;

  // "usedToday" field.
  double? _usedToday;
  double get usedToday => _usedToday ?? 0.0;
  set usedToday(double? val) => _usedToday = val;

  void incrementUsedToday(double amount) => usedToday = usedToday + amount;

  bool hasUsedToday() => _usedToday != null;

  // "remaining" field.
  double? _remaining;
  double get remaining => _remaining ?? 0.0;
  set remaining(double? val) => _remaining = val;

  void incrementRemaining(double amount) => remaining = remaining + amount;

  bool hasRemaining() => _remaining != null;

  // "perTransactionMax" field.
  double? _perTransactionMax;
  double get perTransactionMax => _perTransactionMax ?? 0.0;
  set perTransactionMax(double? val) => _perTransactionMax = val;

  void incrementPerTransactionMax(double amount) =>
      perTransactionMax = perTransactionMax + amount;

  bool hasPerTransactionMax() => _perTransactionMax != null;

  static WBPaymentLimitsStruct fromMap(Map<String, dynamic> data) =>
      WBPaymentLimitsStruct(
        dailyLimit: castToType<double>(data['dailyLimit']),
        usedToday: castToType<double>(data['usedToday']),
        remaining: castToType<double>(data['remaining']),
        perTransactionMax: castToType<double>(data['perTransactionMax']),
      );

  static WBPaymentLimitsStruct? maybeFromMap(dynamic data) => data is Map
      ? WBPaymentLimitsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dailyLimit': _dailyLimit,
        'usedToday': _usedToday,
        'remaining': _remaining,
        'perTransactionMax': _perTransactionMax,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dailyLimit': serializeParam(
          _dailyLimit,
          ParamType.double,
        ),
        'usedToday': serializeParam(
          _usedToday,
          ParamType.double,
        ),
        'remaining': serializeParam(
          _remaining,
          ParamType.double,
        ),
        'perTransactionMax': serializeParam(
          _perTransactionMax,
          ParamType.double,
        ),
      }.withoutNulls;

  static WBPaymentLimitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBPaymentLimitsStruct(
        dailyLimit: deserializeParam(
          data['dailyLimit'],
          ParamType.double,
          false,
        ),
        usedToday: deserializeParam(
          data['usedToday'],
          ParamType.double,
          false,
        ),
        remaining: deserializeParam(
          data['remaining'],
          ParamType.double,
          false,
        ),
        perTransactionMax: deserializeParam(
          data['perTransactionMax'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'WBPaymentLimitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBPaymentLimitsStruct &&
        dailyLimit == other.dailyLimit &&
        usedToday == other.usedToday &&
        remaining == other.remaining &&
        perTransactionMax == other.perTransactionMax;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([dailyLimit, usedToday, remaining, perTransactionMax]);
}

WBPaymentLimitsStruct createWBPaymentLimitsStruct({
  double? dailyLimit,
  double? usedToday,
  double? remaining,
  double? perTransactionMax,
}) =>
    WBPaymentLimitsStruct(
      dailyLimit: dailyLimit,
      usedToday: usedToday,
      remaining: remaining,
      perTransactionMax: perTransactionMax,
    );
