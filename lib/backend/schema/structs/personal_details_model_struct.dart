// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PersonalDetailsModelStruct extends BaseStruct {
  PersonalDetailsModelStruct({
    String? firstName,
    String? lastName,
    String? birthDate,
  })  : _firstName = firstName,
        _lastName = lastName,
        _birthDate = birthDate;

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

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  static PersonalDetailsModelStruct fromMap(Map<String, dynamic> data) =>
      PersonalDetailsModelStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        birthDate: data['birthDate'] as String?,
      );

  static PersonalDetailsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? PersonalDetailsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'birthDate': _birthDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'birthDate': serializeParam(
          _birthDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static PersonalDetailsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PersonalDetailsModelStruct(
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
        birthDate: deserializeParam(
          data['birthDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PersonalDetailsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PersonalDetailsModelStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        birthDate == other.birthDate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([firstName, lastName, birthDate]);
}

PersonalDetailsModelStruct createPersonalDetailsModelStruct({
  String? firstName,
  String? lastName,
  String? birthDate,
}) =>
    PersonalDetailsModelStruct(
      firstName: firstName,
      lastName: lastName,
      birthDate: birthDate,
    );
