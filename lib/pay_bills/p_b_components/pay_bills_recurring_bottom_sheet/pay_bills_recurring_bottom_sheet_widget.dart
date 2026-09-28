import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pay_bills_recurring_bottom_sheet_model.dart';
export 'pay_bills_recurring_bottom_sheet_model.dart';

class PayBillsRecurringBottomSheetWidget extends StatefulWidget {
  const PayBillsRecurringBottomSheetWidget({
    super.key,
    required this.callBack,
  });

  final Future Function(TransactionScheduleType scheduleType)? callBack;

  @override
  State<PayBillsRecurringBottomSheetWidget> createState() =>
      _PayBillsRecurringBottomSheetWidgetState();
}

class _PayBillsRecurringBottomSheetWidgetState
    extends State<PayBillsRecurringBottomSheetWidget> {
  late PayBillsRecurringBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayBillsRecurringBottomSheetModel());

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
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: 50.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFDFE2EB),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 60.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Set as recurring',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF383839),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                      Semantics(
                                        label: 'Close-Icon',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.close_rounded,
                                            color: Color(0xFF252525),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Once',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Once-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.ONCE,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion1Hovered1
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Once',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion1Hovered1 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion1Hovered1 = false);
                                    }),
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Daily',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Daily-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.DAILY,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion2Hovered1
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Daily',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion2Hovered1 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion2Hovered1 = false);
                                    }),
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Weekly',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Wk-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.WEEKLY,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion3Hovered1
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Weekly',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion3Hovered1 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion3Hovered1 = false);
                                    }),
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Monthly',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Mo-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.MONTHLY,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion4Hovered1
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Monthly',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion4Hovered1 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion4Hovered1 = false);
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 18.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: FFAppConstants.RightDrawerWidth,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -5.0,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 60.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Set as recurring',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF383839),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                      Semantics(
                                        label: 'Close-Icon',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.close_rounded,
                                            color: Color(0xFF252525),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Once',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Once-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.ONCE,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion1Hovered2
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Once',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion1Hovered2 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion1Hovered2 = false);
                                    }),
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Daily',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Daily-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.DAILY,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion2Hovered2
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Daily',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion2Hovered2 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion2Hovered2 = false);
                                    }),
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Weekly',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Wk-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.WEEKLY,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion3Hovered2
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Weekly',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion3Hovered2 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion3Hovered2 = false);
                                    }),
                                  ),
                                ),
                                Semantics(
                                  label: 'MouseRegion Monthly',
                                  child: MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: Semantics(
                                      label: 'Mo-Container',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await widget.callBack?.call(
                                            TransactionScheduleType.MONTHLY,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 54.0,
                                          decoration: BoxDecoration(
                                            color: _model.mouseRegion4Hovered2
                                                ? Color(0xFFD6F2F8)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 20.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Monthly',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion4Hovered2 = true);
                                    }),
                                    onExit: ((event) async {
                                      safeSetState(() =>
                                          _model.mouseRegion4Hovered2 = false);
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 18.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
