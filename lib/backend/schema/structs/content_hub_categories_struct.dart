// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentHubCategoriesStruct extends BaseStruct {
  ContentHubCategoriesStruct({
    String? id,
    String? slug,
    String? name,
    String? description,
    int? sortOrder,
    String? icon,
    int? articleCount,
  })  : _id = id,
        _slug = slug,
        _name = name,
        _description = description,
        _sortOrder = sortOrder,
        _icon = icon,
        _articleCount = articleCount;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

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

  // "sortOrder" field.
  int? _sortOrder;
  int get sortOrder => _sortOrder ?? 0;
  set sortOrder(int? val) => _sortOrder = val;

  void incrementSortOrder(int amount) => sortOrder = sortOrder + amount;

  bool hasSortOrder() => _sortOrder != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "articleCount" field.
  int? _articleCount;
  int get articleCount => _articleCount ?? 0;
  set articleCount(int? val) => _articleCount = val;

  void incrementArticleCount(int amount) =>
      articleCount = articleCount + amount;

  bool hasArticleCount() => _articleCount != null;

  static ContentHubCategoriesStruct fromMap(Map<String, dynamic> data) =>
      ContentHubCategoriesStruct(
        id: data['id'] as String?,
        slug: data['slug'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        sortOrder: castToType<int>(data['sortOrder']),
        icon: data['icon'] as String?,
        articleCount: castToType<int>(data['articleCount']),
      );

  static ContentHubCategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? ContentHubCategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'slug': _slug,
        'name': _name,
        'description': _description,
        'sortOrder': _sortOrder,
        'icon': _icon,
        'articleCount': _articleCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'slug': serializeParam(
          _slug,
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
        'sortOrder': serializeParam(
          _sortOrder,
          ParamType.int,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'articleCount': serializeParam(
          _articleCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static ContentHubCategoriesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ContentHubCategoriesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['slug'],
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
        sortOrder: deserializeParam(
          data['sortOrder'],
          ParamType.int,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        articleCount: deserializeParam(
          data['articleCount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ContentHubCategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContentHubCategoriesStruct &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        description == other.description &&
        sortOrder == other.sortOrder &&
        icon == other.icon &&
        articleCount == other.articleCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, slug, name, description, sortOrder, icon, articleCount]);
}

ContentHubCategoriesStruct createContentHubCategoriesStruct({
  String? id,
  String? slug,
  String? name,
  String? description,
  int? sortOrder,
  String? icon,
  int? articleCount,
}) =>
    ContentHubCategoriesStruct(
      id: id,
      slug: slug,
      name: name,
      description: description,
      sortOrder: sortOrder,
      icon: icon,
      articleCount: articleCount,
    );
