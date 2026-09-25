import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'primary_button_component_model.dart';
export 'primary_button_component_model.dart';

class PrimaryButtonComponentWidget extends StatefulWidget {
  const PrimaryButtonComponentWidget({
    super.key,
    required this.buttonTitle,
    this.buttonIcon,
    this.buttonWidth,
    this.buttonHeight,
    this.callback,
    Color? buttonColor,
    this.textColor,
    this.fontSize,
    this.borderRadius,
    Color? borderColor,
    double? childPadding,
    bool? buttonDisabledOption,
  })  : this.buttonColor = buttonColor ?? const Color(0xFF0093CF),
        this.borderColor = borderColor ?? Colors.transparent,
        this.childPadding = childPadding ?? 8.0,
        this.buttonDisabledOption = buttonDisabledOption ?? false;

  final String? buttonTitle;
  final Widget? buttonIcon;
  final double? buttonWidth;
  final double? buttonHeight;
  final Future Function()? callback;
  final Color buttonColor;
  final Color? textColor;
  final double? fontSize;
  final double? borderRadius;
  final Color borderColor;
  final double childPadding;
  final bool buttonDisabledOption;

  @override
  State<PrimaryButtonComponentWidget> createState() =>
      _PrimaryButtonComponentWidgetState();
}

class _PrimaryButtonComponentWidgetState
    extends State<PrimaryButtonComponentWidget> {
  late PrimaryButtonComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryButtonComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Expanded(
                child: Semantics(
                  label: 'Primary Button Web',
                  child: FFButtonWidget(
                    onPressed: widget.buttonDisabledOption
                        ? null
                        : () async {
                            await widget.callback?.call();
                          },
                    text: widget.buttonTitle!,
                    options: FFButtonOptions(
                      width: widget.buttonWidth,
                      height: widget.buttonHeight,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconAlignment: IconAlignment.end,
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: widget.buttonColor,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: widget.textColor,
                                fontSize: widget.fontSize,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: widget.borderColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                      disabledColor: FlutterFlowTheme.of(context).neutral9,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Semantics(
                  label: 'Primary Button Mobile',
                  child: FFButtonWidget(
                    onPressed: widget.buttonDisabledOption
                        ? null
                        : () async {
                            await widget.callback?.call();
                          },
                    text: widget.buttonTitle!,
                    options: FFButtonOptions(
                      width: valueOrDefault<double>(
                        widget.buttonWidth,
                        10.0,
                      ),
                      height: widget.buttonHeight,
                      padding: EdgeInsets.all(valueOrDefault<double>(
                        widget.childPadding,
                        0.0,
                      )),
                      iconAlignment: IconAlignment.end,
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: widget.buttonColor,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: widget.textColor,
                                fontSize: widget.fontSize,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: widget.borderColor,
                        width: 1.0,
                      ),
                      borderRadius:
                          BorderRadius.circular(valueOrDefault<double>(
                        widget.borderRadius,
                        0.0,
                      )),
                      disabledColor: Color(0xFFDAE3E5),
                      disabledTextColor: Color(0xFF939FA3),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
