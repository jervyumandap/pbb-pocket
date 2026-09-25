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

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import '/environment_values.dart';

Future initFirebaseMessagingCore() async {
  try {
    if (Firebase.apps.isNotEmpty) {
      return;
    }

    final envValues = FFDevEnvironmentValues();
    final isAndroid =
        !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: isAndroid ? envValues.apiKeyAndroid : envValues.apiKeyIOS,
        appId: isAndroid ? envValues.appIdAndroid : envValues.appIdIOS,
        messagingSenderId: envValues.messagingSenderId,
        projectId: envValues.projectId,
        storageBucket: '${envValues.projectId}.firebasestorage.app',
      ),
    );

    debugPrint('FCM core initialized');
  } catch (e, stack) {
    debugPrint('FCM core init failed: $e\n$stack');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
