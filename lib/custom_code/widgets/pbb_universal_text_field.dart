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

import 'package:google_fonts/google_fonts.dart';

class PbbUniversalTextField extends StatefulWidget {
  const PbbUniversalTextField({
    super.key,
    this.width,
    this.height,
    required this.label,
    this.hintText,
    this.initialValue,
    this.minLength,
    this.maxLength,
    this.isRequired = false,
    this.onChanged,
    this.onValidationChanged,
    this.fieldName, // Added to identify the field in a JSON map
  });

  final double? width;
  final double? height;
  final String label;
  final String? hintText;
  final String? initialValue;
  final int? minLength;
  final int? maxLength;
  final bool isRequired;
  final String? fieldName;
  final Future Function(String? value)? onChanged;
  final Future Function(bool isValid, String? fieldName)? onValidationChanged;

  @override
  State<PbbUniversalTextField> createState() => _PbbUniversalTextFieldState();
}

class _PbbUniversalTextFieldState extends State<PbbUniversalTextField> {
  late TextEditingController _textController;
  String? _errorMessage;
  bool _isDirty = false; // Only show error after user types

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.initialValue ?? '');

    // Initial silent validation
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => _validate(_textController.text, force: false));
  }

  void _validate(String val, {bool force = true}) {
    if (force) _isDirty = true;

    String? error;
    if (widget.isRequired && val.trim().isEmpty) {
      error = 'Required field';
    } else if (val.isNotEmpty &&
        widget.minLength != null &&
        val.length < widget.minLength!) {
      error = 'Too short (min ${widget.minLength})';
    } else if (widget.maxLength != null && val.length > widget.maxLength!) {
      error = 'Too long (max ${widget.maxLength})';
    }

    setState(() => _errorMessage = error);

    if (widget.onValidationChanged != null) {
      widget.onValidationChanged!(error == null, widget.fieldName);
    }
  }

  @override
  Widget build(BuildContext context) {
    bool showError = _isDirty && _errorMessage != null;
    final Color errorColor = const Color(0xFFB3261E);

    return Container(
      width: widget.width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: showError ? errorColor : const Color(0xFF676666),
                    width: showError ? 2.0 : 1.0,
                  ),
                ),
                child: Center(
                  child: TextField(
                    controller: _textController,
                    onChanged: (val) {
                      _validate(val);
                      if (widget.onChanged != null) widget.onChanged!(val);
                    },
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: -10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  color: Colors.white,
                  child: Text(widget.label,
                      style: TextStyle(
                          fontSize: 12,
                          color: showError ? errorColor : Colors.black)),
                ),
              ),
            ],
          ),
          if (showError)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 16),
              child: Text(_errorMessage!,
                  style: TextStyle(color: errorColor, fontSize: 12)),
            ),
        ],
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
