import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'favorite_tile_component_model.dart';
export 'favorite_tile_component_model.dart';

class FavoriteTileComponentWidget extends StatefulWidget {
  const FavoriteTileComponentWidget({
    super.key,
    required this.id,
    required this.name,
    required this.icon,
    Color? contextualColor,
    double? borderWidth,
  })  : this.contextualColor = contextualColor ?? const Color(0xFF00A8CF),
        this.borderWidth = borderWidth ?? 2.0;

  final int? id;
  final String? name;
  final Widget? icon;
  final Color contextualColor;
  final double borderWidth;

  @override
  State<FavoriteTileComponentWidget> createState() =>
      _FavoriteTileComponentWidgetState();
}

class _FavoriteTileComponentWidgetState
    extends State<FavoriteTileComponentWidget> {
  late FavoriteTileComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteTileComponentModel());

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
      width: 65.0,
      height: 100.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 55.0,
            height: 55.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                color: valueOrDefault<Color>(
                  widget.borderWidth != 0.0
                      ? widget.contextualColor
                      : Colors.transparent,
                  FlutterFlowTheme.of(context).primary,
                ),
                width: valueOrDefault<double>(
                  widget.borderWidth,
                  2.0,
                ),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: widget.icon!,
            ),
          ),
          AutoSizeText(
            valueOrDefault<String>(
              widget.name,
              'PruLife Insurance',
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            minFontSize: 8.0,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ].divide(SizedBox(height: 5.0)),
      ),
    );
  }
}
