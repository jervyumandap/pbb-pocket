// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RelatedArticlesStruct extends BaseStruct {
  RelatedArticlesStruct({
    String? slug,
    String? title,
    String? summary,
    String? publishedAt,
    String? lastUpdatedAt,
    String? updatedAt,
    int? readTimeMinutes,
  })  : _slug = slug,
        _title = title,
        _summary = summary,
        _publishedAt = publishedAt,
        _lastUpdatedAt = lastUpdatedAt,
        _updatedAt = updatedAt,
        _readTimeMinutes = readTimeMinutes;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  set summary(String? val) => _summary = val;

  bool hasSummary() => _summary != null;

  // "publishedAt" field.
  String? _publishedAt;
  String get publishedAt => _publishedAt ?? '';
  set publishedAt(String? val) => _publishedAt = val;

  bool hasPublishedAt() => _publishedAt != null;

  // "lastUpdatedAt" field.
  String? _lastUpdatedAt;
  String get lastUpdatedAt => _lastUpdatedAt ?? '';
  set lastUpdatedAt(String? val) => _lastUpdatedAt = val;

  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "readTimeMinutes" field.
  int? _readTimeMinutes;
  int get readTimeMinutes => _readTimeMinutes ?? 0;
  set readTimeMinutes(int? val) => _readTimeMinutes = val;

  void incrementReadTimeMinutes(int amount) =>
      readTimeMinutes = readTimeMinutes + amount;

  bool hasReadTimeMinutes() => _readTimeMinutes != null;

  static RelatedArticlesStruct fromMap(Map<String, dynamic> data) =>
      RelatedArticlesStruct(
        slug: data['slug'] as String?,
        title: data['title'] as String?,
        summary: data['summary'] as String?,
        publishedAt: data['publishedAt'] as String?,
        lastUpdatedAt: data['lastUpdatedAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        readTimeMinutes: castToType<int>(data['readTimeMinutes']),
      );

  static RelatedArticlesStruct? maybeFromMap(dynamic data) => data is Map
      ? RelatedArticlesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'slug': _slug,
        'title': _title,
        'summary': _summary,
        'publishedAt': _publishedAt,
        'lastUpdatedAt': _lastUpdatedAt,
        'updatedAt': _updatedAt,
        'readTimeMinutes': _readTimeMinutes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.String,
        ),
        'publishedAt': serializeParam(
          _publishedAt,
          ParamType.String,
        ),
        'lastUpdatedAt': serializeParam(
          _lastUpdatedAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'readTimeMinutes': serializeParam(
          _readTimeMinutes,
          ParamType.int,
        ),
      }.withoutNulls;

  static RelatedArticlesStruct fromSerializableMap(Map<String, dynamic> data) =>
      RelatedArticlesStruct(
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        summary: deserializeParam(
          data['summary'],
          ParamType.String,
          false,
        ),
        publishedAt: deserializeParam(
          data['publishedAt'],
          ParamType.String,
          false,
        ),
        lastUpdatedAt: deserializeParam(
          data['lastUpdatedAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        readTimeMinutes: deserializeParam(
          data['readTimeMinutes'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RelatedArticlesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RelatedArticlesStruct &&
        slug == other.slug &&
        title == other.title &&
        summary == other.summary &&
        publishedAt == other.publishedAt &&
        lastUpdatedAt == other.lastUpdatedAt &&
        updatedAt == other.updatedAt &&
        readTimeMinutes == other.readTimeMinutes;
  }

  @override
  int get hashCode => const ListEquality().hash([
        slug,
        title,
        summary,
        publishedAt,
        lastUpdatedAt,
        updatedAt,
        readTimeMinutes
      ]);
}

RelatedArticlesStruct createRelatedArticlesStruct({
  String? slug,
  String? title,
  String? summary,
  String? publishedAt,
  String? lastUpdatedAt,
  String? updatedAt,
  int? readTimeMinutes,
}) =>
    RelatedArticlesStruct(
      slug: slug,
      title: title,
      summary: summary,
      publishedAt: publishedAt,
      lastUpdatedAt: lastUpdatedAt,
      updatedAt: updatedAt,
      readTimeMinutes: readTimeMinutes,
    );
