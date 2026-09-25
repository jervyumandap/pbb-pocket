// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateBiometricSignatureModelStruct extends BaseStruct {
  CreateBiometricSignatureModelStruct({
    String? publicKey,
    String? privateKey,
  })  : _publicKey = publicKey,
        _privateKey = privateKey;

  // "publicKey" field.
  String? _publicKey;
  String get publicKey => _publicKey ?? '';
  set publicKey(String? val) => _publicKey = val;

  bool hasPublicKey() => _publicKey != null;

  // "privateKey" field.
  String? _privateKey;
  String get privateKey => _privateKey ?? '';
  set privateKey(String? val) => _privateKey = val;

  bool hasPrivateKey() => _privateKey != null;

  static CreateBiometricSignatureModelStruct fromMap(
          Map<String, dynamic> data) =>
      CreateBiometricSignatureModelStruct(
        publicKey: data['publicKey'] as String?,
        privateKey: data['privateKey'] as String?,
      );

  static CreateBiometricSignatureModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CreateBiometricSignatureModelStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'publicKey': _publicKey,
        'privateKey': _privateKey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'publicKey': serializeParam(
          _publicKey,
          ParamType.String,
        ),
        'privateKey': serializeParam(
          _privateKey,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreateBiometricSignatureModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreateBiometricSignatureModelStruct(
        publicKey: deserializeParam(
          data['publicKey'],
          ParamType.String,
          false,
        ),
        privateKey: deserializeParam(
          data['privateKey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreateBiometricSignatureModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateBiometricSignatureModelStruct &&
        publicKey == other.publicKey &&
        privateKey == other.privateKey;
  }

  @override
  int get hashCode => const ListEquality().hash([publicKey, privateKey]);
}

CreateBiometricSignatureModelStruct createCreateBiometricSignatureModelStruct({
  String? publicKey,
  String? privateKey,
}) =>
    CreateBiometricSignatureModelStruct(
      publicKey: publicKey,
      privateKey: privateKey,
    );
