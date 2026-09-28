import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'button_with_text_column_container_model.dart';
export 'button_with_text_column_container_model.dart';

class ButtonWithTextColumnContainerWidget extends StatefulWidget {
  const ButtonWithTextColumnContainerWidget({
    super.key,
    this.backgroundColor,
    this.buttonText,
    this.icon,
    this.textColor,
  });

  final Color? backgroundColor;
  final String? buttonText;
  final Widget? icon;
  final Color? textColor;

  @override
  State<ButtonWithTextColumnContainerWidget> createState() =>
      _ButtonWithTextColumnContainerWidgetState();
}

class _ButtonWithTextColumnContainerWidgetState
    extends State<ButtonWithTextColumnContainerWidget> {
  late ButtonWithTextColumnContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonWithTextColumnContainerModel());

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
      width: 62.3,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                widget.backgroundColor,
                Color(0x28FFFFFF),
              ),
              shape: BoxShape.circle,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.icon!,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.buttonText,
              'Send',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: widget.textColor,
                  fontSize: 10.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
