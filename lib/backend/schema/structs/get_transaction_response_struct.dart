// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetTransactionResponseStruct extends BaseStruct {
  GetTransactionResponseStruct({
    int? id,
    String? createdAt,
    int? accountId,
    double? amount,
    double? runningBalance,
    String? referenceNumber,
    String? description,
    MetadataStruct? metadata,
    String? transactionMethod,
    String? transactionCategeory,
    String? transactionType,
    String? payee,
    String? updatedAt,
    int? userId,
  })  : _id = id,
        _createdAt = createdAt,
        _accountId = accountId,
        _amount = amount,
        _runningBalance = runningBalance,
        _referenceNumber = referenceNumber,
        _description = description,
        _metadata = metadata,
        _transactionMethod = transactionMethod,
        _transactionCategeory = transactionCategeory,
        _transactionType = transactionType,
        _payee = payee,
        _updatedAt = updatedAt,
        _userId = userId;

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

  // "account_id" field.
  int? _accountId;
  int get accountId => _accountId ?? 0;
  set accountId(int? val) => _accountId = val;

  void incrementAccountId(int amount) => accountId = accountId + amount;

  bool hasAccountId() => _accountId != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "running_balance" field.
  double? _runningBalance;
  double get runningBalance => _runningBalance ?? 0.0;
  set runningBalance(double? val) => _runningBalance = val;

  void incrementRunningBalance(double amount) =>
      runningBalance = runningBalance + amount;

  bool hasRunningBalance() => _runningBalance != null;

  // "reference_number" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "metadata" field.
  MetadataStruct? _metadata;
  MetadataStruct get metadata => _metadata ?? MetadataStruct();
  set metadata(MetadataStruct? val) => _metadata = val;

  void updateMetadata(Function(MetadataStruct) updateFn) {
    updateFn(_metadata ??= MetadataStruct());
  }

  bool hasMetadata() => _metadata != null;

  // "transaction_method" field.
  String? _transactionMethod;
  String get transactionMethod => _transactionMethod ?? '';
  set transactionMethod(String? val) => _transactionMethod = val;

  bool hasTransactionMethod() => _transactionMethod != null;

  // "transaction_categeory" field.
  String? _transactionCategeory;
  String get transactionCategeory => _transactionCategeory ?? '';
  set transactionCategeory(String? val) => _transactionCategeory = val;

  bool hasTransactionCategeory() => _transactionCategeory != null;

  // "transaction_type" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "payee" field.
  String? _payee;
  String get payee => _payee ?? '';
  set payee(String? val) => _payee = val;

  bool hasPayee() => _payee != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  static GetTransactionResponseStruct fromMap(Map<String, dynamic> data) =>
      GetTransactionResponseStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        accountId: castToType<int>(data['account_id']),
        amount: castToType<double>(data['amount']),
        runningBalance: castToType<double>(data['running_balance']),
        referenceNumber: data['reference_number'] as String?,
        description: data['description'] as String?,
        metadata: data['metadata'] is MetadataStruct
            ? data['metadata']
            : MetadataStruct.maybeFromMap(data['metadata']),
        transactionMethod: data['transaction_method'] as String?,
        transactionCategeory: data['transaction_categeory'] as String?,
        transactionType: data['transaction_type'] as String?,
        payee: data['payee'] as String?,
        updatedAt: data['updated_at'] as String?,
        userId: castToType<int>(data['user_id']),
      );

  static GetTransactionResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? GetTransactionResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'account_id': _accountId,
        'amount': _amount,
        'running_balance': _runningBalance,
        'reference_number': _referenceNumber,
        'description': _description,
        'metadata': _metadata?.toMap(),
        'transaction_method': _transactionMethod,
        'transaction_categeory': _transactionCategeory,
        'transaction_type': _transactionType,
        'payee': _payee,
        'updated_at': _updatedAt,
        'user_id': _userId,
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
        'account_id': serializeParam(
          _accountId,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'running_balance': serializeParam(
          _runningBalance,
          ParamType.double,
        ),
        'reference_number': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
        'transaction_method': serializeParam(
          _transactionMethod,
          ParamType.String,
        ),
        'transaction_categeory': serializeParam(
          _transactionCategeory,
          ParamType.String,
        ),
        'transaction_type': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'payee': serializeParam(
          _payee,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static GetTransactionResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetTransactionResponseStruct(
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
        accountId: deserializeParam(
          data['account_id'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        runningBalance: deserializeParam(
          data['running_balance'],
          ParamType.double,
          false,
        ),
        referenceNumber: deserializeParam(
          data['reference_number'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: MetadataStruct.fromSerializableMap,
        ),
        transactionMethod: deserializeParam(
          data['transaction_method'],
          ParamType.String,
          false,
        ),
        transactionCategeory: deserializeParam(
          data['transaction_categeory'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['transaction_type'],
          ParamType.String,
          false,
        ),
        payee: deserializeParam(
          data['payee'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GetTransactionResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetTransactionResponseStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        accountId == other.accountId &&
        amount == other.amount &&
        runningBalance == other.runningBalance &&
        referenceNumber == other.referenceNumber &&
        description == other.description &&
        metadata == other.metadata &&
        transactionMethod == other.transactionMethod &&
        transactionCategeory == other.transactionCategeory &&
        transactionType == other.transactionType &&
        payee == other.payee &&
        updatedAt == other.updatedAt &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        accountId,
        amount,
        runningBalance,
        referenceNumber,
        description,
        metadata,
        transactionMethod,
        transactionCategeory,
        transactionType,
        payee,
        updatedAt,
        userId
      ]);
}

GetTransactionResponseStruct createGetTransactionResponseStruct({
  int? id,
  String? createdAt,
  int? accountId,
  double? amount,
  double? runningBalance,
  String? referenceNumber,
  String? description,
  MetadataStruct? metadata,
  String? transactionMethod,
  String? transactionCategeory,
  String? transactionType,
  String? payee,
  String? updatedAt,
  int? userId,
}) =>
    GetTransactionResponseStruct(
      id: id,
      createdAt: createdAt,
      accountId: accountId,
      amount: amount,
      runningBalance: runningBalance,
      referenceNumber: referenceNumber,
      description: description,
      metadata: metadata ?? MetadataStruct(),
      transactionMethod: transactionMethod,
      transactionCategeory: transactionCategeory,
      transactionType: transactionType,
      payee: payee,
      updatedAt: updatedAt,
      userId: userId,
    );
