import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'empty_list_component_model.dart';
export 'empty_list_component_model.dart';

class EmptyListComponentWidget extends StatefulWidget {
  const EmptyListComponentWidget({
    super.key,
    this.image,
    this.title,
    this.imageWidth,
    this.imageHeight,
    Color? textColor,
    this.textSize,
  }) : this.textColor = textColor ?? const Color(0xFF00727D);

  final String? image;
  final String? title;
  final double? imageWidth;
  final double? imageHeight;
  final Color textColor;
  final double? textSize;

  @override
  State<EmptyListComponentWidget> createState() =>
      _EmptyListComponentWidgetState();
}

class _EmptyListComponentWidgetState extends State<EmptyListComponentWidget> {
  late EmptyListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListComponentModel());

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
        Semantics(
          label: 'Placeholder Image',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/Group_427318343.png',
              width: valueOrDefault<double>(
                widget.imageWidth,
                84.0,
              ),
              height: valueOrDefault<double>(
                widget.imageHeight,
                84.0,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 258.0,
          height: 40.0,
          decoration: BoxDecoration(),
          child: Semantics(
            label: 'Message Text',
            child: Text(
              valueOrDefault<String>(
                widget.title,
                'Add recipient as favorite after each transaction',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: widget.textColor,
                    fontSize: widget.textSize,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
