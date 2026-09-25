// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBTransactionLimitsModelStruct extends BaseStruct {
  WBTransactionLimitsModelStruct({
    String? typeKey,
    String? displayName,
    double? minAmount,
    double? maxAmount,
    double? dailyLimit,
    double? usedToday,
    double? remaining,
  })  : _typeKey = typeKey,
        _displayName = displayName,
        _minAmount = minAmount,
        _maxAmount = maxAmount,
        _dailyLimit = dailyLimit,
        _usedToday = usedToday,
        _remaining = remaining;

  // "typeKey" field.
  String? _typeKey;
  String get typeKey => _typeKey ?? '';
  set typeKey(String? val) => _typeKey = val;

  bool hasTypeKey() => _typeKey != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

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

  static WBTransactionLimitsModelStruct fromMap(Map<String, dynamic> data) =>
      WBTransactionLimitsModelStruct(
        typeKey: data['typeKey'] as String?,
        displayName: data['displayName'] as String?,
        minAmount: castToType<double>(data['minAmount']),
        maxAmount: castToType<double>(data['maxAmount']),
        dailyLimit: castToType<double>(data['dailyLimit']),
        usedToday: castToType<double>(data['usedToday']),
        remaining: castToType<double>(data['remaining']),
      );

  static WBTransactionLimitsModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? WBTransactionLimitsModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'typeKey': _typeKey,
        'displayName': _displayName,
        'minAmount': _minAmount,
        'maxAmount': _maxAmount,
        'dailyLimit': _dailyLimit,
        'usedToday': _usedToday,
        'remaining': _remaining,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'typeKey': serializeParam(
          _typeKey,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
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
        'usedToday': serializeParam(
          _usedToday,
          ParamType.double,
        ),
        'remaining': serializeParam(
          _remaining,
          ParamType.double,
        ),
      }.withoutNulls;

  static WBTransactionLimitsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBTransactionLimitsModelStruct(
        typeKey: deserializeParam(
          data['typeKey'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
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
      );

  @override
  String toString() => 'WBTransactionLimitsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBTransactionLimitsModelStruct &&
        typeKey == other.typeKey &&
        displayName == other.displayName &&
        minAmount == other.minAmount &&
        maxAmount == other.maxAmount &&
        dailyLimit == other.dailyLimit &&
        usedToday == other.usedToday &&
        remaining == other.remaining;
  }

  @override
  int get hashCode => const ListEquality().hash([
        typeKey,
        displayName,
        minAmount,
        maxAmount,
        dailyLimit,
        usedToday,
        remaining
      ]);
}

WBTransactionLimitsModelStruct createWBTransactionLimitsModelStruct({
  String? typeKey,
  String? displayName,
  double? minAmount,
  double? maxAmount,
  double? dailyLimit,
  double? usedToday,
  double? remaining,
}) =>
    WBTransactionLimitsModelStruct(
      typeKey: typeKey,
      displayName: displayName,
      minAmount: minAmount,
      maxAmount: maxAmount,
      dailyLimit: dailyLimit,
      usedToday: usedToday,
      remaining: remaining,
    );
