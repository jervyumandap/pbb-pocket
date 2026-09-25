import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/fund_transfer/component/reusable_container_payment_details_component/reusable_container_payment_details_component_widget.dart';
import '/fund_transfer/confirm_payment_with_text_component/confirm_payment_with_text_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_bills_payment_component_model.dart';
export 'confirm_bills_payment_component_model.dart';

class ConfirmBillsPaymentComponentWidget extends StatefulWidget {
  const ConfirmBillsPaymentComponentWidget({
    super.key,
    bool? isMobile,
    required this.callback,
  }) : this.isMobile = isMobile ?? false;

  final bool isMobile;
  final Future Function()? callback;

  @override
  State<ConfirmBillsPaymentComponentWidget> createState() =>
      _ConfirmBillsPaymentComponentWidgetState();
}

class _ConfirmBillsPaymentComponentWidgetState
    extends State<ConfirmBillsPaymentComponentWidget> {
  late ConfirmBillsPaymentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmBillsPaymentComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 435.34,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          MediaQuery.sizeOf(context).width <= 800.0
              ? FlutterFlowTheme.of(context).secondaryBackground
              : Colors.transparent,
          Colors.transparent,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.confirmPaymentWithTextComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ConfirmPaymentWithTextComponentWidget(
                        paymentAmount: FFAppState()
                            .BillsPaymentRequestBodyAppState
                            .billsBody
                            .amount,
                      ),
                    ),
                    wrapWithModel(
                      model:
                          _model.reusableContainerPaymentDetailsComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ReusableContainerPaymentDetailsComponentWidget(
                        accountNumber: FFAppState()
                            .BillsPaymentRequestBodyAppState
                            .billsBody
                            .accNum,
                        billAmount: FFAppState()
                            .BillsPaymentRequestBodyAppState
                            .billsBody
                            .amount,
                        billerConvenienceFee: FFAppState()
                            .BillsPaymentRequestBodyAppState
                            .billsBody
                            .otherCharges,
                      ),
                    ),
                  ].divide(SizedBox(height: 28.0)),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Pay',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          font: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                if (widget.isMobile)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.openSans(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
