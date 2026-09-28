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

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';

class AiBarcodeScannerWidget extends StatefulWidget {
  const AiBarcodeScannerWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<AiBarcodeScannerWidget> createState() => _AiBarcodeScannerWidgetState();
}

class _AiBarcodeScannerWidgetState extends State<AiBarcodeScannerWidget> {
  String _barcode = 'Tap a scan option below';

  /// Helper method to push the scanner screen and handle the result.
  Future<void> _navigateToScanner(Widget scanner) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => scanner,
      ),
    );

    // Update the UI with the scanned barcode if the result is not null.
    if (result != null && result is String) {
      setState(() {
        _barcode = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Barcode Scanner Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display area for the latest scanned barcode result.
            Expanded(
              child: Card(
                color: Colors.grey.shade200,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _barcode,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // List of buttons to open the scanner with different configurations.
            Expanded(
              flex: 2,
              child: ListView(
                children: [
                  _buildDemoButton(
                    title: "Default Scanner",
                    subtitle: "Opens the scanner with default settings.",
                    scanner: AiBarcodeScanner(
                      // The onDetect callback is only called when a barcode is scanned and validated.
                      onDetect: (BarcodeCapture capture) {
                        /// Do something with the barcode
                        _barcode = capture.raw.toString();
                      },
                    ),
                  ),
                  _buildDemoButton(
                    title: "Scan with Validator",
                    subtitle: "Only accepts barcodes containing 'pub.dev'.",
                    scanner: AiBarcodeScanner(
                      controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.noDuplicates,
                      ),
                      // Validator to check if the barcode contains a specific string.
                      validator: (value) {
                        return value.barcodes.first.rawValue
                                ?.contains('pub.dev') ??
                            false;
                      },
                      onDetect: (BarcodeCapture capture) {
                        /// Do something with the barcode

                        _barcode = capture.raw.toString();

                        ///
                        if (mounted) {
                          Navigator.pop(
                              context, capture.barcodes.firstOrNull?.rawValue);
                        }
                      },
                    ),
                  ),
                  _buildDemoButton(
                    title: "Custom Overlay & Style",
                    subtitle: "Changes colors, border, and animation.",
                    scanner: AiBarcodeScanner(
                      // Use the overlayConfig to customize the scanner's appearance.
                      overlayConfig: const ScannerOverlayConfig(
                        borderColor: Colors.teal,
                        successColor: Colors.lightGreenAccent,
                        errorColor: Colors.orange,
                        scannerBorder: ScannerBorder.none,
                        scannerAnimation: ScannerAnimation.fullWidth,
                        scannerOverlayBackground: ScannerOverlayBackground.none,
                      ),
                      onDetect: (BarcodeCapture capture) {
                        /// Do something with the barcode
                      },
                    ),
                  ),
                  _buildDemoButton(
                    title: "Custom AppBar",
                    subtitle: "Replaces the default AppBar with a custom one.",
                    scanner: AiBarcodeScanner(
                      // Use appBarBuilder to provide a custom AppBar.
                      appBarBuilder: (context, controller) {
                        return AppBar(
                          title: const Text("Custom Scanner"),
                          centerTitle: true,
                          backgroundColor: Colors.red,
                        );
                      },
                      onDetect: (BarcodeCapture capture) {
                        /// Do something with the barcode
                      },
                    ),
                  ),
                  _buildDemoButton(
                    title: "Icon Gallery Button",
                    subtitle: "Shows an icon button at the top right.",
                    scanner: AiBarcodeScanner(
                      galleryButtonType: GalleryButtonType.icon,
                      galleryButtonText: "Select from Photos",
                      onDetect: (BarcodeCapture capture) {
                        /// Do something with the barcode
                      },
                    ),
                  ),
                  _buildDemoButton(
                    title: "None Gallery Button",
                    subtitle: "Shows no gallery button.",
                    scanner: AiBarcodeScanner(
                      galleryButtonType: GalleryButtonType.icon,
                      // child: Align(
                      //   alignment: Alignment.lerp(
                      //     Alignment.bottomCenter,
                      //     Alignment.center,
                      //     0.42,
                      //   )!,
                      //   child: const Text(
                      //     "No gallery button",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.bold,
                      //         color: Colors.white),
                      //   ),
                      // ),
                      onDetect: (BarcodeCapture capture) {
                        /// Do something with the barcode
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Helper method to create a styled button for the demo list.
  Widget _buildDemoButton({
    required String title,
    required String subtitle,
    required Widget scanner,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right_rounded, size: 30),
        onTap: () => _navigateToScanner(scanner),
      ),
    );
  }
}
