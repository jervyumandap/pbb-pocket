// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfirmActionBlockModelStruct extends BaseStruct {
  ConfirmActionBlockModelStruct({
    String? challenge,
    String? errorMessage,
    bool? isSuccess,
    bool? isLocked,
    String? lockedUntil,
  })  : _challenge = challenge,
        _errorMessage = errorMessage,
        _isSuccess = isSuccess,
        _isLocked = isLocked,
        _lockedUntil = lockedUntil;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "errorMessage" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  // "isSuccess" field.
  bool? _isSuccess;
  bool get isSuccess => _isSuccess ?? false;
  set isSuccess(bool? val) => _isSuccess = val;

  bool hasIsSuccess() => _isSuccess != null;

  // "isLocked" field.
  bool? _isLocked;
  bool get isLocked => _isLocked ?? false;
  set isLocked(bool? val) => _isLocked = val;

  bool hasIsLocked() => _isLocked != null;

  // "lockedUntil" field.
  String? _lockedUntil;
  String get lockedUntil => _lockedUntil ?? '';
  set lockedUntil(String? val) => _lockedUntil = val;

  bool hasLockedUntil() => _lockedUntil != null;

  static ConfirmActionBlockModelStruct fromMap(Map<String, dynamic> data) =>
      ConfirmActionBlockModelStruct(
        challenge: data['challenge'] as String?,
        errorMessage: data['errorMessage'] as String?,
        isSuccess: data['isSuccess'] as bool?,
        isLocked: data['isLocked'] as bool?,
        lockedUntil: data['lockedUntil'] as String?,
      );

  static ConfirmActionBlockModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ConfirmActionBlockModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'errorMessage': _errorMessage,
        'isSuccess': _isSuccess,
        'isLocked': _isLocked,
        'lockedUntil': _lockedUntil,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'errorMessage': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
        'isSuccess': serializeParam(
          _isSuccess,
          ParamType.bool,
        ),
        'isLocked': serializeParam(
          _isLocked,
          ParamType.bool,
        ),
        'lockedUntil': serializeParam(
          _lockedUntil,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConfirmActionBlockModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ConfirmActionBlockModelStruct(
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        errorMessage: deserializeParam(
          data['errorMessage'],
          ParamType.String,
          false,
        ),
        isSuccess: deserializeParam(
          data['isSuccess'],
          ParamType.bool,
          false,
        ),
        isLocked: deserializeParam(
          data['isLocked'],
          ParamType.bool,
          false,
        ),
        lockedUntil: deserializeParam(
          data['lockedUntil'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConfirmActionBlockModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConfirmActionBlockModelStruct &&
        challenge == other.challenge &&
        errorMessage == other.errorMessage &&
        isSuccess == other.isSuccess &&
        isLocked == other.isLocked &&
        lockedUntil == other.lockedUntil;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([challenge, errorMessage, isSuccess, isLocked, lockedUntil]);
}

ConfirmActionBlockModelStruct createConfirmActionBlockModelStruct({
  String? challenge,
  String? errorMessage,
  bool? isSuccess,
  bool? isLocked,
  String? lockedUntil,
}) =>
    ConfirmActionBlockModelStruct(
      challenge: challenge,
      errorMessage: errorMessage,
      isSuccess: isSuccess,
      isLocked: isLocked,
      lockedUntil: lockedUntil,
    );
