// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvidenceUrlsStruct extends BaseStruct {
  EvidenceUrlsStruct({
    String? url,
    String? description,
  })  : _url = url,
        _description = description;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static EvidenceUrlsStruct fromMap(Map<String, dynamic> data) =>
      EvidenceUrlsStruct(
        url: data['url'] as String?,
        description: data['description'] as String?,
      );

  static EvidenceUrlsStruct? maybeFromMap(dynamic data) => data is Map
      ? EvidenceUrlsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static EvidenceUrlsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EvidenceUrlsStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EvidenceUrlsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EvidenceUrlsStruct &&
        url == other.url &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([url, description]);
}

EvidenceUrlsStruct createEvidenceUrlsStruct({
  String? url,
  String? description,
}) =>
    EvidenceUrlsStruct(
      url: url,
      description: description,
    );
