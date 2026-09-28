// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeDepositSuccessOutputStruct extends BaseStruct {
  TimeDepositSuccessOutputStruct({
    String? accountNumber,
    String? maskedAccountNumber,
    String? productCode,
    String? productName,
    String? currency,
    double? principalAmount,
    double? interestRate,
    int? termDays,
    String? openedDate,
    String? maturityDate,
    String? status,
    String? referenceNumber,
  })  : _accountNumber = accountNumber,
        _maskedAccountNumber = maskedAccountNumber,
        _productCode = productCode,
        _productName = productName,
        _currency = currency,
        _principalAmount = principalAmount,
        _interestRate = interestRate,
        _termDays = termDays,
        _openedDate = openedDate,
        _maturityDate = maturityDate,
        _status = status,
        _referenceNumber = referenceNumber;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "maskedAccountNumber" field.
  String? _maskedAccountNumber;
  String get maskedAccountNumber => _maskedAccountNumber ?? '';
  set maskedAccountNumber(String? val) => _maskedAccountNumber = val;

  bool hasMaskedAccountNumber() => _maskedAccountNumber != null;

  // "productCode" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "principalAmount" field.
  double? _principalAmount;
  double get principalAmount => _principalAmount ?? 0.0;
  set principalAmount(double? val) => _principalAmount = val;

  void incrementPrincipalAmount(double amount) =>
      principalAmount = principalAmount + amount;

  bool hasPrincipalAmount() => _principalAmount != null;

  // "interestRate" field.
  double? _interestRate;
  double get interestRate => _interestRate ?? 0.0;
  set interestRate(double? val) => _interestRate = val;

  void incrementInterestRate(double amount) =>
      interestRate = interestRate + amount;

  bool hasInterestRate() => _interestRate != null;

  // "termDays" field.
  int? _termDays;
  int get termDays => _termDays ?? 0;
  set termDays(int? val) => _termDays = val;

  void incrementTermDays(int amount) => termDays = termDays + amount;

  bool hasTermDays() => _termDays != null;

  // "openedDate" field.
  String? _openedDate;
  String get openedDate => _openedDate ?? '';
  set openedDate(String? val) => _openedDate = val;

  bool hasOpenedDate() => _openedDate != null;

  // "maturityDate" field.
  String? _maturityDate;
  String get maturityDate => _maturityDate ?? '';
  set maturityDate(String? val) => _maturityDate = val;

  bool hasMaturityDate() => _maturityDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  static TimeDepositSuccessOutputStruct fromMap(Map<String, dynamic> data) =>
      TimeDepositSuccessOutputStruct(
        accountNumber: data['accountNumber'] as String?,
        maskedAccountNumber: data['maskedAccountNumber'] as String?,
        productCode: data['productCode'] as String?,
        productName: data['productName'] as String?,
        currency: data['currency'] as String?,
        principalAmount: castToType<double>(data['principalAmount']),
        interestRate: castToType<double>(data['interestRate']),
        termDays: castToType<int>(data['termDays']),
        openedDate: data['openedDate'] as String?,
        maturityDate: data['maturityDate'] as String?,
        status: data['status'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
      );

  static TimeDepositSuccessOutputStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TimeDepositSuccessOutputStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'maskedAccountNumber': _maskedAccountNumber,
        'productCode': _productCode,
        'productName': _productName,
        'currency': _currency,
        'principalAmount': _principalAmount,
        'interestRate': _interestRate,
        'termDays': _termDays,
        'openedDate': _openedDate,
        'maturityDate': _maturityDate,
        'status': _status,
        'referenceNumber': _referenceNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'maskedAccountNumber': serializeParam(
          _maskedAccountNumber,
          ParamType.String,
        ),
        'productCode': serializeParam(
          _productCode,
          ParamType.String,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'principalAmount': serializeParam(
          _principalAmount,
          ParamType.double,
        ),
        'interestRate': serializeParam(
          _interestRate,
          ParamType.double,
        ),
        'termDays': serializeParam(
          _termDays,
          ParamType.int,
        ),
        'openedDate': serializeParam(
          _openedDate,
          ParamType.String,
        ),
        'maturityDate': serializeParam(
          _maturityDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static TimeDepositSuccessOutputStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TimeDepositSuccessOutputStruct(
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        maskedAccountNumber: deserializeParam(
          data['maskedAccountNumber'],
          ParamType.String,
          false,
        ),
        productCode: deserializeParam(
          data['productCode'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        principalAmount: deserializeParam(
          data['principalAmount'],
          ParamType.double,
          false,
        ),
        interestRate: deserializeParam(
          data['interestRate'],
          ParamType.double,
          false,
        ),
        termDays: deserializeParam(
          data['termDays'],
          ParamType.int,
          false,
        ),
        openedDate: deserializeParam(
          data['openedDate'],
          ParamType.String,
          false,
        ),
        maturityDate: deserializeParam(
          data['maturityDate'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TimeDepositSuccessOutputStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeDepositSuccessOutputStruct &&
        accountNumber == other.accountNumber &&
        maskedAccountNumber == other.maskedAccountNumber &&
        productCode == other.productCode &&
        productName == other.productName &&
        currency == other.currency &&
        principalAmount == other.principalAmount &&
        interestRate == other.interestRate &&
        termDays == other.termDays &&
        openedDate == other.openedDate &&
        maturityDate == other.maturityDate &&
        status == other.status &&
        referenceNumber == other.referenceNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNumber,
        maskedAccountNumber,
        productCode,
        productName,
        currency,
        principalAmount,
        interestRate,
        termDays,
        openedDate,
        maturityDate,
        status,
        referenceNumber
      ]);
}

TimeDepositSuccessOutputStruct createTimeDepositSuccessOutputStruct({
  String? accountNumber,
  String? maskedAccountNumber,
  String? productCode,
  String? productName,
  String? currency,
  double? principalAmount,
  double? interestRate,
  int? termDays,
  String? openedDate,
  String? maturityDate,
  String? status,
  String? referenceNumber,
}) =>
    TimeDepositSuccessOutputStruct(
      accountNumber: accountNumber,
      maskedAccountNumber: maskedAccountNumber,
      productCode: productCode,
      productName: productName,
      currency: currency,
      principalAmount: principalAmount,
      interestRate: interestRate,
      termDays: termDays,
      openedDate: openedDate,
      maturityDate: maturityDate,
      status: status,
      referenceNumber: referenceNumber,
    );
