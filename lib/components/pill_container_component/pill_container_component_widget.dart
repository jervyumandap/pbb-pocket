import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'pill_container_component_model.dart';
export 'pill_container_component_model.dart';

class PillContainerComponentWidget extends StatefulWidget {
  const PillContainerComponentWidget({
    super.key,
    this.callback,
    this.buttonText,
  });

  final Future Function()? callback;
  final String? buttonText;

  @override
  State<PillContainerComponentWidget> createState() =>
      _PillContainerComponentWidgetState();
}

class _PillContainerComponentWidgetState
    extends State<PillContainerComponentWidget> {
  late PillContainerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PillContainerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.callback?.call();
      },
      text: widget.buttonText!,
      options: FFButtonOptions(
        height: 32.0,
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).secondaryButton,
        textStyle: FlutterFlowTheme.of(context).bodySmall.override(
              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
              color: FlutterFlowTheme.of(context).secondaryButtonText,
              fontSize: 12.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
              useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(16.0),
      ),
      showLoadingIndicator: false,
    );
  }
}
