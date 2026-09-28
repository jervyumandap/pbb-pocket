import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tooltip_message_container_component_model.dart';
export 'tooltip_message_container_component_model.dart';

class TooltipMessageContainerComponentWidget extends StatefulWidget {
  const TooltipMessageContainerComponentWidget({
    super.key,
    required this.mesage,
  });

  final String? mesage;

  @override
  State<TooltipMessageContainerComponentWidget> createState() =>
      _TooltipMessageContainerComponentWidgetState();
}

class _TooltipMessageContainerComponentWidgetState
    extends State<TooltipMessageContainerComponentWidget> {
  late TooltipMessageContainerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => TooltipMessageContainerComponentModel());

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
      width: 206.9,
      height: 189.28,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Icon(
                Icons.info_outline,
                color: FlutterFlowTheme.of(context).primary,
                size: 32.0,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.mesage,
                '• Real-time fund transfer (₱50k limit per transaction)• Available 24/7, including weekends/holidays• Fee: ₱10–₱25 depending on bank• Best for quick payments and small transfers',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
