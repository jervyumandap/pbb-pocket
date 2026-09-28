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

Future<String?> createSignature(String data) async {
  // Add your function code here!
  // data : challenge - 12341423241-abc (timestamp-nonce) base64

  final biometricSignature = BiometricSignature();
  try {
    final result = await biometricSignature.createSignature(
      keyAlias: 'biometric_key',
      payload: data,
      promptMessage: 'Please authenticate to create signature',
      signatureFormat: SignatureFormat.base64,
      keyFormat: KeyFormat.pem,
      config: CreateSignatureConfig(
        allowDeviceCredentials: false,
      ),
    );

    final signature = result.signature;

    print('data: $data, signature: $signature');
    return signature;
  } catch (e) {
    print('createSignature error: $e');
    return null;
  }
}

// sign challenge using createSignature
//
// device id
// timestamp-nonce
// signature
