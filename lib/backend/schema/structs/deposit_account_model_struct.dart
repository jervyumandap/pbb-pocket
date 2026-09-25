// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepositAccountModelStruct extends BaseStruct {
  DepositAccountModelStruct({
    int? referenceNum,
    String? cif,
    String? accountNum,
    String? accountName,
    String? productName,
    String? principalAmt,
    String? termDays,
    String? placementDate,
    String? effectiveDate,
    String? maturityAmount,
    String? maturityDate,
    String? maturityInstruction,
    String? interestRate,
    String? interestFreq,
    String? interestCredit,
  })  : _referenceNum = referenceNum,
        _cif = cif,
        _accountNum = accountNum,
        _accountName = accountName,
        _productName = productName,
        _principalAmt = principalAmt,
        _termDays = termDays,
        _placementDate = placementDate,
        _effectiveDate = effectiveDate,
        _maturityAmount = maturityAmount,
        _maturityDate = maturityDate,
        _maturityInstruction = maturityInstruction,
        _interestRate = interestRate,
        _interestFreq = interestFreq,
        _interestCredit = interestCredit;

  // "ReferenceNum" field.
  int? _referenceNum;
  int get referenceNum => _referenceNum ?? 0;
  set referenceNum(int? val) => _referenceNum = val;

  void incrementReferenceNum(int amount) =>
      referenceNum = referenceNum + amount;

  bool hasReferenceNum() => _referenceNum != null;

  // "CIF" field.
  String? _cif;
  String get cif => _cif ?? '';
  set cif(String? val) => _cif = val;

  bool hasCif() => _cif != null;

  // "AccountNum" field.
  String? _accountNum;
  String get accountNum => _accountNum ?? '';
  set accountNum(String? val) => _accountNum = val;

  bool hasAccountNum() => _accountNum != null;

  // "AccountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "ProductName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "PrincipalAmt" field.
  String? _principalAmt;
  String get principalAmt => _principalAmt ?? '';
  set principalAmt(String? val) => _principalAmt = val;

  bool hasPrincipalAmt() => _principalAmt != null;

  // "TermDays" field.
  String? _termDays;
  String get termDays => _termDays ?? '';
  set termDays(String? val) => _termDays = val;

  bool hasTermDays() => _termDays != null;

  // "PlacementDate" field.
  String? _placementDate;
  String get placementDate => _placementDate ?? '';
  set placementDate(String? val) => _placementDate = val;

  bool hasPlacementDate() => _placementDate != null;

  // "EffectiveDate" field.
  String? _effectiveDate;
  String get effectiveDate => _effectiveDate ?? '';
  set effectiveDate(String? val) => _effectiveDate = val;

  bool hasEffectiveDate() => _effectiveDate != null;

  // "MaturityAmount" field.
  String? _maturityAmount;
  String get maturityAmount => _maturityAmount ?? '';
  set maturityAmount(String? val) => _maturityAmount = val;

  bool hasMaturityAmount() => _maturityAmount != null;

  // "MaturityDate" field.
  String? _maturityDate;
  String get maturityDate => _maturityDate ?? '';
  set maturityDate(String? val) => _maturityDate = val;

  bool hasMaturityDate() => _maturityDate != null;

  // "MaturityInstruction" field.
  String? _maturityInstruction;
  String get maturityInstruction => _maturityInstruction ?? '';
  set maturityInstruction(String? val) => _maturityInstruction = val;

  bool hasMaturityInstruction() => _maturityInstruction != null;

  // "InterestRate" field.
  String? _interestRate;
  String get interestRate => _interestRate ?? '';
  set interestRate(String? val) => _interestRate = val;

  bool hasInterestRate() => _interestRate != null;

  // "InterestFreq" field.
  String? _interestFreq;
  String get interestFreq => _interestFreq ?? '';
  set interestFreq(String? val) => _interestFreq = val;

  bool hasInterestFreq() => _interestFreq != null;

  // "InterestCredit" field.
  String? _interestCredit;
  String get interestCredit => _interestCredit ?? '';
  set interestCredit(String? val) => _interestCredit = val;

  bool hasInterestCredit() => _interestCredit != null;

  static DepositAccountModelStruct fromMap(Map<String, dynamic> data) =>
      DepositAccountModelStruct(
        referenceNum: castToType<int>(data['ReferenceNum']),
        cif: data['CIF'] as String?,
        accountNum: data['AccountNum'] as String?,
        accountName: data['AccountName'] as String?,
        productName: data['ProductName'] as String?,
        principalAmt: data['PrincipalAmt'] as String?,
        termDays: data['TermDays'] as String?,
        placementDate: data['PlacementDate'] as String?,
        effectiveDate: data['EffectiveDate'] as String?,
        maturityAmount: data['MaturityAmount'] as String?,
        maturityDate: data['MaturityDate'] as String?,
        maturityInstruction: data['MaturityInstruction'] as String?,
        interestRate: data['InterestRate'] as String?,
        interestFreq: data['InterestFreq'] as String?,
        interestCredit: data['InterestCredit'] as String?,
      );

  static DepositAccountModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DepositAccountModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ReferenceNum': _referenceNum,
        'CIF': _cif,
        'AccountNum': _accountNum,
        'AccountName': _accountName,
        'ProductName': _productName,
        'PrincipalAmt': _principalAmt,
        'TermDays': _termDays,
        'PlacementDate': _placementDate,
        'EffectiveDate': _effectiveDate,
        'MaturityAmount': _maturityAmount,
        'MaturityDate': _maturityDate,
        'MaturityInstruction': _maturityInstruction,
        'InterestRate': _interestRate,
        'InterestFreq': _interestFreq,
        'InterestCredit': _interestCredit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ReferenceNum': serializeParam(
          _referenceNum,
          ParamType.int,
        ),
        'CIF': serializeParam(
          _cif,
          ParamType.String,
        ),
        'AccountNum': serializeParam(
          _accountNum,
          ParamType.String,
        ),
        'AccountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'ProductName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'PrincipalAmt': serializeParam(
          _principalAmt,
          ParamType.String,
        ),
        'TermDays': serializeParam(
          _termDays,
          ParamType.String,
        ),
        'PlacementDate': serializeParam(
          _placementDate,
          ParamType.String,
        ),
        'EffectiveDate': serializeParam(
          _effectiveDate,
          ParamType.String,
        ),
        'MaturityAmount': serializeParam(
          _maturityAmount,
          ParamType.String,
        ),
        'MaturityDate': serializeParam(
          _maturityDate,
          ParamType.String,
        ),
        'MaturityInstruction': serializeParam(
          _maturityInstruction,
          ParamType.String,
        ),
        'InterestRate': serializeParam(
          _interestRate,
          ParamType.String,
        ),
        'InterestFreq': serializeParam(
          _interestFreq,
          ParamType.String,
        ),
        'InterestCredit': serializeParam(
          _interestCredit,
          ParamType.String,
        ),
      }.withoutNulls;

  static DepositAccountModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DepositAccountModelStruct(
        referenceNum: deserializeParam(
          data['ReferenceNum'],
          ParamType.int,
          false,
        ),
        cif: deserializeParam(
          data['CIF'],
          ParamType.String,
          false,
        ),
        accountNum: deserializeParam(
          data['AccountNum'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['AccountName'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['ProductName'],
          ParamType.String,
          false,
        ),
        principalAmt: deserializeParam(
          data['PrincipalAmt'],
          ParamType.String,
          false,
        ),
        termDays: deserializeParam(
          data['TermDays'],
          ParamType.String,
          false,
        ),
        placementDate: deserializeParam(
          data['PlacementDate'],
          ParamType.String,
          false,
        ),
        effectiveDate: deserializeParam(
          data['EffectiveDate'],
          ParamType.String,
          false,
        ),
        maturityAmount: deserializeParam(
          data['MaturityAmount'],
          ParamType.String,
          false,
        ),
        maturityDate: deserializeParam(
          data['MaturityDate'],
          ParamType.String,
          false,
        ),
        maturityInstruction: deserializeParam(
          data['MaturityInstruction'],
          ParamType.String,
          false,
        ),
        interestRate: deserializeParam(
          data['InterestRate'],
          ParamType.String,
          false,
        ),
        interestFreq: deserializeParam(
          data['InterestFreq'],
          ParamType.String,
          false,
        ),
        interestCredit: deserializeParam(
          data['InterestCredit'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DepositAccountModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DepositAccountModelStruct &&
        referenceNum == other.referenceNum &&
        cif == other.cif &&
        accountNum == other.accountNum &&
        accountName == other.accountName &&
        productName == other.productName &&
        principalAmt == other.principalAmt &&
        termDays == other.termDays &&
        placementDate == other.placementDate &&
        effectiveDate == other.effectiveDate &&
        maturityAmount == other.maturityAmount &&
        maturityDate == other.maturityDate &&
        maturityInstruction == other.maturityInstruction &&
        interestRate == other.interestRate &&
        interestFreq == other.interestFreq &&
        interestCredit == other.interestCredit;
  }

  @override
  int get hashCode => const ListEquality().hash([
        referenceNum,
        cif,
        accountNum,
        accountName,
        productName,
        principalAmt,
        termDays,
        placementDate,
        effectiveDate,
        maturityAmount,
        maturityDate,
        maturityInstruction,
        interestRate,
        interestFreq,
        interestCredit
      ]);
}

DepositAccountModelStruct createDepositAccountModelStruct({
  int? referenceNum,
  String? cif,
  String? accountNum,
  String? accountName,
  String? productName,
  String? principalAmt,
  String? termDays,
  String? placementDate,
  String? effectiveDate,
  String? maturityAmount,
  String? maturityDate,
  String? maturityInstruction,
  String? interestRate,
  String? interestFreq,
  String? interestCredit,
}) =>
    DepositAccountModelStruct(
      referenceNum: referenceNum,
      cif: cif,
      accountNum: accountNum,
      accountName: accountName,
      productName: productName,
      principalAmt: principalAmt,
      termDays: termDays,
      placementDate: placementDate,
      effectiveDate: effectiveDate,
      maturityAmount: maturityAmount,
      maturityDate: maturityDate,
      maturityInstruction: maturityInstruction,
      interestRate: interestRate,
      interestFreq: interestFreq,
      interestCredit: interestCredit,
    );
