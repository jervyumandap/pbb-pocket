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
import 'package:pointycastle/export.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:math';
import 'dart:convert';

Future<dynamic> createPcSignature(
    DeviceSignaturePayloadModelStruct data) async {
  final storage = FlutterSecureStorage();

  Uint8List encodeBigInt(BigInt number) {
    final hex = number.toRadixString(16).padLeft(64, '0');
    final result = <int>[];

    for (int i = 0; i < hex.length; i += 2) {
      result.add(int.parse(hex.substring(i, i + 2), radix: 16));
    }

    return Uint8List.fromList(result);
  }

  Uint8List encodeSignatureToDer(ECSignature sig) {
    final r = encodeBigInt(sig.r);
    final s = encodeBigInt(sig.s);

    final builder = BytesBuilder();
    builder.add([0x30]);
    builder.add([r.length + s.length + 4]);
    builder.add([0x02, r.length]);
    builder.add(r);
    builder.add([0x02, s.length]);
    builder.add(s);

    return builder.toBytes();
  }

  /// ===== new from cursor =====
  Uint8List _bigIntToMinimalBytes(BigInt number) {
    if (number == BigInt.zero) return Uint8List.fromList([0]);

    final hex = number.toRadixString(16).padLeft(
          (number.toRadixString(16).length + 1) & ~1,
          '0',
        );
    final bytes = <int>[];
    for (var i = 0; i < hex.length; i += 2) {
      bytes.add(int.parse(hex.substring(i, i + 2), radix: 16));
    }

    // Remove leading zeros (keep at least one byte)
    var start = 0;
    while (start < bytes.length - 1 && bytes[start] == 0) {
      start++;
    }

    return Uint8List.fromList(bytes.sublist(start));
  }

  Uint8List _derEncodeInteger(Uint8List bytes) {
    // Add leading zero if high bit is set (to keep number positive)
    final needsPadding = bytes.isNotEmpty && (bytes[0] & 0x80) != 0;
    final length = bytes.length + (needsPadding ? 1 : 0);

    return Uint8List.fromList([
      0x02, // INTEGER tag
      length,
      if (needsPadding) 0x00,
      ...bytes,
    ]);
  }

  Uint8List encodeSignatureToDer2(ECSignature sig) {
    final r = _bigIntToMinimalBytes(sig.r);
    final s = _bigIntToMinimalBytes(sig.s);

    final rEncoded = _derEncodeInteger(r);
    final sEncoded = _derEncodeInteger(s);

    final contentLength = rEncoded.length + sEncoded.length;

    return Uint8List.fromList([
      0x30, // SEQUENCE tag
      contentLength,
      ...rEncoded,
      ...sEncoded,
    ]);
  }

  /// ===== new from cursor =====

  try {
    print('bytesToBigInt');
    BigInt bytesToBigInt(List<int> bytes) {
      return BigInt.parse(
        bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join(),
        radix: 16,
      );
    }

    print('payload');
    // Key order must match backend: mpin, then challenge
    final payload = jsonEncode({
      'mpin': data.mpin,
      'challenge': data.challenge,
    });

    print('privateKeyBase64');
    final privateKeyBase64 = await storage.read(key: 'device_private_key');
    if (privateKeyBase64 == null) {
      throw Exception('No private key found in storage');
    }
    print('privateKeyBase64: $privateKeyBase64');

    final privateKeyBytes = base64.decode(privateKeyBase64);
    final payloadBytes = Uint8List.fromList(utf8.encode(payload));

    print('privateKey');
    // Reconstruct private key from bytes
    final privateKey = ECPrivateKey(
      bytesToBigInt(privateKeyBytes),
      ECCurve_secp256r1(),
    );

    print('signer');
    // Sign with ECDSA + SHA-256
    // final signer = ECDSASigner(SHA256Digest())
    //   ..init(true, PrivateKeyParameter<ECPrivateKey>(privateKey));
    final signer = ECDSASigner(SHA256Digest())
      ..init(
        true,
        ParametersWithRandom(
          PrivateKeyParameter<ECPrivateKey>(privateKey),
          _secureRandom(),
        ),
      );

    print('signature');
    final signature = signer.generateSignature(payloadBytes) as ECSignature;
    // final signatureBase64 = base64.encode(signature as List<int>);

    // final derBytes = encodeSignatureToDer(signature);
    final derBytes = encodeSignatureToDer2(signature);
    final signatureBase64 = base64.encode(derBytes);

    print('signature');
    // Encode signature as DER format (standard for ECDSA)
    // return base64Encode(_encodeSignatureToDer(signature));
    final result = {
      'signature': signature,
      'signatureBase64': signatureBase64,
    };

    print('result: $result');
    print('createPcSignature End, should have signature!');
    return result;
  } catch (e, stackTrace) {
    print('Error in createPcSignature: $e');
    print(stackTrace);

    return {
      'success': false,
      'error': e.toString(),
    };
  }
}

SecureRandom _secureRandom() {
  final secureRandom = FortunaRandom();
  final random = Random.secure();

  final seed = Uint8List(32);
  for (int i = 0; i < seed.length; i++) {
    seed[i] = random.nextInt(256);
  }

  secureRandom.seed(KeyParameter(seed));
  return secureRandom;
}
