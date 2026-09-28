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

import 'package:flutter/foundation.dart'; //
import 'package:passkeys/authenticator.dart';
import 'package:passkeys/types.dart';

import '/app_state.dart';
import 'package:http/http.dart' as http;

/// Registers a new passkey for [username] (an email) against the Firebase
/// user.
///
/// Works on web, iOS, and Android via the `passkeys` plugin. Shows the
/// Register button's spinner via FFAppState().registerBusy for the whole
/// ceremony. Returns true when the passkey is verified server-side.
/// https://raw.githubusercontent.com/corbado/example-passkeys-flutter/refs/heads/main/web/bundle.js
Future<dynamic> passkeyRegistrationVerifyPayload(
  String username,
  String token,
  String publicKey,
) async {
  print('=== Passkey Registration START ===');

  final passkeyName = username.trim();

  if (passkeyName.isEmpty) {
    return {
      'error': 'PASSKEY_NAME_EMPTY',
      'detail': 'Passkey name is empty.',
    };
  }

  try {
    final url = Uri.parse(
      '${FFDevEnvironmentValues().WBPBASEURL}/retail/passkey/register/options',
    );

    print('Passkey options URL: $url');
    print('Passkey username: $passkeyName');

    // 1. Get registration options from backend
    final response = await http
        .post(
          url,
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode({
            'passkeyName': passkeyName,
          }),
        )
        .timeout(const Duration(seconds: 30));

    print('Passkey options status: ${response.statusCode}');
    print('Passkey options response: ${response.body}');

    if (response.statusCode != 200) {
      return {
        'statusCode': response.statusCode,
        'body': response.body,
      };
    }

    // 2. Convert backend response to WebAuthn request
    final request = RegisterRequestType.fromJsonString(response.body);

    print('Passkey RegisterRequest: ${request.toJsonString()}');

    // 3. Initialize authenticator
    final authenticator = PasskeyAuthenticator(
      debugMode: true,
    );

    // 4. Check whether passkeys are available
    final canAuthenticate = await authenticator.canAuthenticate();

    print(
      'Passkey canAuthenticate: $canAuthenticate',
    );

    if (!canAuthenticate) {
      return {
        'error': 'PASSKEY_NOT_AVAILABLE',
        'detail': 'Passkeys are not available on this device.',
      };
    }

    // 5. Start native iOS/Android passkey registration
    print('Starting native passkey registration...');

    final r = await authenticator.register(request);

    // 6. Inspect COMPLETE native response
    print(
      'Passkey RegisterResponse: ${r.toJsonString()}',
    );

    print('Passkey ID: ${r.id}');
    print('Passkey rawId: ${r.rawId}');
    print('Passkey attestationObject: ${r.attestationObject}');
    print('Passkey clientDataJSON: ${r.clientDataJSON}');
    print('Passkey transports: ${r.transports}');

    // 7. Validate response
    if (r.id.isEmpty) {
      return {
        'error': 'PASSKEY_REGISTRATION_EMPTY',
        'detail': 'The platform returned an empty passkey credential.',
      };
    }

    // 8. Build backend verification payload
    final payload = <String, dynamic>{
      'id': r.id,
      'rawId': r.rawId,
      'type': 'public-key',
      'response': <String, dynamic>{
        'attestationObject': r.attestationObject,
        'clientDataJSON': r.clientDataJSON,
        'transports': r.transports.whereType<String>().toList(),
      },
      'authenticatorAttachment': 'platform',
      'passkeyName': passkeyName,
    };

    print(
      'Final Passkey Registration Payload: $payload',
    );

    return payload;
  } catch (e, stackTrace) {
    print('=== Passkey Registration ERROR ===');
    print('Error: $e');
    print('StackTrace: $stackTrace');

    return {
      'error': e.toString(),
      'stackTrace': stackTrace.toString(),
    };
  }
}

//
//
//
//
//
//
// Future<dynamic> passkeyRegistrationVerifyPayload(
//   String username,
//   String token,
//   String publicKey,
// ) async {
//   // Add your function code here!
//   //
//   print("passkeyRegistrationVerifyPayload Called!");
//   final passkeyName = username.trim();

//   if (passkeyName.isEmpty) {
//     return {
//       'error': 'Passkey name is empty',
//     };
//   }

//   try {
//     final response = await http.post(
//       Uri.parse(
//         '${FFDevEnvironmentValues().WBPBASEURL}/retail/passkey/register/options',
//       ),
//       headers: <String, String>{
//         'Content-Type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//       body: jsonEncode(<String, String>{
//         'passkeyName': passkeyName,
//       }),
//     );

//     if (response.statusCode != 200) {
//       return {
//         'statusCode': response.statusCode,
//         'body': response.body,
//       };
//     }

//     // Round-trip through JSON so nested maps are Map<String, dynamic> on
//     // every platform (native callables return Map<Object?, Object?>).
//     // final request = RegisterRequestType.fromJsonString(jsonEncode(optRes.data));
//     final request = RegisterRequestType.fromJsonString(response.body);
//     print('passkeyRegistrationVerifyPayload request: $request');

//     final authenticator = PasskeyAuthenticator(
//       debugMode: true,
//     );

//     // final r = await PasskeyAuthenticator().register(request);
//     final r = await authenticator.register(request);
//     print('passkeyRegistrationVerifyPayload r: $r');

//     // {
//     //   "id": "string",
//     //   "rawId": "string",
//     //   "type": "string",
//     //   "response": {
//     //     "attestationObject": "string",
//     //     "clientDataJSON": "string",
//     //     "transports": ["string"],
//     //     "publicKey": "string",
//     //     "publicKeyAlgorithm": 0,
//     //     "authenticatorData": "string"
//     //   },
//     //   "authenticatorAttachment": "string",
//     //   "passkeyName": "string"
//     // };

//     final payload = <String, dynamic>{
//       'id': r.id,
//       'rawId': r.rawId,
//       'type': 'public-key',
//       'response': <String, dynamic>{
//         'attestationObject': r.attestationObject,
//         'clientDataJSON': r.clientDataJSON,
//         'transports': r.transports.whereType<String>().toList(),
//         // 'publicKey': publicKey,
//         // 'publicKeyAlgorithm': 'publicKeyAlgorithm',
//         // 'authenticatorData': 'authenticatorData',
//       },
//       'authenticatorAttachment': 'platform',
//       'passkeyName': passkeyName,
//     };

//     print('passkeyRegistrationVerifyPayload: $payload');

//     // final verRes = await fns
//     //     .httpsCallable('verifyRegistrationFn')
//     //     .call({'email': email, 'response': payload});
//     // return Map<String, dynamic>.from(verRes.data as Map)['verified'] == true;
//     return payload;
//   } catch (e, stackTrace) {
//     return {
//       'error': e.toString(),
//       'stackTrace': stackTrace.toString(),
//     };
//   }
// }
