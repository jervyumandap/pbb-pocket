// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionLimitsModelV2Struct extends BaseStruct {
  TransactionLimitsModelV2Struct({
    String? typeKey,
    String? displayName,
    int? minAmount,
    int? maxAmount,
    int? dailyLimit,
    int? usedToday,
    int? remaining,
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
  int? _minAmount;
  int get minAmount => _minAmount ?? 0;
  set minAmount(int? val) => _minAmount = val;

  void incrementMinAmount(int amount) => minAmount = minAmount + amount;

  bool hasMinAmount() => _minAmount != null;

  // "maxAmount" field.
  int? _maxAmount;
  int get maxAmount => _maxAmount ?? 0;
  set maxAmount(int? val) => _maxAmount = val;

  void incrementMaxAmount(int amount) => maxAmount = maxAmount + amount;

  bool hasMaxAmount() => _maxAmount != null;

  // "dailyLimit" field.
  int? _dailyLimit;
  int get dailyLimit => _dailyLimit ?? 0;
  set dailyLimit(int? val) => _dailyLimit = val;

  void incrementDailyLimit(int amount) => dailyLimit = dailyLimit + amount;

  bool hasDailyLimit() => _dailyLimit != null;

  // "usedToday" field.
  int? _usedToday;
  int get usedToday => _usedToday ?? 0;
  set usedToday(int? val) => _usedToday = val;

  void incrementUsedToday(int amount) => usedToday = usedToday + amount;

  bool hasUsedToday() => _usedToday != null;

  // "remaining" field.
  int? _remaining;
  int get remaining => _remaining ?? 0;
  set remaining(int? val) => _remaining = val;

  void incrementRemaining(int amount) => remaining = remaining + amount;

  bool hasRemaining() => _remaining != null;

  static TransactionLimitsModelV2Struct fromMap(Map<String, dynamic> data) =>
      TransactionLimitsModelV2Struct(
        typeKey: data['typeKey'] as String?,
        displayName: data['displayName'] as String?,
        minAmount: castToType<int>(data['minAmount']),
        maxAmount: castToType<int>(data['maxAmount']),
        dailyLimit: castToType<int>(data['dailyLimit']),
        usedToday: castToType<int>(data['usedToday']),
        remaining: castToType<int>(data['remaining']),
      );

  static TransactionLimitsModelV2Struct? maybeFromMap(dynamic data) =>
      data is Map
          ? TransactionLimitsModelV2Struct.fromMap(data.cast<String, dynamic>())
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
          ParamType.int,
        ),
        'maxAmount': serializeParam(
          _maxAmount,
          ParamType.int,
        ),
        'dailyLimit': serializeParam(
          _dailyLimit,
          ParamType.int,
        ),
        'usedToday': serializeParam(
          _usedToday,
          ParamType.int,
        ),
        'remaining': serializeParam(
          _remaining,
          ParamType.int,
        ),
      }.withoutNulls;

  static TransactionLimitsModelV2Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionLimitsModelV2Struct(
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
          ParamType.int,
          false,
        ),
        maxAmount: deserializeParam(
          data['maxAmount'],
          ParamType.int,
          false,
        ),
        dailyLimit: deserializeParam(
          data['dailyLimit'],
          ParamType.int,
          false,
        ),
        usedToday: deserializeParam(
          data['usedToday'],
          ParamType.int,
          false,
        ),
        remaining: deserializeParam(
          data['remaining'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TransactionLimitsModelV2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionLimitsModelV2Struct &&
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

TransactionLimitsModelV2Struct createTransactionLimitsModelV2Struct({
  String? typeKey,
  String? displayName,
  int? minAmount,
  int? maxAmount,
  int? dailyLimit,
  int? usedToday,
  int? remaining,
}) =>
    TransactionLimitsModelV2Struct(
      typeKey: typeKey,
      displayName: displayName,
      minAmount: minAmount,
      maxAmount: maxAmount,
      dailyLimit: dailyLimit,
      usedToday: usedToday,
      remaining: remaining,
    );
