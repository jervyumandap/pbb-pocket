// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FTPPaymentGatewayDetailsStruct extends BaseStruct {
  FTPPaymentGatewayDetailsStruct({
    String? destinationAddress,
    String? pBBAccountNumber,
    String? beneficiaryCode,
    String? beneficiaryAccountNumber,
    String? beneficiaryName,
    String? beneficiaryAddress1,
    String? beneficiaryAddress2,
    String? beneficiaryAddress3,
    String? beneficiaryAccountCurrency,
    String? beneficiaryMobileNum,
    String? beneficiaryID,
    String? beneficiaryNatOfBusi,
    String? beneficiaryCustType,
    String? receivingBankCode,
    double? transactionAmount,
    double? conversionRate,
    double? convertedAmount,
    double? transactionCharges,
    String? chargesBearer,
    String? valueDate,
    String? purpose,
    String? bankName,
  })  : _destinationAddress = destinationAddress,
        _pBBAccountNumber = pBBAccountNumber,
        _beneficiaryCode = beneficiaryCode,
        _beneficiaryAccountNumber = beneficiaryAccountNumber,
        _beneficiaryName = beneficiaryName,
        _beneficiaryAddress1 = beneficiaryAddress1,
        _beneficiaryAddress2 = beneficiaryAddress2,
        _beneficiaryAddress3 = beneficiaryAddress3,
        _beneficiaryAccountCurrency = beneficiaryAccountCurrency,
        _beneficiaryMobileNum = beneficiaryMobileNum,
        _beneficiaryID = beneficiaryID,
        _beneficiaryNatOfBusi = beneficiaryNatOfBusi,
        _beneficiaryCustType = beneficiaryCustType,
        _receivingBankCode = receivingBankCode,
        _transactionAmount = transactionAmount,
        _conversionRate = conversionRate,
        _convertedAmount = convertedAmount,
        _transactionCharges = transactionCharges,
        _chargesBearer = chargesBearer,
        _valueDate = valueDate,
        _purpose = purpose,
        _bankName = bankName;

  // "DestinationAddress" field.
  String? _destinationAddress;
  String get destinationAddress => _destinationAddress ?? '';
  set destinationAddress(String? val) => _destinationAddress = val;

  bool hasDestinationAddress() => _destinationAddress != null;

  // "PBBAccountNumber" field.
  String? _pBBAccountNumber;
  String get pBBAccountNumber => _pBBAccountNumber ?? '';
  set pBBAccountNumber(String? val) => _pBBAccountNumber = val;

  bool hasPBBAccountNumber() => _pBBAccountNumber != null;

  // "BeneficiaryCode" field.
  String? _beneficiaryCode;
  String get beneficiaryCode => _beneficiaryCode ?? '';
  set beneficiaryCode(String? val) => _beneficiaryCode = val;

  bool hasBeneficiaryCode() => _beneficiaryCode != null;

  // "BeneficiaryAccountNumber" field.
  String? _beneficiaryAccountNumber;
  String get beneficiaryAccountNumber => _beneficiaryAccountNumber ?? '';
  set beneficiaryAccountNumber(String? val) => _beneficiaryAccountNumber = val;

  bool hasBeneficiaryAccountNumber() => _beneficiaryAccountNumber != null;

  // "BeneficiaryName" field.
  String? _beneficiaryName;
  String get beneficiaryName => _beneficiaryName ?? '';
  set beneficiaryName(String? val) => _beneficiaryName = val;

  bool hasBeneficiaryName() => _beneficiaryName != null;

  // "BeneficiaryAddress1" field.
  String? _beneficiaryAddress1;
  String get beneficiaryAddress1 => _beneficiaryAddress1 ?? '';
  set beneficiaryAddress1(String? val) => _beneficiaryAddress1 = val;

  bool hasBeneficiaryAddress1() => _beneficiaryAddress1 != null;

  // "BeneficiaryAddress2" field.
  String? _beneficiaryAddress2;
  String get beneficiaryAddress2 => _beneficiaryAddress2 ?? '';
  set beneficiaryAddress2(String? val) => _beneficiaryAddress2 = val;

  bool hasBeneficiaryAddress2() => _beneficiaryAddress2 != null;

  // "BeneficiaryAddress3" field.
  String? _beneficiaryAddress3;
  String get beneficiaryAddress3 => _beneficiaryAddress3 ?? '';
  set beneficiaryAddress3(String? val) => _beneficiaryAddress3 = val;

  bool hasBeneficiaryAddress3() => _beneficiaryAddress3 != null;

  // "BeneficiaryAccountCurrency" field.
  String? _beneficiaryAccountCurrency;
  String get beneficiaryAccountCurrency => _beneficiaryAccountCurrency ?? '';
  set beneficiaryAccountCurrency(String? val) =>
      _beneficiaryAccountCurrency = val;

  bool hasBeneficiaryAccountCurrency() => _beneficiaryAccountCurrency != null;

  // "BeneficiaryMobileNum" field.
  String? _beneficiaryMobileNum;
  String get beneficiaryMobileNum => _beneficiaryMobileNum ?? '';
  set beneficiaryMobileNum(String? val) => _beneficiaryMobileNum = val;

  bool hasBeneficiaryMobileNum() => _beneficiaryMobileNum != null;

  // "BeneficiaryID" field.
  String? _beneficiaryID;
  String get beneficiaryID => _beneficiaryID ?? '';
  set beneficiaryID(String? val) => _beneficiaryID = val;

  bool hasBeneficiaryID() => _beneficiaryID != null;

  // "BeneficiaryNatOfBusi" field.
  String? _beneficiaryNatOfBusi;
  String get beneficiaryNatOfBusi => _beneficiaryNatOfBusi ?? '';
  set beneficiaryNatOfBusi(String? val) => _beneficiaryNatOfBusi = val;

  bool hasBeneficiaryNatOfBusi() => _beneficiaryNatOfBusi != null;

  // "BeneficiaryCustType" field.
  String? _beneficiaryCustType;
  String get beneficiaryCustType => _beneficiaryCustType ?? '';
  set beneficiaryCustType(String? val) => _beneficiaryCustType = val;

  bool hasBeneficiaryCustType() => _beneficiaryCustType != null;

  // "ReceivingBankCode" field.
  String? _receivingBankCode;
  String get receivingBankCode => _receivingBankCode ?? '';
  set receivingBankCode(String? val) => _receivingBankCode = val;

  bool hasReceivingBankCode() => _receivingBankCode != null;

  // "TransactionAmount" field.
  double? _transactionAmount;
  double get transactionAmount => _transactionAmount ?? 0.0;
  set transactionAmount(double? val) => _transactionAmount = val;

  void incrementTransactionAmount(double amount) =>
      transactionAmount = transactionAmount + amount;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "ConversionRate" field.
  double? _conversionRate;
  double get conversionRate => _conversionRate ?? 0.0;
  set conversionRate(double? val) => _conversionRate = val;

  void incrementConversionRate(double amount) =>
      conversionRate = conversionRate + amount;

  bool hasConversionRate() => _conversionRate != null;

  // "ConvertedAmount" field.
  double? _convertedAmount;
  double get convertedAmount => _convertedAmount ?? 0.0;
  set convertedAmount(double? val) => _convertedAmount = val;

  void incrementConvertedAmount(double amount) =>
      convertedAmount = convertedAmount + amount;

  bool hasConvertedAmount() => _convertedAmount != null;

  // "TransactionCharges" field.
  double? _transactionCharges;
  double get transactionCharges => _transactionCharges ?? 0.0;
  set transactionCharges(double? val) => _transactionCharges = val;

  void incrementTransactionCharges(double amount) =>
      transactionCharges = transactionCharges + amount;

  bool hasTransactionCharges() => _transactionCharges != null;

  // "ChargesBearer" field.
  String? _chargesBearer;
  String get chargesBearer => _chargesBearer ?? '';
  set chargesBearer(String? val) => _chargesBearer = val;

  bool hasChargesBearer() => _chargesBearer != null;

  // "ValueDate" field.
  String? _valueDate;
  String get valueDate => _valueDate ?? '';
  set valueDate(String? val) => _valueDate = val;

  bool hasValueDate() => _valueDate != null;

  // "Purpose" field.
  String? _purpose;
  String get purpose => _purpose ?? '';
  set purpose(String? val) => _purpose = val;

  bool hasPurpose() => _purpose != null;

  // "BankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  static FTPPaymentGatewayDetailsStruct fromMap(Map<String, dynamic> data) =>
      FTPPaymentGatewayDetailsStruct(
        destinationAddress: data['DestinationAddress'] as String?,
        pBBAccountNumber: data['PBBAccountNumber'] as String?,
        beneficiaryCode: data['BeneficiaryCode'] as String?,
        beneficiaryAccountNumber: data['BeneficiaryAccountNumber'] as String?,
        beneficiaryName: data['BeneficiaryName'] as String?,
        beneficiaryAddress1: data['BeneficiaryAddress1'] as String?,
        beneficiaryAddress2: data['BeneficiaryAddress2'] as String?,
        beneficiaryAddress3: data['BeneficiaryAddress3'] as String?,
        beneficiaryAccountCurrency:
            data['BeneficiaryAccountCurrency'] as String?,
        beneficiaryMobileNum: data['BeneficiaryMobileNum'] as String?,
        beneficiaryID: data['BeneficiaryID'] as String?,
        beneficiaryNatOfBusi: data['BeneficiaryNatOfBusi'] as String?,
        beneficiaryCustType: data['BeneficiaryCustType'] as String?,
        receivingBankCode: data['ReceivingBankCode'] as String?,
        transactionAmount: castToType<double>(data['TransactionAmount']),
        conversionRate: castToType<double>(data['ConversionRate']),
        convertedAmount: castToType<double>(data['ConvertedAmount']),
        transactionCharges: castToType<double>(data['TransactionCharges']),
        chargesBearer: data['ChargesBearer'] as String?,
        valueDate: data['ValueDate'] as String?,
        purpose: data['Purpose'] as String?,
        bankName: data['BankName'] as String?,
      );

  static FTPPaymentGatewayDetailsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FTPPaymentGatewayDetailsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'DestinationAddress': _destinationAddress,
        'PBBAccountNumber': _pBBAccountNumber,
        'BeneficiaryCode': _beneficiaryCode,
        'BeneficiaryAccountNumber': _beneficiaryAccountNumber,
        'BeneficiaryName': _beneficiaryName,
        'BeneficiaryAddress1': _beneficiaryAddress1,
        'BeneficiaryAddress2': _beneficiaryAddress2,
        'BeneficiaryAddress3': _beneficiaryAddress3,
        'BeneficiaryAccountCurrency': _beneficiaryAccountCurrency,
        'BeneficiaryMobileNum': _beneficiaryMobileNum,
        'BeneficiaryID': _beneficiaryID,
        'BeneficiaryNatOfBusi': _beneficiaryNatOfBusi,
        'BeneficiaryCustType': _beneficiaryCustType,
        'ReceivingBankCode': _receivingBankCode,
        'TransactionAmount': _transactionAmount,
        'ConversionRate': _conversionRate,
        'ConvertedAmount': _convertedAmount,
        'TransactionCharges': _transactionCharges,
        'ChargesBearer': _chargesBearer,
        'ValueDate': _valueDate,
        'Purpose': _purpose,
        'BankName': _bankName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'DestinationAddress': serializeParam(
          _destinationAddress,
          ParamType.String,
        ),
        'PBBAccountNumber': serializeParam(
          _pBBAccountNumber,
          ParamType.String,
        ),
        'BeneficiaryCode': serializeParam(
          _beneficiaryCode,
          ParamType.String,
        ),
        'BeneficiaryAccountNumber': serializeParam(
          _beneficiaryAccountNumber,
          ParamType.String,
        ),
        'BeneficiaryName': serializeParam(
          _beneficiaryName,
          ParamType.String,
        ),
        'BeneficiaryAddress1': serializeParam(
          _beneficiaryAddress1,
          ParamType.String,
        ),
        'BeneficiaryAddress2': serializeParam(
          _beneficiaryAddress2,
          ParamType.String,
        ),
        'BeneficiaryAddress3': serializeParam(
          _beneficiaryAddress3,
          ParamType.String,
        ),
        'BeneficiaryAccountCurrency': serializeParam(
          _beneficiaryAccountCurrency,
          ParamType.String,
        ),
        'BeneficiaryMobileNum': serializeParam(
          _beneficiaryMobileNum,
          ParamType.String,
        ),
        'BeneficiaryID': serializeParam(
          _beneficiaryID,
          ParamType.String,
        ),
        'BeneficiaryNatOfBusi': serializeParam(
          _beneficiaryNatOfBusi,
          ParamType.String,
        ),
        'BeneficiaryCustType': serializeParam(
          _beneficiaryCustType,
          ParamType.String,
        ),
        'ReceivingBankCode': serializeParam(
          _receivingBankCode,
          ParamType.String,
        ),
        'TransactionAmount': serializeParam(
          _transactionAmount,
          ParamType.double,
        ),
        'ConversionRate': serializeParam(
          _conversionRate,
          ParamType.double,
        ),
        'ConvertedAmount': serializeParam(
          _convertedAmount,
          ParamType.double,
        ),
        'TransactionCharges': serializeParam(
          _transactionCharges,
          ParamType.double,
        ),
        'ChargesBearer': serializeParam(
          _chargesBearer,
          ParamType.String,
        ),
        'ValueDate': serializeParam(
          _valueDate,
          ParamType.String,
        ),
        'Purpose': serializeParam(
          _purpose,
          ParamType.String,
        ),
        'BankName': serializeParam(
          _bankName,
          ParamType.String,
        ),
      }.withoutNulls;

  static FTPPaymentGatewayDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FTPPaymentGatewayDetailsStruct(
        destinationAddress: deserializeParam(
          data['DestinationAddress'],
          ParamType.String,
          false,
        ),
        pBBAccountNumber: deserializeParam(
          data['PBBAccountNumber'],
          ParamType.String,
          false,
        ),
        beneficiaryCode: deserializeParam(
          data['BeneficiaryCode'],
          ParamType.String,
          false,
        ),
        beneficiaryAccountNumber: deserializeParam(
          data['BeneficiaryAccountNumber'],
          ParamType.String,
          false,
        ),
        beneficiaryName: deserializeParam(
          data['BeneficiaryName'],
          ParamType.String,
          false,
        ),
        beneficiaryAddress1: deserializeParam(
          data['BeneficiaryAddress1'],
          ParamType.String,
          false,
        ),
        beneficiaryAddress2: deserializeParam(
          data['BeneficiaryAddress2'],
          ParamType.String,
          false,
        ),
        beneficiaryAddress3: deserializeParam(
          data['BeneficiaryAddress3'],
          ParamType.String,
          false,
        ),
        beneficiaryAccountCurrency: deserializeParam(
          data['BeneficiaryAccountCurrency'],
          ParamType.String,
          false,
        ),
        beneficiaryMobileNum: deserializeParam(
          data['BeneficiaryMobileNum'],
          ParamType.String,
          false,
        ),
        beneficiaryID: deserializeParam(
          data['BeneficiaryID'],
          ParamType.String,
          false,
        ),
        beneficiaryNatOfBusi: deserializeParam(
          data['BeneficiaryNatOfBusi'],
          ParamType.String,
          false,
        ),
        beneficiaryCustType: deserializeParam(
          data['BeneficiaryCustType'],
          ParamType.String,
          false,
        ),
        receivingBankCode: deserializeParam(
          data['ReceivingBankCode'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['TransactionAmount'],
          ParamType.double,
          false,
        ),
        conversionRate: deserializeParam(
          data['ConversionRate'],
          ParamType.double,
          false,
        ),
        convertedAmount: deserializeParam(
          data['ConvertedAmount'],
          ParamType.double,
          false,
        ),
        transactionCharges: deserializeParam(
          data['TransactionCharges'],
          ParamType.double,
          false,
        ),
        chargesBearer: deserializeParam(
          data['ChargesBearer'],
          ParamType.String,
          false,
        ),
        valueDate: deserializeParam(
          data['ValueDate'],
          ParamType.String,
          false,
        ),
        purpose: deserializeParam(
          data['Purpose'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['BankName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FTPPaymentGatewayDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FTPPaymentGatewayDetailsStruct &&
        destinationAddress == other.destinationAddress &&
        pBBAccountNumber == other.pBBAccountNumber &&
        beneficiaryCode == other.beneficiaryCode &&
        beneficiaryAccountNumber == other.beneficiaryAccountNumber &&
        beneficiaryName == other.beneficiaryName &&
        beneficiaryAddress1 == other.beneficiaryAddress1 &&
        beneficiaryAddress2 == other.beneficiaryAddress2 &&
        beneficiaryAddress3 == other.beneficiaryAddress3 &&
        beneficiaryAccountCurrency == other.beneficiaryAccountCurrency &&
        beneficiaryMobileNum == other.beneficiaryMobileNum &&
        beneficiaryID == other.beneficiaryID &&
        beneficiaryNatOfBusi == other.beneficiaryNatOfBusi &&
        beneficiaryCustType == other.beneficiaryCustType &&
        receivingBankCode == other.receivingBankCode &&
        transactionAmount == other.transactionAmount &&
        conversionRate == other.conversionRate &&
        convertedAmount == other.convertedAmount &&
        transactionCharges == other.transactionCharges &&
        chargesBearer == other.chargesBearer &&
        valueDate == other.valueDate &&
        purpose == other.purpose &&
        bankName == other.bankName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        destinationAddress,
        pBBAccountNumber,
        beneficiaryCode,
        beneficiaryAccountNumber,
        beneficiaryName,
        beneficiaryAddress1,
        beneficiaryAddress2,
        beneficiaryAddress3,
        beneficiaryAccountCurrency,
        beneficiaryMobileNum,
        beneficiaryID,
        beneficiaryNatOfBusi,
        beneficiaryCustType,
        receivingBankCode,
        transactionAmount,
        conversionRate,
        convertedAmount,
        transactionCharges,
        chargesBearer,
        valueDate,
        purpose,
        bankName
      ]);
}

FTPPaymentGatewayDetailsStruct createFTPPaymentGatewayDetailsStruct({
  String? destinationAddress,
  String? pBBAccountNumber,
  String? beneficiaryCode,
  String? beneficiaryAccountNumber,
  String? beneficiaryName,
  String? beneficiaryAddress1,
  String? beneficiaryAddress2,
  String? beneficiaryAddress3,
  String? beneficiaryAccountCurrency,
  String? beneficiaryMobileNum,
  String? beneficiaryID,
  String? beneficiaryNatOfBusi,
  String? beneficiaryCustType,
  String? receivingBankCode,
  double? transactionAmount,
  double? conversionRate,
  double? convertedAmount,
  double? transactionCharges,
  String? chargesBearer,
  String? valueDate,
  String? purpose,
  String? bankName,
}) =>
    FTPPaymentGatewayDetailsStruct(
      destinationAddress: destinationAddress,
      pBBAccountNumber: pBBAccountNumber,
      beneficiaryCode: beneficiaryCode,
      beneficiaryAccountNumber: beneficiaryAccountNumber,
      beneficiaryName: beneficiaryName,
      beneficiaryAddress1: beneficiaryAddress1,
      beneficiaryAddress2: beneficiaryAddress2,
      beneficiaryAddress3: beneficiaryAddress3,
      beneficiaryAccountCurrency: beneficiaryAccountCurrency,
      beneficiaryMobileNum: beneficiaryMobileNum,
      beneficiaryID: beneficiaryID,
      beneficiaryNatOfBusi: beneficiaryNatOfBusi,
      beneficiaryCustType: beneficiaryCustType,
      receivingBankCode: receivingBankCode,
      transactionAmount: transactionAmount,
      conversionRate: conversionRate,
      convertedAmount: convertedAmount,
      transactionCharges: transactionCharges,
      chargesBearer: chargesBearer,
      valueDate: valueDate,
      purpose: purpose,
      bankName: bankName,
    );
