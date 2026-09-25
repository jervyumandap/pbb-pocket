// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssigneeStruct extends BaseStruct {
  AssigneeStruct({
    StaffIdStruct? staffId,
    String? firstName,
    String? lastName,
    String? email,
  })  : _staffId = staffId,
        _firstName = firstName,
        _lastName = lastName,
        _email = email;

  // "staffId" field.
  StaffIdStruct? _staffId;
  StaffIdStruct get staffId => _staffId ?? StaffIdStruct();
  set staffId(StaffIdStruct? val) => _staffId = val;

  void updateStaffId(Function(StaffIdStruct) updateFn) {
    updateFn(_staffId ??= StaffIdStruct());
  }

  bool hasStaffId() => _staffId != null;

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

  static AssigneeStruct fromMap(Map<String, dynamic> data) => AssigneeStruct(
        staffId: data['staffId'] is StaffIdStruct
            ? data['staffId']
            : StaffIdStruct.maybeFromMap(data['staffId']),
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
      );

  static AssigneeStruct? maybeFromMap(dynamic data) =>
      data is Map ? AssigneeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'staffId': _staffId?.toMap(),
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'staffId': serializeParam(
          _staffId,
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
      }.withoutNulls;

  static AssigneeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssigneeStruct(
        staffId: deserializeStructParam(
          data['staffId'],
          ParamType.DataStruct,
          false,
          structBuilder: StaffIdStruct.fromSerializableMap,
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
      );

  @override
  String toString() => 'AssigneeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssigneeStruct &&
        staffId == other.staffId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([staffId, firstName, lastName, email]);
}

AssigneeStruct createAssigneeStruct({
  StaffIdStruct? staffId,
  String? firstName,
  String? lastName,
  String? email,
}) =>
    AssigneeStruct(
      staffId: staffId ?? StaffIdStruct(),
      firstName: firstName,
      lastName: lastName,
      email: email,
    );
