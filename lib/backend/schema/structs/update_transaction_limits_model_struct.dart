// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdateTransactionLimitsModelStruct extends BaseStruct {
  UpdateTransactionLimitsModelStruct({
    int? id,
    int? userId,
    double? maxLimit,
    String? updatedAt,
  })  : _id = id,
        _userId = userId,
        _maxLimit = maxLimit,
        _updatedAt = updatedAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "max_limit" field.
  double? _maxLimit;
  double get maxLimit => _maxLimit ?? 0.0;
  set maxLimit(double? val) => _maxLimit = val;

  void incrementMaxLimit(double amount) => maxLimit = maxLimit + amount;

  bool hasMaxLimit() => _maxLimit != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static UpdateTransactionLimitsModelStruct fromMap(
          Map<String, dynamic> data) =>
      UpdateTransactionLimitsModelStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        maxLimit: castToType<double>(data['max_limit']),
        updatedAt: data['updated_at'] as String?,
      );

  static UpdateTransactionLimitsModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? UpdateTransactionLimitsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'max_limit': _maxLimit,
        'updated_at': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'max_limit': serializeParam(
          _maxLimit,
          ParamType.double,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpdateTransactionLimitsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UpdateTransactionLimitsModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        maxLimit: deserializeParam(
          data['max_limit'],
          ParamType.double,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UpdateTransactionLimitsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdateTransactionLimitsModelStruct &&
        id == other.id &&
        userId == other.userId &&
        maxLimit == other.maxLimit &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, userId, maxLimit, updatedAt]);
}

UpdateTransactionLimitsModelStruct createUpdateTransactionLimitsModelStruct({
  int? id,
  int? userId,
  double? maxLimit,
  String? updatedAt,
}) =>
    UpdateTransactionLimitsModelStruct(
      id: id,
      userId: userId,
      maxLimit: maxLimit,
      updatedAt: updatedAt,
    );
