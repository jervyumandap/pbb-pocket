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

import 'dart:math';
import 'package:pointycastle/export.dart';
import 'dart:typed_data';
import 'dart:convert';
import 'package:pem/pem.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<dynamic> generatePcKeyPair() async {
  final storage = FlutterSecureStorage();

  final secureRandom = SecureRandom('Fortuna')
    ..seed(KeyParameter(Uint8List.fromList(
      List.generate(32, (_) => Random.secure().nextInt(256)),
    )));

  // helpers
  Uint8List bigIntToBytes(BigInt number, int length) {
    final bytes = Uint8List(length);
    var n = number;
    for (var i = length - 1; i >= 0; i--) {
      bytes[i] = (n & BigInt.from(0xff)).toInt();
      n = n >> 8;
    }
    return bytes;
  }

  String wrapBase64(String base64, int lineLength) {
    final buffer = StringBuffer();
    for (var i = 0; i < base64.length; i += lineLength) {
      if (i > 0) buffer.write('\n');
      buffer.write(
        base64.substring(i, (i + lineLength).clamp(0, base64.length)),
      );
    }
    return buffer.toString();
  }

  String convertPublicKeyToPem(ECPublicKey publicKey) {
    final x = bigIntToBytes(publicKey.Q!.x!.toBigInteger()!, 32);
    final y = bigIntToBytes(publicKey.Q!.y!.toBigInteger()!, 32);

    // SPKI header for P-256 (secp256r1)
    final spkiHeader = Uint8List.fromList([
      0x30, 0x59, // SEQUENCE, 89 bytes
      0x30, 0x13, // SEQUENCE, 19 bytes (algorithm)
      0x06, 0x07, // OID, 7 bytes
      0x2a, 0x86, 0x48, 0xce, 0x3d, 0x02, 0x01, // ecPublicKey
      0x06, 0x08, // OID, 8 bytes
      0x2a, 0x86, 0x48, 0xce, 0x3d, 0x03, 0x01, 0x07, // P-256
      0x03, 0x42, // BIT STRING, 66 bytes
      0x00, // 0 unused bits
      0x04, // uncompressed point
    ]);

    final spkiBytes = Uint8List.fromList([...spkiHeader, ...x, ...y]);
    final base64Key = base64Encode(spkiBytes);
    final wrappedLines = wrapBase64(base64Key, 64);

    return '-----BEGIN PUBLIC KEY-----\n$wrappedLines\n-----END PUBLIC KEY-----';
  }

  final keyParams = ECKeyGeneratorParameters(ECCurve_secp256r1());
  final generator = ECKeyGenerator()
    ..init(ParametersWithRandom(keyParams, secureRandom));

  final keyPair = generator.generateKeyPair();
  final privateKey = keyPair.privateKey;
  final publicKey = keyPair.publicKey;

  final privateKeyBytes = bigIntToBytes(privateKey.d!, 32);
  final privateKeyBytesBase64 = base64.encode(privateKeyBytes);
  final publicKeyPem = convertPublicKeyToPem(publicKey);

  // store keys
  await storage.write(
    key: 'device_private_key',
    value: privateKeyBytesBase64,
  );

  await storage.write(
    key: 'device_public_key',
    value: publicKeyPem,
  );

  // return (privateKeyBytes, publicKeyPem);

  final result = {
    'privateKeyBytes': privateKeyBytes,
    'privateKeyBytesBase64': privateKeyBytesBase64,
    'publicKeyPem': publicKeyPem,
  };

  print('result: $result');
  return result;
}
