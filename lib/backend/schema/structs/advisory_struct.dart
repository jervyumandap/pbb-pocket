// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdvisoryStruct extends BaseStruct {
  AdvisoryStruct({
    String? id,
    String? title,
    String? body,
    String? severity,
    String? startAt,
    String? endAt,
  })  : _id = id,
        _title = title,
        _body = body,
        _severity = severity,
        _startAt = startAt,
        _endAt = endAt;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "severity" field.
  String? _severity;
  String get severity => _severity ?? '';
  set severity(String? val) => _severity = val;

  bool hasSeverity() => _severity != null;

  // "startAt" field.
  String? _startAt;
  String get startAt => _startAt ?? '';
  set startAt(String? val) => _startAt = val;

  bool hasStartAt() => _startAt != null;

  // "endAt" field.
  String? _endAt;
  String get endAt => _endAt ?? '';
  set endAt(String? val) => _endAt = val;

  bool hasEndAt() => _endAt != null;

  static AdvisoryStruct fromMap(Map<String, dynamic> data) => AdvisoryStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        body: data['body'] as String?,
        severity: data['severity'] as String?,
        startAt: data['startAt'] as String?,
        endAt: data['endAt'] as String?,
      );

  static AdvisoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? AdvisoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'body': _body,
        'severity': _severity,
        'startAt': _startAt,
        'endAt': _endAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'severity': serializeParam(
          _severity,
          ParamType.String,
        ),
        'startAt': serializeParam(
          _startAt,
          ParamType.String,
        ),
        'endAt': serializeParam(
          _endAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static AdvisoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      AdvisoryStruct(
        id: deserializeParam(
          data['id'],
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
        severity: deserializeParam(
          data['severity'],
          ParamType.String,
          false,
        ),
        startAt: deserializeParam(
          data['startAt'],
          ParamType.String,
          false,
        ),
        endAt: deserializeParam(
          data['endAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AdvisoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdvisoryStruct &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        severity == other.severity &&
        startAt == other.startAt &&
        endAt == other.endAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, title, body, severity, startAt, endAt]);
}

AdvisoryStruct createAdvisoryStruct({
  String? id,
  String? title,
  String? body,
  String? severity,
  String? startAt,
  String? endAt,
}) =>
    AdvisoryStruct(
      id: id,
      title: title,
      body: body,
      severity: severity,
      startAt: startAt,
      endAt: endAt,
    );
