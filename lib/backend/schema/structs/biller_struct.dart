// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillerStruct extends BaseStruct {
  BillerStruct({
    String? id,
    String? code,
    String? name,
    String? category,
  })  : _id = id,
        _code = code,
        _name = name,
        _category = category;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  static BillerStruct fromMap(Map<String, dynamic> data) => BillerStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        name: data['name'] as String?,
        category: data['category'] as String?,
      );

  static BillerStruct? maybeFromMap(dynamic data) =>
      data is Map ? BillerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'name': _name,
        'category': _category,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
      }.withoutNulls;

  static BillerStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BillerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillerStruct &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash([id, code, name, category]);
}

BillerStruct createBillerStruct({
  String? id,
  String? code,
  String? name,
  String? category,
}) =>
    BillerStruct(
      id: id,
      code: code,
      name: name,
      category: category,
    );
