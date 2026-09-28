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

Future<List<dynamic>> reorderItems(
  List<dynamic> accounts,
  int oldIndex,
  int newIndex,
) async {
  // Create a copy so the original list is not modified directly.
  final list = List<dynamic>.from(accounts);

  // When moving an item downward, adjust the target index because
  // removing the item shifts the remaining items left by one.
  if (oldIndex < newIndex) {
    newIndex -= 1;
  }

  // Remove the item from its original position.
  final item = list.removeAt(oldIndex);

  // Insert the item at its new position.
  list.insert(newIndex, item);

  // Return the reordered list.
  return list;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
