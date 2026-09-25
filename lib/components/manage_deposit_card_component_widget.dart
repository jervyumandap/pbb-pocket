import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'manage_deposit_card_component_model.dart';
export 'manage_deposit_card_component_model.dart';

class ManageDepositCardComponentWidget extends StatefulWidget {
  const ManageDepositCardComponentWidget({
    super.key,
    this.timeDepositDetails,
    required this.tap,
  });

  final TimeDepositsStruct? timeDepositDetails;
  final Future Function(String setRemainingDays)? tap;

  @override
  State<ManageDepositCardComponentWidget> createState() =>
      _ManageDepositCardComponentWidgetState();
}

class _ManageDepositCardComponentWidgetState
    extends State<ManageDepositCardComponentWidget> {
  late ManageDepositCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageDepositCardComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.tap?.call(
          functions.getDaysBetween(widget.timeDepositDetails!.openedDate,
                      widget.timeDepositDetails!.maturityDate) <=
                  0
              ? 'Matured'
              : '${functions.getDaysBetween(widget.timeDepositDetails!.openedDate, widget.timeDepositDetails!.maturityDate) < 0 ? '0' : functions.getDaysBetween(widget.timeDepositDetails!.openedDate, widget.timeDepositDetails!.maturityDate).toString()} days left',
        );
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 400.0,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFE0F5FF),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Color(0xFFB3CDE3),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.timeDepositDetails?.termDays.toString()} Days ${widget.timeDepositDetails?.productName}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).gradient2,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: functions.getDaysBetween(
                                  widget.timeDepositDetails!.openedDate,
                                  widget.timeDepositDetails!.maturityDate) <=
                              0
                          ? Color(0xFFFEF3C7)
                          : FlutterFlowTheme.of(context).success3,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                        child: Text(
                          functions.getDaysBetween(
                                      widget.timeDepositDetails!.openedDate,
                                      widget
                                          .timeDepositDetails!.maturityDate) <=
                                  0
                              ? 'Matured'
                              : valueOrDefault<String>(
                                  widget.timeDepositDetails?.status,
                                  '-',
                                ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: functions.getDaysBetween(
                                            widget
                                                .timeDepositDetails!.openedDate,
                                            widget.timeDepositDetails!
                                                .maturityDate) <=
                                        0
                                    ? Color(0xFFB45309)
                                    : FlutterFlowTheme.of(context).success2,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.timeDepositDetails?.productCode,
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Color(0xFF939FA3),
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Text(
                  '${widget.timeDepositDetails?.currency}${formatNumber(
                    widget.timeDepositDetails?.principalAmount,
                    formatType: FormatType.decimal,
                    decimalType: DecimalType.periodDecimal,
                  )}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rate (p.a.)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          '${valueOrDefault<String>(
                            widget.timeDepositDetails?.interestRate
                                .toString(),
                            '-',
                          )} %',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).gradiet1,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          functions.getDaysBetween(
                                      widget.timeDepositDetails!.openedDate,
                                      widget
                                          .timeDepositDetails!.maturityDate) <=
                                  0
                              ? 'Matured on'
                              : 'Matures',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.timeDepositDetails?.maturityDate,
                            '-',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).gradiet1,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Interest Earned',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          '${valueOrDefault<String>(
                            widget.timeDepositDetails?.currency,
                            '-',
                          )}${valueOrDefault<String>(
                            formatNumber(
                              widget.timeDepositDetails?.interestEarned,
                              formatType: FormatType.decimal,
                              decimalType: DecimalType.periodDecimal,
                            ),
                            '-',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).gradiet1,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ],
                ),
              ),
              LinearPercentIndicator(
                percent: functions.calculateProgressPercent(
                    widget.timeDepositDetails!.openedDate,
                    widget.timeDepositDetails!.maturityDate),
                lineHeight: 6.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: FlutterFlowTheme.of(context).primary,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                barRadius: Radius.circular(100.0),
                padding: EdgeInsets.zero,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Opened ${widget.timeDepositDetails?.openedDate}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: Color(0xFF939FA3),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                    Text(
                      functions.getDaysBetween(
                                  widget.timeDepositDetails!.openedDate,
                                  widget.timeDepositDetails!.maturityDate) <=
                              0
                          ? 'Matured'
                          : '${functions.getDaysBetween(widget.timeDepositDetails!.openedDate, widget.timeDepositDetails!.maturityDate) < 0 ? '0' : functions.getDaysBetween(widget.timeDepositDetails!.openedDate, widget.timeDepositDetails!.maturityDate).toString()} days left',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: functions.getDaysBetween(
                                        widget.timeDepositDetails!.openedDate,
                                        widget.timeDepositDetails!
                                            .maturityDate) <=
                                    0
                                ? Color(0xFFB45309)
                                : Color(0xFF5C6466),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ],
                ),
              ),
            ].divide(SizedBox(height: 1.0)),
          ),
        ),
      ),
    );
  }
}
