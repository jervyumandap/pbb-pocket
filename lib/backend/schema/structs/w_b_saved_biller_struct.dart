// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBSavedBillerStruct extends BaseStruct {
  WBSavedBillerStruct({
    String? id,
    WBBillerStruct? biller,
    String? nickname,
    String? accountNumber,
    String? accountHolderName,
    String? createdAt,
    String? lastUsedAt,
  })  : _id = id,
        _biller = biller,
        _nickname = nickname,
        _accountNumber = accountNumber,
        _accountHolderName = accountHolderName,
        _createdAt = createdAt,
        _lastUsedAt = lastUsedAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "biller" field.
  WBBillerStruct? _biller;
  WBBillerStruct get biller => _biller ?? WBBillerStruct();
  set biller(WBBillerStruct? val) => _biller = val;

  void updateBiller(Function(WBBillerStruct) updateFn) {
    updateFn(_biller ??= WBBillerStruct());
  }

  bool hasBiller() => _biller != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;

  bool hasNickname() => _nickname != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "accountHolderName" field.
  String? _accountHolderName;
  String get accountHolderName => _accountHolderName ?? '';
  set accountHolderName(String? val) => _accountHolderName = val;

  bool hasAccountHolderName() => _accountHolderName != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "lastUsedAt" field.
  String? _lastUsedAt;
  String get lastUsedAt => _lastUsedAt ?? '';
  set lastUsedAt(String? val) => _lastUsedAt = val;

  bool hasLastUsedAt() => _lastUsedAt != null;

  static WBSavedBillerStruct fromMap(Map<String, dynamic> data) =>
      WBSavedBillerStruct(
        id: data['id'] as String?,
        biller: data['biller'] is WBBillerStruct
            ? data['biller']
            : WBBillerStruct.maybeFromMap(data['biller']),
        nickname: data['nickname'] as String?,
        accountNumber: data['accountNumber'] as String?,
        accountHolderName: data['accountHolderName'] as String?,
        createdAt: data['createdAt'] as String?,
        lastUsedAt: data['lastUsedAt'] as String?,
      );

  static WBSavedBillerStruct? maybeFromMap(dynamic data) => data is Map
      ? WBSavedBillerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'biller': _biller?.toMap(),
        'nickname': _nickname,
        'accountNumber': _accountNumber,
        'accountHolderName': _accountHolderName,
        'createdAt': _createdAt,
        'lastUsedAt': _lastUsedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'biller': serializeParam(
          _biller,
          ParamType.DataStruct,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'accountHolderName': serializeParam(
          _accountHolderName,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'lastUsedAt': serializeParam(
          _lastUsedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBSavedBillerStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBSavedBillerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        biller: deserializeStructParam(
          data['biller'],
          ParamType.DataStruct,
          false,
          structBuilder: WBBillerStruct.fromSerializableMap,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        accountHolderName: deserializeParam(
          data['accountHolderName'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        lastUsedAt: deserializeParam(
          data['lastUsedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBSavedBillerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBSavedBillerStruct &&
        id == other.id &&
        biller == other.biller &&
        nickname == other.nickname &&
        accountNumber == other.accountNumber &&
        accountHolderName == other.accountHolderName &&
        createdAt == other.createdAt &&
        lastUsedAt == other.lastUsedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        biller,
        nickname,
        accountNumber,
        accountHolderName,
        createdAt,
        lastUsedAt
      ]);
}

WBSavedBillerStruct createWBSavedBillerStruct({
  String? id,
  WBBillerStruct? biller,
  String? nickname,
  String? accountNumber,
  String? accountHolderName,
  String? createdAt,
  String? lastUsedAt,
}) =>
    WBSavedBillerStruct(
      id: id,
      biller: biller ?? WBBillerStruct(),
      nickname: nickname,
      accountNumber: accountNumber,
      accountHolderName: accountHolderName,
      createdAt: createdAt,
      lastUsedAt: lastUsedAt,
    );
