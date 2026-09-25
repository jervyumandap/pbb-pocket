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

// FlutterFlow Custom Action
// Name: tdCalculateEarnings
// Return type: JSON  ← change this in FlutterFlow
import 'dart:math' as math;
import 'dart:convert';
// FlutterFlow Custom Action
// Name: tdCalculateEarnings
// Return type: JS ON

Future<dynamic> tdCalculateEarnings(
  double amount,
  int tenorDays,
  double interestRateAnnual,
  String currency,
) async {
  final String cur = currency.toUpperCase();
  final int basis = (cur == 'USD') ? 360 : 365;
  final double rateDecimal = interestRateAnnual / 100.0;

  // ── Rounding (HALF_UP to 2 dp — matches Decimal.js ROUND_HALF_UP) ─────────
  double roundHalfUp(double value, [int places = 2]) {
    final factor = math.pow(10, places).toDouble();
    return (value * factor).roundToDouble() / factor;
  }

  // ── Maturity value — matches estimateTimeDepositMaturityValue() ────────────
  // principal + (principal × rate% × termDays / 365), rounded at boundary
  final double maturityValue = roundHalfUp(
    amount + (amount * (interestRateAnnual / 100) * (tenorDays / basis)),
  );

  // Pre-book estimate: gross = maturity − principal; no WHT deducted yet
  final double grossInterest = roundHalfUp(maturityValue - amount);
  const double withholdingTax = 0.0;
  final double netInterest = grossInterest;

  final double rAmt = roundHalfUp(amount);
  final double rGross = grossInterest;
  final double rWht = withholdingTax;
  final double rNet = netInterest;
  final double rMv = maturityValue;

  // ── Maturity date — matches addTimeDepositDays + Asia/Manila ─────────────
  DateTime bankLocalToday() {
    final manila = DateTime.now().toUtc().add(const Duration(hours: 8));
    return DateTime(manila.year, manila.month, manila.day);
  }

  DateTime addTimeDepositDays(DateTime date, int days) {
    return DateTime(date.year, date.month, date.day + days);
  }

  final DateTime maturityDate = addTimeDepositDays(bankLocalToday(), tenorDays);

  const List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  final String displayMaturityDate =
      '${months[maturityDate.month - 1]} ${maturityDate.day}, ${maturityDate.year}';

  final int approxMonths = (tenorDays / 30).round();
  final String displayTermLong = approxMonths > 0
      ? '$approxMonths month${approxMonths > 1 ? 's' : ''} · $tenorDays days'
      : '$tenorDays days';

  // ── Formatters ─────────────────────────────────────────────────────────────
  String fmtNum(double v) {
    final String s = v.toStringAsFixed(2);
    final List<String> parts = s.split('.');
    final String intPart = parts[0];
    final String decPart = parts[1];
    final StringBuffer buf = StringBuffer();
    int count = 0;
    for (int i = intPart.length - 1; i >= 0; i--) {
      if (count > 0 && count % 3 == 0) buf.write(',');
      buf.write(intPart[i]);
      count++;
    }
    return buf.toString().split('').reversed.join() + '.' + decPart;
  }

  // Use the currency code as-is (e.g. "PHP 1,234.00" / "USD 1,234.00")
  // instead of converting to a symbol.
  String money(double v) => '$cur ${fmtNum(v)}';

  // Rate display — API stores up to 4 dp (PBB InterestRate)
  String formatRate(double rate) {
    final s = rate.toStringAsFixed(4);
    return '${s.replaceAll(RegExp(r'0+$'), '').replaceAll(RegExp(r'\.$'), '')}%';
  }

  return {
    'principal': rAmt,
    'grossInterest': rGross,
    'withholdingTax': rWht,
    'netInterest': rNet,
    'maturityValue': rMv,
    'displayPrincipal': money(rAmt),
    'displayRate': formatRate(interestRateAnnual),
    'displayTerm': '$tenorDays days',
    'displayTermLong': displayTermLong,
    'displayGrossInterest': money(rGross),
    'displayWithholdingTax': rWht > 0 ? '-${money(rWht)}' : money(0),
    'displayNetInterest': money(rNet),
    'displayMaturityValue': money(rMv),
    'displayMaturityDate': displayMaturityDate,
    'basis': basis,
    'currency': cur,
  };
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
