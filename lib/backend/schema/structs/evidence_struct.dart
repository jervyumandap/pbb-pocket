// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvidenceStruct extends BaseStruct {
  EvidenceStruct({
    String? id,
    String? url,
    String? description,
    String? addedBy,
    String? addedById,
    String? createdAt,
  })  : _id = id,
        _url = url,
        _description = description,
        _addedBy = addedBy,
        _addedById = addedById,
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

  // "addedBy" field.
  String? _addedBy;
  String get addedBy => _addedBy ?? '';
  set addedBy(String? val) => _addedBy = val;

  bool hasAddedBy() => _addedBy != null;

  // "addedById" field.
  String? _addedById;
  String get addedById => _addedById ?? '';
  set addedById(String? val) => _addedById = val;

  bool hasAddedById() => _addedById != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static EvidenceStruct fromMap(Map<String, dynamic> data) => EvidenceStruct(
        id: data['id'] as String?,
        url: data['url'] as String?,
        description: data['description'] as String?,
        addedBy: data['addedBy'] as String?,
        addedById: data['addedById'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static EvidenceStruct? maybeFromMap(dynamic data) =>
      data is Map ? EvidenceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'url': _url,
        'description': _description,
        'addedBy': _addedBy,
        'addedById': _addedById,
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
        'addedBy': serializeParam(
          _addedBy,
          ParamType.String,
        ),
        'addedById': serializeParam(
          _addedById,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static EvidenceStruct fromSerializableMap(Map<String, dynamic> data) =>
      EvidenceStruct(
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
        addedBy: deserializeParam(
          data['addedBy'],
          ParamType.String,
          false,
        ),
        addedById: deserializeParam(
          data['addedById'],
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
  String toString() => 'EvidenceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EvidenceStruct &&
        id == other.id &&
        url == other.url &&
        description == other.description &&
        addedBy == other.addedBy &&
        addedById == other.addedById &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, url, description, addedBy, addedById, createdAt]);
}

EvidenceStruct createEvidenceStruct({
  String? id,
  String? url,
  String? description,
  String? addedBy,
  String? addedById,
  String? createdAt,
}) =>
    EvidenceStruct(
      id: id,
      url: url,
      description: description,
      addedBy: addedBy,
      addedById: addedById,
      createdAt: createdAt,
    );
