// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsV2Struct extends BaseStruct {
  AccountsV2Struct({
    int? id,
    String? createdAt,
    int? userId,
    String? accountNumber,
    String? accountName,
    String? accountTypeId,
    double? balance,
    String? currency,
    String? status,
    double? overdraftLimit,
    String? updatedAt,
    String? organizationCode,
    String? branchId,
    BankAccountType? accountType,
  })  : _id = id,
        _createdAt = createdAt,
        _userId = userId,
        _accountNumber = accountNumber,
        _accountName = accountName,
        _accountTypeId = accountTypeId,
        _balance = balance,
        _currency = currency,
        _status = status,
        _overdraftLimit = overdraftLimit,
        _updatedAt = updatedAt,
        _organizationCode = organizationCode,
        _branchId = branchId,
        _accountType = accountType;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "account_type_id" field.
  String? _accountTypeId;
  String get accountTypeId => _accountTypeId ?? '';
  set accountTypeId(String? val) => _accountTypeId = val;

  bool hasAccountTypeId() => _accountTypeId != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  set balance(double? val) => _balance = val;

  void incrementBalance(double amount) => balance = balance + amount;

  bool hasBalance() => _balance != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "overdraft_limit" field.
  double? _overdraftLimit;
  double get overdraftLimit => _overdraftLimit ?? 0.0;
  set overdraftLimit(double? val) => _overdraftLimit = val;

  void incrementOverdraftLimit(double amount) =>
      overdraftLimit = overdraftLimit + amount;

  bool hasOverdraftLimit() => _overdraftLimit != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "organization_code" field.
  String? _organizationCode;
  String get organizationCode => _organizationCode ?? '';
  set organizationCode(String? val) => _organizationCode = val;

  bool hasOrganizationCode() => _organizationCode != null;

  // "branch_id" field.
  String? _branchId;
  String get branchId => _branchId ?? '';
  set branchId(String? val) => _branchId = val;

  bool hasBranchId() => _branchId != null;

  // "account_type" field.
  BankAccountType? _accountType;
  BankAccountType? get accountType => _accountType;
  set accountType(BankAccountType? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

  static AccountsV2Struct fromMap(Map<String, dynamic> data) =>
      AccountsV2Struct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        userId: castToType<int>(data['user_id']),
        accountNumber: data['account_number'] as String?,
        accountName: data['account_name'] as String?,
        accountTypeId: data['account_type_id'] as String?,
        balance: castToType<double>(data['balance']),
        currency: data['currency'] as String?,
        status: data['status'] as String?,
        overdraftLimit: castToType<double>(data['overdraft_limit']),
        updatedAt: data['updated_at'] as String?,
        organizationCode: data['organization_code'] as String?,
        branchId: data['branch_id'] as String?,
        accountType: data['account_type'] is BankAccountType
            ? data['account_type']
            : deserializeEnum<BankAccountType>(data['account_type']),
      );

  static AccountsV2Struct? maybeFromMap(dynamic data) => data is Map
      ? AccountsV2Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'user_id': _userId,
        'account_number': _accountNumber,
        'account_name': _accountName,
        'account_type_id': _accountTypeId,
        'balance': _balance,
        'currency': _currency,
        'status': _status,
        'overdraft_limit': _overdraftLimit,
        'updated_at': _updatedAt,
        'organization_code': _organizationCode,
        'branch_id': _branchId,
        'account_type': _accountType?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'account_number': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'account_type_id': serializeParam(
          _accountTypeId,
          ParamType.String,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'overdraft_limit': serializeParam(
          _overdraftLimit,
          ParamType.double,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'organization_code': serializeParam(
          _organizationCode,
          ParamType.String,
        ),
        'branch_id': serializeParam(
          _branchId,
          ParamType.String,
        ),
        'account_type': serializeParam(
          _accountType,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static AccountsV2Struct fromSerializableMap(Map<String, dynamic> data) =>
      AccountsV2Struct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        accountNumber: deserializeParam(
          data['account_number'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        accountTypeId: deserializeParam(
          data['account_type_id'],
          ParamType.String,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.double,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        overdraftLimit: deserializeParam(
          data['overdraft_limit'],
          ParamType.double,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        organizationCode: deserializeParam(
          data['organization_code'],
          ParamType.String,
          false,
        ),
        branchId: deserializeParam(
          data['branch_id'],
          ParamType.String,
          false,
        ),
        accountType: deserializeParam<BankAccountType>(
          data['account_type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'AccountsV2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountsV2Struct &&
        id == other.id &&
        createdAt == other.createdAt &&
        userId == other.userId &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        accountTypeId == other.accountTypeId &&
        balance == other.balance &&
        currency == other.currency &&
        status == other.status &&
        overdraftLimit == other.overdraftLimit &&
        updatedAt == other.updatedAt &&
        organizationCode == other.organizationCode &&
        branchId == other.branchId &&
        accountType == other.accountType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        userId,
        accountNumber,
        accountName,
        accountTypeId,
        balance,
        currency,
        status,
        overdraftLimit,
        updatedAt,
        organizationCode,
        branchId,
        accountType
      ]);
}

AccountsV2Struct createAccountsV2Struct({
  int? id,
  String? createdAt,
  int? userId,
  String? accountNumber,
  String? accountName,
  String? accountTypeId,
  double? balance,
  String? currency,
  String? status,
  double? overdraftLimit,
  String? updatedAt,
  String? organizationCode,
  String? branchId,
  BankAccountType? accountType,
}) =>
    AccountsV2Struct(
      id: id,
      createdAt: createdAt,
      userId: userId,
      accountNumber: accountNumber,
      accountName: accountName,
      accountTypeId: accountTypeId,
      balance: balance,
      currency: currency,
      status: status,
      overdraftLimit: overdraftLimit,
      updatedAt: updatedAt,
      organizationCode: organizationCode,
      branchId: branchId,
      accountType: accountType,
    );
