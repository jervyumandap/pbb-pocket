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

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:convert';
import 'package:cryptography/cryptography.dart';

Future<dynamic> createDeviceSignature(
    DeviceSignaturePayloadModelStruct data) async {
  // Add your function code here!
  // final payload = jsonEncode({'mpin': mpin, 'challenge': challenge});
  // final payloadBytes = utf8.encode(payload);
  // final signature = await algorithm.sign(payloadBytes, keyPair: keyPair);
  // final signatureBase64 = base64Encode(signature.bytes);

  // Add your function code here!
  // final message = <int>[1, 2, 3];
  final storage = FlutterSecureStorage();

  final payload = jsonEncode({'mpin': data.mpin, 'challenge': data.challenge});
  final payloadBytes = utf8.encode(payload);
  final privateKeyBase64 = await storage.read(key: 'device_private_key');

  print('payload passed: $data');

  // 2. Check if the key exists before proceeding
  if (privateKeyBase64 == null) {
    print('Error: No private key found in storage.');
    return {'error': 'No private key found'};
  }

  try {
    final algorithm = Ecdsa.p256(Sha256());

    print('keyPair');
    // final keyPair = await algorithm.newKeyPair();
    final keyPair =
        await algorithm.newKeyPairFromSeed(base64Decode(privateKeyBase64));

    print('signature');
    // Sign
    final signature = await algorithm.sign(
      payloadBytes,
      keyPair: keyPair,
    );

    print('Signature: ${signature.bytes}');

    final signatureBase64 = base64Encode(signature.bytes);

    // Verify signature
    final isSignatureCorrect = await algorithm.verify(
      payloadBytes,
      signature: signature,
    );

    final result = {'signature': signature, 'signatureBase64': signatureBase64};

    print('Correct signature: $isSignatureCorrect');
    print('createDeviceSignature: $result');

    return result;
  } catch (e) {
    print('Error during signing: $e');
    return {'error': e.toString()};
  }
}
