// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TagsStruct extends BaseStruct {
  TagsStruct({
    String? id,
    String? slug,
    String? label,
    String? status,
  })  : _id = id,
        _slug = slug,
        _label = label,
        _status = status;

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

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static TagsStruct fromMap(Map<String, dynamic> data) => TagsStruct(
        id: data['id'] as String?,
        slug: data['slug'] as String?,
        label: data['label'] as String?,
        status: data['status'] as String?,
      );

  static TagsStruct? maybeFromMap(dynamic data) =>
      data is Map ? TagsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'slug': _slug,
        'label': _label,
        'status': _status,
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
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static TagsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TagsStruct(
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
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TagsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TagsStruct &&
        id == other.id &&
        slug == other.slug &&
        label == other.label &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([id, slug, label, status]);
}

TagsStruct createTagsStruct({
  String? id,
  String? slug,
  String? label,
  String? status,
}) =>
    TagsStruct(
      id: id,
      slug: slug,
      label: label,
      status: status,
    );
