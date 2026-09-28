// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TerminalStruct extends BaseStruct {
  TerminalStruct({
    String? terminalId,
    String? terminalLocation,
    String? terminalType,
  })  : _terminalId = terminalId,
        _terminalLocation = terminalLocation,
        _terminalType = terminalType;

  // "TerminalId" field.
  String? _terminalId;
  String get terminalId => _terminalId ?? '';
  set terminalId(String? val) => _terminalId = val;

  bool hasTerminalId() => _terminalId != null;

  // "TerminalLocation" field.
  String? _terminalLocation;
  String get terminalLocation => _terminalLocation ?? '';
  set terminalLocation(String? val) => _terminalLocation = val;

  bool hasTerminalLocation() => _terminalLocation != null;

  // "TerminalType" field.
  String? _terminalType;
  String get terminalType => _terminalType ?? '';
  set terminalType(String? val) => _terminalType = val;

  bool hasTerminalType() => _terminalType != null;

  static TerminalStruct fromMap(Map<String, dynamic> data) => TerminalStruct(
        terminalId: data['TerminalId'] as String?,
        terminalLocation: data['TerminalLocation'] as String?,
        terminalType: data['TerminalType'] as String?,
      );

  static TerminalStruct? maybeFromMap(dynamic data) =>
      data is Map ? TerminalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'TerminalId': _terminalId,
        'TerminalLocation': _terminalLocation,
        'TerminalType': _terminalType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TerminalId': serializeParam(
          _terminalId,
          ParamType.String,
        ),
        'TerminalLocation': serializeParam(
          _terminalLocation,
          ParamType.String,
        ),
        'TerminalType': serializeParam(
          _terminalType,
          ParamType.String,
        ),
      }.withoutNulls;

  static TerminalStruct fromSerializableMap(Map<String, dynamic> data) =>
      TerminalStruct(
        terminalId: deserializeParam(
          data['TerminalId'],
          ParamType.String,
          false,
        ),
        terminalLocation: deserializeParam(
          data['TerminalLocation'],
          ParamType.String,
          false,
        ),
        terminalType: deserializeParam(
          data['TerminalType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TerminalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TerminalStruct &&
        terminalId == other.terminalId &&
        terminalLocation == other.terminalLocation &&
        terminalType == other.terminalType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([terminalId, terminalLocation, terminalType]);
}

TerminalStruct createTerminalStruct({
  String? terminalId,
  String? terminalLocation,
  String? terminalType,
}) =>
    TerminalStruct(
      terminalId: terminalId,
      terminalLocation: terminalLocation,
      terminalType: terminalType,
    );
