// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegisteredDeviceDataStruct extends BaseStruct {
  RegisteredDeviceDataStruct({
    String? id,
    bool? trusted,
    bool? enabled,
    bool? hasBiometric,
    bool? hasDeviceKey,
    bool? isBiometricEnabled,
    bool? isMpinSet,
    bool? isMpinCanChange,
  })  : _id = id,
        _trusted = trusted,
        _enabled = enabled,
        _hasBiometric = hasBiometric,
        _hasDeviceKey = hasDeviceKey,
        _isBiometricEnabled = isBiometricEnabled,
        _isMpinSet = isMpinSet,
        _isMpinCanChange = isMpinCanChange;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "trusted" field.
  bool? _trusted;
  bool get trusted => _trusted ?? false;
  set trusted(bool? val) => _trusted = val;

  bool hasTrusted() => _trusted != null;

  // "enabled" field.
  bool? _enabled;
  bool get enabled => _enabled ?? false;
  set enabled(bool? val) => _enabled = val;

  bool hasEnabled() => _enabled != null;

  // "hasBiometric" field.
  bool? _hasBiometric;
  bool get hasBiometric => _hasBiometric ?? false;
  set hasBiometric(bool? val) => _hasBiometric = val;

  bool hasHasBiometric() => _hasBiometric != null;

  // "hasDeviceKey" field.
  bool? _hasDeviceKey;
  bool get hasDeviceKey => _hasDeviceKey ?? false;
  set hasDeviceKey(bool? val) => _hasDeviceKey = val;

  bool hasHasDeviceKey() => _hasDeviceKey != null;

  // "isBiometricEnabled" field.
  bool? _isBiometricEnabled;
  bool get isBiometricEnabled => _isBiometricEnabled ?? false;
  set isBiometricEnabled(bool? val) => _isBiometricEnabled = val;

  bool hasIsBiometricEnabled() => _isBiometricEnabled != null;

  // "isMpinSet" field.
  bool? _isMpinSet;
  bool get isMpinSet => _isMpinSet ?? false;
  set isMpinSet(bool? val) => _isMpinSet = val;

  bool hasIsMpinSet() => _isMpinSet != null;

  // "isMpinCanChange" field.
  bool? _isMpinCanChange;
  bool get isMpinCanChange => _isMpinCanChange ?? false;
  set isMpinCanChange(bool? val) => _isMpinCanChange = val;

  bool hasIsMpinCanChange() => _isMpinCanChange != null;

  static RegisteredDeviceDataStruct fromMap(Map<String, dynamic> data) =>
      RegisteredDeviceDataStruct(
        id: data['id'] as String?,
        trusted: data['trusted'] as bool?,
        enabled: data['enabled'] as bool?,
        hasBiometric: data['hasBiometric'] as bool?,
        hasDeviceKey: data['hasDeviceKey'] as bool?,
        isBiometricEnabled: data['isBiometricEnabled'] as bool?,
        isMpinSet: data['isMpinSet'] as bool?,
        isMpinCanChange: data['isMpinCanChange'] as bool?,
      );

  static RegisteredDeviceDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RegisteredDeviceDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'trusted': _trusted,
        'enabled': _enabled,
        'hasBiometric': _hasBiometric,
        'hasDeviceKey': _hasDeviceKey,
        'isBiometricEnabled': _isBiometricEnabled,
        'isMpinSet': _isMpinSet,
        'isMpinCanChange': _isMpinCanChange,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'trusted': serializeParam(
          _trusted,
          ParamType.bool,
        ),
        'enabled': serializeParam(
          _enabled,
          ParamType.bool,
        ),
        'hasBiometric': serializeParam(
          _hasBiometric,
          ParamType.bool,
        ),
        'hasDeviceKey': serializeParam(
          _hasDeviceKey,
          ParamType.bool,
        ),
        'isBiometricEnabled': serializeParam(
          _isBiometricEnabled,
          ParamType.bool,
        ),
        'isMpinSet': serializeParam(
          _isMpinSet,
          ParamType.bool,
        ),
        'isMpinCanChange': serializeParam(
          _isMpinCanChange,
          ParamType.bool,
        ),
      }.withoutNulls;

  static RegisteredDeviceDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RegisteredDeviceDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        trusted: deserializeParam(
          data['trusted'],
          ParamType.bool,
          false,
        ),
        enabled: deserializeParam(
          data['enabled'],
          ParamType.bool,
          false,
        ),
        hasBiometric: deserializeParam(
          data['hasBiometric'],
          ParamType.bool,
          false,
        ),
        hasDeviceKey: deserializeParam(
          data['hasDeviceKey'],
          ParamType.bool,
          false,
        ),
        isBiometricEnabled: deserializeParam(
          data['isBiometricEnabled'],
          ParamType.bool,
          false,
        ),
        isMpinSet: deserializeParam(
          data['isMpinSet'],
          ParamType.bool,
          false,
        ),
        isMpinCanChange: deserializeParam(
          data['isMpinCanChange'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'RegisteredDeviceDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegisteredDeviceDataStruct &&
        id == other.id &&
        trusted == other.trusted &&
        enabled == other.enabled &&
        hasBiometric == other.hasBiometric &&
        hasDeviceKey == other.hasDeviceKey &&
        isBiometricEnabled == other.isBiometricEnabled &&
        isMpinSet == other.isMpinSet &&
        isMpinCanChange == other.isMpinCanChange;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        trusted,
        enabled,
        hasBiometric,
        hasDeviceKey,
        isBiometricEnabled,
        isMpinSet,
        isMpinCanChange
      ]);
}

RegisteredDeviceDataStruct createRegisteredDeviceDataStruct({
  String? id,
  bool? trusted,
  bool? enabled,
  bool? hasBiometric,
  bool? hasDeviceKey,
  bool? isBiometricEnabled,
  bool? isMpinSet,
  bool? isMpinCanChange,
}) =>
    RegisteredDeviceDataStruct(
      id: id,
      trusted: trusted,
      enabled: enabled,
      hasBiometric: hasBiometric,
      hasDeviceKey: hasDeviceKey,
      isBiometricEnabled: isBiometricEnabled,
      isMpinSet: isMpinSet,
      isMpinCanChange: isMpinCanChange,
    );
