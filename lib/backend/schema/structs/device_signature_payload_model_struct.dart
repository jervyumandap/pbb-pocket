// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeviceSignaturePayloadModelStruct extends BaseStruct {
  DeviceSignaturePayloadModelStruct({
    String? mpin,
    String? challenge,
  })  : _mpin = mpin,
        _challenge = challenge;

  // "mpin" field.
  String? _mpin;
  String get mpin => _mpin ?? '';
  set mpin(String? val) => _mpin = val;

  bool hasMpin() => _mpin != null;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  static DeviceSignaturePayloadModelStruct fromMap(Map<String, dynamic> data) =>
      DeviceSignaturePayloadModelStruct(
        mpin: data['mpin'] as String?,
        challenge: data['challenge'] as String?,
      );

  static DeviceSignaturePayloadModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? DeviceSignaturePayloadModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'mpin': _mpin,
        'challenge': _challenge,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mpin': serializeParam(
          _mpin,
          ParamType.String,
        ),
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeviceSignaturePayloadModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DeviceSignaturePayloadModelStruct(
        mpin: deserializeParam(
          data['mpin'],
          ParamType.String,
          false,
        ),
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeviceSignaturePayloadModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeviceSignaturePayloadModelStruct &&
        mpin == other.mpin &&
        challenge == other.challenge;
  }

  @override
  int get hashCode => const ListEquality().hash([mpin, challenge]);
}

DeviceSignaturePayloadModelStruct createDeviceSignaturePayloadModelStruct({
  String? mpin,
  String? challenge,
}) =>
    DeviceSignaturePayloadModelStruct(
      mpin: mpin,
      challenge: challenge,
    );
