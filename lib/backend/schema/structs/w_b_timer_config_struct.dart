// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBTimerConfigStruct extends BaseStruct {
  WBTimerConfigStruct({
    int? sessionWarning,
    int? sessionAutoLogout,
  })  : _sessionWarning = sessionWarning,
        _sessionAutoLogout = sessionAutoLogout;

  // "sessionWarning" field.
  int? _sessionWarning;
  int get sessionWarning => _sessionWarning ?? 0;
  set sessionWarning(int? val) => _sessionWarning = val;

  void incrementSessionWarning(int amount) =>
      sessionWarning = sessionWarning + amount;

  bool hasSessionWarning() => _sessionWarning != null;

  // "sessionAutoLogout" field.
  int? _sessionAutoLogout;
  int get sessionAutoLogout => _sessionAutoLogout ?? 0;
  set sessionAutoLogout(int? val) => _sessionAutoLogout = val;

  void incrementSessionAutoLogout(int amount) =>
      sessionAutoLogout = sessionAutoLogout + amount;

  bool hasSessionAutoLogout() => _sessionAutoLogout != null;

  static WBTimerConfigStruct fromMap(Map<String, dynamic> data) =>
      WBTimerConfigStruct(
        sessionWarning: castToType<int>(data['sessionWarning']),
        sessionAutoLogout: castToType<int>(data['sessionAutoLogout']),
      );

  static WBTimerConfigStruct? maybeFromMap(dynamic data) => data is Map
      ? WBTimerConfigStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sessionWarning': _sessionWarning,
        'sessionAutoLogout': _sessionAutoLogout,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sessionWarning': serializeParam(
          _sessionWarning,
          ParamType.int,
        ),
        'sessionAutoLogout': serializeParam(
          _sessionAutoLogout,
          ParamType.int,
        ),
      }.withoutNulls;

  static WBTimerConfigStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBTimerConfigStruct(
        sessionWarning: deserializeParam(
          data['sessionWarning'],
          ParamType.int,
          false,
        ),
        sessionAutoLogout: deserializeParam(
          data['sessionAutoLogout'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WBTimerConfigStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBTimerConfigStruct &&
        sessionWarning == other.sessionWarning &&
        sessionAutoLogout == other.sessionAutoLogout;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sessionWarning, sessionAutoLogout]);
}

WBTimerConfigStruct createWBTimerConfigStruct({
  int? sessionWarning,
  int? sessionAutoLogout,
}) =>
    WBTimerConfigStruct(
      sessionWarning: sessionWarning,
      sessionAutoLogout: sessionAutoLogout,
    );
