import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'deposit_transactions_history_component_model.dart';
export 'deposit_transactions_history_component_model.dart';

class DepositTransactionsHistoryComponentWidget extends StatefulWidget {
  const DepositTransactionsHistoryComponentWidget({
    super.key,
    String? description,
    double? amount,
    this.date,
    bool? isCredited,
    double? balance,
  })  : this.description = description ?? '-',
        this.amount = amount ?? 0.00,
        this.isCredited = isCredited ?? false,
        this.balance = balance ?? 0.00;

  final String description;
  final double amount;
  final DateTime? date;
  final bool isCredited;
  final double balance;

  @override
  State<DepositTransactionsHistoryComponentWidget> createState() =>
      _DepositTransactionsHistoryComponentWidgetState();
}

class _DepositTransactionsHistoryComponentWidgetState
    extends State<DepositTransactionsHistoryComponentWidget> {
  late DepositTransactionsHistoryComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => DepositTransactionsHistoryComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget.description,
                '-',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                widget.date?.toString(),
                '01/01/2026 09:33:55 AM',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).base80,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
            Text(
              '₱ ${valueOrDefault<String>(
                formatNumber(
                  widget.balance,
                  formatType: FormatType.decimal,
                  decimalType: DecimalType.periodDecimal,
                ),
                '0.00',
              )}',
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).base80,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
          ],
        ),
        Text(
          valueOrDefault<String>(
            '${valueOrDefault<String>(
              widget.isCredited ? '-' : '+',
              '-',
            )}₱ ${valueOrDefault<String>(
              functions.formatWithCommas(widget.amount),
              '5,000.00',
            )}',
            '₱250.00',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: valueOrDefault<Color>(
                  widget.isCredited
                      ? FlutterFlowTheme.of(context).primaryText
                      : FlutterFlowTheme.of(context).success,
                  FlutterFlowTheme.of(context).primaryText,
                ),
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ],
    );
  }
}
