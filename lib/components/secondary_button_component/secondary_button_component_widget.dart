import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'secondary_button_component_model.dart';
export 'secondary_button_component_model.dart';

class SecondaryButtonComponentWidget extends StatefulWidget {
  const SecondaryButtonComponentWidget({
    super.key,
    required this.buttonTitle,
    this.buttonIcon,
  });

  final String? buttonTitle;
  final Widget? buttonIcon;

  @override
  State<SecondaryButtonComponentWidget> createState() =>
      _SecondaryButtonComponentWidgetState();
}

class _SecondaryButtonComponentWidgetState
    extends State<SecondaryButtonComponentWidget> {
  late SecondaryButtonComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondaryButtonComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: widget.buttonTitle!,
            icon: widget.buttonIcon != null
                ? widget.buttonIcon
                : widget.buttonIcon,
            options: FFButtonOptions(
              width: 261.0,
              height: 56.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconAlignment: IconAlignment.end,
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFFDAF8FF),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: Color(0xFF00A8CF),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: widget.buttonTitle!,
            icon: widget.buttonIcon != null
                ? widget.buttonIcon
                : widget.buttonIcon,
            options: FFButtonOptions(
              width: 320.0,
              height: 56.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconAlignment: IconAlignment.end,
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF00A8CF),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).info,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
      ],
    );
  }
}
