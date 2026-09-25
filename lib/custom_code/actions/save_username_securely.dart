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

Future<void> saveUsernameSecurely(String username) async {
  const storage = FlutterSecureStorage();

  // 1. Write to secure disk storage for persistence
  await storage.write(
    key: 'saved_username',
    value: username,
  );

  await storage.write(
    key: 'has_logged_in',
    value: 'true',
  );

  // 2. Update the Global App State for immediate UI reactivity
  // This ensures the Login Page "sees" the change instantly.
  FFAppState().username = username;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
