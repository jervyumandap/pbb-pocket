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

import 'package:qr_flutter/qr_flutter.dart';

class QrFlutterGeneratorWidget extends StatefulWidget {
  const QrFlutterGeneratorWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<QrFlutterGeneratorWidget> createState() =>
      _QrFlutterGeneratorWidgetState();
}

class _QrFlutterGeneratorWidgetState extends State<QrFlutterGeneratorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // QrImageView
      child: QrImageView(
        data: widget.data,
        eyeStyle: QrEyeStyle(eyeShape: QrEyeShape.square, color: Colors.black),
        dataModuleStyle: QrDataModuleStyle(
            dataModuleShape: QrDataModuleShape.square, color: Colors.black),
        semanticsLabel: 'qr code',
        version: QrVersions.auto,
        size: widget.width,
        gapless: true,
        errorStateBuilder: (cxt, err) {
          return Container(
            child: Center(
              child: Text(
                'Uh oh! Something went wrong...',
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
