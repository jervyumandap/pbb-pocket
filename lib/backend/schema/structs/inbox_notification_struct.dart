// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InboxNotificationStruct extends BaseStruct {
  InboxNotificationStruct({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? kind,
    String? severity,
    String? title,
    String? body,
    String? action,
    String? readAt,
    String? expiresAt,
    String? source,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _kind = kind,
        _severity = severity,
        _title = title,
        _body = body,
        _action = action,
        _readAt = readAt,
        _expiresAt = expiresAt,
        _source = source;

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

  // "kind" field.
  String? _kind;
  String get kind => _kind ?? '';
  set kind(String? val) => _kind = val;

  bool hasKind() => _kind != null;

  // "severity" field.
  String? _severity;
  String get severity => _severity ?? '';
  set severity(String? val) => _severity = val;

  bool hasSeverity() => _severity != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  set action(String? val) => _action = val;

  bool hasAction() => _action != null;

  // "readAt" field.
  String? _readAt;
  String get readAt => _readAt ?? '';
  set readAt(String? val) => _readAt = val;

  bool hasReadAt() => _readAt != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  static InboxNotificationStruct fromMap(Map<String, dynamic> data) =>
      InboxNotificationStruct(
        id: data['id'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        kind: data['kind'] as String?,
        severity: data['severity'] as String?,
        title: data['title'] as String?,
        body: data['body'] as String?,
        action: data['action'] as String?,
        readAt: data['readAt'] as String?,
        expiresAt: data['expiresAt'] as String?,
        source: data['source'] as String?,
      );

  static InboxNotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? InboxNotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'kind': _kind,
        'severity': _severity,
        'title': _title,
        'body': _body,
        'action': _action,
        'readAt': _readAt,
        'expiresAt': _expiresAt,
        'source': _source,
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
        'kind': serializeParam(
          _kind,
          ParamType.String,
        ),
        'severity': serializeParam(
          _severity,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'body': serializeParam(
          _body,
          ParamType.String,
        ),
        'action': serializeParam(
          _action,
          ParamType.String,
        ),
        'readAt': serializeParam(
          _readAt,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
      }.withoutNulls;

  static InboxNotificationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InboxNotificationStruct(
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
        kind: deserializeParam(
          data['kind'],
          ParamType.String,
          false,
        ),
        severity: deserializeParam(
          data['severity'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        body: deserializeParam(
          data['body'],
          ParamType.String,
          false,
        ),
        action: deserializeParam(
          data['action'],
          ParamType.String,
          false,
        ),
        readAt: deserializeParam(
          data['readAt'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InboxNotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InboxNotificationStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        kind == other.kind &&
        severity == other.severity &&
        title == other.title &&
        body == other.body &&
        action == other.action &&
        readAt == other.readAt &&
        expiresAt == other.expiresAt &&
        source == other.source;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        kind,
        severity,
        title,
        body,
        action,
        readAt,
        expiresAt,
        source
      ]);
}

InboxNotificationStruct createInboxNotificationStruct({
  String? id,
  String? createdAt,
  String? updatedAt,
  String? kind,
  String? severity,
  String? title,
  String? body,
  String? action,
  String? readAt,
  String? expiresAt,
  String? source,
}) =>
    InboxNotificationStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      kind: kind,
      severity: severity,
      title: title,
      body: body,
      action: action,
      readAt: readAt,
      expiresAt: expiresAt,
      source: source,
    );
