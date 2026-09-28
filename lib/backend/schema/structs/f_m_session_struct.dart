// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FMSessionStruct extends BaseStruct {
  FMSessionStruct({
    String? sessionId,
    String? timeSession,
  })  : _sessionId = sessionId,
        _timeSession = timeSession;

  // "SessionId" field.
  String? _sessionId;
  String get sessionId => _sessionId ?? '';
  set sessionId(String? val) => _sessionId = val;

  bool hasSessionId() => _sessionId != null;

  // "TimeSession" field.
  String? _timeSession;
  String get timeSession => _timeSession ?? '';
  set timeSession(String? val) => _timeSession = val;

  bool hasTimeSession() => _timeSession != null;

  static FMSessionStruct fromMap(Map<String, dynamic> data) => FMSessionStruct(
        sessionId: data['SessionId'] as String?,
        timeSession: data['TimeSession'] as String?,
      );

  static FMSessionStruct? maybeFromMap(dynamic data) => data is Map
      ? FMSessionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'SessionId': _sessionId,
        'TimeSession': _timeSession,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'SessionId': serializeParam(
          _sessionId,
          ParamType.String,
        ),
        'TimeSession': serializeParam(
          _timeSession,
          ParamType.String,
        ),
      }.withoutNulls;

  static FMSessionStruct fromSerializableMap(Map<String, dynamic> data) =>
      FMSessionStruct(
        sessionId: deserializeParam(
          data['SessionId'],
          ParamType.String,
          false,
        ),
        timeSession: deserializeParam(
          data['TimeSession'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FMSessionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FMSessionStruct &&
        sessionId == other.sessionId &&
        timeSession == other.timeSession;
  }

  @override
  int get hashCode => const ListEquality().hash([sessionId, timeSession]);
}

FMSessionStruct createFMSessionStruct({
  String? sessionId,
  String? timeSession,
}) =>
    FMSessionStruct(
      sessionId: sessionId,
      timeSession: timeSession,
    );
