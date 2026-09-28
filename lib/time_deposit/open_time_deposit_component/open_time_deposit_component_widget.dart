import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'open_time_deposit_component_model.dart';
export 'open_time_deposit_component_model.dart';

class OpenTimeDepositComponentWidget extends StatefulWidget {
  const OpenTimeDepositComponentWidget({
    super.key,
    required this.product,
    required this.callback,
    required this.callbackUnselect,
    required this.selectedProductCode,
  });

  final ProductsStruct? product;
  final Future Function()? callback;
  final Future Function()? callbackUnselect;
  final String? selectedProductCode;

  @override
  State<OpenTimeDepositComponentWidget> createState() =>
      _OpenTimeDepositComponentWidgetState();
}

class _OpenTimeDepositComponentWidgetState
    extends State<OpenTimeDepositComponentWidget> {
  late OpenTimeDepositComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenTimeDepositComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return double.infinity;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return double.infinity;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 700.0;
          } else {
            return 700.0;
          }
        }(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: widget.product?.productCode == widget.selectedProductCode
                ? Color(0x1F027377)
                : Colors.transparent,
            width: 4.0,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: widget.product?.productCode == widget.selectedProductCode
                ? Color(0xFFFBFDFD)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(14.0),
            border: Border.all(
              color: widget.product?.productCode == widget.selectedProductCode
                  ? Color(0xFF027377)
                  : Color(0xFFDAE3E5),
              width: 1.0,
            ),
          ),
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 42.0,
                      height: 42.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF002D72), Color(0xFF007377)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Icon(
                        Icons.monetization_on_outlined,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 22.0,
                      ),
                    ),
                    Container(
                      width: 220.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.product?.displayName,
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.product?.description,
                              '-',
                            ),
                            maxLines: 3,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Color(0xFF5C6466),
                                  fontSize: 11.5,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                    ),
                    Container(
                      width: 22.0,
                      height: 22.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.product?.productCode ==
                                  widget.selectedProductCode
                              ? FlutterFlowTheme.of(context).primary
                              : Colors.transparent,
                          FlutterFlowTheme.of(context).primary,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.product?.productCode ==
                                  widget.selectedProductCode
                              ? FlutterFlowTheme.of(context).primary
                              : Color(0xFFCFCFCF),
                          width: 1.0,
                        ),
                      ),
                      child: Builder(
                        builder: (context) {
                          if (widget.product?.productCode ==
                              widget.selectedProductCode) {
                            return Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await widget.callbackUnselect?.call();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Icon(
                                    Icons.check_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 12.0,
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await widget.callback?.call();
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'F',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0x00FFFFFF),
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
                StyledDivider(
                  thickness: 1.0,
                  color: Color(0xFFDAE3E5),
                  lineStyle: DividerLineStyle.dashed,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MIN. AMOUNT',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                fontSize: 11.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          '${widget.product?.currency} ${formatNumber(
                            widget.product?.minAmount,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERM RANGE',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                fontSize: 11.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          widget.product?.tenorDays.length == 1
                              ? '${widget.product?.tenorDays.firstOrNull?.toString()} Days'
                              : valueOrDefault<String>(
                                  functions.formatTenor(
                                      widget.product!.tenorDays.toList()),
                                  '20',
                                ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TOP RATE',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                fontSize: 11.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          '${widget.product?.interestRateAnnual.toString()} P.A',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF027377),
                                fontSize: 13.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 5.0)),
                    ),
                  ],
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
          ),
        ),
      ),
    );
  }
}
