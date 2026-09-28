// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyRecoveryStatusResponseStruct extends BaseStruct {
  PasskeyRecoveryStatusResponseStruct({
    bool? hasRecoveryCodes,
    int? codesRemaining,
    bool? acknowledged,
    String? generatedAt,
  })  : _hasRecoveryCodes = hasRecoveryCodes,
        _codesRemaining = codesRemaining,
        _acknowledged = acknowledged,
        _generatedAt = generatedAt;

  // "hasRecoveryCodes" field.
  bool? _hasRecoveryCodes;
  bool get hasRecoveryCodes => _hasRecoveryCodes ?? false;
  set hasRecoveryCodes(bool? val) => _hasRecoveryCodes = val;

  bool hasHasRecoveryCodes() => _hasRecoveryCodes != null;

  // "codesRemaining" field.
  int? _codesRemaining;
  int get codesRemaining => _codesRemaining ?? 0;
  set codesRemaining(int? val) => _codesRemaining = val;

  void incrementCodesRemaining(int amount) =>
      codesRemaining = codesRemaining + amount;

  bool hasCodesRemaining() => _codesRemaining != null;

  // "acknowledged" field.
  bool? _acknowledged;
  bool get acknowledged => _acknowledged ?? false;
  set acknowledged(bool? val) => _acknowledged = val;

  bool hasAcknowledged() => _acknowledged != null;

  // "generatedAt" field.
  String? _generatedAt;
  String get generatedAt => _generatedAt ?? '';
  set generatedAt(String? val) => _generatedAt = val;

  bool hasGeneratedAt() => _generatedAt != null;

  static PasskeyRecoveryStatusResponseStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyRecoveryStatusResponseStruct(
        hasRecoveryCodes: data['hasRecoveryCodes'] as bool?,
        codesRemaining: castToType<int>(data['codesRemaining']),
        acknowledged: data['acknowledged'] as bool?,
        generatedAt: data['generatedAt'] as String?,
      );

  static PasskeyRecoveryStatusResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyRecoveryStatusResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'hasRecoveryCodes': _hasRecoveryCodes,
        'codesRemaining': _codesRemaining,
        'acknowledged': _acknowledged,
        'generatedAt': _generatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hasRecoveryCodes': serializeParam(
          _hasRecoveryCodes,
          ParamType.bool,
        ),
        'codesRemaining': serializeParam(
          _codesRemaining,
          ParamType.int,
        ),
        'acknowledged': serializeParam(
          _acknowledged,
          ParamType.bool,
        ),
        'generatedAt': serializeParam(
          _generatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyRecoveryStatusResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyRecoveryStatusResponseStruct(
        hasRecoveryCodes: deserializeParam(
          data['hasRecoveryCodes'],
          ParamType.bool,
          false,
        ),
        codesRemaining: deserializeParam(
          data['codesRemaining'],
          ParamType.int,
          false,
        ),
        acknowledged: deserializeParam(
          data['acknowledged'],
          ParamType.bool,
          false,
        ),
        generatedAt: deserializeParam(
          data['generatedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyRecoveryStatusResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyRecoveryStatusResponseStruct &&
        hasRecoveryCodes == other.hasRecoveryCodes &&
        codesRemaining == other.codesRemaining &&
        acknowledged == other.acknowledged &&
        generatedAt == other.generatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([hasRecoveryCodes, codesRemaining, acknowledged, generatedAt]);
}

PasskeyRecoveryStatusResponseStruct createPasskeyRecoveryStatusResponseStruct({
  bool? hasRecoveryCodes,
  int? codesRemaining,
  bool? acknowledged,
  String? generatedAt,
}) =>
    PasskeyRecoveryStatusResponseStruct(
      hasRecoveryCodes: hasRecoveryCodes,
      codesRemaining: codesRemaining,
      acknowledged: acknowledged,
      generatedAt: generatedAt,
    );
