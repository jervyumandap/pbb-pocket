// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyUserStruct extends BaseStruct {
  PasskeyUserStruct({
    String? id,
    String? name,
    String? displayName,
  })  : _id = id,
        _name = name,
        _displayName = displayName;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  static PasskeyUserStruct fromMap(Map<String, dynamic> data) =>
      PasskeyUserStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        displayName: data['displayName'] as String?,
      );

  static PasskeyUserStruct? maybeFromMap(dynamic data) => data is Map
      ? PasskeyUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'displayName': _displayName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      PasskeyUserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyUserStruct &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, displayName]);
}

PasskeyUserStruct createPasskeyUserStruct({
  String? id,
  String? name,
  String? displayName,
}) =>
    PasskeyUserStruct(
      id: id,
      name: name,
      displayName: displayName,
    );
