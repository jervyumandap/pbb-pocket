// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HeroMediaStruct extends BaseStruct {
  HeroMediaStruct({
    String? kind,
    String? url,
    String? thumbnailUrl,
    String? altText,
  })  : _kind = kind,
        _url = url,
        _thumbnailUrl = thumbnailUrl,
        _altText = altText;

  // "kind" field.
  String? _kind;
  String get kind => _kind ?? '';
  set kind(String? val) => _kind = val;

  bool hasKind() => _kind != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "thumbnailUrl" field.
  String? _thumbnailUrl;
  String get thumbnailUrl => _thumbnailUrl ?? '';
  set thumbnailUrl(String? val) => _thumbnailUrl = val;

  bool hasThumbnailUrl() => _thumbnailUrl != null;

  // "altText" field.
  String? _altText;
  String get altText => _altText ?? '';
  set altText(String? val) => _altText = val;

  bool hasAltText() => _altText != null;

  static HeroMediaStruct fromMap(Map<String, dynamic> data) => HeroMediaStruct(
        kind: data['kind'] as String?,
        url: data['url'] as String?,
        thumbnailUrl: data['thumbnailUrl'] as String?,
        altText: data['altText'] as String?,
      );

  static HeroMediaStruct? maybeFromMap(dynamic data) => data is Map
      ? HeroMediaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'kind': _kind,
        'url': _url,
        'thumbnailUrl': _thumbnailUrl,
        'altText': _altText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'kind': serializeParam(
          _kind,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'thumbnailUrl': serializeParam(
          _thumbnailUrl,
          ParamType.String,
        ),
        'altText': serializeParam(
          _altText,
          ParamType.String,
        ),
      }.withoutNulls;

  static HeroMediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeroMediaStruct(
        kind: deserializeParam(
          data['kind'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        thumbnailUrl: deserializeParam(
          data['thumbnailUrl'],
          ParamType.String,
          false,
        ),
        altText: deserializeParam(
          data['altText'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'HeroMediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HeroMediaStruct &&
        kind == other.kind &&
        url == other.url &&
        thumbnailUrl == other.thumbnailUrl &&
        altText == other.altText;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([kind, url, thumbnailUrl, altText]);
}

HeroMediaStruct createHeroMediaStruct({
  String? kind,
  String? url,
  String? thumbnailUrl,
  String? altText,
}) =>
    HeroMediaStruct(
      kind: kind,
      url: url,
      thumbnailUrl: thumbnailUrl,
      altText: altText,
    );
