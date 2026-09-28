// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    CustomerIdStruct? customerId,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
  })  : _customerId = customerId,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _phone = phone;

  // "customerId" field.
  CustomerIdStruct? _customerId;
  CustomerIdStruct get customerId => _customerId ?? CustomerIdStruct();
  set customerId(CustomerIdStruct? val) => _customerId = val;

  void updateCustomerId(Function(CustomerIdStruct) updateFn) {
    updateFn(_customerId ??= CustomerIdStruct());
  }

  bool hasCustomerId() => _customerId != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        customerId: data['customerId'] is CustomerIdStruct
            ? data['customerId']
            : CustomerIdStruct.maybeFromMap(data['customerId']),
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customerId': _customerId?.toMap(),
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'phone': _phone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customerId': serializeParam(
          _customerId,
          ParamType.DataStruct,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        customerId: deserializeStructParam(
          data['customerId'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerIdStruct.fromSerializableMap,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        customerId == other.customerId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([customerId, firstName, lastName, email, phone]);
}

CustomerStruct createCustomerStruct({
  CustomerIdStruct? customerId,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
}) =>
    CustomerStruct(
      customerId: customerId ?? CustomerIdStruct(),
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
    );
