// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressesStruct extends BaseStruct {
  AddressesStruct({
    String? toAddress,
    String? ccAddresses,
  })  : _toAddress = toAddress,
        _ccAddresses = ccAddresses;

  // "ToAddress" field.
  String? _toAddress;
  String get toAddress => _toAddress ?? '';
  set toAddress(String? val) => _toAddress = val;

  bool hasToAddress() => _toAddress != null;

  // "CcAddresses" field.
  String? _ccAddresses;
  String get ccAddresses => _ccAddresses ?? '';
  set ccAddresses(String? val) => _ccAddresses = val;

  bool hasCcAddresses() => _ccAddresses != null;

  static AddressesStruct fromMap(Map<String, dynamic> data) => AddressesStruct(
        toAddress: data['ToAddress'] as String?,
        ccAddresses: data['CcAddresses'] as String?,
      );

  static AddressesStruct? maybeFromMap(dynamic data) => data is Map
      ? AddressesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ToAddress': _toAddress,
        'CcAddresses': _ccAddresses,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ToAddress': serializeParam(
          _toAddress,
          ParamType.String,
        ),
        'CcAddresses': serializeParam(
          _ccAddresses,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressesStruct(
        toAddress: deserializeParam(
          data['ToAddress'],
          ParamType.String,
          false,
        ),
        ccAddresses: deserializeParam(
          data['CcAddresses'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressesStruct &&
        toAddress == other.toAddress &&
        ccAddresses == other.ccAddresses;
  }

  @override
  int get hashCode => const ListEquality().hash([toAddress, ccAddresses]);
}

AddressesStruct createAddressesStruct({
  String? toAddress,
  String? ccAddresses,
}) =>
    AddressesStruct(
      toAddress: toAddress,
      ccAddresses: ccAddresses,
    );
