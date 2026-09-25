import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confirm_payment_with_text_component_model.dart';
export 'confirm_payment_with_text_component_model.dart';

class ConfirmPaymentWithTextComponentWidget extends StatefulWidget {
  const ConfirmPaymentWithTextComponentWidget({
    super.key,
    required this.paymentAmount,
  });

  final double? paymentAmount;

  @override
  State<ConfirmPaymentWithTextComponentWidget> createState() =>
      _ConfirmPaymentWithTextComponentWidgetState();
}

class _ConfirmPaymentWithTextComponentWidgetState
    extends State<ConfirmPaymentWithTextComponentWidget> {
  late ConfirmPaymentWithTextComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmPaymentWithTextComponentModel());

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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Confirm Payment',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                fontSize: 12.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        Text(
          '₱10.00',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}
