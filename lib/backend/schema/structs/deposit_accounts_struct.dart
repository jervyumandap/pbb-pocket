// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepositAccountsStruct extends BaseStruct {
  DepositAccountsStruct({
    String? dateProcessed,
    String? clientType,
    String? clientValue,
    String? iaclinkActualAcnum,
    String? acntsAcName1,
    String? acntsCurrCode,
    String? acntbalBcBal,
    String? clientsTypeFlg,
  })  : _dateProcessed = dateProcessed,
        _clientType = clientType,
        _clientValue = clientValue,
        _iaclinkActualAcnum = iaclinkActualAcnum,
        _acntsAcName1 = acntsAcName1,
        _acntsCurrCode = acntsCurrCode,
        _acntbalBcBal = acntbalBcBal,
        _clientsTypeFlg = clientsTypeFlg;

  // "DateProcessed" field.
  String? _dateProcessed;
  String get dateProcessed => _dateProcessed ?? '';
  set dateProcessed(String? val) => _dateProcessed = val;

  bool hasDateProcessed() => _dateProcessed != null;

  // "ClientType" field.
  String? _clientType;
  String get clientType => _clientType ?? '';
  set clientType(String? val) => _clientType = val;

  bool hasClientType() => _clientType != null;

  // "ClientValue" field.
  String? _clientValue;
  String get clientValue => _clientValue ?? '';
  set clientValue(String? val) => _clientValue = val;

  bool hasClientValue() => _clientValue != null;

  // "IaclinkActualAcnum" field.
  String? _iaclinkActualAcnum;
  String get iaclinkActualAcnum => _iaclinkActualAcnum ?? '';
  set iaclinkActualAcnum(String? val) => _iaclinkActualAcnum = val;

  bool hasIaclinkActualAcnum() => _iaclinkActualAcnum != null;

  // "AcntsAcName1" field.
  String? _acntsAcName1;
  String get acntsAcName1 => _acntsAcName1 ?? '';
  set acntsAcName1(String? val) => _acntsAcName1 = val;

  bool hasAcntsAcName1() => _acntsAcName1 != null;

  // "AcntsCurrCode" field.
  String? _acntsCurrCode;
  String get acntsCurrCode => _acntsCurrCode ?? '';
  set acntsCurrCode(String? val) => _acntsCurrCode = val;

  bool hasAcntsCurrCode() => _acntsCurrCode != null;

  // "AcntbalBcBal" field.
  String? _acntbalBcBal;
  String get acntbalBcBal => _acntbalBcBal ?? '';
  set acntbalBcBal(String? val) => _acntbalBcBal = val;

  bool hasAcntbalBcBal() => _acntbalBcBal != null;

  // "ClientsTypeFlg" field.
  String? _clientsTypeFlg;
  String get clientsTypeFlg => _clientsTypeFlg ?? '';
  set clientsTypeFlg(String? val) => _clientsTypeFlg = val;

  bool hasClientsTypeFlg() => _clientsTypeFlg != null;

  static DepositAccountsStruct fromMap(Map<String, dynamic> data) =>
      DepositAccountsStruct(
        dateProcessed: data['DateProcessed'] as String?,
        clientType: data['ClientType'] as String?,
        clientValue: data['ClientValue'] as String?,
        iaclinkActualAcnum: data['IaclinkActualAcnum'] as String?,
        acntsAcName1: data['AcntsAcName1'] as String?,
        acntsCurrCode: data['AcntsCurrCode'] as String?,
        acntbalBcBal: data['AcntbalBcBal'] as String?,
        clientsTypeFlg: data['ClientsTypeFlg'] as String?,
      );

  static DepositAccountsStruct? maybeFromMap(dynamic data) => data is Map
      ? DepositAccountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'DateProcessed': _dateProcessed,
        'ClientType': _clientType,
        'ClientValue': _clientValue,
        'IaclinkActualAcnum': _iaclinkActualAcnum,
        'AcntsAcName1': _acntsAcName1,
        'AcntsCurrCode': _acntsCurrCode,
        'AcntbalBcBal': _acntbalBcBal,
        'ClientsTypeFlg': _clientsTypeFlg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'DateProcessed': serializeParam(
          _dateProcessed,
          ParamType.String,
        ),
        'ClientType': serializeParam(
          _clientType,
          ParamType.String,
        ),
        'ClientValue': serializeParam(
          _clientValue,
          ParamType.String,
        ),
        'IaclinkActualAcnum': serializeParam(
          _iaclinkActualAcnum,
          ParamType.String,
        ),
        'AcntsAcName1': serializeParam(
          _acntsAcName1,
          ParamType.String,
        ),
        'AcntsCurrCode': serializeParam(
          _acntsCurrCode,
          ParamType.String,
        ),
        'AcntbalBcBal': serializeParam(
          _acntbalBcBal,
          ParamType.String,
        ),
        'ClientsTypeFlg': serializeParam(
          _clientsTypeFlg,
          ParamType.String,
        ),
      }.withoutNulls;

  static DepositAccountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DepositAccountsStruct(
        dateProcessed: deserializeParam(
          data['DateProcessed'],
          ParamType.String,
          false,
        ),
        clientType: deserializeParam(
          data['ClientType'],
          ParamType.String,
          false,
        ),
        clientValue: deserializeParam(
          data['ClientValue'],
          ParamType.String,
          false,
        ),
        iaclinkActualAcnum: deserializeParam(
          data['IaclinkActualAcnum'],
          ParamType.String,
          false,
        ),
        acntsAcName1: deserializeParam(
          data['AcntsAcName1'],
          ParamType.String,
          false,
        ),
        acntsCurrCode: deserializeParam(
          data['AcntsCurrCode'],
          ParamType.String,
          false,
        ),
        acntbalBcBal: deserializeParam(
          data['AcntbalBcBal'],
          ParamType.String,
          false,
        ),
        clientsTypeFlg: deserializeParam(
          data['ClientsTypeFlg'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DepositAccountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DepositAccountsStruct &&
        dateProcessed == other.dateProcessed &&
        clientType == other.clientType &&
        clientValue == other.clientValue &&
        iaclinkActualAcnum == other.iaclinkActualAcnum &&
        acntsAcName1 == other.acntsAcName1 &&
        acntsCurrCode == other.acntsCurrCode &&
        acntbalBcBal == other.acntbalBcBal &&
        clientsTypeFlg == other.clientsTypeFlg;
  }

  @override
  int get hashCode => const ListEquality().hash([
        dateProcessed,
        clientType,
        clientValue,
        iaclinkActualAcnum,
        acntsAcName1,
        acntsCurrCode,
        acntbalBcBal,
        clientsTypeFlg
      ]);
}

DepositAccountsStruct createDepositAccountsStruct({
  String? dateProcessed,
  String? clientType,
  String? clientValue,
  String? iaclinkActualAcnum,
  String? acntsAcName1,
  String? acntsCurrCode,
  String? acntbalBcBal,
  String? clientsTypeFlg,
}) =>
    DepositAccountsStruct(
      dateProcessed: dateProcessed,
      clientType: clientType,
      clientValue: clientValue,
      iaclinkActualAcnum: iaclinkActualAcnum,
      acntsAcName1: acntsAcName1,
      acntsCurrCode: acntsCurrCode,
      acntbalBcBal: acntbalBcBal,
      clientsTypeFlg: clientsTypeFlg,
    );
