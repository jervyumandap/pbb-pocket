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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Retrieve stored data with key
Future<String?> retrieveStoredData(String key) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // store encrypted mpin using FlutterSecureStorage

  final FlutterSecureStorage secureStorage = FlutterSecureStorage();
  String? data = await secureStorage.read(key: key);

  debugPrint('retrieveStored ${key}: ${data}');

  if (data == null || data.isEmpty) {
    return null;
  }

  return data;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
