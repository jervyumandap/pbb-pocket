// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatchLimitBodyStruct extends BaseStruct {
  PatchLimitBodyStruct({
    String? typeKey,
    double? maxAmount,
    double? dailyLimit,
    int? index,
  })  : _typeKey = typeKey,
        _maxAmount = maxAmount,
        _dailyLimit = dailyLimit,
        _index = index;

  // "typeKey" field.
  String? _typeKey;
  String get typeKey => _typeKey ?? '';
  set typeKey(String? val) => _typeKey = val;

  bool hasTypeKey() => _typeKey != null;

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

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static PatchLimitBodyStruct fromMap(Map<String, dynamic> data) =>
      PatchLimitBodyStruct(
        typeKey: data['typeKey'] as String?,
        maxAmount: castToType<double>(data['maxAmount']),
        dailyLimit: castToType<double>(data['dailyLimit']),
        index: castToType<int>(data['index']),
      );

  static PatchLimitBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? PatchLimitBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'typeKey': _typeKey,
        'maxAmount': _maxAmount,
        'dailyLimit': _dailyLimit,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'typeKey': serializeParam(
          _typeKey,
          ParamType.String,
        ),
        'maxAmount': serializeParam(
          _maxAmount,
          ParamType.double,
        ),
        'dailyLimit': serializeParam(
          _dailyLimit,
          ParamType.double,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static PatchLimitBodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PatchLimitBodyStruct(
        typeKey: deserializeParam(
          data['typeKey'],
          ParamType.String,
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
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PatchLimitBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PatchLimitBodyStruct &&
        typeKey == other.typeKey &&
        maxAmount == other.maxAmount &&
        dailyLimit == other.dailyLimit &&
        index == other.index;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([typeKey, maxAmount, dailyLimit, index]);
}

PatchLimitBodyStruct createPatchLimitBodyStruct({
  String? typeKey,
  double? maxAmount,
  double? dailyLimit,
  int? index,
}) =>
    PatchLimitBodyStruct(
      typeKey: typeKey,
      maxAmount: maxAmount,
      dailyLimit: dailyLimit,
      index: index,
    );
