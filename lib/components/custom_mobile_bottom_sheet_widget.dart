import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'custom_mobile_bottom_sheet_model.dart';
export 'custom_mobile_bottom_sheet_model.dart';

class CustomMobileBottomSheetWidget extends StatefulWidget {
  const CustomMobileBottomSheetWidget({
    super.key,
    required this.textTitle,
    required this.btnText,
    required this.btnCallback,
    String? textBody,
  }) : this.textBody = textBody ?? '';

  final String? textTitle;
  final String? btnText;
  final Future Function()? btnCallback;
  final String textBody;

  @override
  State<CustomMobileBottomSheetWidget> createState() =>
      _CustomMobileBottomSheetWidgetState();
}

class _CustomMobileBottomSheetWidgetState
    extends State<CustomMobileBottomSheetWidget> {
  late CustomMobileBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomMobileBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 0.1;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 0.1;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 1.0;
              } else {
                return 1.0;
              }
            }(),
            0.0,
          ),
          1.0),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return double.infinity;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return double.infinity;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 400.0;
          } else {
            return 400.0;
          }
        }(),
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 350.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 350.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return double.infinity;
          } else {
            return double.infinity;
          }
        }(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(28.0, 14.0, 28.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Container(
                      width: 45.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Semantics(
                    label: 'LottieAnimation',
                    child: Lottie.asset(
                      'assets/jsons/Checkmark.json',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.contain,
                      animate: true,
                    ),
                  ),
                  if (widget.textTitle != null && widget.textTitle != '')
                    Semantics(
                      label: 'Title Text',
                      child: Text(
                        valueOrDefault<String>(
                          widget.textTitle,
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF00558D),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  if (widget.textBody != '')
                    Semantics(
                      label: 'Message Text',
                      child: Text(
                        valueOrDefault<String>(
                          widget.textBody,
                          'Your new MPIN has been set. You can now continue securely.',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF444C66),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                ].divide(SizedBox(height: 16.0)),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.51, 0.0, 0.0),
                child: Semantics(
                  label: 'Primary Button',
                  child: wrapWithModel(
                    model: _model.primaryButtonComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PrimaryButtonComponentWidget(
                      buttonTitle: valueOrDefault<String>(
                        widget.btnText,
                        'Okay',
                      ),
                      buttonWidth: double.infinity,
                      buttonHeight: 48.0,
                      buttonColor: FlutterFlowTheme.of(context).primary,
                      textColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 16.0,
                      childPadding: 16.0,
                      buttonDisabledOption: false,
                      callback: () async {
                        await widget.btnCallback?.call();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
