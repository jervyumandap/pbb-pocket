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

import 'package:open_file/open_file.dart';

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

// For Web download
// ignore: avoid_web_libraries_in_flutter
// import 'dart:html' as html;
import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<void> downloadJsonAsCsv(List<dynamic> data, String fileName) async {
  if (data.isEmpty) {
    debugPrint("Theres no data, stop downloadJsonAsCsv");
    return;
  }

  debugPrint("proceeding csv download");

  // Extract headers from first object
  final headers = (data.first as Map<String, dynamic>).keys.toList();

  // Convert to CSV
  final csvBuffer = StringBuffer();

  // Header row
  csvBuffer.writeln(headers.join(','));

  // Data rows
  for (var item in data) {
    final row = headers.map((key) {
      final value = item[key]?.toString() ?? '';
      // Escape commas and quotes
      final escaped = value.replaceAll('"', '""');
      return '"$escaped"';
    }).join(',');
    csvBuffer.writeln(row);
  }

  final csvString = csvBuffer.toString();

  // 🌐 Web download
  if (kIsWeb) {
    final bytes = utf8.encode(csvString);
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "$fileName.csv")
      ..click();

    html.Url.revokeObjectUrl(url);
  }

  // Mobile (save locally + open file)
  else {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$fileName.csv';
    final file = File(filePath);

    await file.writeAsString(csvString);

    print('CSV saved to $filePath');

    // 👇 Open the file immediately
    await OpenFile.open(filePath);
  }
  // Mobile (save to device)
  // else {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final path = '${directory.path}/$fileName.csv';
  //   final file = File(path);

  //   await file.writeAsString(csvString);
  //   print('CSV saved to $path');
  // }

  debugPrint("downloadJsonAsCSV End");
}
