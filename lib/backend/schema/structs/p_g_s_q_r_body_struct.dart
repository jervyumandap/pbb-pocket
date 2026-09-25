// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PGSQRBodyStruct extends BaseStruct {
  PGSQRBodyStruct({
    String? pBBAccountNumber,
    String? merchantId,
    String? merchantCategoryCode,
    double? amount,
    String? merchantReferenceNumber,
    String? mobileNumber,
    String? reserved1,
    String? reserved2,
    String? reserved3,
    String? reserved4,
  })  : _pBBAccountNumber = pBBAccountNumber,
        _merchantId = merchantId,
        _merchantCategoryCode = merchantCategoryCode,
        _amount = amount,
        _merchantReferenceNumber = merchantReferenceNumber,
        _mobileNumber = mobileNumber,
        _reserved1 = reserved1,
        _reserved2 = reserved2,
        _reserved3 = reserved3,
        _reserved4 = reserved4;

  // "PBBAccountNumber" field.
  String? _pBBAccountNumber;
  String get pBBAccountNumber => _pBBAccountNumber ?? '';
  set pBBAccountNumber(String? val) => _pBBAccountNumber = val;

  bool hasPBBAccountNumber() => _pBBAccountNumber != null;

  // "MerchantId" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  // "MerchantCategoryCode" field.
  String? _merchantCategoryCode;
  String get merchantCategoryCode => _merchantCategoryCode ?? '';
  set merchantCategoryCode(String? val) => _merchantCategoryCode = val;

  bool hasMerchantCategoryCode() => _merchantCategoryCode != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "MerchantReferenceNumber" field.
  String? _merchantReferenceNumber;
  String get merchantReferenceNumber => _merchantReferenceNumber ?? '';
  set merchantReferenceNumber(String? val) => _merchantReferenceNumber = val;

  bool hasMerchantReferenceNumber() => _merchantReferenceNumber != null;

  // "MobileNumber" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "Reserved1" field.
  String? _reserved1;
  String get reserved1 => _reserved1 ?? '';
  set reserved1(String? val) => _reserved1 = val;

  bool hasReserved1() => _reserved1 != null;

  // "Reserved2" field.
  String? _reserved2;
  String get reserved2 => _reserved2 ?? '';
  set reserved2(String? val) => _reserved2 = val;

  bool hasReserved2() => _reserved2 != null;

  // "Reserved3" field.
  String? _reserved3;
  String get reserved3 => _reserved3 ?? '';
  set reserved3(String? val) => _reserved3 = val;

  bool hasReserved3() => _reserved3 != null;

  // "Reserved4" field.
  String? _reserved4;
  String get reserved4 => _reserved4 ?? '';
  set reserved4(String? val) => _reserved4 = val;

  bool hasReserved4() => _reserved4 != null;

  static PGSQRBodyStruct fromMap(Map<String, dynamic> data) => PGSQRBodyStruct(
        pBBAccountNumber: data['PBBAccountNumber'] as String?,
        merchantId: data['MerchantId'] as String?,
        merchantCategoryCode: data['MerchantCategoryCode'] as String?,
        amount: castToType<double>(data['Amount']),
        merchantReferenceNumber: data['MerchantReferenceNumber'] as String?,
        mobileNumber: data['MobileNumber'] as String?,
        reserved1: data['Reserved1'] as String?,
        reserved2: data['Reserved2'] as String?,
        reserved3: data['Reserved3'] as String?,
        reserved4: data['Reserved4'] as String?,
      );

  static PGSQRBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? PGSQRBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PBBAccountNumber': _pBBAccountNumber,
        'MerchantId': _merchantId,
        'MerchantCategoryCode': _merchantCategoryCode,
        'Amount': _amount,
        'MerchantReferenceNumber': _merchantReferenceNumber,
        'MobileNumber': _mobileNumber,
        'Reserved1': _reserved1,
        'Reserved2': _reserved2,
        'Reserved3': _reserved3,
        'Reserved4': _reserved4,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PBBAccountNumber': serializeParam(
          _pBBAccountNumber,
          ParamType.String,
        ),
        'MerchantId': serializeParam(
          _merchantId,
          ParamType.String,
        ),
        'MerchantCategoryCode': serializeParam(
          _merchantCategoryCode,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'MerchantReferenceNumber': serializeParam(
          _merchantReferenceNumber,
          ParamType.String,
        ),
        'MobileNumber': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'Reserved1': serializeParam(
          _reserved1,
          ParamType.String,
        ),
        'Reserved2': serializeParam(
          _reserved2,
          ParamType.String,
        ),
        'Reserved3': serializeParam(
          _reserved3,
          ParamType.String,
        ),
        'Reserved4': serializeParam(
          _reserved4,
          ParamType.String,
        ),
      }.withoutNulls;

  static PGSQRBodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PGSQRBodyStruct(
        pBBAccountNumber: deserializeParam(
          data['PBBAccountNumber'],
          ParamType.String,
          false,
        ),
        merchantId: deserializeParam(
          data['MerchantId'],
          ParamType.String,
          false,
        ),
        merchantCategoryCode: deserializeParam(
          data['MerchantCategoryCode'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.double,
          false,
        ),
        merchantReferenceNumber: deserializeParam(
          data['MerchantReferenceNumber'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['MobileNumber'],
          ParamType.String,
          false,
        ),
        reserved1: deserializeParam(
          data['Reserved1'],
          ParamType.String,
          false,
        ),
        reserved2: deserializeParam(
          data['Reserved2'],
          ParamType.String,
          false,
        ),
        reserved3: deserializeParam(
          data['Reserved3'],
          ParamType.String,
          false,
        ),
        reserved4: deserializeParam(
          data['Reserved4'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PGSQRBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PGSQRBodyStruct &&
        pBBAccountNumber == other.pBBAccountNumber &&
        merchantId == other.merchantId &&
        merchantCategoryCode == other.merchantCategoryCode &&
        amount == other.amount &&
        merchantReferenceNumber == other.merchantReferenceNumber &&
        mobileNumber == other.mobileNumber &&
        reserved1 == other.reserved1 &&
        reserved2 == other.reserved2 &&
        reserved3 == other.reserved3 &&
        reserved4 == other.reserved4;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pBBAccountNumber,
        merchantId,
        merchantCategoryCode,
        amount,
        merchantReferenceNumber,
        mobileNumber,
        reserved1,
        reserved2,
        reserved3,
        reserved4
      ]);
}

PGSQRBodyStruct createPGSQRBodyStruct({
  String? pBBAccountNumber,
  String? merchantId,
  String? merchantCategoryCode,
  double? amount,
  String? merchantReferenceNumber,
  String? mobileNumber,
  String? reserved1,
  String? reserved2,
  String? reserved3,
  String? reserved4,
}) =>
    PGSQRBodyStruct(
      pBBAccountNumber: pBBAccountNumber,
      merchantId: merchantId,
      merchantCategoryCode: merchantCategoryCode,
      amount: amount,
      merchantReferenceNumber: merchantReferenceNumber,
      mobileNumber: mobileNumber,
      reserved1: reserved1,
      reserved2: reserved2,
      reserved3: reserved3,
      reserved4: reserved4,
    );
