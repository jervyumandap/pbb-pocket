import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scheduled_transactiont_item_component_copy_model.dart';
export 'scheduled_transactiont_item_component_copy_model.dart';

class ScheduledTransactiontItemComponentCopyWidget extends StatefulWidget {
  const ScheduledTransactiontItemComponentCopyWidget({
    super.key,
    this.scheduledFullName,
    this.accountNumber,
    this.nextPaymentDate,
    required this.deleteScheduledTransfer,
    required this.isCancelled,
  });

  final String? scheduledFullName;
  final String? accountNumber;
  final String? nextPaymentDate;
  final Future Function()? deleteScheduledTransfer;
  final bool? isCancelled;

  @override
  State<ScheduledTransactiontItemComponentCopyWidget> createState() =>
      _ScheduledTransactiontItemComponentCopyWidgetState();
}

class _ScheduledTransactiontItemComponentCopyWidgetState
    extends State<ScheduledTransactiontItemComponentCopyWidget> {
  late ScheduledTransactiontItemComponentCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => ScheduledTransactiontItemComponentCopyModel());

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
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 43.0,
                height: 43.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  shape: BoxShape.circle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      functions.extractReceiver(widget.scheduledFullName!),
                      'BU',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.scheduledFullName,
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Colors.black,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.accountNumber,
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF9F9F9F),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Builder(
                    builder: (context) {
                      if (widget.isCancelled ?? false) {
                        return Text(
                          'CANCELLED',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF9F9F9F),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        );
                      } else {
                        return Text(
                          'Next Payment on ${valueOrDefault<String>(
                            functions
                                .formatTransactionDate(widget.nextPaymentDate),
                            '-',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF9F9F9F),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ].divide(SizedBox(width: 8.0)),
          ),
          Visibility(
            visible: !widget.isCancelled!,
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.delete_outline_sharp,
                color: FlutterFlowTheme.of(context).error,
                size: 24.0,
              ),
              onPressed: () async {
                await widget.deleteScheduledTransfer?.call();
              },
            ),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}
