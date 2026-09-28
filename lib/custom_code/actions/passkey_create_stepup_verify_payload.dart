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

Future<dynamic> passkeyCreateStepupVerifyPayload(
  dynamic stepupAuthOptions,
  String? transactionHash,
) async {
  // Add your function code here!

  if (transactionHash == null || transactionHash.trim().isEmpty) {
    return {
      'error': 'transactionHash is empty',
    };
  }

  try {
    // final request = AuthenticateRequestType.fromJsonString(response.body);
    final request = AuthenticateRequestType.fromJson(stepupAuthOptions);

    // if (kDebugMode) {
    print('passkeyCreateStepupVerifyPayload request: $request');
    // }

    final r = await PasskeyAuthenticator().authenticate(request);
    // if (kDebugMode) {
    print('passkeyCreateStepupVerifyPayload r: $r');
    // }

    // retail/passkey/stepup/verify
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
    //   "transactionHash": "string"
    // }

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
    //   "transactionHash": "string"
    // }
    //

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
      // 'clientExtensionResults': <String, dynamic>{},
      'authenticatorAttachment': 'platform',
      "transactionHash": transactionHash,
    };

    // if (kDebugMode) {
    print('passkeyCreateStepupVerifyPayload: $payload');
    // }

    return {
      'success': true,
      'data': payload,
    };
  } catch (e, stackTrace) {
    return {
      'success': false,
      'error': e.toString(),
      'stackTrace': stackTrace.toString(),
    };
  }
}
