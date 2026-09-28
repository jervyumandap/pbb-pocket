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

import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

class CustomRadioButtonOnly extends StatefulWidget {
  const CustomRadioButtonOnly({
    super.key,
    this.width,
    this.height,
    required this.isSelected,
    required this.onTap,
    this.size = 24.0,
    this.activeColor,
  });

  final double? width;
  final double? height;
  final bool isSelected;
  final Future Function() onTap;
  final double size;
  final Color? activeColor;

  @override
  State<CustomRadioButtonOnly> createState() => _CustomRadioButtonOnlyState();
}

class _CustomRadioButtonOnlyState extends State<CustomRadioButtonOnly> {
  @override
  Widget build(BuildContext context) {
    // Default teal color from your screenshot if none is provided
    final primaryColor = widget.activeColor ?? const Color(0xFF00A9B5);
    final double outerStroke =
        widget.size * 0.1; // Proportional border thickness
    final double innerDotSize =
        widget.size * 0.5; // Dot is half the size of the ring

    return GestureDetector(
      onTap: () async {
        await widget.onTap();
      },
      child: Container(
        width: widget.width ?? widget.size,
        height: widget.height ?? widget.size,
        // Transparent background so it's easy to place anywhere
        color: Colors.transparent,
        child: Center(
          child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: primaryColor,
                width: outerStroke,
              ),
            ),
            child: Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                width: widget.isSelected ? innerDotSize : 0,
                height: widget.isSelected ? innerDotSize : 0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
