// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsStruct extends BaseStruct {
  ItemsStruct({
    String? id,
    String? referenceNumber,
    String? transferType,
    String? status,
    String? destinationAccount,
    double? amount,
    String? currency,
    String? createdAt,
  })  : _id = id,
        _referenceNumber = referenceNumber,
        _transferType = transferType,
        _status = status,
        _destinationAccount = destinationAccount,
        _amount = amount,
        _currency = currency,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "transferType" field.
  String? _transferType;
  String get transferType => _transferType ?? '';
  set transferType(String? val) => _transferType = val;

  bool hasTransferType() => _transferType != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "destinationAccount" field.
  String? _destinationAccount;
  String get destinationAccount => _destinationAccount ?? '';
  set destinationAccount(String? val) => _destinationAccount = val;

  bool hasDestinationAccount() => _destinationAccount != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static ItemsStruct fromMap(Map<String, dynamic> data) => ItemsStruct(
        id: data['id'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        transferType: data['transferType'] as String?,
        status: data['status'] as String?,
        destinationAccount: data['destinationAccount'] as String?,
        amount: castToType<double>(data['amount']),
        currency: data['currency'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static ItemsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referenceNumber': _referenceNumber,
        'transferType': _transferType,
        'status': _status,
        'destinationAccount': _destinationAccount,
        'amount': _amount,
        'currency': _currency,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'transferType': serializeParam(
          _transferType,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'destinationAccount': serializeParam(
          _destinationAccount,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        transferType: deserializeParam(
          data['transferType'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        destinationAccount: deserializeParam(
          data['destinationAccount'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemsStruct &&
        id == other.id &&
        referenceNumber == other.referenceNumber &&
        transferType == other.transferType &&
        status == other.status &&
        destinationAccount == other.destinationAccount &&
        amount == other.amount &&
        currency == other.currency &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        referenceNumber,
        transferType,
        status,
        destinationAccount,
        amount,
        currency,
        createdAt
      ]);
}

ItemsStruct createItemsStruct({
  String? id,
  String? referenceNumber,
  String? transferType,
  String? status,
  String? destinationAccount,
  double? amount,
  String? currency,
  String? createdAt,
}) =>
    ItemsStruct(
      id: id,
      referenceNumber: referenceNumber,
      transferType: transferType,
      status: status,
      destinationAccount: destinationAccount,
      amount: amount,
      currency: currency,
      createdAt: createdAt,
    );
