// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';

import 'package:biometric_signature/biometric_signature.dart';

Future<CreateBiometricSignatureModelStruct> createBiometricSignatureKeys(
  KeyTypeEnum keyType,
  bool enableDecryption,
) async {
  // Add your function code here!

  final biometricSignature = BiometricSignature();
  bool useEc = keyType == KeyTypeEnum.EC ? true : false;

  KeyCreationResult result = KeyCreationResult();

  CreateBiometricSignatureModelStruct model =
      CreateBiometricSignatureModelStruct();

  if (kIsWeb) {
    throw Exception('Biometric key generation is not supported on Web');
  }

  try {
    result = await biometricSignature.createKeys(
      keyFormat: KeyFormat.pem,
      promptMessage: 'Authenticate to create keys',
      config: CreateKeysConfig(
        signatureType: useEc ? SignatureType.ecdsa : SignatureType.rsa,
        enforceBiometric: true,
        setInvalidatedByBiometricEnrollment: true,
        useDeviceCredentials: false,
        enableDecryption: enableDecryption, // Android only
      ),
    );

    if (result.code == BiometricError.success) {
      debugPrint('Public Key: ${result.publicKey}');
    }

    model = CreateBiometricSignatureModelStruct(
        publicKey: result.publicKey, privateKey: result.publicKey);

    debugPrint('CreateBiometricSignatureModel:: $model');
  } catch (e) {
    debugPrint('Failed to generate key pair: $e');
    throw Exception('Failed to generate key pair: $e');
  }

  return model;
}
