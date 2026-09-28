// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanTransactionModelStruct extends BaseStruct {
  LoanTransactionModelStruct({
    String? accountNum,
    String? tranDate,
    String? valueDate,
    String? fullNarration,
    String? debitCreditFlag,
    String? currencyCode,
    String? tranAmount,
    String? availableBalance,
  })  : _accountNum = accountNum,
        _tranDate = tranDate,
        _valueDate = valueDate,
        _fullNarration = fullNarration,
        _debitCreditFlag = debitCreditFlag,
        _currencyCode = currencyCode,
        _tranAmount = tranAmount,
        _availableBalance = availableBalance;

  // "AccountNum" field.
  String? _accountNum;
  String get accountNum => _accountNum ?? '';
  set accountNum(String? val) => _accountNum = val;

  bool hasAccountNum() => _accountNum != null;

  // "TranDate" field.
  String? _tranDate;
  String get tranDate => _tranDate ?? '';
  set tranDate(String? val) => _tranDate = val;

  bool hasTranDate() => _tranDate != null;

  // "ValueDate" field.
  String? _valueDate;
  String get valueDate => _valueDate ?? '';
  set valueDate(String? val) => _valueDate = val;

  bool hasValueDate() => _valueDate != null;

  // "FullNarration" field.
  String? _fullNarration;
  String get fullNarration => _fullNarration ?? '';
  set fullNarration(String? val) => _fullNarration = val;

  bool hasFullNarration() => _fullNarration != null;

  // "DebitCreditFlag" field.
  String? _debitCreditFlag;
  String get debitCreditFlag => _debitCreditFlag ?? '';
  set debitCreditFlag(String? val) => _debitCreditFlag = val;

  bool hasDebitCreditFlag() => _debitCreditFlag != null;

  // "CurrencyCode" field.
  String? _currencyCode;
  String get currencyCode => _currencyCode ?? '';
  set currencyCode(String? val) => _currencyCode = val;

  bool hasCurrencyCode() => _currencyCode != null;

  // "TranAmount" field.
  String? _tranAmount;
  String get tranAmount => _tranAmount ?? '';
  set tranAmount(String? val) => _tranAmount = val;

  bool hasTranAmount() => _tranAmount != null;

  // "AvailableBalance" field.
  String? _availableBalance;
  String get availableBalance => _availableBalance ?? '';
  set availableBalance(String? val) => _availableBalance = val;

  bool hasAvailableBalance() => _availableBalance != null;

  static LoanTransactionModelStruct fromMap(Map<String, dynamic> data) =>
      LoanTransactionModelStruct(
        accountNum: data['AccountNum'] as String?,
        tranDate: data['TranDate'] as String?,
        valueDate: data['ValueDate'] as String?,
        fullNarration: data['FullNarration'] as String?,
        debitCreditFlag: data['DebitCreditFlag'] as String?,
        currencyCode: data['CurrencyCode'] as String?,
        tranAmount: data['TranAmount'] as String?,
        availableBalance: data['AvailableBalance'] as String?,
      );

  static LoanTransactionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? LoanTransactionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AccountNum': _accountNum,
        'TranDate': _tranDate,
        'ValueDate': _valueDate,
        'FullNarration': _fullNarration,
        'DebitCreditFlag': _debitCreditFlag,
        'CurrencyCode': _currencyCode,
        'TranAmount': _tranAmount,
        'AvailableBalance': _availableBalance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccountNum': serializeParam(
          _accountNum,
          ParamType.String,
        ),
        'TranDate': serializeParam(
          _tranDate,
          ParamType.String,
        ),
        'ValueDate': serializeParam(
          _valueDate,
          ParamType.String,
        ),
        'FullNarration': serializeParam(
          _fullNarration,
          ParamType.String,
        ),
        'DebitCreditFlag': serializeParam(
          _debitCreditFlag,
          ParamType.String,
        ),
        'CurrencyCode': serializeParam(
          _currencyCode,
          ParamType.String,
        ),
        'TranAmount': serializeParam(
          _tranAmount,
          ParamType.String,
        ),
        'AvailableBalance': serializeParam(
          _availableBalance,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanTransactionModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanTransactionModelStruct(
        accountNum: deserializeParam(
          data['AccountNum'],
          ParamType.String,
          false,
        ),
        tranDate: deserializeParam(
          data['TranDate'],
          ParamType.String,
          false,
        ),
        valueDate: deserializeParam(
          data['ValueDate'],
          ParamType.String,
          false,
        ),
        fullNarration: deserializeParam(
          data['FullNarration'],
          ParamType.String,
          false,
        ),
        debitCreditFlag: deserializeParam(
          data['DebitCreditFlag'],
          ParamType.String,
          false,
        ),
        currencyCode: deserializeParam(
          data['CurrencyCode'],
          ParamType.String,
          false,
        ),
        tranAmount: deserializeParam(
          data['TranAmount'],
          ParamType.String,
          false,
        ),
        availableBalance: deserializeParam(
          data['AvailableBalance'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanTransactionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanTransactionModelStruct &&
        accountNum == other.accountNum &&
        tranDate == other.tranDate &&
        valueDate == other.valueDate &&
        fullNarration == other.fullNarration &&
        debitCreditFlag == other.debitCreditFlag &&
        currencyCode == other.currencyCode &&
        tranAmount == other.tranAmount &&
        availableBalance == other.availableBalance;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNum,
        tranDate,
        valueDate,
        fullNarration,
        debitCreditFlag,
        currencyCode,
        tranAmount,
        availableBalance
      ]);
}

LoanTransactionModelStruct createLoanTransactionModelStruct({
  String? accountNum,
  String? tranDate,
  String? valueDate,
  String? fullNarration,
  String? debitCreditFlag,
  String? currencyCode,
  String? tranAmount,
  String? availableBalance,
}) =>
    LoanTransactionModelStruct(
      accountNum: accountNum,
      tranDate: tranDate,
      valueDate: valueDate,
      fullNarration: fullNarration,
      debitCreditFlag: debitCreditFlag,
      currencyCode: currencyCode,
      tranAmount: tranAmount,
      availableBalance: availableBalance,
    );
