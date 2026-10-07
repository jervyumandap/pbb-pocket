// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

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

import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:universal_html/html.dart' as html;

// PBB BusinessBank logo used in the statement header (JPEG, base64).
const String _kPbbStatementLogoBase64 =
    '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';

// Statement palette (matches the official PBB loan statement layout).
const PdfColor _kStatementBlue = PdfColor.fromInt(0xFF4475A6);
const PdfColor _kBoxBorderGrey = PdfColor.fromInt(0xFF979797);
const PdfColor _kTableBorderGrey = PdfColor.fromInt(0xFFD1D2D2);
const PdfColor _kLabelGrey = PdfColor.fromInt(0xFF666666);

Future downloadLoanStatementPdf(
  String customerName,
  String branchName,
  String branchAddress,
  String accountName,
  String accountNumber,
  String currency,
  String accountType,
  String loanAccountNumber,
  List<dynamic> transactions,
  DateTime fromDate,
  DateTime toDate,
) async {
  final pdf = pw.Document();

  final periodFormatter = DateFormat('dd-MMM-yyyy');
  final generatedOnFormatter = DateFormat('MMM dd, yyyy HH:mm:ss');
  final amountFormatter = NumberFormat('#,##0.00');
  final generatedOn = DateTime.now();

  final logo = pw.MemoryImage(base64Decode(_kPbbStatementLogoBase64));

  final baseStyle = pw.TextStyle(fontSize: 8, color: PdfColors.black);
  final boldStyle = baseStyle.copyWith(fontWeight: pw.FontWeight.bold);
  final labelStyle = baseStyle.copyWith(color: _kLabelGrey);
  final cellStyle = pw.TextStyle(fontSize: 7, color: PdfColors.black);
  final headerCellStyle = pw.TextStyle(fontSize: 8, color: PdfColors.white);

  double parseAmount(dynamic value) {
    if (value == null) return 0;
    if (value is num) return value.toDouble();
    return double.tryParse(value.toString().replaceAll(',', '')) ?? 0;
  }

  // Statement shows every amount, including zero (e.g. "0.00").
  String formatAmount(dynamic value) =>
      amountFormatter.format(parseAmount(value));

  // Dates in the statement table use MM-dd-yyyy.
  String formatTableDate(dynamic value) =>
      (value?.toString() ?? '').replaceAll('/', '-');

  // Label / value pair used inside the account information boxes.
  pw.Widget infoRow(String label, String value, {double labelWidth = 88}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 2.5),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(
            width: labelWidth,
            child: pw.Text(label, style: labelStyle),
          ),
          pw.Expanded(child: pw.Text(value, style: baseStyle)),
        ],
      ),
    );
  }

  pw.Widget infoBox(List<pw.Widget> rows) {
    return pw.Container(
      padding: const pw.EdgeInsets.fromLTRB(5, 6, 5, 6),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: _kBoxBorderGrey, width: 0.8),
        borderRadius: const pw.BorderRadius.all(pw.Radius.circular(3)),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: rows,
      ),
    );
  }

  final tableRows = transactions.map((txn) {
    final json = Map<String, dynamic>.from(txn);
    return [
      formatTableDate(json['Txn. Date']),
      json['Description']?.toString() ?? '',
      formatTableDate(json['Value Date']),
      formatAmount(json['Debit']),
      formatAmount(json['Credit']),
      formatAmount(json['Balance']),
    ];
  }).toList();

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4,
      margin: const pw.EdgeInsets.fromLTRB(22, 34, 22, 14),
      theme: pw.ThemeData.withFont(
        base: pw.Font.helvetica(),
        bold: pw.Font.helveticaBold(),
      ),
      footer: (context) => pw.Align(
        alignment: pw.Alignment.bottomRight,
        child: pw.Text(
          'Page ${context.pageNumber} of ${context.pagesCount}',
          style: pw.TextStyle(fontSize: 7, color: PdfColors.black),
        ),
      ),
      build: (context) => [
        // Logo
        pw.Padding(
          padding: const pw.EdgeInsets.only(left: 320),
          child: pw.Image(logo, width: 130),
        ),
        pw.SizedBox(height: 28),

        // Customer & Branch blocks
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('Customer Name & Address :', style: boldStyle),
                  pw.Text(customerName.toUpperCase(), style: baseStyle),
                  pw.Text('Bgy Parada', style: baseStyle),
                  pw.Text(',NCR', style: baseStyle),
                ],
              ),
            ),
            pw.SizedBox(
              width: 173,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('Branch Name & Address :', style: boldStyle),
                  pw.Text('Loans and Discounts', style: baseStyle),
                  pw.Text('350 Rizal Ave Ext.', style: baseStyle),
                  pw.Text('8th Ave  Brgy 109', style: baseStyle),
                  pw.Text('Grace Park', style: baseStyle),
                  pw.Text('Caloocan City', style: baseStyle),
                  pw.Text('Phone :', style: baseStyle),
                ],
              ),
            ),
          ],
        ),
        pw.SizedBox(height: 25),

        // Title bar
        pw.Container(
          width: double.infinity,
          padding: const pw.EdgeInsets.symmetric(vertical: 4),
          color: _kStatementBlue,
          alignment: pw.Alignment.center,
          child: pw.Text(
            'Loan Statement from ${periodFormatter.format(fromDate)} to ${periodFormatter.format(toDate)}',
            style: pw.TextStyle(fontSize: 10, color: PdfColors.white),
          ),
        ),

        // Account information frame
        pw.Container(
          padding: const pw.EdgeInsets.fromLTRB(2, 4, 2, 4),
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: PdfColors.black, width: 0.8),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              infoBox([infoRow('Account Name', customerName.toUpperCase())]),
              pw.SizedBox(height: 6),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: infoBox([
                      infoRow('Account Number', loanAccountNumber),
                      infoRow('Account Type', accountType),
                      infoRow('Customer Number', accountNumber),
                      infoRow('Email ID', ''),
                    ]),
                  ),
                  pw.SizedBox(width: 12),
                  pw.Expanded(
                    child: infoBox([
                      pw.SizedBox(height: 3),
                      infoRow('Account Category', accountType, labelWidth: 86),
                      pw.SizedBox(height: 3),
                      infoRow('Currency', currency, labelWidth: 86),
                      pw.SizedBox(height: 3),
                      infoRow('Account Open Date', '23-Mar-2022',
                          labelWidth: 86),
                      pw.SizedBox(height: 3),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Transactions table
        pw.TableHelper.fromTextArray(
          headers: const [
            'Txn. Date',
            'Description',
            'Value date',
            'Debit',
            'Credit',
            'Balance',
          ],
          data: tableRows,
          columnWidths: const {
            0: pw.FixedColumnWidth(67),
            1: pw.FixedColumnWidth(200),
            2: pw.FixedColumnWidth(71),
            3: pw.FixedColumnWidth(68),
            4: pw.FixedColumnWidth(69),
            5: pw.FixedColumnWidth(76),
          },
          border: const pw.TableBorder(
            left: pw.BorderSide(color: _kTableBorderGrey, width: 0.8),
            right: pw.BorderSide(color: _kTableBorderGrey, width: 0.8),
            bottom: pw.BorderSide(color: _kTableBorderGrey, width: 0.8),
          ),
          headerStyle: headerCellStyle,
          headerDecoration: const pw.BoxDecoration(color: _kStatementBlue),
          headerHeight: 18,
          headerPadding: const pw.EdgeInsets.symmetric(horizontal: 3),
          headerAlignments: {
            0: pw.Alignment.centerLeft,
            1: pw.Alignment.centerLeft,
            2: pw.Alignment.centerLeft,
            3: pw.Alignment.center,
            4: pw.Alignment.center,
            5: pw.Alignment.centerRight,
          },
          cellStyle: cellStyle,
          cellHeight: 22,
          cellPadding: const pw.EdgeInsets.symmetric(horizontal: 3),
          cellAlignments: {
            0: pw.Alignment.centerLeft,
            1: pw.Alignment.centerLeft,
            2: pw.Alignment.centerLeft,
            3: pw.Alignment.centerRight,
            4: pw.Alignment.centerRight,
            5: pw.Alignment.centerRight,
          },
        ),
        pw.SizedBox(height: 10),
        pw.Divider(color: _kStatementBlue, thickness: 0.8, height: 0.8),
        pw.SizedBox(height: 20),

        // Generated On / Generated By
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              'Generated On :  ${generatedOnFormatter.format(generatedOn)}',
              style: boldStyle,
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.only(right: 16),
              child: pw.Text(
                'Generated By : ${customerName.toUpperCase()}',
                style: boldStyle,
              ),
            ),
          ],
        ),
      ],
    ),
  );

  final bytes = await pdf.save();
  final filename =
      'LoanStatement_${loanAccountNumber}_${DateFormat('yyyyMMdd_HHmmss').format(generatedOn)}.pdf';

  if (kIsWeb) {
    final base64Data = base64Encode(bytes);

    html.AnchorElement(
      href: 'data:application/pdf;base64,$base64Data',
    )
      ..setAttribute('download', filename)
      ..click();
  } else {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    await OpenFile.open(file.path);
  }
}
