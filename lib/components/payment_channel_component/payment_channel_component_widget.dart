import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'payment_channel_component_model.dart';
export 'payment_channel_component_model.dart';

class PaymentChannelComponentWidget extends StatefulWidget {
  const PaymentChannelComponentWidget({
    super.key,
    this.action,
  });

  final Future Function()? action;

  @override
  State<PaymentChannelComponentWidget> createState() =>
      _PaymentChannelComponentWidgetState();
}

class _PaymentChannelComponentWidgetState
    extends State<PaymentChannelComponentWidget> {
  late PaymentChannelComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentChannelComponentModel());

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
      width: 412.0,
      height: 361.7,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).bgThemeColor,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().IsInstaPayChannelSelected = true;
                    safeSetState(() {});
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 383.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        FFAppState().IsInstaPayChannelSelected
                            ? FlutterFlowTheme.of(context).tertiary
                            : FlutterFlowTheme.of(context).secondaryBackground,
                        Color(0xFFDAF8FF),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          FFAppState().IsInstaPayChannelSelected
                              ? FlutterFlowTheme.of(context).primary
                              : Color(0xFFE3E3F5),
                          Color(0xFF00A8CF),
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/i6r9f6.png',
                              width: 80.0,
                              height: 38.5,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            '• Real-time fund transfer (₱50k limit per transaction)\n• Available 24/7, including weekends/holidays\n• Fee: ₱10–₱25 depending on bank\n• Best for quick payments and small transfers',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().IsInstaPayChannelSelected = false;
                    safeSetState(() {});
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 383.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        !FFAppState().IsInstaPayChannelSelected
                            ? FlutterFlowTheme.of(context).tertiary
                            : FlutterFlowTheme.of(context).secondaryBackground,
                        Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          !FFAppState().IsInstaPayChannelSelected
                              ? FlutterFlowTheme.of(context).primary
                              : Color(0xFFE3E3F5),
                          Color(0xFFE3E3F5),
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/GKV137_PESONet-logobase.net.png',
                              width: 84.2,
                              height: 33.4,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            '• Batch-processed (same-day or next-day credit)\n• Higher limits, ideal for payroll or large payments\n• Follows bank cut-off times and business days\n• Usually lower fees than InstaPay',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
