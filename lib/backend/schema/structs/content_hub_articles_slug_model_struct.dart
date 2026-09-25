// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentHubArticlesSlugModelStruct extends BaseStruct {
  ContentHubArticlesSlugModelStruct({
    String? id,
    String? slug,
    String? title,
    String? summary,
    String? categoryId,
    String? categoryName,
    String? publishedAt,
    String? lastUpdatedAt,
    String? updatedAt,
    int? readTimeMinutes,
    List<TagsStruct>? tags,
    String? body,
    List<MediaStruct>? media,
    HeroMediaStruct? heroMedia,
    List<RelatedArticlesStruct>? relatedArticles,
  })  : _id = id,
        _slug = slug,
        _title = title,
        _summary = summary,
        _categoryId = categoryId,
        _categoryName = categoryName,
        _publishedAt = publishedAt,
        _lastUpdatedAt = lastUpdatedAt,
        _updatedAt = updatedAt,
        _readTimeMinutes = readTimeMinutes,
        _tags = tags,
        _body = body,
        _media = media,
        _heroMedia = heroMedia,
        _relatedArticles = relatedArticles;

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

  // "categoryId" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

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

  // "tags" field.
  List<TagsStruct>? _tags;
  List<TagsStruct> get tags => _tags ?? const [];
  set tags(List<TagsStruct>? val) => _tags = val;

  void updateTags(Function(List<TagsStruct>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

  // "media" field.
  List<MediaStruct>? _media;
  List<MediaStruct> get media => _media ?? const [];
  set media(List<MediaStruct>? val) => _media = val;

  void updateMedia(Function(List<MediaStruct>) updateFn) {
    updateFn(_media ??= []);
  }

  bool hasMedia() => _media != null;

  // "heroMedia" field.
  HeroMediaStruct? _heroMedia;
  HeroMediaStruct get heroMedia => _heroMedia ?? HeroMediaStruct();
  set heroMedia(HeroMediaStruct? val) => _heroMedia = val;

  void updateHeroMedia(Function(HeroMediaStruct) updateFn) {
    updateFn(_heroMedia ??= HeroMediaStruct());
  }

  bool hasHeroMedia() => _heroMedia != null;

  // "relatedArticles" field.
  List<RelatedArticlesStruct>? _relatedArticles;
  List<RelatedArticlesStruct> get relatedArticles =>
      _relatedArticles ?? const [];
  set relatedArticles(List<RelatedArticlesStruct>? val) =>
      _relatedArticles = val;

  void updateRelatedArticles(Function(List<RelatedArticlesStruct>) updateFn) {
    updateFn(_relatedArticles ??= []);
  }

  bool hasRelatedArticles() => _relatedArticles != null;

  static ContentHubArticlesSlugModelStruct fromMap(Map<String, dynamic> data) =>
      ContentHubArticlesSlugModelStruct(
        id: data['id'] as String?,
        slug: data['slug'] as String?,
        title: data['title'] as String?,
        summary: data['summary'] as String?,
        categoryId: data['categoryId'] as String?,
        categoryName: data['categoryName'] as String?,
        publishedAt: data['publishedAt'] as String?,
        lastUpdatedAt: data['lastUpdatedAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        readTimeMinutes: castToType<int>(data['readTimeMinutes']),
        tags: getStructList(
          data['tags'],
          TagsStruct.fromMap,
        ),
        body: data['body'] as String?,
        media: getStructList(
          data['media'],
          MediaStruct.fromMap,
        ),
        heroMedia: data['heroMedia'] is HeroMediaStruct
            ? data['heroMedia']
            : HeroMediaStruct.maybeFromMap(data['heroMedia']),
        relatedArticles: getStructList(
          data['relatedArticles'],
          RelatedArticlesStruct.fromMap,
        ),
      );

  static ContentHubArticlesSlugModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ContentHubArticlesSlugModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'slug': _slug,
        'title': _title,
        'summary': _summary,
        'categoryId': _categoryId,
        'categoryName': _categoryName,
        'publishedAt': _publishedAt,
        'lastUpdatedAt': _lastUpdatedAt,
        'updatedAt': _updatedAt,
        'readTimeMinutes': _readTimeMinutes,
        'tags': _tags?.map((e) => e.toMap()).toList(),
        'body': _body,
        'media': _media?.map((e) => e.toMap()).toList(),
        'heroMedia': _heroMedia?.toMap(),
        'relatedArticles': _relatedArticles?.map((e) => e.toMap()).toList(),
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
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.String,
        ),
        'categoryId': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'categoryName': serializeParam(
          _categoryName,
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
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          isList: true,
        ),
        'body': serializeParam(
          _body,
          ParamType.String,
        ),
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
          isList: true,
        ),
        'heroMedia': serializeParam(
          _heroMedia,
          ParamType.DataStruct,
        ),
        'relatedArticles': serializeParam(
          _relatedArticles,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ContentHubArticlesSlugModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ContentHubArticlesSlugModelStruct(
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
        categoryId: deserializeParam(
          data['categoryId'],
          ParamType.String,
          false,
        ),
        categoryName: deserializeParam(
          data['categoryName'],
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
        tags: deserializeStructParam<TagsStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: TagsStruct.fromSerializableMap,
        ),
        body: deserializeParam(
          data['body'],
          ParamType.String,
          false,
        ),
        media: deserializeStructParam<MediaStruct>(
          data['media'],
          ParamType.DataStruct,
          true,
          structBuilder: MediaStruct.fromSerializableMap,
        ),
        heroMedia: deserializeStructParam(
          data['heroMedia'],
          ParamType.DataStruct,
          false,
          structBuilder: HeroMediaStruct.fromSerializableMap,
        ),
        relatedArticles: deserializeStructParam<RelatedArticlesStruct>(
          data['relatedArticles'],
          ParamType.DataStruct,
          true,
          structBuilder: RelatedArticlesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ContentHubArticlesSlugModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ContentHubArticlesSlugModelStruct &&
        id == other.id &&
        slug == other.slug &&
        title == other.title &&
        summary == other.summary &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        publishedAt == other.publishedAt &&
        lastUpdatedAt == other.lastUpdatedAt &&
        updatedAt == other.updatedAt &&
        readTimeMinutes == other.readTimeMinutes &&
        listEquality.equals(tags, other.tags) &&
        body == other.body &&
        listEquality.equals(media, other.media) &&
        heroMedia == other.heroMedia &&
        listEquality.equals(relatedArticles, other.relatedArticles);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        slug,
        title,
        summary,
        categoryId,
        categoryName,
        publishedAt,
        lastUpdatedAt,
        updatedAt,
        readTimeMinutes,
        tags,
        body,
        media,
        heroMedia,
        relatedArticles
      ]);
}

ContentHubArticlesSlugModelStruct createContentHubArticlesSlugModelStruct({
  String? id,
  String? slug,
  String? title,
  String? summary,
  String? categoryId,
  String? categoryName,
  String? publishedAt,
  String? lastUpdatedAt,
  String? updatedAt,
  int? readTimeMinutes,
  String? body,
  HeroMediaStruct? heroMedia,
}) =>
    ContentHubArticlesSlugModelStruct(
      id: id,
      slug: slug,
      title: title,
      summary: summary,
      categoryId: categoryId,
      categoryName: categoryName,
      publishedAt: publishedAt,
      lastUpdatedAt: lastUpdatedAt,
      updatedAt: updatedAt,
      readTimeMinutes: readTimeMinutes,
      body: body,
      heroMedia: heroMedia ?? HeroMediaStruct(),
    );
