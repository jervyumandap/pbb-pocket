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
import 'package:excel/excel.dart' as exc;
import 'package:path_provider/path_provider.dart';

Future<FFUploadedFile> exportSOAToXlsx(
    List<StatementTransactionModelStruct> listTransactions) async {
  // Error handling for file creation process.
  try {
    var excel = exc.Excel.createExcel(); // Make new Excel file.
    exc.Sheet sheet = excel['TermDepositHistory']; // New sheet on Excel file.

    // Style for Cell titles.
    exc.CellStyle cellStyleTitle = exc.CellStyle(
      fontFamily: exc.getFontFamily(exc.FontFamily.Arial),
      bold: true,
      horizontalAlign: exc.HorizontalAlign.Center,
      topBorder: exc.Border(borderStyle: exc.BorderStyle.None),
      bottomBorder: exc.Border(borderStyle: exc.BorderStyle.None),
      leftBorder: exc.Border(borderStyle: exc.BorderStyle.None),
      rightBorder: exc.Border(borderStyle: exc.BorderStyle.None),
    );

    sheet.merge(
        exc.CellIndex.indexByString('A1'), exc.CellIndex.indexByString('D1'));

    // Add in header row information.
    var cell = sheet.cell(exc.CellIndex.indexByString('A1'));
    cell.value = null; // Take out cell values before editing.
    cell.value = exc.TextCellValue('Statement of Accounts');
    cell.cellStyle = cellStyleTitle;

    sheet.appendRow([]);

    // Add headers per column information for table in file.
    sheet.appendRow([
      exc.TextCellValue('Transaction Date'),
      exc.TextCellValue('Description'),
      exc.TextCellValue('Available Balance (PHP)'),
      exc.TextCellValue('Credit or Debit? (C or D)'),
      exc.TextCellValue('Transaction Amount'),
    ]);

    // Add in transactions.
    for (var i = 0; i < listTransactions.length; i++) {
      final item = listTransactions[i];
      sheet.appendRow([
        exc.TextCellValue('${item.tranDate}'),
        exc.TextCellValue('${item.fullNarration}'),
        exc.TextCellValue('${item.availableBalance}'),
        exc.TextCellValue('${item.debitCreditFlag}'),
        exc.TextCellValue('${item.tranAmount}')
      ]);
    }

    // Save and download spreadsheet.
    final now = DateTime.now();
    String filename =
        'Statement-of-Accounts_${now.year}${now.month}${now.day}_${now.hour}${now.minute}${now.second}.xlsx';
    var fileBytes = excel.save() as List<int>;
    var directory = await getApplicationDocumentsDirectory();
    String filePath = "${directory.path}/$filename";
    File file = File(filePath)
      ..createSync(recursive: true)
      ..writeAsBytesSync(fileBytes);
    final ffFileBytes = file.readAsBytesSync();
    return new FFUploadedFile(name: filePath, bytes: ffFileBytes);
  } catch (e) {
    throw Exception("Failed to export Excel file: $e");
  }
}
