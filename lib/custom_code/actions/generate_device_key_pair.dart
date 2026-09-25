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

import 'dart:typed_data';
import 'dart:convert';
import 'package:cryptography/cryptography.dart';
import 'package:pem/pem.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<dynamic> generateDeviceKeyPair() async {
  // Add your function code here!
  // final algorithm = EcdsaP256(Sha256());
  // final keyPair = await algorithm.newKeyPair();
  // final privateKeyBytes = await keyPair.extractPrivateKeyBytes();
  // final publicKey = await keyPair.extractPublicKey();

  final storage = FlutterSecureStorage();

  try {
    print('algorithm');
    // Generate a keypair.
    final algorithm = Ecdsa.p256(Sha256());

    print('keyPair');
    // 1. Generate keypair
    final keyPair = await algorithm.newKeyPair();
    final keyPairData =
        await keyPair.extract(); // failed when no cryptpgraphy_flutter

    print('privateKeyBytes');
    // 2. Extract private key (32 bytes)
    final privateKeyBytes = keyPairData.d;

    print('publicKey');
    // 3. Extract public key
    final publicKey = await keyPair.extractPublicKey();
    final publicKeyDer = publicKey.toDer();

    print('publicKeyPem');
    final publicKeyPem =
        PemCodec(PemLabel.publicKey).encode(Uint8List.fromList(publicKeyDer));

    print('privateKeyBase64');
    // 7. Private key base64 (for storage)
    final privateKeyBase64 = base64Encode(privateKeyBytes);

    print('store locally');
    // store locally
    await storage.write(
      key: 'device_public_key',
      value: publicKeyPem,
    );

    await storage.write(
      key: 'device_private_key',
      value: privateKeyBase64,
    );

    print('algorithm runtimeType: ${algorithm.runtimeType}');

    print({
      'publicKeyPem': publicKeyPem,
      'privateKeyBase64': privateKeyBase64,
    });

    return {
      'publicKeyPem': publicKeyPem,
      'privateKeyBase64': privateKeyBase64,
    };
  } catch (e, stackTrace) {
    // Log error for debugging
    print('Error generating device key pair: $e');
    print(stackTrace);

    // Optional: clear partial keys to avoid corruption
    await storage.delete(key: 'device_public_key');
    await storage.delete(key: 'device_private_key');

    return {
      'success': false,
      'error': e.toString(),
    };
  }
}

// LAST
// Future<dynamic> generateDeviceKeyPair() async {
//   // Add your function code here!
//   // final algorithm = EcdsaP256(Sha256());
//   // final keyPair = await algorithm.newKeyPair();
//   // final privateKeyBytes = await keyPair.extractPrivateKeyBytes();
//   // final publicKey = await keyPair.extractPublicKey();

//   // Cryptography.instance = CryptographyFlutter();
//   final storage = FlutterSecureStorage();

//   // Generate a keypair.
//   final algorithm = Ecdsa.p256(Sha256());

//   // 1. Generate keypair
//   final keyPair = await algorithm.newKeyPair();
//   final keyPairData = await keyPair.extract();

//   // 2. Extract private key (32 bytes)
//   final privateKeyBytes = keyPairData.d;

//   // 3. Extract public key
//   final publicKey = await keyPair.extractPublicKey();

//   // Convert BigInt → 32 bytes
//   // Uint8List bigIntTo32Bytes(BigInt number) {
//   //   final hex = number.toRadixString(16).padLeft(64, '0');
//   //   return Uint8List.fromList(List.generate(
//   //     32,
//   //     (i) => int.parse(hex.substring(i * 2, i * 2 + 2), radix: 16),
//   //   ));
//   // }

//   // final xBytes = bigIntTo32Bytes(publicKey.x);
//   // final yBytes = bigIntTo32Bytes(publicKey.y);

//   // 4. Uncompressed key: 04 || X || Y
//   // final publicKeyUncompressed = Uint8List.fromList([
//   //   0x04,
//   //   ...xBytes,
//   //   ...yBytes,
//   // ]);

//   // 5. Build SPKI DER
//   // Uint8List buildSpki(Uint8List pubKey) {
//   //   final oidEcPublicKey = [0x06, 0x07, 0x2A, 0x86, 0x48, 0xCE, 0x3D, 0x02, 0x01];
//   //   final oidPrime256v1 = [0x06, 0x08, 0x2A, 0x86, 0x48, 0xCE, 0x3D, 0x03, 0x01, 0x07];

//   //   final algorithmSeq = [
//   //     0x30,
//   //     oidEcPublicKey.length + oidPrime256v1.length,
//   //     ...oidEcPublicKey,
//   //     ...oidPrime256v1
//   //   ];

//   //   final bitString = [
//   //     0x03,
//   //     pubKey.length + 1,
//   //     0x00,
//   //     ...pubKey
//   //   ];

//   //   final totalLength = algorithmSeq.length + bitString.length;

//   //   return Uint8List.fromList([
//   //     0x30,
//   //     totalLength,
//   //     ...algorithmSeq,
//   //     ...bitString,
//   //   ]);
//   // }

//   // final publicKeyDer = buildSpki(publicKeyUncompressed);
//   final publicKeyDer = publicKey.toDer();

//   // ✅ 6. Use pem package
//   // final publicKeyPem = encodePem(
//   //   publicKeyDer,
//   //   'PUBLIC KEY',
//   // );

//   final publicKeyPem =
//       PemCodec(PemLabel.publicKey).encode(Uint8List.fromList(publicKeyDer));

//   // 7. Private key base64 (for storage)
//   final privateKeyBase64 = base64Encode(privateKeyBytes);

//   // store locally
//   await storage.write(
//     key: 'device_public_key',
//     value: publicKeyPem,
//   );

//   await storage.write(
//     key: 'device_private_key',
//     value: privateKeyBase64,
//   );

//   print({
//     'publicKeyPem': publicKeyPem,
//     'privateKeyBase64': privateKeyBase64,
//   });

//   return {
//     'publicKeyPem': publicKeyPem,
//     'privateKeyBase64': privateKeyBase64,
//   };
// }

// ============ BEFORE ============
// Future<dynamic> generateDeviceKeyPair() async {
//   // Add your function code here!
//   // final algorithm = EcdsaP256(Sha256());
//   // final keyPair = await algorithm.newKeyPair();
//   // final privateKeyBytes = await keyPair.extractPrivateKeyBytes();
//   // final publicKey = await keyPair.extractPublicKey();

//   // Generate a keypair.
//   final algorithm = Ecdsa.p256(Sha256());
//   final keyPair = await algorithm.newKeyPair();
//   final keyPairData = await keyPair.extract();

//   // final privateKeyBytes = await keyPair.extractPrivateKeyBytes();
//   final publicKey = await keyPair.extractPublicKey();
//   // final privateKeyBytes = keyPairData.bytes;
//   final privateKeyBytes = keyPairData.d;

//   // Convert public key to PEM (SPKI)
//   final publicKeyBytes = publicKey.bytes;
//   final privateKeyBase64 = base64Encode(privateKeyBytes);

//   // 5. Convert to DER (SPKI already handled internally)
//   final publicKeyDer = publicKey.toDer();
//   String _toPem(Uint8List derBytes) {
//     final base64Str = base64Encode(derBytes);

//     final chunks = RegExp('.{1,64}')
//         .allMatches(base64Str)
//         .map((m) => m.group(0))
//         .join('\n');

//     return '''-----BEGIN PUBLIC KEY-----
// $chunks
// -----END PUBLIC KEY-----''';
//   }

//   // 6. Convert DER → PEM
//   final publicKeyPem = _toPem(Uint8List.fromList(publicKeyDer));

//   final generatedKeys = {
//     'publicKey': publicKey,
//     'publicKeyPem': publicKeyPem,
//     'publicKeyBytes': publicKeyBytes,
//     'privateKeyBytes': privateKeyBytes,
//     'privateKeyBase64': privateKeyBase64 // device_private_key
//   };

//   print('generateDeviceKeyPair: $generatedKeys');

//   return generatedKeys;
// }
