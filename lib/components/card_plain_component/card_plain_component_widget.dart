import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'card_plain_component_model.dart';
export 'card_plain_component_model.dart';

class CardPlainComponentWidget extends StatefulWidget {
  const CardPlainComponentWidget({
    super.key,
    required this.amount,
    required this.accountNumber,
    required this.typeOfAccount,
    this.height,
    this.width,
  });

  final double? amount;
  final int? accountNumber;
  final String? typeOfAccount;
  final double? height;
  final double? width;

  @override
  State<CardPlainComponentWidget> createState() =>
      _CardPlainComponentWidgetState();
}

class _CardPlainComponentWidgetState extends State<CardPlainComponentWidget> {
  late CardPlainComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardPlainComponentModel());

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
      width: valueOrDefault<double>(
        widget.width,
        278.0,
      ),
      height: valueOrDefault<double>(
        widget.height,
        120.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF1065B7),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/Frame_3-3.png',
          ).image,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.typeOfAccount,
                    'Savings Account',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).whiteText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Text(
                  '₱ ${widget.amount?.toString()}',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        color: FlutterFlowTheme.of(context).whiteText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).titleLargeIsCustom,
                      ),
                ),
              ],
            ),
            Text(
              valueOrDefault<String>(
                widget.accountNumber?.toString(),
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).whiteText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
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
