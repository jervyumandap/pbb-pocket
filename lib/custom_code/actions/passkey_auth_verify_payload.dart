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
import 'package:passkeys/authenticator.dart';
import 'package:passkeys/types.dart';

import '/app_state.dart';
import 'package:http/http.dart' as http;

/// Signs in with an existing passkey for [username] (an email).
///
/// Works on web, iOS, and Android via the `passkeys` plugin. Shows the SignIn
/// button's spinner via FFAppState().signInBusy for the whole ceremony.
/// Returns true on success. /
Future<dynamic> passkeyAuthVerifyPayload(
    String username, String token, String deviceId) async {
  // Add your function code here!
  final uname = username.trim();

  if (uname.isEmpty) {
    return {
      'error': 'username is empty',
    };
  }

  try {
    final response = await http
        .post(
          Uri.parse(
              '${FFDevEnvironmentValues().WBPBASEURL}/retail/passkey/authenticate/options'),
          headers: <String, String>{
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            // 'Authorization': 'Bearer $token',
          },
          body: jsonEncode(<String, String>{
            'username': uname,
          }),
        )
        .timeout(const Duration(seconds: 30));

    if (response.statusCode != 200) {
      return {
        'statusCode': response.statusCode,
        'body': response.body,
      };
    }

    final request = AuthenticateRequestType.fromJsonString(response.body);
    print('passkeyAuthVerifyPayload request: $request');

    final r = await PasskeyAuthenticator().authenticate(request);
    print('passkeyAuthVerifyPayload r: $r');

    // {
    //   "id": "string",
    //   "rawId": "string",
    //   "type": "string",
    //   "response": {
    //     "authenticatorData": "string",
    //     "clientDataJSON": "string",
    //     "signature": "string",
    //     "userHandle": "string"
    //   },
    //   "authenticatorAttachment": "string",
    //   "deviceId": "string"
    // };

    final payload = <String, dynamic>{
      'id': r.id,
      'rawId': r.rawId,
      'type': 'public-key',
      'response': <String, dynamic>{
        'authenticatorData': r.authenticatorData,
        'clientDataJSON': r.clientDataJSON,
        'signature': r.signature,
        'userHandle': r.userHandle.isEmpty == true ? null : r.userHandle,
      },
      'clientExtensionResults': <String, dynamic>{},
      'authenticatorAttachment': 'platform',
      'deviceId': deviceId,
    };

    print('passkeyAuthVerifyPayload: $payload');
    return payload;
  } catch (e, stackTrace) {
    return {
      'error': e.toString(),
      'stackTrace': stackTrace.toString(),
    };
  }
}
