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

class CollapsingLoginHeader extends StatefulWidget {
  const CollapsingLoginHeader({
    super.key,
    required this.width,
    required this.height,
    required this.isCollapsed,
    required this.expandedHeight,
    required this.collapsedHeight, // Make sure this is added in FF Parameters
    required this.headerContent,
    this.animationDuration,
    this.animationCurve,
  });

  final double width;
  final double height;
  final bool isCollapsed;
  final double expandedHeight;
  final double collapsedHeight;
  final Widget Function() headerContent;
  final int? animationDuration;
  final int? animationCurve;

  @override
  State<CollapsingLoginHeader> createState() => _CollapsingLoginHeaderState();
}

class _CollapsingLoginHeaderState extends State<CollapsingLoginHeader> {
  Curve _resolveCurve() {
    switch (widget.animationCurve ?? 0) {
      case 1:
        return Curves.easeIn;
      case 2:
        return Curves.easeOut;
      case 3:
        return Curves.fastOutSlowIn;
      case 0:
      default:
        return Curves.easeInOut;
    }
  }

  @override
  Widget build(BuildContext context) {
    final duration = Duration(milliseconds: widget.animationDuration ?? 300);
    final curve = _resolveCurve();

    return AnimatedContainer(
      duration: duration,
      curve: curve,
      width: widget.width,
      // DITO ANG FIX: Imbis na 0, gagamitin nito ang collapsedHeight (80.0)
      height:
          widget.isCollapsed ? widget.collapsedHeight : widget.expandedHeight,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      child: AnimatedOpacity(
        duration: Duration(
          milliseconds: ((widget.animationDuration ?? 300) * 0.65).round(),
        ),
        curve: curve,
        // DITO ANG FIX: Ginawa nating 1.0 para hindi mag-fade out ang logo/image
        opacity: 1.0,
        child: SizedBox(
          width: widget.width,
          height: widget.expandedHeight,
          child: widget.headerContent(),
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
