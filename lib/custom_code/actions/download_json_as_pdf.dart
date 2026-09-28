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

import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> downloadJsonAsPdf(List<dynamic> jsonList, String fileName) async {
  if (jsonList.isEmpty) {
    debugPrint("Theres no data, stop downloadJsonAsPdf");
    return;
  }

  debugPrint("proceeding downloadJsonAsPdf");

  final pdf = pw.Document();

  // Extract headers
  final headers = (jsonList.first as Map<String, dynamic>).keys.toList();

  // Convert JSON to table data
  final data = jsonList.map((item) {
    return headers.map((key) {
      return (item[key] ?? '').toString();
    }).toList();
  }).toList();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4.landscape,
      build: (pw.Context context) {
        return pw.Table.fromTextArray(
          headers: headers,
          data: data,
        );
      },
    ),
  );

  final Uint8List pdfBytes = await pdf.save();

  // Web download
  if (kIsWeb) {
    final blob = html.Blob([pdfBytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);

    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "$fileName.pdf")
      ..click();

    html.Url.revokeObjectUrl(url);
  }

  // Mobile (save locally + open file)
  else {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$fileName.pdf';
    final file = File(filePath);

    await file.writeAsBytes(pdfBytes);

    print('PDF saved to $filePath');

    // 👇 Open the file immediately
    await OpenFile.open(filePath);
  }

  // Mobile (save locally)
  // else {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final file = File('${directory.path}/$fileName.pdf');

  //   await file.writeAsBytes(pdfBytes);
  //   print('PDF saved to ${file.path}');
  // }

  debugPrint("downloadJsonAsPdf End");
}
