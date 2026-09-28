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

import 'package:qr_bar_code/code/code.dart';
import 'package:qr_bar_code/qr/qr.dart';

class GenerateQrWidget extends StatefulWidget {
  const GenerateQrWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
    required this.primaryColor,
    required this.secondaryColor,
    this.isCircle = false,
  });

  final double? width;
  final double? height;
  final String data;
  final Color primaryColor;
  final Color secondaryColor;
  final bool? isCircle;

  @override
  State<GenerateQrWidget> createState() => _GenerateQrWidgetState();
}

class _GenerateQrWidgetState extends State<GenerateQrWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        QRCode(
            data: widget.data, // "https://datadirr.com"
            eyeStyle: QREyeStyle(
                eyeShape:
                    widget.isCircle! ? QREyeShape.circle : QREyeShape.square,
                color: widget.secondaryColor),
            dataModuleStyle: QRDataModuleStyle(
                color: widget.primaryColor,
                dataModuleShape: widget.isCircle!
                    ? QRDataModuleShape.circle
                    : QRDataModuleShape.square)),
      ],
    );
  }
}
