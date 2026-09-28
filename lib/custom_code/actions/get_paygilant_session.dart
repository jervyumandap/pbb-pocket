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

import 'package:paygilant_plugin/paygilant_plugin.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart' as html;

Future<String?> getPaygilantSession() async {
  try {
    if (kIsWeb) {
      // The Web SDK (loaded in index.html) creates the session ID
      // asynchronously. A single read at page load runs before
      // `pg_fms_sid` exists, so we poll localStorage until it appears.
      const interval = Duration(milliseconds: 250);
      const maxAttempts = 32; // 32 * 250ms ≈ 8s upper bound

      for (var attempt = 0; attempt < maxAttempts; attempt++) {
        final sessionId = html.window.localStorage['pg_fms_sid'];
        if (sessionId != null &&
            sessionId.isNotEmpty &&
            sessionId != 'no_session_id') {
          debugPrint(
              'Paygilant Web: Session ID retrieved on attempt ${attempt + 1}.');
          return sessionId;
        }
        await Future.delayed(interval);
      }

      debugPrint('Paygilant Web: Session ID unavailable after polling (~8s).');
      return null;
    }

    // ---------- Mobile (unchanged, already working) ----------
    final isPolicyApproved = await PaygilantPlugin.isApprovePolicy;
    debugPrint('Paygilant Mobile: isApprovePolicy = $isPolicyApproved');

    if (!isPolicyApproved) {
      debugPrint('Paygilant Mobile: Policy not approved.');
      return null;
    }

    final sessionId = await PaygilantPlugin.getSessionId;
    if (sessionId.isEmpty || sessionId == 'no_session_id') {
      debugPrint('Paygilant Mobile: Session ID unavailable.');
      return null;
    }

    debugPrint('Paygilant Mobile: Session ID retrieved successfully.');
    return sessionId;
  } catch (e, stackTrace) {
    debugPrint('Paygilant: Failed to get session ID: $e');
    debugPrintStack(stackTrace: stackTrace);
    return null;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

/// 9-2-2026
// Future<String?> getPaygilantSession() async {
//   try {
//     final approved = await PaygilantPlugin.isApprovePolicy;
//     debugPrint("Paygilant: isApprovePolicy = $approved");

//     if (!approved) {
//       debugPrint("Paygilant: Policy not approved.");
//       return null;
//     }

//     final sessionId = await PaygilantPlugin.getSessionId;
//     debugPrint("Paygilant: getSessionId = $sessionId");

//     if (sessionId.isEmpty || sessionId == "no_session_id") {
//       debugPrint("Paygilant: Session ID unavailable.");
//       return null;
//     }

//     return sessionId;
//   } catch (e) {
//     debugPrint("Paygilant: getSessionId FAILED: $e");
//     return null;
//   }
// }
