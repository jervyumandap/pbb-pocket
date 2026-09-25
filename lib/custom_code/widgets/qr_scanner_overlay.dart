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

import 'package:mobile_scanner/mobile_scanner.dart';

// FlutterFlow QR Scanner Overlay Widget with QR Scanning

class QrScannerOverlay extends StatefulWidget {
  const QrScannerOverlay({
    super.key,
    this.width,
    this.height,
    this.overlayColor,
    this.borderColor,
    this.scanLineColor,
    this.cutOutSize,
    this.borderRadius,
    this.borderWidth,
    this.showScanLine,
    this.onDetect,
    required this.generateQr,
    this.uploadQr,
  });

  final double? width;
  final double? height;

  final Color? overlayColor;
  final Color? borderColor;
  final Color? scanLineColor;

  final double? cutOutSize;
  final double? borderRadius;
  final double? borderWidth;

  final bool? showScanLine;

  final Future Function(String? code)? onDetect;
  final Future Function() generateQr;
  final Future Function()? uploadQr;

  @override
  State<QrScannerOverlay> createState() => _QrScannerOverlayState();
}

class _QrScannerOverlayState extends State<QrScannerOverlay> {
  final MobileScannerController controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    torchEnabled: false,
  );

  bool hasScanned = false;
  bool isTorchOn = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double scannerSize = widget.cutOutSize ?? 260.0;

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // QR Scanner Camera
          MobileScanner(
            controller: controller,
            fit: BoxFit.cover,
            onDetect: (capture) async {
              if (hasScanned) return;

              final List<Barcode> barcodes = capture.barcodes;

              if (barcodes.isNotEmpty) {
                final String? code = barcodes.first.rawValue;

                if (code != null && code.isNotEmpty) {
                  hasScanned = true;

                  await widget.onDetect?.call(code);

                  await Future.delayed(
                    const Duration(seconds: 2),
                  );

                  hasScanned = false;
                }
              }
            },
          ),

          // Dark overlay
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.45),
          ),

          // Transparent cutout
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.transparent,
              BlendMode.srcOut,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:
                        (widget.overlayColor ?? Colors.black).withOpacity(0.7),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: scannerSize,
                    height: scannerSize,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(
                        widget.borderRadius ?? 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // TOP BUTTONS
          Positioned(
            top: 60,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),

                // Back Button
                ElevatedButton.icon(
                  onPressed: () async {
                    await widget.generateQr;

                    await Future.delayed(
                      const Duration(seconds: 2),
                    );
                    // Navigator.of(context).pop();
                    // Future.delayed(Duration.zero, () {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //
                    // builder: (context) =>
                    //           const ReceiveGenerateQRPageWidget(),
                    //     ),
                    //   );
                    // });
                  },
                  icon: const Icon(Icons.qr_code_rounded),
                  label: const Text('Generate QR'),
                ),

                // Flashlight Button
                // ElevatedButton.icon(
                //   onPressed: () async {
                //     await controller.toggleTorch();

                //     setState(() {
                //       isTorchOn = !isTorchOn;
                //     });
                //   },
                //   icon: Icon(
                //     isTorchOn ? Icons.flash_on : Icons.flash_off,
                //   ),
                //   label: Text(
                //     isTorchOn ? 'Flash On' : 'Flash Off',
                //   ),
                // ),
              ],
            ),
          ),

          // Scanner Border UI
          SizedBox(
            width: scannerSize,
            height: scannerSize,
            child: Stack(
              children: [
                _buildCorner(
                  Alignment.topLeft,
                  widget.borderColor ?? const Color(0xFF00D2FF),
                  widget.borderWidth ?? 4,
                  widget.borderRadius ?? 20,
                ),
                _buildCorner(
                  Alignment.topRight,
                  widget.borderColor ?? const Color(0xFF00D2FF),
                  widget.borderWidth ?? 4,
                  widget.borderRadius ?? 20,
                ),
                _buildCorner(
                  Alignment.bottomLeft,
                  widget.borderColor ?? const Color(0xFF00D2FF),
                  widget.borderWidth ?? 4,
                  widget.borderRadius ?? 20,
                ),
                _buildCorner(
                  Alignment.bottomRight,
                  widget.borderColor ?? const Color(0xFF00D2FF),
                  widget.borderWidth ?? 4,
                  widget.borderRadius ?? 20,
                ),

                // Scan Line
                if (widget.showScanLine ?? true)
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: scannerSize * 0.85,
                      height: 2,
                      color: widget.scanLineColor ?? const Color(0xFF00D2FF),
                    ),
                  ),
              ],
            ),
          ),

          // BOTTOM BUTTON
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 55,
              child: ElevatedButton(
                onPressed: () async {
                  // Your bottom button action
                  await widget.uploadQr;

                  await Future.delayed(
                    const Duration(seconds: 2),
                  );
                },
                child: const Text(
                  'Upload QR',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCorner(
    Alignment alignment,
    Color color,
    double strokeWidth,
    double radius,
  ) {
    return Align(
      alignment: alignment,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: alignment == Alignment.topLeft
                ? Radius.circular(radius)
                : Radius.zero,
            topRight: alignment == Alignment.topRight
                ? Radius.circular(radius)
                : Radius.zero,
            bottomLeft: alignment == Alignment.bottomLeft
                ? Radius.circular(radius)
                : Radius.zero,
            bottomRight: alignment == Alignment.bottomRight
                ? Radius.circular(radius)
                : Radius.zero,
          ),
          border: Border(
            top: alignment == Alignment.topLeft ||
                    alignment == Alignment.topRight
                ? BorderSide(color: color, width: strokeWidth)
                : BorderSide.none,
            bottom: alignment == Alignment.bottomLeft ||
                    alignment == Alignment.bottomRight
                ? BorderSide(color: color, width: strokeWidth)
                : BorderSide.none,
            left: alignment == Alignment.topLeft ||
                    alignment == Alignment.bottomLeft
                ? BorderSide(color: color, width: strokeWidth)
                : BorderSide.none,
            right: alignment == Alignment.topRight ||
                    alignment == Alignment.bottomRight
                ? BorderSide(color: color, width: strokeWidth)
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}
