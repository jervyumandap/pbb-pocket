// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesStruct extends BaseStruct {
  NotesStruct({
    String? id,
    String? note,
    bool? isInternal,
    String? authorType,
    String? authorId,
    String? createdAt,
  })  : _id = id,
        _note = note,
        _isInternal = isInternal,
        _authorType = authorType,
        _authorId = authorId,
        _createdAt = createdAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "isInternal" field.
  bool? _isInternal;
  bool get isInternal => _isInternal ?? false;
  set isInternal(bool? val) => _isInternal = val;

  bool hasIsInternal() => _isInternal != null;

  // "authorType" field.
  String? _authorType;
  String get authorType => _authorType ?? '';
  set authorType(String? val) => _authorType = val;

  bool hasAuthorType() => _authorType != null;

  // "authorId" field.
  String? _authorId;
  String get authorId => _authorId ?? '';
  set authorId(String? val) => _authorId = val;

  bool hasAuthorId() => _authorId != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static NotesStruct fromMap(Map<String, dynamic> data) => NotesStruct(
        id: data['id'] as String?,
        note: data['note'] as String?,
        isInternal: data['isInternal'] as bool?,
        authorType: data['authorType'] as String?,
        authorId: data['authorId'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static NotesStruct? maybeFromMap(dynamic data) =>
      data is Map ? NotesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'note': _note,
        'isInternal': _isInternal,
        'authorType': _authorType,
        'authorId': _authorId,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'isInternal': serializeParam(
          _isInternal,
          ParamType.bool,
        ),
        'authorType': serializeParam(
          _authorType,
          ParamType.String,
        ),
        'authorId': serializeParam(
          _authorId,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotesStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        isInternal: deserializeParam(
          data['isInternal'],
          ParamType.bool,
          false,
        ),
        authorType: deserializeParam(
          data['authorType'],
          ParamType.String,
          false,
        ),
        authorId: deserializeParam(
          data['authorId'],
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
  String toString() => 'NotesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotesStruct &&
        id == other.id &&
        note == other.note &&
        isInternal == other.isInternal &&
        authorType == other.authorType &&
        authorId == other.authorId &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, note, isInternal, authorType, authorId, createdAt]);
}

NotesStruct createNotesStruct({
  String? id,
  String? note,
  bool? isInternal,
  String? authorType,
  String? authorId,
  String? createdAt,
}) =>
    NotesStruct(
      id: id,
      note: note,
      isInternal: isInternal,
      authorType: authorType,
      authorId: authorId,
      createdAt: createdAt,
    );
