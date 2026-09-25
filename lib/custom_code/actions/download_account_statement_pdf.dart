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

import 'dart:ui' as ui;

Future downloadAccountStatementPdf(
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
  final pdf = pw.Document();

  final formatter = DateFormat('dd-MMM-yyyy');
  final amountFormatter = NumberFormat('#,##0.00');

  // avoid showing 0.00
  String formatAmount(dynamic value) {
    final amount = double.tryParse(
          value?.toString().replaceAll(',', '') ?? '',
        ) ??
        0;

    return amount == 0 ? '' : amountFormatter.format(amount);
  }

  pdf.addPage(
    pw.MultiPage(
      pageFormat: PdfPageFormat.a4.landscape,
      margin: const pw.EdgeInsets.all(20),
      build: (context) => [
        pw.SizedBox(height: 20),
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Customer Name & Address:',
                    style: pw.TextStyle(
                      fontSize: 14,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text('$customerName'),
                  pw.Text('Bgy Parada, NCR')
                ],
              ),
            ),
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    'Branch Name & Address:',
                    style: pw.TextStyle(
                      fontSize: 14,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.Text('Tarlac Branch'),
                  pw.Text(
                      'G/F Ques Kian Juat Bldg F. Tanedo Street Brgy. San Nicolas 2300,Tarlac City'),
                  pw.Text('Phone: 454911350,459253302,459253298,000'),
                ],
              ),
            ),
          ],
        ),
        pw.SizedBox(height: 20),
        pw.Container(
          width: double.infinity,
          padding: const pw.EdgeInsets.symmetric(vertical: 12),
          decoration: pw.BoxDecoration(
            color: PdfColors.grey700,
            border: pw.Border.all(
              color: PdfColors.black,
              width: 1,
            ),
          ),
          child: pw.Center(
            child: pw.Text(
              'ACCOUNT STATEMENT from ${formatter.format(fromDate)} to ${formatter.format(toDate)}',
              style: pw.TextStyle(
                fontSize: 18,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.white,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
        // pw.SizedBox(height: 4),
        // pw.Center(
        //   child: pw.Text(
        //     '${formatter.format(fromDate)} - ${formatter.format(toDate)}',
        //     style: const pw.TextStyle(
        //       fontSize: 14,
        //       color: PdfColors.grey700,
        //     ),
        //   ),
        // ),
        pw.SizedBox(height: 20),
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('Account Name: $customerName'),
                  pw.Text('Account Number: $accountNumber'),
                  pw.Text('Account Type: $accountType'),
                  pw.Text('Customer Number: $accountNumber'),
                  pw.Text('Email ID: '),
                ],
              ),
            ),
            pw.Expanded(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('Account Category: IndNEntrp CAReg'),
                  pw.Text('Currency: $currency'),
                  pw.Text('Account Open Date: Mar 23, 2022'),
                ],
              ),
            ),
          ],
        ),
        pw.SizedBox(height: 20),
        pw.TableHelper.fromTextArray(
          headers: const [
            'Txn. Date',
            'Description',
            'Ref. No.',
            'Value Date',
            'Debit',
            'Credit',
            'Balance',
          ],

          headerStyle: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
            color: PdfColors.white,
          ),

          headerDecoration: const pw.BoxDecoration(
            color: PdfColors.grey700,
          ),

          // Column alignments
          cellAlignments: {
            0: pw.Alignment.centerLeft,
            1: pw.Alignment.centerLeft,
            2: pw.Alignment.centerLeft,
            3: pw.Alignment.centerLeft,
            4: pw.Alignment.centerRight, // Debit
            5: pw.Alignment.centerRight, // Credit
            6: pw.Alignment.centerRight, // Balance
          },

          data: transactions.map((txn) {
            final json = Map<String, dynamic>.from(txn);

            double parseAmount(dynamic value) {
              if (value == null) return 0;

              if (value is num) return value.toDouble();

              return double.tryParse(
                    value.toString().replaceAll(',', ''),
                  ) ??
                  0;
            }

            return [
              json['Txn. Date']?.toString() ?? '',
              json['Description']?.toString() ?? '',
              json['Ref. No.']?.toString() ?? '',
              json['Value Date']?.toString() ?? '',
              formatAmount(json['Debit']),
              formatAmount(json['Credit']),
              amountFormatter.format(parseAmount(json['Balance'])),
            ];

            // return [
            //   json['Txn. Date']?.toString() ?? '',
            //   json['Description']?.toString() ?? '',
            //   json['Ref. No.']?.toString() ?? '',
            //   json['Value Date']?.toString() ?? '',
            //   amountFormatter.format(parseAmount(json['Debit'])),
            //   amountFormatter.format(parseAmount(json['Credit'])),
            //   amountFormatter.format(parseAmount(json['Balance'])),
            // ];
          }).toList(),
        ),
      ],
    ),
  );

  final bytes = await pdf.save();
  final filename =
      'Account_Statement_${customerName}_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf';

  if (kIsWeb) {
    final base64Data = base64Encode(bytes);

    final anchor = html.AnchorElement(
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

  // final filename =
  //     'Account_Statement_${customerName}_${DateFormat('yyyyMMdd_HHmmss').format(DateTime.now())}.pdf';
  // final dir = await getApplicationDocumentsDirectory();
  // final file = File('${dir.path}/$filename');
  // await file.writeAsBytes(await pdf.save());
  // await OpenFile.open(file.path);
}
