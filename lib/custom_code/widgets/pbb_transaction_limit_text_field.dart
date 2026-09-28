// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'package:flutter/services.dart';

// ─── Formatter ───────────────────────────────────────────────────────────────
import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:flutter/services.dart';

// ─── Formatter ───────────────────────────────────────────────────────────────

class _CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final String raw =
        newValue.text.replaceAll(',', '').replaceAll(RegExp(r'[^\d.]'), '');

    final int dotIndex = raw.indexOf('.');
    String intPart;
    String? decPart;

    if (dotIndex != -1) {
      intPart = raw.substring(0, dotIndex);
      decPart = raw.substring(dotIndex + 1).replaceAll('.', '');
      if (decPart.length > 2) decPart = decPart.substring(0, 2);
    } else {
      intPart = raw;
    }

    String formatted = _addCommas(intPart);
    if (decPart != null) formatted += '.$decPart';
    if (newValue.text.endsWith('.') && dotIndex == -1) formatted += '.';

    final int rawCursor =
        newValue.selection.baseOffset.clamp(0, newValue.text.length);
    final String beforeCursor = newValue.text
        .substring(0, rawCursor)
        .replaceAll(',', '')
        .replaceAll(RegExp(r'[^\d.]'), '');

    int matched = 0;
    int newCursor = 0;
    for (int i = 0; i < formatted.length; i++) {
      if (matched >= beforeCursor.length) break;
      if (formatted[i] != ',') matched++;
      newCursor = i + 1;
    }
    if (matched < beforeCursor.length) newCursor = formatted.length;

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: newCursor),
    );
  }

  static String _addCommas(String s) {
    if (s.isEmpty) return '';
    final buf = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write(',');
      buf.write(s[i]);
    }
    return buf.toString();
  }
}

// ─── Widget ──────────────────────────────────────────────────────────────────

class PbbTransactionLimitTextField extends StatefulWidget {
  const PbbTransactionLimitTextField({
    super.key,
    this.width,
    this.height,
    this.label = 'Daily Transfer Limit',
    this.initialValue,
    this.minAmount,
    this.maxAmount,
    this.isRequired = false,
    this.onChanged,
  });

  final double? width;
  final double? height;
  final String label;
  final double? initialValue;
  final double? minAmount;
  final double? maxAmount;
  final bool isRequired;
  final Future Function(String? value)? onChanged; // ← named "value"

  @override
  State<PbbTransactionLimitTextField> createState() =>
      _PbbTransactionLimitTextFieldState();
}

class _PbbTransactionLimitTextFieldState
    extends State<PbbTransactionLimitTextField> {
  late final TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();

  String? _errorMessage;
  bool _isDirty = false;

  double? currentValue;
  String? currentFormattedValue; // ← holds "1,293.00"

  static const Color _borderDefault = Color(0xFF676666);
  static const Color _errorColor = Color(0xFFB3261E);
  static const Color _labelColor = Color(0xFF8C8F9A);
  static const Color _textPrimary = Color(0xFF020000);

  @override
  void initState() {
    super.initState();

    currentValue = widget.initialValue;
    final String initial = widget.initialValue != null
        ? _buildFormatted(widget.initialValue!)
        : '';
    currentFormattedValue = initial.isEmpty ? null : initial;

    _controller = TextEditingController(text: initial);
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) _reformatOnBlur();
      setState(() {});
    });

    WidgetsBinding.instance
        .addPostFrameCallback((_) => _validate(_controller.text, silent: true));
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  String _buildFormatted(double val) {
    final parts = val.toStringAsFixed(2).split('.');
    return '${_CurrencyInputFormatter._addCommas(parts[0])}.${parts[1]}';
  }

  void _reformatOnBlur() {
    final double? val = double.tryParse(_controller.text.replaceAll(',', ''));
    if (val == null) return;

    // Always reformat to 2 decimal places on blur e.g. "1293" → "1,293.00"
    final String formatted = _buildFormatted(val);
    currentFormattedValue = formatted;

    _controller.value = TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );

    // Fire callback with the fully formatted value on blur too
    widget.onChanged?.call(formatted);
  }

  void _onChanged(String val) {
    final double? parsed = double.tryParse(val.replaceAll(',', ''));
    currentValue = parsed;

    // Build formatted string: if parsed, show with 2 decimals; else raw val
    if (parsed != null) {
      currentFormattedValue = _buildFormatted(parsed);
    } else {
      currentFormattedValue = val.isEmpty ? null : val;
    }

    _validate(val);

    // Fire callback with formatted value e.g. "1,293.00"
    widget.onChanged?.call(currentFormattedValue);
  }

  void _validate(String val, {bool silent = false}) {
    if (!silent) _isDirty = true;

    final double? parsed = double.tryParse(val.replaceAll(',', ''));

    String? error;
    if (widget.isRequired && val.trim().isEmpty) {
      error = 'Required field';
    } else if (val.isNotEmpty && parsed == null) {
      error = 'Invalid amount';
    } else if (parsed != null &&
        widget.minAmount != null &&
        parsed < widget.minAmount!) {
      error =
          'Minimum is ₱ ${_CurrencyInputFormatter._addCommas(widget.minAmount!.toStringAsFixed(0))}';
    } else if (parsed != null &&
        widget.maxAmount != null &&
        parsed > widget.maxAmount!) {
      error =
          'Maximum is ₱ ${_CurrencyInputFormatter._addCommas(widget.maxAmount!.toStringAsFixed(0))}';
    }

    setState(() => _errorMessage = error);
  }

  @override
  Widget build(BuildContext context) {
    final bool showError = _isDirty && _errorMessage != null;
    final Color borderColor = showError ? _errorColor : _borderDefault;
    final double borderWidth = showError ? 2.0 : 1.0;
    final Color labelColor = showError ? _errorColor : _labelColor;

    return SizedBox(
      width: widget.width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 56,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: borderWidth, color: borderColor),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // ── ₱ prefix + input ──────────────────────────────────────
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 16, right: 16, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '₱  ',
                        style: TextStyle(
                          color: _textPrimary,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.50,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          focusNode: _focusNode,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[\d.,]')),
                            _CurrencyInputFormatter(),
                          ],
                          onChanged: _onChanged,
                          style: TextStyle(
                            color: _textPrimary,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 1.50,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ── Floating label ─────────────────────────────────────────
                Positioned(
                  left: 12,
                  top: -10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    color: Colors.white,
                    child: Text(
                      widget.label,
                      style: TextStyle(
                        color: labelColor,
                        fontSize: 12,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w500,
                        height: 1.33,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ── Error text ───────────────────────────────────────────────────
          if (showError)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 16),
              child: Text(
                _errorMessage!,
                style: const TextStyle(
                  color: _errorColor,
                  fontSize: 12,
                  fontFamily: 'Inter',
                ),
              ),
            ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
