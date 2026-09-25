// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBRecipientStruct extends BaseStruct {
  WBRecipientStruct({
    String? name,
    String? accountNumber,
    String? bankCode,
    String? bankName,
    String? merchantId,
  })  : _name = name,
        _accountNumber = accountNumber,
        _bankCode = bankCode,
        _bankName = bankName,
        _merchantId = merchantId;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

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

  // "merchantId" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  static WBRecipientStruct fromMap(Map<String, dynamic> data) =>
      WBRecipientStruct(
        name: data['name'] as String?,
        accountNumber: data['accountNumber'] as String?,
        bankCode: data['bankCode'] as String?,
        bankName: data['bankName'] as String?,
        merchantId: data['merchantId'] as String?,
      );

  static WBRecipientStruct? maybeFromMap(dynamic data) => data is Map
      ? WBRecipientStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'accountNumber': _accountNumber,
        'bankCode': _bankCode,
        'bankName': _bankName,
        'merchantId': _merchantId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
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
        'merchantId': serializeParam(
          _merchantId,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBRecipientStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBRecipientStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
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
        merchantId: deserializeParam(
          data['merchantId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBRecipientStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBRecipientStruct &&
        name == other.name &&
        accountNumber == other.accountNumber &&
        bankCode == other.bankCode &&
        bankName == other.bankName &&
        merchantId == other.merchantId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, accountNumber, bankCode, bankName, merchantId]);
}

WBRecipientStruct createWBRecipientStruct({
  String? name,
  String? accountNumber,
  String? bankCode,
  String? bankName,
  String? merchantId,
}) =>
    WBRecipientStruct(
      name: name,
      accountNumber: accountNumber,
      bankCode: bankCode,
      bankName: bankName,
      merchantId: merchantId,
    );
