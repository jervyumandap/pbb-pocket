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

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class AIScannerWidget extends StatefulWidget {
  const AIScannerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _AIScannerWidgetState createState() => _AIScannerWidgetState();
}

class _AIScannerWidgetState extends State<AIScannerWidget> {
  String _barcode = 'Tap a scan option below';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AiBarcodeScanner(
      // Use appBarBuilder to provide a custom AppBar.
      appBarBuilder: (context, controller) {
        return AppBar(
          title: const Text("Custom Scanner"),
          centerTitle: true,
          backgroundColor: Colors.green,
        );
      },
      onDetect: (BarcodeCapture capture) {
        /// Do something with the barcode
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => QrisPage(),
        //   ),
        // );

        _barcode = capture.raw.toString();
      },
    );
  }
}
