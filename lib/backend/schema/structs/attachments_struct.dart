// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttachmentsStruct extends BaseStruct {
  AttachmentsStruct({
    String? id,
    String? url,
    String? description,
    String? uploadedBy,
    String? uploadedById,
    String? createdAt,
  })  : _id = id,
        _url = url,
        _description = description,
        _uploadedBy = uploadedBy,
        _uploadedById = uploadedById,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "uploadedBy" field.
  String? _uploadedBy;
  String get uploadedBy => _uploadedBy ?? '';
  set uploadedBy(String? val) => _uploadedBy = val;

  bool hasUploadedBy() => _uploadedBy != null;

  // "uploadedById" field.
  String? _uploadedById;
  String get uploadedById => _uploadedById ?? '';
  set uploadedById(String? val) => _uploadedById = val;

  bool hasUploadedById() => _uploadedById != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static AttachmentsStruct fromMap(Map<String, dynamic> data) =>
      AttachmentsStruct(
        id: data['id'] as String?,
        url: data['url'] as String?,
        description: data['description'] as String?,
        uploadedBy: data['uploadedBy'] as String?,
        uploadedById: data['uploadedById'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static AttachmentsStruct? maybeFromMap(dynamic data) => data is Map
      ? AttachmentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'url': _url,
        'description': _description,
        'uploadedBy': _uploadedBy,
        'uploadedById': _uploadedById,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'uploadedBy': serializeParam(
          _uploadedBy,
          ParamType.String,
        ),
        'uploadedById': serializeParam(
          _uploadedById,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static AttachmentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttachmentsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
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
        uploadedBy: deserializeParam(
          data['uploadedBy'],
          ParamType.String,
          false,
        ),
        uploadedById: deserializeParam(
          data['uploadedById'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AttachmentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttachmentsStruct &&
        id == other.id &&
        url == other.url &&
        description == other.description &&
        uploadedBy == other.uploadedBy &&
        uploadedById == other.uploadedById &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, url, description, uploadedBy, uploadedById, createdAt]);
}

AttachmentsStruct createAttachmentsStruct({
  String? id,
  String? url,
  String? description,
  String? uploadedBy,
  String? uploadedById,
  String? createdAt,
}) =>
    AttachmentsStruct(
      id: id,
      url: url,
      description: description,
      uploadedBy: uploadedBy,
      uploadedById: uploadedById,
      createdAt: createdAt,
    );
