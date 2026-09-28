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

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

Future<String> loginWithEdgeFunctionAndStoreTokens(
  String email,
  String password,
  String deviceId,
  String deviceOs,
  String deviceModel,
) async {
  try {
    final env = FFDevEnvironmentValues();

    final uri = Uri.parse('${env.BASEURL}/functions/v1/login');

    // 3. Ipadala ang POST request
    final response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'apikey': env.APIKEY,
        'Authorization': 'Bearer ${env.ANONKEY}',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
        'device_id': deviceId,
        'device_os': deviceOs,
        'device_model': deviceModel,
      }),
    );

    if (response.statusCode != 200) {
      return 'Login failed: ${response.body}';
    }

    final data = jsonDecode(response.body);

    if (data['error'] != null) {
      return 'Login failed: ${data['error']}';
    }

    const storage = FlutterSecureStorage();

    if (data['access_token'] != null) {
      await storage.write(
        key: 'access_token',
        value: data['access_token'].toString(),
      );
    }

    if (data['refresh_token'] != null) {
      await storage.write(
        key: 'refresh_token',
        value: data['refresh_token'].toString(),
      );
    }

    return 'Login successful';
  } catch (e) {
    return 'Error: $e';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
