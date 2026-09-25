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
import 'package:shared_preferences/shared_preferences.dart';

Future handleFreshInstall() async {
  // Add your function code here!

  const storage = FlutterSecureStorage();
  final prefs = await SharedPreferences.getInstance();
  final initializedKey = FFDevEnvironmentValues().AppInitializedKey;
  final deviceIdKey = FFDevEnvironmentValues().DEVICEIDKEY;

  print('AppInitializedKey: $initializedKey');
  print('DEVICEIDKEY: $deviceIdKey');

  // final initialized = prefs.getBool('app_initialized') ?? false;
  final initialized = prefs.getBool(initializedKey) ?? false;

  if (!initialized) {
    print('Fresh install detected. Clearing $deviceIdKey');

    await storage.delete(key: deviceIdKey);

    await prefs.setBool(initializedKey, true);

    print('Saved initialized flag: ${prefs.getBool(initializedKey)}');
  } else {
    print('Existing install detected');
  }

  print('All prefs: ${prefs.getKeys()}');
}
