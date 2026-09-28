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

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart' as html;
import 'package:paygilant_plugin/paygilant_plugin.dart';

Future<String> paygilantLogout(String? appKey) async {
  // Add your function code here!
  try {
    if (kIsWeb) {
      // Remove the cached session ID so a stale session is not reused.
      try {
        html.window.localStorage.remove('pg_fms_sid');
      } catch (e) {
        debugPrint('Paygilant Web: Failed to remove cached session: $e');
      }

      // Signal the logout to the Web SDK.
      if (appKey != null && appKey.isNotEmpty) {
        html.document.cookie =
            '__sflc$appKey=1; Path=/; Max-Age=300; SameSite=Lax';
      }

      // Reload so the Web SDK can initialize a fresh session.
      html.window.location.reload();

      return '';
    }

    // Mobile
    final isPolicyApproved = await PaygilantPlugin.isApprovePolicy;

    if (!isPolicyApproved) {
      debugPrint('Paygilant Mobile: Policy not approved.');
      return '';
    }

    await PaygilantPlugin.logout;

    final newSessionId = await PaygilantPlugin.getSessionId;

    if (newSessionId.isEmpty || newSessionId == 'no_session_id') {
      debugPrint('Paygilant Mobile: New session ID unavailable.');
      return '';
    }

    debugPrint('Paygilant Mobile: New session created successfully.');

    return newSessionId;
  } catch (e, stackTrace) {
    debugPrint('Paygilant: Logout failed: $e');
    debugPrintStack(stackTrace: stackTrace);
    return '';
  }
}
