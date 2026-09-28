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

Future<void> initPaygilant(String serverUrl) async {
  try {
    if (serverUrl.trim().isEmpty) {
      debugPrint("Paygilant: Server URL is empty.");
      return;
    }

    await PaygilantPlugin.setApprovePolicy(true);

    final approved = await PaygilantPlugin.isApprovePolicy;
    debugPrint("Approve Policy = $approved");

    await PaygilantPlugin.init(
      serverUrl,
      clientSessionId: null,
      toAskPermissions: true,
    );

    debugPrint("Paygilant initialized successfully.");
  } catch (e, s) {
    debugPrint("Paygilant init failed:");
    debugPrint(e.toString());
    debugPrint(s.toString());
  }

  // try {
  //   if (serverUrl.trim().isEmpty) {
  //     debugPrint("Paygilant: Server URL is empty.");
  //     return;
  //   }

  //   final approved = await PaygilantPlugin.isApprovePolicy;
  //   debugPrint("Paygilant: isApprovePolicy BEFORE init = $approved");

  //   await PaygilantPlugin.init(
  //     serverUrl,
  //     clientSessionId: null,
  //     toAskPermissions: true,
  //   ).timeout(
  //     const Duration(seconds: 20),
  //     onTimeout: () {
  //       throw Exception(
  //         "Connection timed out. Check your internet or Server URL.",
  //       );
  //     },
  //   );

  //   debugPrint("Paygilant: init SUCCESS");

  //   final approvedAfter = await PaygilantPlugin.isApprovePolicy;
  //   debugPrint("Paygilant: isApprovePolicy AFTER init = $approvedAfter");
  // } catch (e) {
  //   debugPrint("Paygilant init error: $e");

  //   if (e.toString().contains("SET_APPROVE_POLICY_TO_TRUE")) {
  //     debugPrint("Paygilant: Policy approval required.");

  //     try {
  //       await PaygilantPlugin.setApprovePolicy(true);
  //       debugPrint("Paygilant: setApprovePolicy SUCCESS");

  //       final approved = await PaygilantPlugin.isApprovePolicy;
  //       debugPrint(
  //           "Paygilant: isApprovePolicy AFTER setApprovePolicy = $approved");

  //       await PaygilantPlugin.init(
  //         serverUrl,
  //         clientSessionId: null,
  //         toAskPermissions: true,
  //       );

  //       debugPrint("Paygilant: Re-init SUCCESS");
  //     } catch (policyError) {
  //       debugPrint("Paygilant: setApprovePolicy/Re-init FAILED: $policyError");
  //     }
  //   } else if (e.toString().contains("CONNECTION_ERROR")) {
  //     debugPrint(
  //         "Paygilant: CONNECTION_ERROR. Verify the server URL and network.");
  //   } else {
  //     debugPrint("Paygilant: Unexpected error: $e");
  //   }
  // }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
