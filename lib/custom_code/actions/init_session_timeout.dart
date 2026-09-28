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

import 'package:p_b_b_pocket/auth/custom_auth/auth_util.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import '/custom_code/session_timeout_manager.dart';

Future initSessionTimeout(BuildContext context) async {
  print('initSessionTimeout called!');

  SessionTimeoutManager.instance.init(
    context,
    onLogout: () {
      authManager.signOut();
    },
  );

  return null;
}
