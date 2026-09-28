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

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

Future<FFUploadedFile> exportSOAToPdf(
    List<StatementTransactionModelStruct> listTransactions) async {
  try {
    // Save statement.
    final now = DateTime.now();
    Uri url = Uri.parse("");
    var filename =
        "Statement-of-Accounts_${now.year}${now.month}${now.day}_${now.hour}${now.minute}${now.second}.pdf";
    final response = await http.post(url);
    var fileBytes = response.bodyBytes;
    File file = File(filename)
      ..createSync(recursive: true)
      ..writeAsBytes(fileBytes);
    final pdfBytes = file.readAsBytesSync();
    return new FFUploadedFile(name: filename, bytes: pdfBytes);
  } catch (e) {
    throw Exception("Unable to create PDF file for Statement of Accounts: $e");
  }
}
