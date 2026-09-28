import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'bills_payment_item_component_copy_model.dart';
export 'bills_payment_item_component_copy_model.dart';

class BillsPaymentItemComponentCopyWidget extends StatefulWidget {
  const BillsPaymentItemComponentCopyWidget({
    super.key,
    required this.transaction,
    this.callback,
  });

  final BillsPaymentPaymentsStruct? transaction;
  final Future Function()? callback;

  @override
  State<BillsPaymentItemComponentCopyWidget> createState() =>
      _BillsPaymentItemComponentCopyWidgetState();
}

class _BillsPaymentItemComponentCopyWidgetState
    extends State<BillsPaymentItemComponentCopyWidget> {
  late BillsPaymentItemComponentCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillsPaymentItemComponentCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.transaction?.biller.name}',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleSmallIsCustom,
                          ),
                    ),
                    Text(
                      '${valueOrDefault<String>(
                        dateTimeFormat(
                          "MMM d, y",
                          functions.stringToDateTimeWithFormat(
                              widget.transaction?.createdAt),
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        'Apr 1, 2025  *** 1234',
                      )} ${widget.transaction?.referenceNumber}',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodySmallFamily,
                            color: FlutterFlowTheme.of(context).base80,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodySmallIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.transaction?.totalAmount != null)
                      Text(
                        '${valueOrDefault<String>(
                          widget.transaction?.currency,
                          'PHP',
                        )}${formatNumber(
                          widget.transaction?.totalAmount,
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.periodDecimal,
                        )}',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: Color(0xFF979C9E),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                  ].divide(SizedBox(height: 5.0)),
                ),
              ],
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
