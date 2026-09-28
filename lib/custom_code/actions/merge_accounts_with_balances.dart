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

Future<List<dynamic>> mergeAccountsWithBalances(
  List<dynamic> accounts,
  List<dynamic> balances,
) async {
  // STEP 1: Convert balances list into a map
  final Map<String, dynamic> balanceMap = {
    for (final b in balances) b['accountNumber']: b,
  };

  // STEP 2: Merge
  return accounts.map((acc) {
    final match = balanceMap[acc['fullAccountNumber']];

    return {
      ...acc,
      'availableBalance': match != null ? match['availableBalance'] : 0,
      'currentBalance': match != null ? match['currentBalance'] : 0,
    };
  }).toList();
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
