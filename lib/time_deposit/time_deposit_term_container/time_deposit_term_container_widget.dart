import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'time_deposit_term_container_model.dart';
export 'time_deposit_term_container_model.dart';

class TimeDepositTermContainerWidget extends StatefulWidget {
  const TimeDepositTermContainerWidget({
    super.key,
    required this.term,
    required this.selectedTerm,
  });

  final int? term;
  final int? selectedTerm;

  @override
  State<TimeDepositTermContainerWidget> createState() =>
      _TimeDepositTermContainerWidgetState();
}

class _TimeDepositTermContainerWidgetState
    extends State<TimeDepositTermContainerWidget> {
  late TimeDepositTermContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeDepositTermContainerModel());

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
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: 80.0,
        height: 81.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: widget.selectedTerm == widget.term
                ? Color(0x1F027377)
                : Colors.transparent,
            width: 4.0,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: widget.selectedTerm == widget.term
                ? Color(0xFFFAFDFD)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(14.0),
            border: Border.all(
              color: widget.selectedTerm == widget.term
                  ? Color(0xFF027377)
                  : Color(0xFFDAE3E5),
              width: 1.0,
            ),
          ),
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.term?.toString(),
                  '30',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0xFF1A2536),
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
              Text(
                'DAYS',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0xFF939FA3),
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
