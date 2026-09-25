// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBBillerStruct extends BaseStruct {
  WBBillerStruct({
    String? id,
    String? code,
    String? name,
    String? category,
    bool? isNew,
  })  : _id = id,
        _code = code,
        _name = name,
        _category = category,
        _isNew = isNew;

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

  // "isNew" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  set isNew(bool? val) => _isNew = val;

  bool hasIsNew() => _isNew != null;

  static WBBillerStruct fromMap(Map<String, dynamic> data) => WBBillerStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        name: data['name'] as String?,
        category: data['category'] as String?,
        isNew: data['isNew'] as bool?,
      );

  static WBBillerStruct? maybeFromMap(dynamic data) =>
      data is Map ? WBBillerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'name': _name,
        'category': _category,
        'isNew': _isNew,
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
        'isNew': serializeParam(
          _isNew,
          ParamType.bool,
        ),
      }.withoutNulls;

  static WBBillerStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBBillerStruct(
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
        isNew: deserializeParam(
          data['isNew'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'WBBillerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBBillerStruct &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        category == other.category &&
        isNew == other.isNew;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, code, name, category, isNew]);
}

WBBillerStruct createWBBillerStruct({
  String? id,
  String? code,
  String? name,
  String? category,
  bool? isNew,
}) =>
    WBBillerStruct(
      id: id,
      code: code,
      name: name,
      category: category,
      isNew: isNew,
    );
