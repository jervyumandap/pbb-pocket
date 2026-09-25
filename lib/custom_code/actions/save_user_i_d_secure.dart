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

Future<void> saveUserIDSecure(String userID) async {
  const storage = FlutterSecureStorage();

  // 1. I-save sa secure disk storage.
  // Dahil ang storage.write ay tumatanggap lamang ng String,
  // kailangan nating i-convert ang int sa String.
  await storage.write(
    key: 'saved_user_id',
    value: userID.toString(),
  );

  // 2. I-update ang Global App State (userID).
  // Siguraduhin na ang 'userID' sa App State ay naka-set bilang Integer/Data Type matching your ID.
  FFAppState().userID = userID;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
