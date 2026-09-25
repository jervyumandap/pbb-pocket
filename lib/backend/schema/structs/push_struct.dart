// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PushStruct extends BaseStruct {
  PushStruct({
    bool? available,
    bool? enabled,
  })  : _available = available,
        _enabled = enabled;

  // "available" field.
  bool? _available;
  bool get available => _available ?? false;
  set available(bool? val) => _available = val;

  bool hasAvailable() => _available != null;

  // "enabled" field.
  bool? _enabled;
  bool get enabled => _enabled ?? false;
  set enabled(bool? val) => _enabled = val;

  bool hasEnabled() => _enabled != null;

  static PushStruct fromMap(Map<String, dynamic> data) => PushStruct(
        available: data['available'] as bool?,
        enabled: data['enabled'] as bool?,
      );

  static PushStruct? maybeFromMap(dynamic data) =>
      data is Map ? PushStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'available': _available,
        'enabled': _enabled,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'available': serializeParam(
          _available,
          ParamType.bool,
        ),
        'enabled': serializeParam(
          _enabled,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PushStruct fromSerializableMap(Map<String, dynamic> data) =>
      PushStruct(
        available: deserializeParam(
          data['available'],
          ParamType.bool,
          false,
        ),
        enabled: deserializeParam(
          data['enabled'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PushStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PushStruct &&
        available == other.available &&
        enabled == other.enabled;
  }

  @override
  int get hashCode => const ListEquality().hash([available, enabled]);
}

PushStruct createPushStruct({
  bool? available,
  bool? enabled,
}) =>
    PushStruct(
      available: available,
      enabled: enabled,
    );
