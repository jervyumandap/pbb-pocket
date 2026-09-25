// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatementTransactionModelStruct extends BaseStruct {
  StatementTransactionModelStruct({
    int? id,
    int? referenceNum,
    String? openingDate,
    String? tranDate,
    String? fullNarration,
    String? debitCreditFlag,
    String? availableBalance,
    String? effectiveDate,
    String? tranAmount,
    String? trancode,
  })  : _id = id,
        _referenceNum = referenceNum,
        _openingDate = openingDate,
        _tranDate = tranDate,
        _fullNarration = fullNarration,
        _debitCreditFlag = debitCreditFlag,
        _availableBalance = availableBalance,
        _effectiveDate = effectiveDate,
        _tranAmount = tranAmount,
        _trancode = trancode;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "ReferenceNum" field.
  int? _referenceNum;
  int get referenceNum => _referenceNum ?? 0;
  set referenceNum(int? val) => _referenceNum = val;

  void incrementReferenceNum(int amount) =>
      referenceNum = referenceNum + amount;

  bool hasReferenceNum() => _referenceNum != null;

  // "OpeningDate" field.
  String? _openingDate;
  String get openingDate => _openingDate ?? '';
  set openingDate(String? val) => _openingDate = val;

  bool hasOpeningDate() => _openingDate != null;

  // "TranDate" field.
  String? _tranDate;
  String get tranDate => _tranDate ?? '';
  set tranDate(String? val) => _tranDate = val;

  bool hasTranDate() => _tranDate != null;

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

  // "AvailableBalance" field.
  String? _availableBalance;
  String get availableBalance => _availableBalance ?? '';
  set availableBalance(String? val) => _availableBalance = val;

  bool hasAvailableBalance() => _availableBalance != null;

  // "EffectiveDate" field.
  String? _effectiveDate;
  String get effectiveDate => _effectiveDate ?? '';
  set effectiveDate(String? val) => _effectiveDate = val;

  bool hasEffectiveDate() => _effectiveDate != null;

  // "TranAmount" field.
  String? _tranAmount;
  String get tranAmount => _tranAmount ?? '';
  set tranAmount(String? val) => _tranAmount = val;

  bool hasTranAmount() => _tranAmount != null;

  // "Trancode" field.
  String? _trancode;
  String get trancode => _trancode ?? '';
  set trancode(String? val) => _trancode = val;

  bool hasTrancode() => _trancode != null;

  static StatementTransactionModelStruct fromMap(Map<String, dynamic> data) =>
      StatementTransactionModelStruct(
        id: castToType<int>(data['Id']),
        referenceNum: castToType<int>(data['ReferenceNum']),
        openingDate: data['OpeningDate'] as String?,
        tranDate: data['TranDate'] as String?,
        fullNarration: data['FullNarration'] as String?,
        debitCreditFlag: data['DebitCreditFlag'] as String?,
        availableBalance: data['AvailableBalance'] as String?,
        effectiveDate: data['EffectiveDate'] as String?,
        tranAmount: data['TranAmount'] as String?,
        trancode: data['Trancode'] as String?,
      );

  static StatementTransactionModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? StatementTransactionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'ReferenceNum': _referenceNum,
        'OpeningDate': _openingDate,
        'TranDate': _tranDate,
        'FullNarration': _fullNarration,
        'DebitCreditFlag': _debitCreditFlag,
        'AvailableBalance': _availableBalance,
        'EffectiveDate': _effectiveDate,
        'TranAmount': _tranAmount,
        'Trancode': _trancode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.int,
        ),
        'ReferenceNum': serializeParam(
          _referenceNum,
          ParamType.int,
        ),
        'OpeningDate': serializeParam(
          _openingDate,
          ParamType.String,
        ),
        'TranDate': serializeParam(
          _tranDate,
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
        'AvailableBalance': serializeParam(
          _availableBalance,
          ParamType.String,
        ),
        'EffectiveDate': serializeParam(
          _effectiveDate,
          ParamType.String,
        ),
        'TranAmount': serializeParam(
          _tranAmount,
          ParamType.String,
        ),
        'Trancode': serializeParam(
          _trancode,
          ParamType.String,
        ),
      }.withoutNulls;

  static StatementTransactionModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StatementTransactionModelStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.int,
          false,
        ),
        referenceNum: deserializeParam(
          data['ReferenceNum'],
          ParamType.int,
          false,
        ),
        openingDate: deserializeParam(
          data['OpeningDate'],
          ParamType.String,
          false,
        ),
        tranDate: deserializeParam(
          data['TranDate'],
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
        availableBalance: deserializeParam(
          data['AvailableBalance'],
          ParamType.String,
          false,
        ),
        effectiveDate: deserializeParam(
          data['EffectiveDate'],
          ParamType.String,
          false,
        ),
        tranAmount: deserializeParam(
          data['TranAmount'],
          ParamType.String,
          false,
        ),
        trancode: deserializeParam(
          data['Trancode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StatementTransactionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatementTransactionModelStruct &&
        id == other.id &&
        referenceNum == other.referenceNum &&
        openingDate == other.openingDate &&
        tranDate == other.tranDate &&
        fullNarration == other.fullNarration &&
        debitCreditFlag == other.debitCreditFlag &&
        availableBalance == other.availableBalance &&
        effectiveDate == other.effectiveDate &&
        tranAmount == other.tranAmount &&
        trancode == other.trancode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNum,
        openingDate,
        tranDate,
        fullNarration,
        debitCreditFlag,
        availableBalance,
        effectiveDate,
        tranAmount,
        trancode
      ]);
}

StatementTransactionModelStruct createStatementTransactionModelStruct({
  int? id,
  int? referenceNum,
  String? openingDate,
  String? tranDate,
  String? fullNarration,
  String? debitCreditFlag,
  String? availableBalance,
  String? effectiveDate,
  String? tranAmount,
  String? trancode,
}) =>
    StatementTransactionModelStruct(
      id: id,
      referenceNum: referenceNum,
      openingDate: openingDate,
      tranDate: tranDate,
      fullNarration: fullNarration,
      debitCreditFlag: debitCreditFlag,
      availableBalance: availableBalance,
      effectiveDate: effectiveDate,
      tranAmount: tranAmount,
      trancode: trancode,
    );
