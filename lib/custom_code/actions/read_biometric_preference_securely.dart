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

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Returns true if enabled, false if disabled, and null if never set.
Future<bool> readBiometricPreferenceSecurely() async {
  const storage = FlutterSecureStorage();

  // Read raw value
  final String? value = await storage.read(key: 'biometric_enabled');

  // Convert to bool with default = false
  final bool result =
      (value != null && value.isNotEmpty) ? value == 'true' : false;

  // Sync to App State (always bool)
  FFAppState().biometrics = result;

  return result;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
