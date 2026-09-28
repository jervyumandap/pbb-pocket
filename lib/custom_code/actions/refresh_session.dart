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

import 'package:webviewx_plus/webviewx_plus.dart';

import '../../auth/custom_auth/custom_auth_user_provider.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart'; // Imports custom functions

// create refresh session method that will get the authenticated user authentication token and token expiration
import 'package:flutter/foundation.dart';
import '../../auth/custom_auth/auth_util.dart';
import 'package:http/http.dart' as http;

Future refreshSession(BuildContext context) async {
  String? refreshToken = currentAuthRefreshToken;
  DateTime? tokenExpiration = currentAuthTokenExpiration;

  print("DateTime token expiration: $tokenExpiration");

  // 1. Check if token exists
  if (refreshToken == null || tokenExpiration == null) {
    print('No refreshToken found');
    return;
  }

  // 2. Check if token is still valid (with buffer)
  final now = DateTime.now();

  // Optional: refresh 60 seconds before expiry
  final buffer = const Duration(seconds: 60);

  if (now.isBefore(tokenExpiration.subtract(buffer))) {
    print('Token still valid, no refresh needed');
    return;
  }

  print('Token expired or expiring soon → refreshing...');

  // 3. Call refresh API
  final response = await http.post(
    Uri.parse(
      '${FFDevEnvironmentValues().WBPBASEURL}/auth/retail/refresh',
    ),
    headers: <String, String>{
      'Content-Type': 'application/json',
      'accept': 'application/json',
      'user-agent': 'user-agent',
    },
    body: jsonEncode(<String, String>{
      'refreshToken': refreshToken,
    }),
  );

  final responseStatusCode = response.statusCode;
  print('response.statusCode: $responseStatusCode');

  // 4. Handle session expired
  if (response.statusCode == 401) {
    print('Session expired → show dialog');

    if (!context.mounted) return;

    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          child: WebViewAware(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(dialogContext).unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: CustomInformationalDialogWidget(
                message: 'Your session has expired. Please log in again.',
                primaryButtonTitle: 'Ok',
                title: 'Session Expired!',
                primaryButtonAction: () async {
                  authManager.signOut();
                  Navigator.pop(context);
                },
                secondaryButtonAction: () async {},
              ),
            ),
          ),
        );
      },
    );

    // await showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (dialogContext) {
    //     return CustomInformationalDialogWidget(
    //       message: 'Your session has expired. Please log in again.',
    //       primaryButtonTitle: 'Ok',
    //       title: 'Session Expired!',
    //       primaryButtonAction: () async {
    //         authManager.signOut();
    //         Navigator.pop(context);
    //       },
    //       secondaryButtonAction: () async {},
    //     );
    //   },
    // );

    // logout after dialog
    // authManager.signOut();
    return;
  }

  // 5. Parse response
  var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
  var mappedJson = RefreshTokenResponseStruct.fromMap(jsonResponse);

  print('jsonResponse: $jsonResponse');

  // IMPORTANT: expiresIn is usually seconds from NOW
  final newExpiration =
      DateTime.now().add(Duration(seconds: mappedJson.expiresIn));

  // 6. Update auth state
  authManager.updateAuthUserData(
    authenticationToken: mappedJson.accessToken,
    refreshToken:
        refreshToken, //mappedJson.refreshToken, // passing the currentAuthRefreshToken
    tokenExpiration: newExpiration,
    authUid: currentUserUid,
    userData: currentUserData,
  );

  print('Token refreshed successfully');
}

// Future refreshSession22(BuildContext context) async {
//   String? refreshToken = currentAuthRefreshToken;
//   DateTime? tokenExpiration = currentAuthTokenExpiration;

//   // 1. Check if token exists
//   if (refreshToken == null || tokenExpiration == null) {
//     print('No session found');
//     return;
//   }

//   // 2. Check if token is still valid (with buffer)
//   final now = DateTime.now();
//   final buffer = const Duration(seconds: 60);

//   if (now.isBefore(tokenExpiration.subtract(buffer))) {
//     print('Token still valid, no refresh needed');
//     return;
//   }

//   print('Token expired or expiring soon → refreshing...');

//   // 3. Call refresh API
//   final response = await http.post(
//     Uri.parse(
//       '${FFDevEnvironmentValues().WBPBASEURL}/auth/retail/refresh',
//     ),
//     headers: <String, String>{
//       'Content-Type': 'application/json',
//       'accept': 'application/json',
//       'user-agent': 'user-agent',
//     },
//     body: jsonEncode(<String, String>{
//       'refresh_token': refreshToken,
//     }),
//   );

//   // 4. Handle session expired (401)
//   if (response.statusCode == 401) {
//     print('Session expired → show dialog');

//     await showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => AlertDialog(
//         title: const Text('Session Expired'),
//         content: const Text(
//           'Your session has expired. Please log in again.',
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       ),
//     );

//     // logout after dialog
//     authManager.signOut();
//     return;
//   }

//   // 5. Parse response
//   var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
//   var mappedJson = RefreshTokenResponseStruct.fromMap(jsonResponse);

//   final newExpiration =
//       DateTime.now().add(Duration(seconds: mappedJson.expiresIn));

//   // 6. Update auth state
//   authManager.updateAuthUserData(
//     authenticationToken: mappedJson.accessToken,
//     refreshToken: mappedJson.refreshToken,
//     tokenExpiration: newExpiration,
//     authUid: currentUserUid,
//     userData: currentUserData,
//   );

//   print('Token refreshed successfully');
// }
