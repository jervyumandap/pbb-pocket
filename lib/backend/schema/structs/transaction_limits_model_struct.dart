// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionLimitsModelStruct extends BaseStruct {
  TransactionLimitsModelStruct({
    int? id,
    String? transactionTypeId,
    int? userId,
    String? transactionType,
    double? maxLimit,
    String? currency,
    int? serviceChannelId,
    String? serviceChannelName,
    String? updatedAt,
  })  : _id = id,
        _transactionTypeId = transactionTypeId,
        _userId = userId,
        _transactionType = transactionType,
        _maxLimit = maxLimit,
        _currency = currency,
        _serviceChannelId = serviceChannelId,
        _serviceChannelName = serviceChannelName,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "transaction_type_id" field.
  String? _transactionTypeId;
  String get transactionTypeId => _transactionTypeId ?? '';
  set transactionTypeId(String? val) => _transactionTypeId = val;

  bool hasTransactionTypeId() => _transactionTypeId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "transaction_type" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "max_limit" field.
  double? _maxLimit;
  double get maxLimit => _maxLimit ?? 0.0;
  set maxLimit(double? val) => _maxLimit = val;

  void incrementMaxLimit(double amount) => maxLimit = maxLimit + amount;

  bool hasMaxLimit() => _maxLimit != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "service_channel_id" field.
  int? _serviceChannelId;
  int get serviceChannelId => _serviceChannelId ?? 0;
  set serviceChannelId(int? val) => _serviceChannelId = val;

  void incrementServiceChannelId(int amount) =>
      serviceChannelId = serviceChannelId + amount;

  bool hasServiceChannelId() => _serviceChannelId != null;

  // "service_channel_name" field.
  String? _serviceChannelName;
  String get serviceChannelName => _serviceChannelName ?? '';
  set serviceChannelName(String? val) => _serviceChannelName = val;

  bool hasServiceChannelName() => _serviceChannelName != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static TransactionLimitsModelStruct fromMap(Map<String, dynamic> data) =>
      TransactionLimitsModelStruct(
        id: castToType<int>(data['id']),
        transactionTypeId: data['transaction_type_id'] as String?,
        userId: castToType<int>(data['user_id']),
        transactionType: data['transaction_type'] as String?,
        maxLimit: castToType<double>(data['max_limit']),
        currency: data['currency'] as String?,
        serviceChannelId: castToType<int>(data['service_channel_id']),
        serviceChannelName: data['service_channel_name'] as String?,
        updatedAt: data['updated_at'] as String?,
      );

  static TransactionLimitsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionLimitsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'transaction_type_id': _transactionTypeId,
        'user_id': _userId,
        'transaction_type': _transactionType,
        'max_limit': _maxLimit,
        'currency': _currency,
        'service_channel_id': _serviceChannelId,
        'service_channel_name': _serviceChannelName,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'transaction_type_id': serializeParam(
          _transactionTypeId,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'transaction_type': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'max_limit': serializeParam(
          _maxLimit,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'service_channel_id': serializeParam(
          _serviceChannelId,
          ParamType.int,
        ),
        'service_channel_name': serializeParam(
          _serviceChannelName,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionLimitsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionLimitsModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        transactionTypeId: deserializeParam(
          data['transaction_type_id'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        transactionType: deserializeParam(
          data['transaction_type'],
          ParamType.String,
          false,
        ),
        maxLimit: deserializeParam(
          data['max_limit'],
          ParamType.double,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        serviceChannelId: deserializeParam(
          data['service_channel_id'],
          ParamType.int,
          false,
        ),
        serviceChannelName: deserializeParam(
          data['service_channel_name'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionLimitsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionLimitsModelStruct &&
        id == other.id &&
        transactionTypeId == other.transactionTypeId &&
        userId == other.userId &&
        transactionType == other.transactionType &&
        maxLimit == other.maxLimit &&
        currency == other.currency &&
        serviceChannelId == other.serviceChannelId &&
        serviceChannelName == other.serviceChannelName &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        transactionTypeId,
        userId,
        transactionType,
        maxLimit,
        currency,
        serviceChannelId,
        serviceChannelName,
        updatedAt
      ]);
}

TransactionLimitsModelStruct createTransactionLimitsModelStruct({
  int? id,
  String? transactionTypeId,
  int? userId,
  String? transactionType,
  double? maxLimit,
  String? currency,
  int? serviceChannelId,
  String? serviceChannelName,
  String? updatedAt,
}) =>
    TransactionLimitsModelStruct(
      id: id,
      transactionTypeId: transactionTypeId,
      userId: userId,
      transactionType: transactionType,
      maxLimit: maxLimit,
      currency: currency,
      serviceChannelId: serviceChannelId,
      serviceChannelName: serviceChannelName,
      updatedAt: updatedAt,
    );
