// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaStruct extends BaseStruct {
  MediaStruct({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? articleId,
    String? mediaSource,
    String? s3Key,
    String? url,
    String? mimeType,
    String? altText,
    String? fileName,
    String? thumbnailUrl,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _articleId = articleId,
        _mediaSource = mediaSource,
        _s3Key = s3Key,
        _url = url,
        _mimeType = mimeType,
        _altText = altText,
        _fileName = fileName,
        _thumbnailUrl = thumbnailUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "articleId" field.
  String? _articleId;
  String get articleId => _articleId ?? '';
  set articleId(String? val) => _articleId = val;

  bool hasArticleId() => _articleId != null;

  // "mediaSource" field.
  String? _mediaSource;
  String get mediaSource => _mediaSource ?? '';
  set mediaSource(String? val) => _mediaSource = val;

  bool hasMediaSource() => _mediaSource != null;

  // "s3Key" field.
  String? _s3Key;
  String get s3Key => _s3Key ?? '';
  set s3Key(String? val) => _s3Key = val;

  bool hasS3Key() => _s3Key != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "mimeType" field.
  String? _mimeType;
  String get mimeType => _mimeType ?? '';
  set mimeType(String? val) => _mimeType = val;

  bool hasMimeType() => _mimeType != null;

  // "altText" field.
  String? _altText;
  String get altText => _altText ?? '';
  set altText(String? val) => _altText = val;

  bool hasAltText() => _altText != null;

  // "fileName" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  set fileName(String? val) => _fileName = val;

  bool hasFileName() => _fileName != null;

  // "thumbnailUrl" field.
  String? _thumbnailUrl;
  String get thumbnailUrl => _thumbnailUrl ?? '';
  set thumbnailUrl(String? val) => _thumbnailUrl = val;

  bool hasThumbnailUrl() => _thumbnailUrl != null;

  static MediaStruct fromMap(Map<String, dynamic> data) => MediaStruct(
        id: data['id'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        articleId: data['articleId'] as String?,
        mediaSource: data['mediaSource'] as String?,
        s3Key: data['s3Key'] as String?,
        url: data['url'] as String?,
        mimeType: data['mimeType'] as String?,
        altText: data['altText'] as String?,
        fileName: data['fileName'] as String?,
        thumbnailUrl: data['thumbnailUrl'] as String?,
      );

  static MediaStruct? maybeFromMap(dynamic data) =>
      data is Map ? MediaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'articleId': _articleId,
        'mediaSource': _mediaSource,
        's3Key': _s3Key,
        'url': _url,
        'mimeType': _mimeType,
        'altText': _altText,
        'fileName': _fileName,
        'thumbnailUrl': _thumbnailUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'articleId': serializeParam(
          _articleId,
          ParamType.String,
        ),
        'mediaSource': serializeParam(
          _mediaSource,
          ParamType.String,
        ),
        's3Key': serializeParam(
          _s3Key,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'mimeType': serializeParam(
          _mimeType,
          ParamType.String,
        ),
        'altText': serializeParam(
          _altText,
          ParamType.String,
        ),
        'fileName': serializeParam(
          _fileName,
          ParamType.String,
        ),
        'thumbnailUrl': serializeParam(
          _thumbnailUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static MediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MediaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        articleId: deserializeParam(
          data['articleId'],
          ParamType.String,
          false,
        ),
        mediaSource: deserializeParam(
          data['mediaSource'],
          ParamType.String,
          false,
        ),
        s3Key: deserializeParam(
          data['s3Key'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        mimeType: deserializeParam(
          data['mimeType'],
          ParamType.String,
          false,
        ),
        altText: deserializeParam(
          data['altText'],
          ParamType.String,
          false,
        ),
        fileName: deserializeParam(
          data['fileName'],
          ParamType.String,
          false,
        ),
        thumbnailUrl: deserializeParam(
          data['thumbnailUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MediaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        articleId == other.articleId &&
        mediaSource == other.mediaSource &&
        s3Key == other.s3Key &&
        url == other.url &&
        mimeType == other.mimeType &&
        altText == other.altText &&
        fileName == other.fileName &&
        thumbnailUrl == other.thumbnailUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        articleId,
        mediaSource,
        s3Key,
        url,
        mimeType,
        altText,
        fileName,
        thumbnailUrl
      ]);
}

MediaStruct createMediaStruct({
  String? id,
  String? createdAt,
  String? updatedAt,
  String? articleId,
  String? mediaSource,
  String? s3Key,
  String? url,
  String? mimeType,
  String? altText,
  String? fileName,
  String? thumbnailUrl,
}) =>
    MediaStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      articleId: articleId,
      mediaSource: mediaSource,
      s3Key: s3Key,
      url: url,
      mimeType: mimeType,
      altText: altText,
      fileName: fileName,
      thumbnailUrl: thumbnailUrl,
    );
