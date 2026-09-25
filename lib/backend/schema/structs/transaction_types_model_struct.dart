// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionTypesModelStruct extends BaseStruct {
  TransactionTypesModelStruct({
    String? typeKey,
    String? displayName,
    String? description,
    bool? isActive,
    int? minAmount,
    int? maxAmount,
    int? dailyLimit,
    String? feeType,
    int? feeAmount,
    String? processingTime,
  })  : _typeKey = typeKey,
        _displayName = displayName,
        _description = description,
        _isActive = isActive,
        _minAmount = minAmount,
        _maxAmount = maxAmount,
        _dailyLimit = dailyLimit,
        _feeType = feeType,
        _feeAmount = feeAmount,
        _processingTime = processingTime;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

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

  // "feeType" field.
  String? _feeType;
  String get feeType => _feeType ?? '';
  set feeType(String? val) => _feeType = val;

  bool hasFeeType() => _feeType != null;

  // "feeAmount" field.
  int? _feeAmount;
  int get feeAmount => _feeAmount ?? 0;
  set feeAmount(int? val) => _feeAmount = val;

  void incrementFeeAmount(int amount) => feeAmount = feeAmount + amount;

  bool hasFeeAmount() => _feeAmount != null;

  // "processingTime" field.
  String? _processingTime;
  String get processingTime => _processingTime ?? '';
  set processingTime(String? val) => _processingTime = val;

  bool hasProcessingTime() => _processingTime != null;

  static TransactionTypesModelStruct fromMap(Map<String, dynamic> data) =>
      TransactionTypesModelStruct(
        typeKey: data['typeKey'] as String?,
        displayName: data['displayName'] as String?,
        description: data['description'] as String?,
        isActive: data['isActive'] as bool?,
        minAmount: castToType<int>(data['minAmount']),
        maxAmount: castToType<int>(data['maxAmount']),
        dailyLimit: castToType<int>(data['dailyLimit']),
        feeType: data['feeType'] as String?,
        feeAmount: castToType<int>(data['feeAmount']),
        processingTime: data['processingTime'] as String?,
      );

  static TransactionTypesModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionTypesModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'typeKey': _typeKey,
        'displayName': _displayName,
        'description': _description,
        'isActive': _isActive,
        'minAmount': _minAmount,
        'maxAmount': _maxAmount,
        'dailyLimit': _dailyLimit,
        'feeType': _feeType,
        'feeAmount': _feeAmount,
        'processingTime': _processingTime,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
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
        'feeType': serializeParam(
          _feeType,
          ParamType.String,
        ),
        'feeAmount': serializeParam(
          _feeAmount,
          ParamType.int,
        ),
        'processingTime': serializeParam(
          _processingTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionTypesModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionTypesModelStruct(
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
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
        feeType: deserializeParam(
          data['feeType'],
          ParamType.String,
          false,
        ),
        feeAmount: deserializeParam(
          data['feeAmount'],
          ParamType.int,
          false,
        ),
        processingTime: deserializeParam(
          data['processingTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionTypesModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionTypesModelStruct &&
        typeKey == other.typeKey &&
        displayName == other.displayName &&
        description == other.description &&
        isActive == other.isActive &&
        minAmount == other.minAmount &&
        maxAmount == other.maxAmount &&
        dailyLimit == other.dailyLimit &&
        feeType == other.feeType &&
        feeAmount == other.feeAmount &&
        processingTime == other.processingTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        typeKey,
        displayName,
        description,
        isActive,
        minAmount,
        maxAmount,
        dailyLimit,
        feeType,
        feeAmount,
        processingTime
      ]);
}

TransactionTypesModelStruct createTransactionTypesModelStruct({
  String? typeKey,
  String? displayName,
  String? description,
  bool? isActive,
  int? minAmount,
  int? maxAmount,
  int? dailyLimit,
  String? feeType,
  int? feeAmount,
  String? processingTime,
}) =>
    TransactionTypesModelStruct(
      typeKey: typeKey,
      displayName: displayName,
      description: description,
      isActive: isActive,
      minAmount: minAmount,
      maxAmount: maxAmount,
      dailyLimit: dailyLimit,
      feeType: feeType,
      feeAmount: feeAmount,
      processingTime: processingTime,
    );
