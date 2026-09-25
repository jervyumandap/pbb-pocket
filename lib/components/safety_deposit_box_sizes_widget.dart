import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'safety_deposit_box_sizes_model.dart';
export 'safety_deposit_box_sizes_model.dart';

class SafetyDepositBoxSizesWidget extends StatefulWidget {
  const SafetyDepositBoxSizesWidget({
    super.key,
    required this.containerColor,
    required this.borderColor,
    required this.action,
    required this.textColor,
    required this.title,
    required this.subtitle,
  });

  final Color? containerColor;
  final Color? borderColor;
  final Future Function()? action;
  final Color? textColor;
  final String? title;
  final String? subtitle;

  @override
  State<SafetyDepositBoxSizesWidget> createState() =>
      _SafetyDepositBoxSizesWidgetState();
}

class _SafetyDepositBoxSizesWidgetState
    extends State<SafetyDepositBoxSizesWidget> {
  late SafetyDepositBoxSizesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SafetyDepositBoxSizesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.action?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget.borderColor,
              FlutterFlowTheme.of(context).primary,
            ),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(26.0, 10.0, 26.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    valueOrDefault<String>(
                      widget.title,
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: widget.textColor,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.subtitle,
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Color(0xFF1A2433),
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
          ),
        ),
      ),
    );
  }
}
