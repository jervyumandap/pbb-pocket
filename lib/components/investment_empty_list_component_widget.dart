import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'investment_empty_list_component_model.dart';
export 'investment_empty_list_component_model.dart';

class InvestmentEmptyListComponentWidget extends StatefulWidget {
  const InvestmentEmptyListComponentWidget({
    super.key,
    this.image,
    this.title,
    this.imageWidth,
    this.imageHeight,
    Color? textColor,
    this.textSize,
    this.body,
  }) : this.textColor = textColor ?? const Color(0xFF00727D);

  final String? image;
  final String? title;
  final double? imageWidth;
  final double? imageHeight;
  final Color textColor;
  final double? textSize;
  final String? body;

  @override
  State<InvestmentEmptyListComponentWidget> createState() =>
      _InvestmentEmptyListComponentWidgetState();
}

class _InvestmentEmptyListComponentWidgetState
    extends State<InvestmentEmptyListComponentWidget> {
  late InvestmentEmptyListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestmentEmptyListComponentModel());

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
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/Container.png',
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
        Container(
          decoration: BoxDecoration(),
          child: Text(
            valueOrDefault<String>(
              widget.title,
              'No investments yet',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: Color(0xFF0F1623),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.body,
            'Start building your portfolio by exploring our available investment options.',
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.normal,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: Color(0xFF7A8AAA),
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
