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

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_widgets.dart';

import 'package:p_b_b_pocket/qr_scan_generate/receive_generate_q_r_page/receive_generate_q_r_page_widget.dart';

import 'package:mobile_scanner/mobile_scanner.dart';

// FlutterFlow QR Scanner Overlay Widget with QR Scanning

class QrScannerOverlayNew extends StatefulWidget {
  const QrScannerOverlayNew({
    super.key,
    this.width,
    this.height,
    this.onDetect,
    required this.generateQr,
    this.uploadQr,
    this.transferFund,
  });

  final double? width;
  final double? height;

  final Future Function(String? code)? onDetect;
  final Future Function()? generateQr;
  final Future Function()? uploadQr;
  final Future Function()? transferFund;

  @override
  State<QrScannerOverlayNew> createState() => _QrScannerOverlayNewState();
}

class _QrScannerOverlayNewState extends State<QrScannerOverlayNew> {
  final MobileScannerController controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    torchEnabled: false,
    autoZoom: false,
    initialZoom: 0,
  );

  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool hasScanned = false;
  // bool isTorchOn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isRestrictedEnv(String env) {
      const restricted = ['SITMob', 'SITWeb', 'UATWeb', 'UATMob', 'UAT'];
      return restricted.contains(env);
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.5),
          ),
          child: Stack(
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

                      print('code: $code');

                      await widget.onDetect?.call(code);

                      await Future.delayed(
                        const Duration(seconds: 5),
                      );

                      hasScanned = false;
                    }
                  }
                },
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0,
                    valueOrDefault<double>(
                      FFAppConstants.MobileAppBarHeight,
                      0.0,
                    ),
                    0,
                    0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    print('transferFund pressed ...');
                                    await widget.transferFund?.call();
                                  },
                                  text: 'Transfer',
                                  options: FFButtonOptions(
                                    width: 120,
                                    height: 28,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          color: Color(0xFF027377),
                                          fontSize: 12,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),

                              // if (FFDevEnvironmentValues.currentEnvironment != 'SITMob' &&
                              //     FFDevEnvironmentValues.currentEnvironment !=
                              //         'SITWeb' &&
                              //     FFDevEnvironmentValues.currentEnvironment !=
                              //         'UATWeb' &&
                              //     FFDevEnvironmentValues.currentEnvironment !=
                              //         'UATMob')
                              // to hide on SIT

                              if (!isRestrictedEnv(
                                  FFDevEnvironmentValues.currentEnvironment))
                                FFButtonWidget(
                                  onPressed: () async {
                                    print('generateQr pressed ...');
                                    await widget.generateQr?.call();
                                  },
                                  text: 'Generate QR',
                                  options: FFButtonOptions(
                                    width: 120,
                                    height: 28,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0x00027377),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          color: Color(0xFF027377),
                                          fontSize: 12,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                    elevation: 0,
                                    borderSide: BorderSide(
                                      color: Color(0xFF027377),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                            ].divide(SizedBox(width: 20)),
                          ),
                        ),

                        // scanner border
                        Container(
                          width: 280,
                          height: 280,
                          child: Stack(
                            children: [
                              // Container(
                              //   width: double.infinity,
                              //   height: double.infinity,
                              //   decoration: BoxDecoration(
                              //     color: Color(0x00FFFFFF),
                              //     borderRadius: BorderRadius.circular(0),
                              //     border: Border.all(
                              //       color: Colors.white,
                              //       width: 3,
                              //     ),
                              //   ),
                              // ),

                              // Scanner Border UI
                              SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    _buildCorner(
                                      Alignment.topLeft,
                                      const Color(0x00FFFFFFFF),
                                      4,
                                      0,
                                    ),
                                    _buildCorner(
                                      Alignment.topRight,
                                      const Color(0x00FFFFFFFF),
                                      4,
                                      0,
                                    ),
                                    _buildCorner(
                                      Alignment.bottomLeft,
                                      const Color(0x00FFFFFFFF),
                                      4,
                                      0,
                                    ),
                                    _buildCorner(
                                      Alignment.bottomRight,
                                      const Color(0x00FFFFFFFF),
                                      4,
                                      0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'Place the QR code inside the box to scan properly',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFFF4F4F4),
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].divide(SizedBox(height: 40)),
                    ),

                    // hidden, TODO upload QR image

                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 100),
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.max,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       FFButtonWidget(
                    //         onPressed: () async {
                    //           print('uploadQr pressed ...');
                    //           await widget.uploadQr?.call();
                    //         },
                    //         text: 'Upload QR Code',
                    //         options: FFButtonOptions(
                    //           width: 240,
                    //           height: 32,
                    //           padding:
                    //               EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    //           iconPadding:
                    //               EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    //           color: Color(0xFF027377),
                    //           textStyle: FlutterFlowTheme.of(context)
                    //               .bodyLarge
                    //               .override(
                    //                 fontFamily: FlutterFlowTheme.of(context)
                    //                     .bodyLargeFamily,
                    //                 color: FlutterFlowTheme.of(context).info,
                    //                 fontSize: 12,
                    //                 letterSpacing: 0.0,
                    //                 useGoogleFonts:
                    //                     !FlutterFlowTheme.of(context)
                    //                         .bodyLargeIsCustom,
                    //               ),
                    //           elevation: 0,
                    //           borderRadius: BorderRadius.circular(8),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: FFAppConstants.MobileAppBarHeight,
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 100,
                                buttonSize: 40,
                                fillColor: Color(0x80FFFFFF),
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                              Text(
                                'Scan QR to pay',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFFF4F4F4),
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
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
