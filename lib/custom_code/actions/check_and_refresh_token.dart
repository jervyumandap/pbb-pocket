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

import '/backend/api_requests/api_interceptor.dart';

import 'package:http/http.dart' as http;
import 'dart:convert'; // For decoding JWT
import '/auth/custom_auth/custom_auth_user_provider.dart';
import '/auth/custom_auth/auth_util.dart';
import '../../auth/custom_auth/auth_util.dart';

class checkAndRefreshToken extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    try {
// accessing the authenticated user's variables (a)(b)and (c) and others
      var userData = authManager.userData; //read to provide back
      var authUserId = authManager.uid; //read to provide back
      String? accessToken = currentAuthenticationToken;
      String? userId = currentUserUid;
      String? refreshToken = currentAuthRefreshToken;
      DateTime? expiryTimeStr = currentAuthTokenExpiration;
      if (accessToken == null ||
          refreshToken == null ||
          expiryTimeStr == null) {
        throw Exception('Token not found');
      }

      // Check if the token has expired
      if (DateTime.now().isAfter(expiryTimeStr)) {
        // If expired, make a request to refresh the token
        final refreshResponse = await http.post(
          Uri.parse(
              '${FFDevEnvironmentValues().WBPBASEURL}/auth/retail/refresh'), // Update with your actual API URL
          headers: {
            'Content-Type': 'application/json',
            'accept': 'application/json',
            'user-agent': 'user-agent',
          },
          body: jsonEncode({
            'refresh_token': refreshToken
          }), //replace with your                                    //request body key
        );
//call refresh API
        if (refreshResponse.statusCode == 200) {
          // Parse the response and update tokens and expiry time according to you //response
          final responseBody =
              jsonDecode(refreshResponse.body); //['success']['data'];
          String newAccessToken = responseBody['accessToken'];
          String newRefreshToken = responseBody['refreshToken'];
          String expiresIn = responseBody['expiresIn'];

          // Decode the new access token to extract the expiry time
          final parts = newAccessToken.split('.');
          if (parts.length != 3) {
            throw Exception('Invalid Token');
          }
          final payload = jsonDecode(
              utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
          int newExpiryTime = payload['exp'];

          // Store the new tokens and expiry time using this function
          authManager.updateAuthUserData(
              authenticationToken: newAccessToken,
              refreshToken: newRefreshToken,
              tokenExpiration: decodeTokenExpiry(newAccessToken),
              userData: userData,
              authUid: authUserId);

          // Update the options with the new access token
          options.headers['Authorization'] = 'Bearer $newAccessToken';
        } else {
          throw Exception('Failed to refresh token');
        }
      } else {
        // If the token is still valid, continue with the request
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
    } catch (e) {
      throw Exception(e);
    }

    // Perform any necessary calls or modifications to the [options] before the API call is made.
    return options;
  }

  DateTime? decodeTokenExpiry(String accessToken) {
    try {
      final parts = accessToken.split('.');
      if (parts.length != 3) return null;

      // Decode payload
      final payload = parts[1];
      final normalized = base64Url.normalize(payload);
      final decoded = utf8.decode(base64Url.decode(normalized));

      final payloadMap = json.decode(decoded);

      if (payloadMap['exp'] == null) return null;

      // exp is in seconds since epoch
      final expiry =
          DateTime.fromMillisecondsSinceEpoch(payloadMap['exp'] * 1000);

      return expiry;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    // Perform any necessary calls or modifications to the [response] prior
    // to returning it.
    //
    // Access the original request details via response.requestOptions:
    // - response.requestOptions?.apiUrl: The API endpoint URL
    // - response.requestOptions?.callType: The HTTP method (GET, POST, PUT, PATCH, DELETE)
    // - response.requestOptions?.headers: Request headers
    // - response.requestOptions?.params: Query/body parameters
    // - response.requestOptions?.body: Request body (if applicable)
    return response;
  }
}
