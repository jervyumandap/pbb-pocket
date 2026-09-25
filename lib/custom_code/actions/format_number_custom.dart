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

import 'package:intl/intl.dart';

String formatNumberCustom(String value, bool isAmount) {
  // Remove commas first
  value = value.replaceAll(',', '');

  // Try parsing to number
  final number = num.tryParse(value);
  if (number == null) return value;

  if (isAmount) {
    // Format as money: always 2 decimals
    final formatter = NumberFormat('#,##0.00');
    return formatter.format(number);
  } else {
    // No formatting (or change this if you want another behavior)
    return value;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
