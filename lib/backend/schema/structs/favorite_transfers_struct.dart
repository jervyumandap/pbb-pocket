// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteTransfersStruct extends BaseStruct {
  FavoriteTransfersStruct({
    int? id,
    int? userId,
    int? beneficiaryId,
    String? alias,
    String? createdAt,
    String? deletedAt,
    String? accountName,
    String? accountNumber,
    String? bank,
  })  : _id = id,
        _userId = userId,
        _beneficiaryId = beneficiaryId,
        _alias = alias,
        _createdAt = createdAt,
        _deletedAt = deletedAt,
        _accountName = accountName,
        _accountNumber = accountNumber,
        _bank = bank;

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

  // "beneficiary_id" field.
  int? _beneficiaryId;
  int get beneficiaryId => _beneficiaryId ?? 0;
  set beneficiaryId(int? val) => _beneficiaryId = val;

  void incrementBeneficiaryId(int amount) =>
      beneficiaryId = beneficiaryId + amount;

  bool hasBeneficiaryId() => _beneficiaryId != null;

  // "alias" field.
  String? _alias;
  String get alias => _alias ?? '';
  set alias(String? val) => _alias = val;

  bool hasAlias() => _alias != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "bank" field.
  String? _bank;
  String get bank => _bank ?? '';
  set bank(String? val) => _bank = val;

  bool hasBank() => _bank != null;

  static FavoriteTransfersStruct fromMap(Map<String, dynamic> data) =>
      FavoriteTransfersStruct(
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        beneficiaryId: castToType<int>(data['beneficiary_id']),
        alias: data['alias'] as String?,
        createdAt: data['created_at'] as String?,
        deletedAt: data['deleted_at'] as String?,
        accountName: data['account_name'] as String?,
        accountNumber: data['account_number'] as String?,
        bank: data['bank'] as String?,
      );

  static FavoriteTransfersStruct? maybeFromMap(dynamic data) => data is Map
      ? FavoriteTransfersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'user_id': _userId,
        'beneficiary_id': _beneficiaryId,
        'alias': _alias,
        'created_at': _createdAt,
        'deleted_at': _deletedAt,
        'account_name': _accountName,
        'account_number': _accountNumber,
        'bank': _bank,
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
        'beneficiary_id': serializeParam(
          _beneficiaryId,
          ParamType.int,
        ),
        'alias': serializeParam(
          _alias,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.String,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'account_number': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'bank': serializeParam(
          _bank,
          ParamType.String,
        ),
      }.withoutNulls;

  static FavoriteTransfersStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FavoriteTransfersStruct(
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
        beneficiaryId: deserializeParam(
          data['beneficiary_id'],
          ParamType.int,
          false,
        ),
        alias: deserializeParam(
          data['alias'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['account_number'],
          ParamType.String,
          false,
        ),
        bank: deserializeParam(
          data['bank'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FavoriteTransfersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FavoriteTransfersStruct &&
        id == other.id &&
        userId == other.userId &&
        beneficiaryId == other.beneficiaryId &&
        alias == other.alias &&
        createdAt == other.createdAt &&
        deletedAt == other.deletedAt &&
        accountName == other.accountName &&
        accountNumber == other.accountNumber &&
        bank == other.bank;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userId,
        beneficiaryId,
        alias,
        createdAt,
        deletedAt,
        accountName,
        accountNumber,
        bank
      ]);
}

FavoriteTransfersStruct createFavoriteTransfersStruct({
  int? id,
  int? userId,
  int? beneficiaryId,
  String? alias,
  String? createdAt,
  String? deletedAt,
  String? accountName,
  String? accountNumber,
  String? bank,
}) =>
    FavoriteTransfersStruct(
      id: id,
      userId: userId,
      beneficiaryId: beneficiaryId,
      alias: alias,
      createdAt: createdAt,
      deletedAt: deletedAt,
      accountName: accountName,
      accountNumber: accountNumber,
      bank: bank,
    );
