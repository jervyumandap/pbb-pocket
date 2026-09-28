// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsBodyStruct extends BaseStruct {
  BillsBodyStruct({
    String? accNum,
    double? amount,
    String? fullName,
    String? collectionDate,
    String? bankName,
    String? billNum,
    String? tranRefNum,
    String? chequeNum,
    double? otherCharges,
    String? paymentMethod,
    String? reservedDataField1,
    String? reservedDataField2,
    String? reservedDataField3,
    String? reservedDataField4,
    String? reservedDataField5,
    String? reservedDataField6,
    String? reservedDataField7,
    String? reservedDataField8,
    String? reservedDataField9,
    String? reservedDataField10,
  })  : _accNum = accNum,
        _amount = amount,
        _fullName = fullName,
        _collectionDate = collectionDate,
        _bankName = bankName,
        _billNum = billNum,
        _tranRefNum = tranRefNum,
        _chequeNum = chequeNum,
        _otherCharges = otherCharges,
        _paymentMethod = paymentMethod,
        _reservedDataField1 = reservedDataField1,
        _reservedDataField2 = reservedDataField2,
        _reservedDataField3 = reservedDataField3,
        _reservedDataField4 = reservedDataField4,
        _reservedDataField5 = reservedDataField5,
        _reservedDataField6 = reservedDataField6,
        _reservedDataField7 = reservedDataField7,
        _reservedDataField8 = reservedDataField8,
        _reservedDataField9 = reservedDataField9,
        _reservedDataField10 = reservedDataField10;

  // "AccNum" field.
  String? _accNum;
  String get accNum => _accNum ?? '';
  set accNum(String? val) => _accNum = val;

  bool hasAccNum() => _accNum != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "FullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "CollectionDate" field.
  String? _collectionDate;
  String get collectionDate => _collectionDate ?? '';
  set collectionDate(String? val) => _collectionDate = val;

  bool hasCollectionDate() => _collectionDate != null;

  // "BankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "BillNum" field.
  String? _billNum;
  String get billNum => _billNum ?? '';
  set billNum(String? val) => _billNum = val;

  bool hasBillNum() => _billNum != null;

  // "TranRefNum" field.
  String? _tranRefNum;
  String get tranRefNum => _tranRefNum ?? '';
  set tranRefNum(String? val) => _tranRefNum = val;

  bool hasTranRefNum() => _tranRefNum != null;

  // "ChequeNum" field.
  String? _chequeNum;
  String get chequeNum => _chequeNum ?? '';
  set chequeNum(String? val) => _chequeNum = val;

  bool hasChequeNum() => _chequeNum != null;

  // "OtherCharges" field.
  double? _otherCharges;
  double get otherCharges => _otherCharges ?? 0.0;
  set otherCharges(double? val) => _otherCharges = val;

  void incrementOtherCharges(double amount) =>
      otherCharges = otherCharges + amount;

  bool hasOtherCharges() => _otherCharges != null;

  // "PaymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  set paymentMethod(String? val) => _paymentMethod = val;

  bool hasPaymentMethod() => _paymentMethod != null;

  // "reservedDataField1" field.
  String? _reservedDataField1;
  String get reservedDataField1 => _reservedDataField1 ?? '';
  set reservedDataField1(String? val) => _reservedDataField1 = val;

  bool hasReservedDataField1() => _reservedDataField1 != null;

  // "reservedDataField2" field.
  String? _reservedDataField2;
  String get reservedDataField2 => _reservedDataField2 ?? '';
  set reservedDataField2(String? val) => _reservedDataField2 = val;

  bool hasReservedDataField2() => _reservedDataField2 != null;

  // "reservedDataField3" field.
  String? _reservedDataField3;
  String get reservedDataField3 => _reservedDataField3 ?? '';
  set reservedDataField3(String? val) => _reservedDataField3 = val;

  bool hasReservedDataField3() => _reservedDataField3 != null;

  // "reservedDataField4" field.
  String? _reservedDataField4;
  String get reservedDataField4 => _reservedDataField4 ?? '';
  set reservedDataField4(String? val) => _reservedDataField4 = val;

  bool hasReservedDataField4() => _reservedDataField4 != null;

  // "reservedDataField5" field.
  String? _reservedDataField5;
  String get reservedDataField5 => _reservedDataField5 ?? '';
  set reservedDataField5(String? val) => _reservedDataField5 = val;

  bool hasReservedDataField5() => _reservedDataField5 != null;

  // "reservedDataField6" field.
  String? _reservedDataField6;
  String get reservedDataField6 => _reservedDataField6 ?? '';
  set reservedDataField6(String? val) => _reservedDataField6 = val;

  bool hasReservedDataField6() => _reservedDataField6 != null;

  // "reservedDataField7" field.
  String? _reservedDataField7;
  String get reservedDataField7 => _reservedDataField7 ?? '';
  set reservedDataField7(String? val) => _reservedDataField7 = val;

  bool hasReservedDataField7() => _reservedDataField7 != null;

  // "reservedDataField8" field.
  String? _reservedDataField8;
  String get reservedDataField8 => _reservedDataField8 ?? '';
  set reservedDataField8(String? val) => _reservedDataField8 = val;

  bool hasReservedDataField8() => _reservedDataField8 != null;

  // "reservedDataField9" field.
  String? _reservedDataField9;
  String get reservedDataField9 => _reservedDataField9 ?? '';
  set reservedDataField9(String? val) => _reservedDataField9 = val;

  bool hasReservedDataField9() => _reservedDataField9 != null;

  // "reservedDataField10" field.
  String? _reservedDataField10;
  String get reservedDataField10 => _reservedDataField10 ?? '';
  set reservedDataField10(String? val) => _reservedDataField10 = val;

  bool hasReservedDataField10() => _reservedDataField10 != null;

  static BillsBodyStruct fromMap(Map<String, dynamic> data) => BillsBodyStruct(
        accNum: data['AccNum'] as String?,
        amount: castToType<double>(data['Amount']),
        fullName: data['FullName'] as String?,
        collectionDate: data['CollectionDate'] as String?,
        bankName: data['BankName'] as String?,
        billNum: data['BillNum'] as String?,
        tranRefNum: data['TranRefNum'] as String?,
        chequeNum: data['ChequeNum'] as String?,
        otherCharges: castToType<double>(data['OtherCharges']),
        paymentMethod: data['PaymentMethod'] as String?,
        reservedDataField1: data['reservedDataField1'] as String?,
        reservedDataField2: data['reservedDataField2'] as String?,
        reservedDataField3: data['reservedDataField3'] as String?,
        reservedDataField4: data['reservedDataField4'] as String?,
        reservedDataField5: data['reservedDataField5'] as String?,
        reservedDataField6: data['reservedDataField6'] as String?,
        reservedDataField7: data['reservedDataField7'] as String?,
        reservedDataField8: data['reservedDataField8'] as String?,
        reservedDataField9: data['reservedDataField9'] as String?,
        reservedDataField10: data['reservedDataField10'] as String?,
      );

  static BillsBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? BillsBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AccNum': _accNum,
        'Amount': _amount,
        'FullName': _fullName,
        'CollectionDate': _collectionDate,
        'BankName': _bankName,
        'BillNum': _billNum,
        'TranRefNum': _tranRefNum,
        'ChequeNum': _chequeNum,
        'OtherCharges': _otherCharges,
        'PaymentMethod': _paymentMethod,
        'reservedDataField1': _reservedDataField1,
        'reservedDataField2': _reservedDataField2,
        'reservedDataField3': _reservedDataField3,
        'reservedDataField4': _reservedDataField4,
        'reservedDataField5': _reservedDataField5,
        'reservedDataField6': _reservedDataField6,
        'reservedDataField7': _reservedDataField7,
        'reservedDataField8': _reservedDataField8,
        'reservedDataField9': _reservedDataField9,
        'reservedDataField10': _reservedDataField10,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AccNum': serializeParam(
          _accNum,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'FullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'CollectionDate': serializeParam(
          _collectionDate,
          ParamType.String,
        ),
        'BankName': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'BillNum': serializeParam(
          _billNum,
          ParamType.String,
        ),
        'TranRefNum': serializeParam(
          _tranRefNum,
          ParamType.String,
        ),
        'ChequeNum': serializeParam(
          _chequeNum,
          ParamType.String,
        ),
        'OtherCharges': serializeParam(
          _otherCharges,
          ParamType.double,
        ),
        'PaymentMethod': serializeParam(
          _paymentMethod,
          ParamType.String,
        ),
        'reservedDataField1': serializeParam(
          _reservedDataField1,
          ParamType.String,
        ),
        'reservedDataField2': serializeParam(
          _reservedDataField2,
          ParamType.String,
        ),
        'reservedDataField3': serializeParam(
          _reservedDataField3,
          ParamType.String,
        ),
        'reservedDataField4': serializeParam(
          _reservedDataField4,
          ParamType.String,
        ),
        'reservedDataField5': serializeParam(
          _reservedDataField5,
          ParamType.String,
        ),
        'reservedDataField6': serializeParam(
          _reservedDataField6,
          ParamType.String,
        ),
        'reservedDataField7': serializeParam(
          _reservedDataField7,
          ParamType.String,
        ),
        'reservedDataField8': serializeParam(
          _reservedDataField8,
          ParamType.String,
        ),
        'reservedDataField9': serializeParam(
          _reservedDataField9,
          ParamType.String,
        ),
        'reservedDataField10': serializeParam(
          _reservedDataField10,
          ParamType.String,
        ),
      }.withoutNulls;

  static BillsBodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillsBodyStruct(
        accNum: deserializeParam(
          data['AccNum'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.double,
          false,
        ),
        fullName: deserializeParam(
          data['FullName'],
          ParamType.String,
          false,
        ),
        collectionDate: deserializeParam(
          data['CollectionDate'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['BankName'],
          ParamType.String,
          false,
        ),
        billNum: deserializeParam(
          data['BillNum'],
          ParamType.String,
          false,
        ),
        tranRefNum: deserializeParam(
          data['TranRefNum'],
          ParamType.String,
          false,
        ),
        chequeNum: deserializeParam(
          data['ChequeNum'],
          ParamType.String,
          false,
        ),
        otherCharges: deserializeParam(
          data['OtherCharges'],
          ParamType.double,
          false,
        ),
        paymentMethod: deserializeParam(
          data['PaymentMethod'],
          ParamType.String,
          false,
        ),
        reservedDataField1: deserializeParam(
          data['reservedDataField1'],
          ParamType.String,
          false,
        ),
        reservedDataField2: deserializeParam(
          data['reservedDataField2'],
          ParamType.String,
          false,
        ),
        reservedDataField3: deserializeParam(
          data['reservedDataField3'],
          ParamType.String,
          false,
        ),
        reservedDataField4: deserializeParam(
          data['reservedDataField4'],
          ParamType.String,
          false,
        ),
        reservedDataField5: deserializeParam(
          data['reservedDataField5'],
          ParamType.String,
          false,
        ),
        reservedDataField6: deserializeParam(
          data['reservedDataField6'],
          ParamType.String,
          false,
        ),
        reservedDataField7: deserializeParam(
          data['reservedDataField7'],
          ParamType.String,
          false,
        ),
        reservedDataField8: deserializeParam(
          data['reservedDataField8'],
          ParamType.String,
          false,
        ),
        reservedDataField9: deserializeParam(
          data['reservedDataField9'],
          ParamType.String,
          false,
        ),
        reservedDataField10: deserializeParam(
          data['reservedDataField10'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BillsBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillsBodyStruct &&
        accNum == other.accNum &&
        amount == other.amount &&
        fullName == other.fullName &&
        collectionDate == other.collectionDate &&
        bankName == other.bankName &&
        billNum == other.billNum &&
        tranRefNum == other.tranRefNum &&
        chequeNum == other.chequeNum &&
        otherCharges == other.otherCharges &&
        paymentMethod == other.paymentMethod &&
        reservedDataField1 == other.reservedDataField1 &&
        reservedDataField2 == other.reservedDataField2 &&
        reservedDataField3 == other.reservedDataField3 &&
        reservedDataField4 == other.reservedDataField4 &&
        reservedDataField5 == other.reservedDataField5 &&
        reservedDataField6 == other.reservedDataField6 &&
        reservedDataField7 == other.reservedDataField7 &&
        reservedDataField8 == other.reservedDataField8 &&
        reservedDataField9 == other.reservedDataField9 &&
        reservedDataField10 == other.reservedDataField10;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accNum,
        amount,
        fullName,
        collectionDate,
        bankName,
        billNum,
        tranRefNum,
        chequeNum,
        otherCharges,
        paymentMethod,
        reservedDataField1,
        reservedDataField2,
        reservedDataField3,
        reservedDataField4,
        reservedDataField5,
        reservedDataField6,
        reservedDataField7,
        reservedDataField8,
        reservedDataField9,
        reservedDataField10
      ]);
}

BillsBodyStruct createBillsBodyStruct({
  String? accNum,
  double? amount,
  String? fullName,
  String? collectionDate,
  String? bankName,
  String? billNum,
  String? tranRefNum,
  String? chequeNum,
  double? otherCharges,
  String? paymentMethod,
  String? reservedDataField1,
  String? reservedDataField2,
  String? reservedDataField3,
  String? reservedDataField4,
  String? reservedDataField5,
  String? reservedDataField6,
  String? reservedDataField7,
  String? reservedDataField8,
  String? reservedDataField9,
  String? reservedDataField10,
}) =>
    BillsBodyStruct(
      accNum: accNum,
      amount: amount,
      fullName: fullName,
      collectionDate: collectionDate,
      bankName: bankName,
      billNum: billNum,
      tranRefNum: tranRefNum,
      chequeNum: chequeNum,
      otherCharges: otherCharges,
      paymentMethod: paymentMethod,
      reservedDataField1: reservedDataField1,
      reservedDataField2: reservedDataField2,
      reservedDataField3: reservedDataField3,
      reservedDataField4: reservedDataField4,
      reservedDataField5: reservedDataField5,
      reservedDataField6: reservedDataField6,
      reservedDataField7: reservedDataField7,
      reservedDataField8: reservedDataField8,
      reservedDataField9: reservedDataField9,
      reservedDataField10: reservedDataField10,
    );
