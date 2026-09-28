// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BeneficiaryModelStruct extends BaseStruct {
  BeneficiaryModelStruct({
    String? id,
    String? nickname,
    String? accountNumber,
    String? accountHolderName,
    String? bankCode,
    String? bankName,
    String? transferType,
    bool? isVerified,
    String? createdAt,
  })  : _id = id,
        _nickname = nickname,
        _accountNumber = accountNumber,
        _accountHolderName = accountHolderName,
        _bankCode = bankCode,
        _bankName = bankName,
        _transferType = transferType,
        _isVerified = isVerified,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "bankCode" field.
  String? _bankCode;
  String get bankCode => _bankCode ?? '';
  set bankCode(String? val) => _bankCode = val;

  bool hasBankCode() => _bankCode != null;

  // "bankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "transferType" field.
  String? _transferType;
  String get transferType => _transferType ?? '';
  set transferType(String? val) => _transferType = val;

  bool hasTransferType() => _transferType != null;

  // "isVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  set isVerified(bool? val) => _isVerified = val;

  bool hasIsVerified() => _isVerified != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static BeneficiaryModelStruct fromMap(Map<String, dynamic> data) =>
      BeneficiaryModelStruct(
        id: data['id'] as String?,
        nickname: data['nickname'] as String?,
        accountNumber: data['accountNumber'] as String?,
        accountHolderName: data['accountHolderName'] as String?,
        bankCode: data['bankCode'] as String?,
        bankName: data['bankName'] as String?,
        transferType: data['transferType'] as String?,
        isVerified: data['isVerified'] as bool?,
        createdAt: data['createdAt'] as String?,
      );

  static BeneficiaryModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BeneficiaryModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nickname': _nickname,
        'accountNumber': _accountNumber,
        'accountHolderName': _accountHolderName,
        'bankCode': _bankCode,
        'bankName': _bankName,
        'transferType': _transferType,
        'isVerified': _isVerified,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
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
        'bankCode': serializeParam(
          _bankCode,
          ParamType.String,
        ),
        'bankName': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'transferType': serializeParam(
          _transferType,
          ParamType.String,
        ),
        'isVerified': serializeParam(
          _isVerified,
          ParamType.bool,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static BeneficiaryModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BeneficiaryModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
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
        bankCode: deserializeParam(
          data['bankCode'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['bankName'],
          ParamType.String,
          false,
        ),
        transferType: deserializeParam(
          data['transferType'],
          ParamType.String,
          false,
        ),
        isVerified: deserializeParam(
          data['isVerified'],
          ParamType.bool,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BeneficiaryModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BeneficiaryModelStruct &&
        id == other.id &&
        nickname == other.nickname &&
        accountNumber == other.accountNumber &&
        accountHolderName == other.accountHolderName &&
        bankCode == other.bankCode &&
        bankName == other.bankName &&
        transferType == other.transferType &&
        isVerified == other.isVerified &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nickname,
        accountNumber,
        accountHolderName,
        bankCode,
        bankName,
        transferType,
        isVerified,
        createdAt
      ]);
}

BeneficiaryModelStruct createBeneficiaryModelStruct({
  String? id,
  String? nickname,
  String? accountNumber,
  String? accountHolderName,
  String? bankCode,
  String? bankName,
  String? transferType,
  bool? isVerified,
  String? createdAt,
}) =>
    BeneficiaryModelStruct(
      id: id,
      nickname: nickname,
      accountNumber: accountNumber,
      accountHolderName: accountHolderName,
      bankCode: bankCode,
      bankName: bankName,
      transferType: transferType,
      isVerified: isVerified,
      createdAt: createdAt,
    );
