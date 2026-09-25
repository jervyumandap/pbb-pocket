// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailStruct extends BaseStruct {
  EmailStruct({
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

  static EmailStruct fromMap(Map<String, dynamic> data) => EmailStruct(
        available: data['available'] as bool?,
        enabled: data['enabled'] as bool?,
      );

  static EmailStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmailStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static EmailStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmailStruct(
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
  String toString() => 'EmailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmailStruct &&
        available == other.available &&
        enabled == other.enabled;
  }

  @override
  int get hashCode => const ListEquality().hash([available, enabled]);
}

EmailStruct createEmailStruct({
  bool? available,
  bool? enabled,
}) =>
    EmailStruct(
      available: available,
      enabled: enabled,
    );
