// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountInfoStruct extends BaseStruct {
  AccountInfoStruct({
    String? name,
    String? accountNumber,
    String? amount,
    String? dueDate,
    String? referenceNumber,
    String? biller,
  })  : _name = name,
        _accountNumber = accountNumber,
        _amount = amount,
        _dueDate = dueDate,
        _referenceNumber = referenceNumber,
        _biller = biller;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "AccountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "DueDate" field.
  String? _dueDate;
  String get dueDate => _dueDate ?? '';
  set dueDate(String? val) => _dueDate = val;

  bool hasDueDate() => _dueDate != null;

  // "ReferenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "Biller" field.
  String? _biller;
  String get biller => _biller ?? '';
  set biller(String? val) => _biller = val;

  bool hasBiller() => _biller != null;

  static AccountInfoStruct fromMap(Map<String, dynamic> data) =>
      AccountInfoStruct(
        name: data['Name'] as String?,
        accountNumber: data['AccountNumber'] as String?,
        amount: data['Amount'] as String?,
        dueDate: data['DueDate'] as String?,
        referenceNumber: data['ReferenceNumber'] as String?,
        biller: data['Biller'] as String?,
      );

  static AccountInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'AccountNumber': _accountNumber,
        'Amount': _amount,
        'DueDate': _dueDate,
        'ReferenceNumber': _referenceNumber,
        'Biller': _biller,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'AccountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'DueDate': serializeParam(
          _dueDate,
          ParamType.String,
        ),
        'ReferenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'Biller': serializeParam(
          _biller,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountInfoStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['AccountNumber'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.String,
          false,
        ),
        dueDate: deserializeParam(
          data['DueDate'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['ReferenceNumber'],
          ParamType.String,
          false,
        ),
        biller: deserializeParam(
          data['Biller'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountInfoStruct &&
        name == other.name &&
        accountNumber == other.accountNumber &&
        amount == other.amount &&
        dueDate == other.dueDate &&
        referenceNumber == other.referenceNumber &&
        biller == other.biller;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, accountNumber, amount, dueDate, referenceNumber, biller]);
}

AccountInfoStruct createAccountInfoStruct({
  String? name,
  String? accountNumber,
  String? amount,
  String? dueDate,
  String? referenceNumber,
  String? biller,
}) =>
    AccountInfoStruct(
      name: name,
      accountNumber: accountNumber,
      amount: amount,
      dueDate: dueDate,
      referenceNumber: referenceNumber,
      biller: biller,
    );
