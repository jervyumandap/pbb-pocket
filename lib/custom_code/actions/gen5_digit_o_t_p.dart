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

Future<int> gen5DigitOTP() async {
  // Use time-based randomness (no dart:math required)
  final now = DateTime.now().microsecondsSinceEpoch;

  // Convert to a 6-digit number
  final otp = now % 90000 + 10000;

  return otp;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
