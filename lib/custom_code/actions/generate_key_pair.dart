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

import 'package:biometric_signature/biometric_signature.dart';

Future<dynamic> generateKeyPair() async {
  // Add your function code here!

  final biometricSignature = BiometricSignature();
  try {
    final result = await biometricSignature.createKeys(
      keyAlias: 'biometric_key',
      keyFormat: KeyFormat.pem,
      promptMessage: 'Authenticate to generate keys',
      config: CreateKeysConfig(
          signatureType: SignatureType.ecdsa,
          enforceBiometric: true,
          setInvalidatedByBiometricEnrollment: true,
          useDeviceCredentials: false,
          enableDecryption: false,
          failIfExists: false), // true
    );

    final generatedKeys = {
      'publicKey': result.publicKey,
      'keyType': 'EC',
      'format': 'PEM'
    };

    print('generatedKeys: $generatedKeys');
    return generatedKeys;
  } catch (e) {
    print('generatedKeys error: $e');
    return null;
  }
}
