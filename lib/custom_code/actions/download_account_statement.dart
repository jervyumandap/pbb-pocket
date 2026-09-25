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

import 'dart:io';

import 'package:excel/excel.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'package:open_file/open_file.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;

Future downloadAccountStatement(
  String customerName,
  String branchName,
  String branchAddress,
  String accountName,
  String accountNumber,
  String currency,
  String accountType,
  List<dynamic> transactions,
  DateTime fromDate,
  DateTime toDate,
) async {
  // Add your function code here!
  final excel = Excel.createExcel();
  excel.rename('Sheet1', 'Account Statement');
  final sheet = excel['Account Statement'];

  final statementFormatter = DateFormat('dd-MMM-yyyy');

  // TITLE
  sheet.merge(
    CellIndex.indexByString("A1"),
    CellIndex.indexByString("G1"),
  );

  final asCell = sheet.cell(CellIndex.indexByString("A1"));
  asCell.value = TextCellValue("ACCOUNT STATEMENT");

  asCell.cellStyle = CellStyle(
    horizontalAlign: HorizontalAlign.Center,
    verticalAlign: VerticalAlign.Center,
  );

  sheet.merge(
    CellIndex.indexByString("A2"),
    CellIndex.indexByString("G2"),
  );

  final dateCell = sheet.cell(CellIndex.indexByString("A2")); //
  dateCell.value = TextCellValue(
      "${statementFormatter.format(fromDate)} to ${statementFormatter.format(toDate)}");

  dateCell.cellStyle = CellStyle(
    horizontalAlign: HorizontalAlign.Center,
    verticalAlign: VerticalAlign.Center,
  );

  // CUSTOMER DETAILS
  sheet.cell(CellIndex.indexByString("A4")).value =
      TextCellValue("Customer Name");
  sheet.cell(CellIndex.indexByString("B4")).value = TextCellValue(customerName);

  sheet.cell(CellIndex.indexByString("A5")).value =
      TextCellValue("Branch Name");
  sheet.cell(CellIndex.indexByString("B5")).value = TextCellValue(branchName);

  sheet.cell(CellIndex.indexByString("A6")).value =
      TextCellValue("Branch Address");
  sheet.cell(CellIndex.indexByString("B6")).value =
      TextCellValue(branchAddress);

  // ACCOUNT DETAILS
  sheet.cell(CellIndex.indexByString("C4")).value =
      TextCellValue("Account Name");
  sheet.cell(CellIndex.indexByString("D4")).value = TextCellValue(accountName);

  sheet.cell(CellIndex.indexByString("C5")).value =
      TextCellValue("Account Number");
  sheet.cell(CellIndex.indexByString("D5")).value =
      TextCellValue(accountNumber);

  sheet.cell(CellIndex.indexByString("C6")).value = TextCellValue("Currency");
  sheet.cell(CellIndex.indexByString("D6")).value = TextCellValue(currency);

  sheet.cell(CellIndex.indexByString("C7")).value =
      TextCellValue("Account Type");
  sheet.cell(CellIndex.indexByString("D7")).value = TextCellValue(accountType);

  // TABLE HEADER
  const startRow = 8; //

  final headers = [
    "Txn. Date",
    "Description",
    "Ref. No.",
    "Value Date",
    "Debit",
    "Credit",
    "Balance"
  ];

  for (int col = 0; col < headers.length; col++) {
    sheet
        .cell(CellIndex.indexByColumnRow(
          columnIndex: col,
          rowIndex: startRow,
        ))
        .value = TextCellValue(headers[col]);
  }

  // TRANSACTIONS
  int row = startRow + 1;

  for (final txn in transactions) {
    print('Transactions count: ${transactions.length}');
    final json = Map<String, dynamic>.from(txn);

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: row))
        .value = TextCellValue(json['Txn. Date']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: row))
        .value = TextCellValue(json['Description']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: row))
        .value = TextCellValue(json['Ref. No.']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: row))
        .value = TextCellValue(json['Value Date']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 4, rowIndex: row))
        .value = TextCellValue(json['Debit']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: row))
        .value = TextCellValue(json['Credit']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 6, rowIndex: row))
        .value = TextCellValue(json['Balance']?.toString() ?? '');

    row++;
  }

  // COLUMN WIDTHS
  sheet.setColumnWidth(0, 20);
  sheet.setColumnWidth(1, 45);
  sheet.setColumnWidth(2, 20);
  sheet.setColumnWidth(3, 20);
  sheet.setColumnWidth(4, 10);
  sheet.setColumnWidth(5, 10);
  sheet.setColumnWidth(6, 10);
  sheet.setColumnWidth(7, 10);

  // SAVE FILE

  final filename =
      'Account_Statement_${customerName}_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.xlsx';

  final bytes = excel.encode();

  if (bytes == null || bytes.isEmpty) {
    print('Excel file is empty');
    return;
  }

  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/$filename');
  await file.writeAsBytes(bytes, flush: true);

  // final xFile = XFile(
  //   file.path,
  //   mimeType:
  //       'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
  // );

  // SHARE FILE
  // await Share.shareXFiles(
  //   [xFile],
  //   text: 'Account Statement',
  // );

  // OPEN FILE AFTER SHARING (optional)
  await OpenFile.open(file.path);
}
