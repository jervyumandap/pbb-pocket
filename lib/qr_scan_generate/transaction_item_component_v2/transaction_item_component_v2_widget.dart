import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transaction_item_component_v2_model.dart';
export 'transaction_item_component_v2_model.dart';

class TransactionItemComponentV2Widget extends StatefulWidget {
  const TransactionItemComponentV2Widget({
    super.key,
    required this.details,
    this.callback,
    this.moreCallback,
  });

  final ItemsStruct? details;
  final Future Function()? callback;
  final Future Function()? moreCallback;

  @override
  State<TransactionItemComponentV2Widget> createState() =>
      _TransactionItemComponentV2WidgetState();
}

class _TransactionItemComponentV2WidgetState
    extends State<TransactionItemComponentV2Widget> {
  late TransactionItemComponentV2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionItemComponentV2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Item Container',
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.callback?.call();
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Semantics(
                      label: 'Transfer-Type-Text',
                      child: Text(
                        valueOrDefault<String>(
                          widget.details?.transferType,
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Semantics(
                      label: 'Create At And Destination Account Number text',
                      child: Text(
                        valueOrDefault<String>(
                          '${dateTimeFormat(
                            "yMMMd",
                            functions.stringToDateTimeWithFormat(
                                widget.details?.createdAt),
                            locale: FFLocalizations.of(context).languageCode,
                          )} ${widget.details?.destinationAccount}',
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF707070),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
              Semantics(
                label: 'Currency And Amount Text',
                child: Text(
                  '${valueOrDefault<String>(
                    widget.details?.currency,
                    'PHP',
                  )} ${valueOrDefault<String>(
                    formatNumber(
                      widget.details?.amount,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.periodDecimal,
                    ),
                    '0.00',
                  )}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF848484),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
