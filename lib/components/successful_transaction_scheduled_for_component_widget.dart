import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'successful_transaction_scheduled_for_component_model.dart';
export 'successful_transaction_scheduled_for_component_model.dart';

class SuccessfulTransactionScheduledForComponentWidget extends StatefulWidget {
  const SuccessfulTransactionScheduledForComponentWidget({
    super.key,
    required this.scheduledFor,
  });

  final String? scheduledFor;

  @override
  State<SuccessfulTransactionScheduledForComponentWidget> createState() =>
      _SuccessfulTransactionScheduledForComponentWidgetState();
}

class _SuccessfulTransactionScheduledForComponentWidgetState
    extends State<SuccessfulTransactionScheduledForComponentWidget> {
  late SuccessfulTransactionScheduledForComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => SuccessfulTransactionScheduledForComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72.0,
      decoration: BoxDecoration(
        color: Color(0xFFFFF4DC),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Color(0xFFF5D77A),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: Color(0xFFF8F7F7),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0xFFF5D77A),
                  width: 1.0,
                ),
              ),
              child: Icon(
                Icons.access_time_sharp,
                color: Color(0xFFA8770F),
                size: 16.0,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Scheduled For',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).gradient2,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    functions.formatTransactionDate(widget.scheduledFor),
                    '2026-06-01T00:00:00Z',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF5C3D00),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
