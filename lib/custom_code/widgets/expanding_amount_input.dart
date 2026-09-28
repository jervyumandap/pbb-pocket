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
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class _AmountInputFormatter extends TextInputFormatter {
  final int maxDigits;
  static final NumberFormat _fmt = NumberFormat("#,###", "en_US");

  _AmountInputFormatter({required this.maxDigits});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String input = newValue.text;

    // Allow the user to completely clear the field.
    if (input.isEmpty) {
      return newValue;
    }

    String clean = input.replaceAll(',', '');

    bool hasDecimal = clean.contains('.');
    List<String> parts = clean.split('.');

    String intPart = parts[0];
    String decPart = parts.length > 1 ? parts[1] : '';

    // Limit integer digits.
    if (intPart.length > maxDigits) {
      intPart = intPart.substring(0, maxDigits);
    }

    // Limit decimal digits to 2.
    if (decPart.length > 2) {
      decPart = decPart.substring(0, 2);
    }

    String formatted;

    // If the integer portion is empty, don't force "0".
    if (intPart.isEmpty) {
      formatted = '';
    } else {
      try {
        formatted = _fmt.format(int.parse(intPart));
      } catch (_) {
        formatted = '';
      }
    }

    // Preserve decimal point while typing.
    if (hasDecimal) {
      formatted = '$formatted.$decPart';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(
        offset: formatted.length,
      ),
    );
  }
}

// ─── Widget ───────────────────────────────────────────────────────────────────

class ExpandingAmountInput extends StatefulWidget {
  const ExpandingAmountInput({
    super.key,
    this.width,
    this.height,
    this.initialValue,
    this.onChanged,
    this.fontSize,
    this.externalValue,
    this.isDisabled = false,
  });

  final double? width;
  final double? height;
  final String? initialValue;
  final Future Function(double? value)? onChanged;
  final double? fontSize;
  final double? externalValue;
  final bool isDisabled;

  @override
  State<ExpandingAmountInput> createState() => _ExpandingAmountInputState();
}

class _ExpandingAmountInputState extends State<ExpandingAmountInput> {
  late TextEditingController _textController;

  final NumberFormat _intFormatter = NumberFormat("#,###", "en_US");

  static const int maxDigits = 6;

  final Color primaryTextColor = const Color(0xFF43435B);

  double? _pendingValue;
  bool _callbackRunning = false;

  @override
  void initState() {
    super.initState();

    String initial = widget.initialValue ?? '';

    if (widget.externalValue != null) {
      initial = _formatForDisplay(widget.externalValue!);
    }

    _textController = TextEditingController(
      text: initial,
    );
  }

  @override
  void didUpdateWidget(ExpandingAmountInput oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.externalValue != oldWidget.externalValue &&
        widget.externalValue != null) {
      String newFormatted = _formatForDisplay(
        widget.externalValue!,
      );

      _textController.value = TextEditingValue(
        text: newFormatted,
        selection: TextSelection.collapsed(
          offset: newFormatted.length,
        ),
      );
    }
  }

  String _formatForDisplay(double val) {
    // Keep the field visually empty when value is 0.
    if (val == 0) {
      return '';
    }

    if (val == val.toInt()) {
      return _intFormatter.format(
        val.toInt(),
      );
    }

    List<String> parts = val.toString().split('.');

    String intPart = parts[0];
    String decPart = parts.length > 1 ? parts[1] : '';

    if (decPart.length > 2) {
      decPart = decPart.substring(0, 2);
    }

    return '${_intFormatter.format(int.parse(intPart))}.$decPart';
  }

  void _scheduleCallback(double? value) {
    _pendingValue = value;

    if (_callbackRunning) {
      return;
    }

    Future.delayed(
      const Duration(milliseconds: 300),
      () async {
        if (!mounted) {
          return;
        }

        if (_callbackRunning) {
          return;
        }

        _callbackRunning = true;

        try {
          while (_pendingValue != null) {
            final toSend = _pendingValue;

            _pendingValue = null;

            if (widget.onChanged != null) {
              await widget.onChanged!(
                toSend,
              );
            }
          }
        } finally {
          _callbackRunning = false;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? 350.0,
      height: widget.height ?? 88.0,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!widget.isDisabled) ...[
            Text(
              'Enter Amount',
              style: GoogleFonts.inter(
                color: const Color(0xFF99A1AF),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '₱',
                style: GoogleFonts.inter(
                  color: primaryTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              IntrinsicWidth(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 60,
                    maxWidth: 260,
                  ),
                  child: TextFormField(
                    controller: _textController,
                    autofocus: !widget.isDisabled,
                    readOnly: widget.isDisabled,
                    showCursor: !widget.isDisabled,
                    cursorColor: primaryTextColor,
                    cursorWidth: 2.0,
                    textAlign: TextAlign.start,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9,.]'),
                      ),
                      _AmountInputFormatter(
                        maxDigits: maxDigits,
                      ),
                    ],
                    style: GoogleFonts.inter(
                      color: primaryTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 4,
                      ),
                      hintText: '0.00',
                      hintStyle: GoogleFonts.inter(
                        color: const Color(0xFFC4C4C4),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      border: InputBorder.none,
                      counterText: '',
                    ),
                    onChanged: widget.isDisabled
                        ? null
                        : (val) {
                            setState(() {});

                            final clean = val.replaceAll(',', '');

                            // User cleared the field.
                            if (clean.isEmpty) {
                              _scheduleCallback(0);
                              return;
                            }

                            final number = double.tryParse(clean);

                            if (number != null) {
                              _scheduleCallback(number);
                            }
                          },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
