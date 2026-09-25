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

Future<String> readUserIDSecurely() async {
  const storage = FlutterSecureStorage();

  // Read value from storage (String? ang return)
  final String? value = await storage.read(key: 'saved_user_id');

  // Always return a non-null string
  final String userID = value?.trim().isNotEmpty == true ? value! : '';

  // Sync to App State (always store a String)
  FFAppState().userID = userID;

  // Always returns a string (pwede empty)
  return userID;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
