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

import '/custom_code/download_helper.dart';

Future<bool> downloadInvestmentStatement(
  String downloadUrl,
  String fileName,
) async {
  try {
    if (downloadUrl.isEmpty) {
      throw Exception("Download URL is empty");
    }
    await downloadFileV2(downloadUrl, fileName);

    return true;
  } catch (e) {
    debugPrint("Download Error: $e");
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
