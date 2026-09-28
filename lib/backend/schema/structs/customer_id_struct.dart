// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerIdStruct extends BaseStruct {
  CustomerIdStruct({
    String? customer,
  }) : _customer = customer;

  // "customer" field.
  String? _customer;
  String get customer => _customer ?? '';
  set customer(String? val) => _customer = val;

  bool hasCustomer() => _customer != null;

  static CustomerIdStruct fromMap(Map<String, dynamic> data) =>
      CustomerIdStruct(
        customer: data['customer'] as String?,
      );

  static CustomerIdStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerIdStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'customer': _customer,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer': serializeParam(
          _customer,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerIdStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerIdStruct(
        customer: deserializeParam(
          data['customer'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerIdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerIdStruct && customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality().hash([customer]);
}

CustomerIdStruct createCustomerIdStruct({
  String? customer,
}) =>
    CustomerIdStruct(
      customer: customer,
    );
