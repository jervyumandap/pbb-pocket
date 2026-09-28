// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBBillerCategoryStruct extends BaseStruct {
  WBBillerCategoryStruct({
    String? id,
    String? code,
    String? name,
    String? description,
    String? icon,
    int? sortOrder,
    bool? isActive,
  })  : _id = id,
        _code = code,
        _name = name,
        _description = description,
        _icon = icon,
        _sortOrder = sortOrder,
        _isActive = isActive;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "sortOrder" field.
  int? _sortOrder;
  int get sortOrder => _sortOrder ?? 0;
  set sortOrder(int? val) => _sortOrder = val;

  void incrementSortOrder(int amount) => sortOrder = sortOrder + amount;

  bool hasSortOrder() => _sortOrder != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  static WBBillerCategoryStruct fromMap(Map<String, dynamic> data) =>
      WBBillerCategoryStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        icon: data['icon'] as String?,
        sortOrder: castToType<int>(data['sortOrder']),
        isActive: data['isActive'] as bool?,
      );

  static WBBillerCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? WBBillerCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'name': _name,
        'description': _description,
        'icon': _icon,
        'sortOrder': _sortOrder,
        'isActive': _isActive,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'sortOrder': serializeParam(
          _sortOrder,
          ParamType.int,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
      }.withoutNulls;

  static WBBillerCategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBBillerCategoryStruct(
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        sortOrder: deserializeParam(
          data['sortOrder'],
          ParamType.int,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'WBBillerCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBBillerCategoryStruct &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        description == other.description &&
        icon == other.icon &&
        sortOrder == other.sortOrder &&
        isActive == other.isActive;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, code, name, description, icon, sortOrder, isActive]);
}

WBBillerCategoryStruct createWBBillerCategoryStruct({
  String? id,
  String? code,
  String? name,
  String? description,
  String? icon,
  int? sortOrder,
  bool? isActive,
}) =>
    WBBillerCategoryStruct(
      id: id,
      code: code,
      name: name,
      description: description,
      icon: icon,
      sortOrder: sortOrder,
      isActive: isActive,
    );
