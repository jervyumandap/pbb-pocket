// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlagDetailsStruct extends BaseStruct {
  FlagDetailsStruct({
    bool? enabled,
    String? scope,
  })  : _enabled = enabled,
        _scope = scope;

  // "enabled" field.
  bool? _enabled;
  bool get enabled => _enabled ?? false;
  set enabled(bool? val) => _enabled = val;

  bool hasEnabled() => _enabled != null;

  // "scope" field.
  String? _scope;
  String get scope => _scope ?? '';
  set scope(String? val) => _scope = val;

  bool hasScope() => _scope != null;

  static FlagDetailsStruct fromMap(Map<String, dynamic> data) =>
      FlagDetailsStruct(
        enabled: data['enabled'] as bool?,
        scope: data['scope'] as String?,
      );

  static FlagDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? FlagDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'enabled': _enabled,
        'scope': _scope,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'enabled': serializeParam(
          _enabled,
          ParamType.bool,
        ),
        'scope': serializeParam(
          _scope,
          ParamType.String,
        ),
      }.withoutNulls;

  static FlagDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      FlagDetailsStruct(
        enabled: deserializeParam(
          data['enabled'],
          ParamType.bool,
          false,
        ),
        scope: deserializeParam(
          data['scope'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FlagDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FlagDetailsStruct &&
        enabled == other.enabled &&
        scope == other.scope;
  }

  @override
  int get hashCode => const ListEquality().hash([enabled, scope]);
}

FlagDetailsStruct createFlagDetailsStruct({
  bool? enabled,
  String? scope,
}) =>
    FlagDetailsStruct(
      enabled: enabled,
      scope: scope,
    );
