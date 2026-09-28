import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pay_bills_confirmation_bottom_sheet_model.dart';
export 'pay_bills_confirmation_bottom_sheet_model.dart';

class PayBillsConfirmationBottomSheetWidget extends StatefulWidget {
  const PayBillsConfirmationBottomSheetWidget({
    super.key,
    this.callBack,
    required this.submitParameters,
    required this.billerDetails,
    bool? isFromFavorite,
  }) : this.isFromFavorite = isFromFavorite ?? false;

  final Future Function()? callBack;
  final WBBPSubmitParametersStruct? submitParameters;
  final WBBillerStruct? billerDetails;
  final bool isFromFavorite;

  @override
  State<PayBillsConfirmationBottomSheetWidget> createState() =>
      _PayBillsConfirmationBottomSheetWidgetState();
}

class _PayBillsConfirmationBottomSheetWidgetState
    extends State<PayBillsConfirmationBottomSheetWidget> {
  late PayBillsConfirmationBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayBillsConfirmationBottomSheetModel());

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
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
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
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Semantics(
                                          label: 'Biller-Name-RichText',
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Payment to ',
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: widget
                                                      .billerDetails!.name,
                                                  style: TextStyle(
                                                    color: Color(0xFF094288),
                                                  ),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: Color(0xFF383839),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Semantics(
                                        label: 'Amount-Text',
                                        child: Text(
                                          '${widget.submitParameters?.currency}${formatNumber(
                                            widget.submitParameters?.amount,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          )}',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF383839),
                                                fontSize: 28.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Semantics(
                                        label: 'Account-Number-Text',
                                        child: Text(
                                          valueOrDefault<String>(
                                            widget.submitParameters
                                                ?.accountNumber,
                                            '-',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF383839),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Semantics(
                                        label: 'Category-Text',
                                        child: Text(
                                          valueOrDefault<String>(
                                            widget.billerDetails?.category,
                                            '-',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF838383),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x1100A8CF),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Semantics(
                                            label: 'Biller-Text',
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.billerDetails?.name,
                                                '-',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: Color(0xFF094288),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Payment from',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Fullname-Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          currentUserData
                                                              ?.user.fullName,
                                                          '-',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                    Semantics(
                                                      label:
                                                          'Account-Number-Text',
                                                      child: Text(
                                                        functions.maskAccountNumber(
                                                            FFAppState()
                                                                .payingSourceAccountAppState
                                                                .fullAccountNumber),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                    Semantics(
                                                      label:
                                                          'Account-Type-Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .payingSourceAccountAppState
                                                              .accountType
                                                              ?.name,
                                                          '-',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                    Semantics(
                                                      label:
                                                          'Account-Name-Text',
                                                      child: Text(
                                                        FFAppState()
                                                            .payingSourceAccountAppState
                                                            .accountName,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF838383),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Payment fee',
                                                    textAlign: TextAlign.start,
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
                                                          fontSize: 14.0,
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
                                            Expanded(
                                              flex: 4,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Semantics(
                                                    label: 'Payment-Fee-Text',
                                                    child: Text(
                                                      'Free',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .neutral10,
                                        ),
                                      ].divide(SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                                if (widget.submitParameters?.frequency !=
                                        null &&
                                    widget.submitParameters?.frequency != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Frequency',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Frequency-Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          widget
                                                              .submitParameters
                                                              ?.frequency,
                                                          '-',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                if (widget.submitParameters?.startDate !=
                                        null &&
                                    widget.submitParameters?.startDate != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Start Date',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Start-Date-Text',
                                                      child: Text(
                                                        dateTimeFormat(
                                                          "yMMMd",
                                                          functions.stringToDateTimeWithFormat(
                                                              widget
                                                                  .submitParameters
                                                                  ?.startDate),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                if (widget.submitParameters?.endDate != null &&
                                    widget.submitParameters?.endDate != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'End Date',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'End-Text',
                                                      child: Text(
                                                        dateTimeFormat(
                                                          "yMMMd",
                                                          functions.stringToDateTimeWithFormat(
                                                              widget
                                                                  .submitParameters
                                                                  ?.endDate),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                if (widget.submitParameters?.remarks != null &&
                                    widget.submitParameters?.remarks != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Remarks',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Remarks-Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          widget
                                                              .submitParameters
                                                              ?.remarks,
                                                          '-',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Semantics(
                                            label: 'Cancel-Button',
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              text: 'Cancel',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.white,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeIsCustom,
                                                    ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF00727D),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Builder(
                                            builder: (context) => Semantics(
                                              label: 'Pay-Button',
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  if (widget.submitParameters
                                                              ?.frequency ==
                                                          null ||
                                                      widget.submitParameters
                                                              ?.frequency ==
                                                          '') {
                                                    _model.paymentInitiateResponse =
                                                        await WhitebankGroupAPIGroup
                                                            .retailBillsPaymentInitiateCall
                                                            .call(
                                                      billsPaymentSubmitBodyJson:
                                                          widget
                                                              .submitParameters
                                                              ?.toMap(),
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                    );

                                                    _shouldSetState = true;
                                                    // CHECK IF WEB first
                                                    if ((WhitebankGroupAPIGroup
                                                                    .retailBillsPaymentInitiateCall
                                                                    .error(
                                                                  (_model.paymentInitiateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                null &&
                                                            WhitebankGroupAPIGroup
                                                                    .retailBillsPaymentInitiateCall
                                                                    .error(
                                                                  (_model.paymentInitiateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) !=
                                                                '') ||
                                                        (WhitebankGroupAPIGroup
                                                                .retailBillsPaymentInitiateCall
                                                                .error(
                                                              (_model.paymentInitiateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'TPP_ACTIVE')) {
                                                      context.goNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              errorMessage:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailBillsPaymentInitiateCall
                                                                      .detail(
                                                                (_model.paymentInitiateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              status: WhitebankGroupAPIGroup
                                                                  .retailBillsPaymentInitiateCall
                                                                  .title(
                                                                (_model.paymentInitiateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if (isWeb &&
                                                        (WhitebankGroupAPIGroup
                                                                .retailBillsPaymentInitiateCall
                                                                .status(
                                                              (_model.paymentInitiateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            BPStatus
                                                                .PENDING_CONFIRMATION
                                                                .name)) {
                                                      //
                                                      // /// SAMPLE
                                                      // {
                                                      //   "transactionType": "fund_transfer",
                                                      //   "transactionId": "550e8400-e29b-41d4-a716-446655440000",
                                                      //   "amount": 1500,
                                                      //   "currency": "PHP",
                                                      //   "context": "****5678"
                                                      // }
                                                      _model.signingPKPayload =
                                                          await action_blocks
                                                              .createConfirmSigningPKPayload(
                                                        context,
                                                        stepupOptionsPayload:
                                                            WBStepupAuthOptionsPayloadStruct(
                                                          transactionType:
                                                              'bills_payment',
                                                          transactionId:
                                                              WhitebankGroupAPIGroup
                                                                  .retailBillsPaymentInitiateCall
                                                                  .id(
                                                            (_model.paymentInitiateResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          amount: WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .amount(
                                                                (_model.paymentInitiateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toDouble(),
                                                          currency:
                                                              WhitebankGroupAPIGroup
                                                                  .retailBillsPaymentInitiateCall
                                                                  .currency(
                                                            (_model.paymentInitiateResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          context: getJsonField(
                                                            WhitebankGroupAPIGroup
                                                                .retailBillsPaymentInitiateCall
                                                                .biller(
                                                              (_model.paymentInitiateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            r'''$.code''',
                                                          ).toString(),
                                                        ),
                                                      );
                                                      _shouldSetState = true;
                                                      if (_model
                                                          .signingPKPayload!
                                                          .success) {
                                                        _model.bPPkConfirmSigningNewResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .retailBillPaymentConfirmSigningNewCall
                                                                .call(
                                                          id: WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .id(
                                                            (_model.paymentInitiateResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          requestBodyJson: _model
                                                              .signingPKPayload
                                                              ?.data
                                                              .toMap(),
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          fmsSessionId:
                                                              currentUserData
                                                                  ?.fmsSessionId,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .bPPkConfirmSigningNewResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          context.pushNamed(
                                                            PayBillsSuccessPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct
                                                                    .maybeFromMap((_model
                                                                            .bPPkConfirmSigningNewResponse
                                                                            ?.jsonBody ??
                                                                        '')),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'biller':
                                                                  serializeParam(
                                                                widget
                                                                    .billerDetails,
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                            }.withoutNulls,
                                                          );

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        } else {
                                                          context.pushNamed(
                                                            PayBillsFailedPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct
                                                                    .maybeFromMap((_model
                                                                            .bPPkConfirmSigningNewResponse
                                                                            ?.jsonBody ??
                                                                        '')),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        context.pushNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(
                                                                errorMessage: _model
                                                                    .signingPKPayload
                                                                    ?.errorMessage,
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailBillsPaymentInitiateCall
                                                            .status(
                                                          (_model.paymentInitiateResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        BPStatus
                                                            .PENDING_CONFIRMATION
                                                            .name) {
                                                      _model.bPSigningChallengeResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .retailBillPaymentSigningChallengeCall
                                                              .call(
                                                        id: WhitebankGroupAPIGroup
                                                            .retailBillsPaymentInitiateCall
                                                            .id(
                                                          (_model.paymentInitiateResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                      );

                                                      _shouldSetState = true;
                                                      if (WhitebankGroupAPIGroup
                                                              .retailBillPaymentSigningChallengeCall
                                                              .preferredMethod(
                                                            (_model.bPSigningChallengeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          SigningAvailableMethods
                                                              .mpin.name) {
                                                        context.pushNamed(
                                                          MPINPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'usage':
                                                                serializeParam(
                                                              MpinUsage
                                                                  .BILLS_PAYMENT,
                                                              ParamType.Enum,
                                                            ),
                                                            'bpId':
                                                                serializeParam(
                                                              WhitebankGroupAPIGroup
                                                                  .retailBillsPaymentInitiateCall
                                                                  .id(
                                                                (_model.paymentInitiateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'challenge':
                                                                serializeParam(
                                                              WhitebankGroupAPIGroup
                                                                  .retailBillPaymentSigningChallengeCall
                                                                  .challenge(
                                                                (_model.bPSigningChallengeResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'biller':
                                                                serializeParam(
                                                              widget
                                                                  .billerDetails,
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else if (WhitebankGroupAPIGroup
                                                              .retailBillPaymentSigningChallengeCall
                                                              .preferredMethod(
                                                            (_model.bPSigningChallengeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          SigningAvailableMethods
                                                              .biometric.name) {
                                                        _model.createSignatureOutput =
                                                            await actions
                                                                .createSignature(
                                                          WhitebankGroupAPIGroup
                                                              .retailBillPaymentSigningChallengeCall
                                                              .challenge(
                                                            (_model.bPSigningChallengeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!,
                                                        );
                                                        _shouldSetState = true;
                                                        _model.bPConfirmSigningResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .retailBillPaymentConfirmSigningCall
                                                                .call(
                                                          method: 'biometric',
                                                          deviceId: FFAppState()
                                                              .DeviceDetails
                                                              .deviceId,
                                                          challenge:
                                                              WhitebankGroupAPIGroup
                                                                  .retailBillPaymentSigningChallengeCall
                                                                  .challenge(
                                                            (_model.bPSigningChallengeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          signature: _model
                                                              .createSignatureOutput,
                                                          id: WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .id(
                                                            (_model.paymentInitiateResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          fmsSessionId:
                                                              currentUserData
                                                                  ?.fmsSessionId,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .bPConfirmSigningResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          context.pushNamed(
                                                            PayBillsSuccessPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct
                                                                    .maybeFromMap((_model
                                                                            .bPConfirmSigningResponse
                                                                            ?.jsonBody ??
                                                                        '')),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'biller':
                                                                  serializeParam(
                                                                widget
                                                                    .billerDetails,
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          context.pushNamed(
                                                            PayBillsFailedPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct
                                                                    .maybeFromMap((_model
                                                                            .bPConfirmSigningResponse
                                                                            ?.jsonBody ??
                                                                        '')),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      } else if (WhitebankGroupAPIGroup
                                                              .retailBillPaymentSigningChallengeCall
                                                              .preferredMethod(
                                                            (_model.bPSigningChallengeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          SigningAvailableMethods
                                                              .passkey.name) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    CustomInformationalDialogWidget(
                                                                  message:
                                                                      'This payment requires a trusted device. Please trust your device first, then try again.',
                                                                  primaryButtonTitle:
                                                                      'Go to Saved Devices',
                                                                  secondaryButtonTitle:
                                                                      'Not now',
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);

                                                                    context.goNamed(
                                                                        SavedDevicesWidget
                                                                            .routeName);
                                                                  },
                                                                  secondaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);

                                                                    context.goNamed(
                                                                        DashboardWidget
                                                                            .routeName);
                                                                  },
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      } else if (WhitebankGroupAPIGroup
                                                                  .retailBillPaymentSigningChallengeCall
                                                                  .error(
                                                                (_model.bPSigningChallengeResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) !=
                                                              null &&
                                                          WhitebankGroupAPIGroup
                                                                  .retailBillPaymentSigningChallengeCall
                                                                  .error(
                                                                (_model.bPSigningChallengeResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) !=
                                                              '') {
                                                        context.goNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      } else {
                                                        context.goNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      context.goNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              errorMessage:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailBillsPaymentInitiateCall
                                                                      .detail(
                                                                (_model.paymentInitiateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              status: WhitebankGroupAPIGroup
                                                                  .retailBillsPaymentInitiateCall
                                                                  .title(
                                                                (_model.paymentInitiateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    context.goNamed(
                                                      PayBillsFailedPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'paymentResponse':
                                                            serializeParam(
                                                          WBConfirmBillPaymentResponseStruct(
                                                            status: WhitebankGroupAPIGroup
                                                                .retailBillsPaymentInitiateCall
                                                                .title(
                                                              (_model.paymentInitiateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            errorMessage:
                                                                WhitebankGroupAPIGroup
                                                                    .retailBillsPaymentInitiateCall
                                                                    .detail(
                                                              (_model.paymentInitiateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                          ),
                                                          ParamType.DataStruct,
                                                        ),
                                                        'isLocked':
                                                            serializeParam(
                                                          false,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    _model.schedBPChallengeResponse =
                                                        await WhitebankGroupAPIGroup
                                                            .retailScheduledBPSigningChallengeCall
                                                            .call(
                                                      requestBodyJson: widget
                                                          .submitParameters
                                                          ?.toMap(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    _shouldSetState = true;
                                                    if (WhitebankGroupAPIGroup
                                                                .retailScheduledBPSigningChallengeCall
                                                                .error(
                                                              (_model.schedBPChallengeResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            null &&
                                                        WhitebankGroupAPIGroup
                                                                .retailScheduledBPSigningChallengeCall
                                                                .error(
                                                              (_model.schedBPChallengeResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            '') {
                                                      context.goNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              status:
                                                                  valueOrDefault<
                                                                      String>(
                                                                WhitebankGroupAPIGroup
                                                                    .retailScheduledBPSigningChallengeCall
                                                                    .title(
                                                                  (_model.schedBPChallengeResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'Oops!',
                                                              ),
                                                              errorMessage:
                                                                  valueOrDefault<
                                                                      String>(
                                                                WhitebankGroupAPIGroup
                                                                    .retailScheduledBPSigningChallengeCall
                                                                    .detail(
                                                                  (_model.schedBPChallengeResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'Something went wrong',
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((WhitebankGroupAPIGroup
                                                                .retailScheduledBPSigningChallengeCall
                                                                .preferredMethod(
                                                              (_model.schedBPChallengeResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb) {
                                                      _model.sBpSigningPKPayload =
                                                          await action_blocks
                                                              .createConfirmSigningPKPayload(
                                                        context,
                                                        stepupOptionsPayload:
                                                            WBStepupAuthOptionsPayloadStruct(
                                                          context: widget
                                                              .billerDetails
                                                              ?.code,
                                                          transactionType:
                                                              PasskeyTransactionType
                                                                  .scheduled_bills_payment
                                                                  .name,
                                                          transactionId:
                                                              getJsonField(
                                                            (_model.schedBPChallengeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.operationId''',
                                                          ).toString(),
                                                          amount: widget
                                                              .submitParameters
                                                              ?.amount,
                                                          currency: widget
                                                              .submitParameters
                                                              ?.currency,
                                                        ),
                                                      );
                                                      _shouldSetState = true;
                                                      if (_model
                                                          .sBpSigningPKPayload!
                                                          .success) {
                                                        _model.schedBPCreatePkResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .retailScheduledBPCreatePasskeySigningCall
                                                                .call(
                                                          requestBodyJson: _model
                                                              .sBpSigningPKPayload
                                                              ?.data
                                                              .toMap(),
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          fmsSessionId:
                                                              currentUserData
                                                                  ?.fmsSessionId,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .schedBPCreatePkResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          context.pushNamed(
                                                            PayBillsSuccessPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct(
                                                                  id: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreatePasskeySigningCall
                                                                      .id(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  referenceNumber:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      (_model.schedBPCreatePkResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.referenceNumber''',
                                                                    )?.toString(),
                                                                    'SBS-12341234-X7Y8Z9',
                                                                  ),
                                                                  status: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreatePasskeySigningCall
                                                                      .status(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  biller:
                                                                      WBBillerStruct(
                                                                    name: WhitebankGroupAPIGroup
                                                                        .retailScheduledBPCreatePasskeySigningCall
                                                                        .billerName(
                                                                      (_model.schedBPCreatePkResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                  ),
                                                                  accountNumber:
                                                                      WhitebankGroupAPIGroup
                                                                          .retailScheduledBPCreatePasskeySigningCall
                                                                          .accountNumberMasked(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  accountHolderName:
                                                                      FFAppState()
                                                                          .PaybillsInitiateModelAppState
                                                                          .accountHolderName,
                                                                  amount: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreatePasskeySigningCall
                                                                      .amount(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  currency: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreatePasskeySigningCall
                                                                      .currency(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  remarks: FFAppState()
                                                                      .PaybillsInitiateModelAppState
                                                                      .remarks,
                                                                  sourceAccount:
                                                                      AccountsStruct(
                                                                    accountNumber:
                                                                        FFAppState()
                                                                            .PaybillsInitiateModelAppState
                                                                            .sourceAccountNumber,
                                                                  ),
                                                                  totalAmount:
                                                                      WhitebankGroupAPIGroup
                                                                          .retailScheduledBPCreatePasskeySigningCall
                                                                          .amount(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'biller':
                                                                  serializeParam(
                                                                WBBillerStruct(
                                                                  name: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreatePasskeySigningCall
                                                                      .billerName(
                                                                    (_model.schedBPCreatePkResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'title':
                                                                  serializeParam(
                                                                'Bill Payment Scheduled',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'message':
                                                                  serializeParam(
                                                                'Will be paid on the scheduled date.',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'isScheculed':
                                                                  serializeParam(
                                                                true,
                                                                ParamType.bool,
                                                              ),
                                                              'scheduleDate':
                                                                  serializeParam(
                                                                WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreatePasskeySigningCall
                                                                    .nextRunAt(
                                                                  (_model.schedBPCreatePkResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          context.pushNamed(
                                                            PayBillsFailedPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct(),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      } else {
                                                        context.pushNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(
                                                                errorMessage: _model
                                                                    .sBpSigningPKPayload
                                                                    ?.errorMessage,
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailScheduledBPSigningChallengeCall
                                                            .preferredMethod(
                                                          (_model.schedBPChallengeResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        SigningAvailableMethods
                                                            .passkey.name) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  CustomInformationalDialogWidget(
                                                                message:
                                                                    'This payment requires a trusted device. Please trust your device first, then try again.',
                                                                primaryButtonTitle:
                                                                    'Go to Saved Devices',
                                                                secondaryButtonTitle:
                                                                    'Not now',
                                                                primaryButtonAction:
                                                                    () async {
                                                                  Navigator.pop(
                                                                      context);

                                                                  context.goNamed(
                                                                      SavedDevicesWidget
                                                                          .routeName);
                                                                },
                                                                secondaryButtonAction:
                                                                    () async {
                                                                  Navigator.pop(
                                                                      context);

                                                                  context.goNamed(
                                                                      DashboardWidget
                                                                          .routeName);
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailScheduledBPSigningChallengeCall
                                                            .preferredMethod(
                                                          (_model.schedBPChallengeResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        SigningAvailableMethods
                                                            .mpin.name) {
                                                      FFAppState()
                                                              .PayBillsRequestBody =
                                                          widget
                                                              .submitParameters!
                                                              .toMap();
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .SCHEDULED_BILLS_PAYMENT,
                                                            ParamType.Enum,
                                                          ),
                                                          'challenge':
                                                              serializeParam(
                                                            WhitebankGroupAPIGroup
                                                                .retailScheduledBPSigningChallengeCall
                                                                .challenge(
                                                              (_model.schedBPChallengeResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'biller':
                                                              serializeParam(
                                                            widget
                                                                .billerDetails,
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailScheduledBPSigningChallengeCall
                                                            .preferredMethod(
                                                          (_model.schedBPChallengeResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        SigningAvailableMethods
                                                            .biometric.name) {
                                                      _model.schedBPCreateSignatureOutput =
                                                          await actions
                                                              .createSignature(
                                                        WhitebankGroupAPIGroup
                                                            .retailScheduledBPSigningChallengeCall
                                                            .challenge(
                                                          (_model.schedBPChallengeResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!,
                                                      );
                                                      _shouldSetState = true;
                                                      _model.schedBPCreateResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .retailScheduledBPCreateCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge:
                                                            WhitebankGroupAPIGroup
                                                                .retailScheduledBPSigningChallengeCall
                                                                .challenge(
                                                          (_model.schedBPChallengeResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        signature: _model
                                                            .schedBPCreateSignatureOutput,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        fmsSessionId:
                                                            currentUserData
                                                                ?.fmsSessionId,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .schedBPCreateResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        context.pushNamed(
                                                          PayBillsSuccessPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(
                                                                id: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .id(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                referenceNumber:
                                                                    WhitebankGroupAPIGroup
                                                                        .retailScheduledBPCreateCall
                                                                        .id(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                status: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .status(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                biller:
                                                                    WBBillerStruct(
                                                                  name: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .billerName(
                                                                    (_model.schedBPCreateResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                accountNumber:
                                                                    WhitebankGroupAPIGroup
                                                                        .retailScheduledBPCreateCall
                                                                        .accountNumberMasked(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                accountHolderName:
                                                                    FFAppState()
                                                                        .PaybillsInitiateModelAppState
                                                                        .accountHolderName,
                                                                amount: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .amount(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                currency: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .currency(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                remarks: FFAppState()
                                                                    .PaybillsInitiateModelAppState
                                                                    .remarks,
                                                                sourceAccount:
                                                                    AccountsStruct(
                                                                  accountNumber:
                                                                      FFAppState()
                                                                          .PaybillsInitiateModelAppState
                                                                          .sourceAccountNumber,
                                                                ),
                                                                totalAmount:
                                                                    WhitebankGroupAPIGroup
                                                                        .retailScheduledBPCreateCall
                                                                        .amount(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'biller':
                                                                serializeParam(
                                                              WBBillerStruct(
                                                                name: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .billerName(
                                                                  (_model.schedBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'title':
                                                                serializeParam(
                                                              'Bill Payment Scheduled',
                                                              ParamType.String,
                                                            ),
                                                            'message':
                                                                serializeParam(
                                                              'Will be paid on the scheduled date.',
                                                              ParamType.String,
                                                            ),
                                                            'isScheculed':
                                                                serializeParam(
                                                              true,
                                                              ParamType.bool,
                                                            ),
                                                            'scheduleDate':
                                                                serializeParam(
                                                              WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .nextRunAt(
                                                                (_model.schedBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        context.pushNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else {
                                                      context.goNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              status:
                                                                  valueOrDefault<
                                                                      String>(
                                                                WhitebankGroupAPIGroup
                                                                    .retailScheduledBPSigningChallengeCall
                                                                    .title(
                                                                  (_model.schedBPChallengeResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'Oops!',
                                                              ),
                                                              errorMessage:
                                                                  valueOrDefault<
                                                                      String>(
                                                                WhitebankGroupAPIGroup
                                                                    .retailScheduledBPSigningChallengeCall
                                                                    .message(
                                                                  (_model.schedBPChallengeResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'Something went wrong',
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                text: 'Pay',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 56.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.end,
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallIsCustom,
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ],
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
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
                                      Icons.close_rounded,
                                      color: Color(0xFF252525),
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Semantics(
                                          label: 'Biller-RichText',
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Payment to ',
                                                  style: TextStyle(),
                                                ),
                                                TextSpan(
                                                  text: widget
                                                      .billerDetails!.name,
                                                  style: TextStyle(
                                                    color: Color(0xFF094288),
                                                  ),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: Color(0xFF383839),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Semantics(
                                        label: 'Amount-Text',
                                        child: Text(
                                          '${widget.submitParameters?.currency}${formatNumber(
                                            widget.submitParameters?.amount,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          )}',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF383839),
                                                fontSize: 28.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Semantics(
                                        label: 'Account-Number-Text',
                                        child: Text(
                                          valueOrDefault<String>(
                                            widget.submitParameters
                                                ?.accountNumber,
                                            '-',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF383839),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Semantics(
                                        label: 'Category-Text',
                                        child: Text(
                                          valueOrDefault<String>(
                                            widget.billerDetails?.category,
                                            '-',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF838383),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x1100A8CF),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Semantics(
                                            label: 'Biller-Text',
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.billerDetails?.name,
                                                '-',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: Color(0xFF094288),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Semantics(
                                            label: 'Account-Number-Text',
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.submitParameters
                                                    ?.accountNumber,
                                                '-',
                                              ),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: Color(0xFF094288),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Payment from',
                                                    textAlign: TextAlign.start,
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
                                                          fontSize: 14.0,
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
                                            Expanded(
                                              flex: 4,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Semantics(
                                                    label: 'Fullname-Text',
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        currentUserData
                                                            ?.user.fullName,
                                                        '-',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  Semantics(
                                                    label:
                                                        'Account-Number-Text',
                                                    child: Text(
                                                      FFAppState()
                                                          .payingSourceAccountAppState
                                                          .fullAccountNumber,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  Semantics(
                                                    label: 'Account-Type-Text',
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        FFAppState()
                                                            .payingSourceAccountAppState
                                                            .accountType
                                                            ?.name,
                                                        'Payroll Account',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  Semantics(
                                                    label: 'Account-Name-Text',
                                                    child: Text(
                                                      FFAppState()
                                                          .payingSourceAccountAppState
                                                          .accountName,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .neutral10,
                                        ),
                                      ].divide(SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Payment fee',
                                                    textAlign: TextAlign.start,
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
                                                          fontSize: 14.0,
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
                                            Expanded(
                                              flex: 4,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Semantics(
                                                    label: 'Payment-Fee-Text',
                                                    child: Text(
                                                      'Free',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        Divider(
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .neutral10,
                                        ),
                                      ].divide(SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                                if (widget.submitParameters?.frequency !=
                                        null &&
                                    widget.submitParameters?.frequency != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Frequency',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Frequency-Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          widget
                                                              .submitParameters
                                                              ?.frequency,
                                                          '-',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                if (widget.submitParameters?.startDate !=
                                        null &&
                                    widget.submitParameters?.startDate != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Start Date',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Start-Text',
                                                      child: Text(
                                                        dateTimeFormat(
                                                          "yMMMd",
                                                          functions.stringToDateTimeWithFormat(
                                                              widget
                                                                  .submitParameters
                                                                  ?.startDate),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                if (widget.submitParameters?.endDate != null &&
                                    widget.submitParameters?.endDate != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'End Date',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'End-Date-Text',
                                                      child: Text(
                                                        dateTimeFormat(
                                                          "yMMMd",
                                                          functions.stringToDateTimeWithFormat(
                                                              widget
                                                                  .submitParameters
                                                                  ?.endDate),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                if (widget.submitParameters?.remarks != null &&
                                    widget.submitParameters?.remarks != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Remarks',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeFamily,
                                                            color: Color(
                                                                0xFF383839),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLargeIsCustom,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Remarks-Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          widget
                                                              .submitParameters
                                                              ?.remarks,
                                                          '-',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral10,
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 60.0, 20.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Semantics(
                                            label: 'Cancel-Button-Web',
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              text: 'Cancel',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.white,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeIsCustom,
                                                    ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: Color(0xFF00727D),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Semantics(
                                            label: 'Pay-Button-Web',
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                if (widget.submitParameters
                                                            ?.frequency ==
                                                        null ||
                                                    widget.submitParameters
                                                            ?.frequency ==
                                                        '') {
                                                  _model.paymentInitiateResponseCopy =
                                                      await WhitebankGroupAPIGroup
                                                          .retailBillsPaymentInitiateCall
                                                          .call(
                                                    billsPaymentSubmitBodyJson:
                                                        widget.submitParameters
                                                            ?.toMap(),
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                  );

                                                  _shouldSetState = true;
                                                  if (isWeb &&
                                                      (WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .status(
                                                            (_model.paymentInitiateResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          BPStatus
                                                              .PENDING_CONFIRMATION
                                                              .name)) {
                                                    _model.stepupOptionsResponse2 =
                                                        await WhitebankGroupAPIGroup
                                                            .retailGenStepupAuthOptionsCall
                                                            .call(
                                                      transactionType:
                                                          'bills_payment',
                                                      transactionId:
                                                          WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .id(
                                                        (_model.paymentInitiateResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      amount: WhitebankGroupAPIGroup
                                                          .retailBillsPaymentInitiateCall
                                                          .amount(
                                                            (_model.paymentInitiateResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toDouble(),
                                                      currency:
                                                          WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .currency(
                                                        (_model.paymentInitiateResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      context: getJsonField(
                                                        WhitebankGroupAPIGroup
                                                            .retailBillsPaymentInitiateCall
                                                            .biller(
                                                          (_model.paymentInitiateResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        r'''$.code''',
                                                      ).toString(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .stepupOptionsResponse2
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.pKStepupVerifyPayload2 =
                                                          await actions
                                                              .passkeyCreateStepupVerifyPayload(
                                                        (_model.stepupOptionsResponse2
                                                                ?.jsonBody ??
                                                            ''),
                                                        getJsonField(
                                                          (_model.stepupOptionsResponse2
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.transactionHash''',
                                                        ).toString(),
                                                      );
                                                      _shouldSetState = true;
                                                      if (getJsonField(
                                                            _model
                                                                .pKStepupVerifyPayload2,
                                                            r'''$.data''',
                                                          ) !=
                                                          null) {
                                                        _model.pKStepupVerifyAuthResponse2 =
                                                            await WhitebankGroupAPIGroup
                                                                .retailVerifyStepupAuthCall
                                                                .call(
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          payloadJson:
                                                              getJsonField(
                                                            _model
                                                                .pKStepupVerifyPayload2,
                                                            r'''$.data''',
                                                          ),
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .pKStepupVerifyAuthResponse2
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model.bPPkConfirmSigningNewResponse2 =
                                                              await WhitebankGroupAPIGroup
                                                                  .retailBillPaymentConfirmSigningNewCall
                                                                  .call(
                                                            id: WhitebankGroupAPIGroup
                                                                .retailBillsPaymentInitiateCall
                                                                .id(
                                                              (_model.paymentInitiateResponseCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            requestBodyJson: <String,
                                                                String?>{
                                                              'method':
                                                                  SigningAvailableMethods
                                                                      .passkey
                                                                      .name,
                                                              'stepupToken':
                                                                  WhitebankGroupAPIGroup
                                                                      .retailVerifyStepupAuthCall
                                                                      .stepupToken(
                                                                (_model.pKStepupVerifyAuthResponse2
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              'transactionHash':
                                                                  getJsonField(
                                                                (_model.stepupOptionsResponse2
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.transactionHash''',
                                                              ).toString(),
                                                            },
                                                            baseURL:
                                                                FFDevEnvironmentValues()
                                                                    .WBPBASEURL,
                                                            accessToken:
                                                                currentAuthenticationToken,
                                                            fmsSessionId:
                                                                currentUserData
                                                                    ?.fmsSessionId,
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .bPPkConfirmSigningNewResponse2
                                                                  ?.succeeded ??
                                                              true)) {
                                                            context.pushNamed(
                                                              PayBillsSuccessPageWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'paymentResponse':
                                                                    serializeParam(
                                                                  WBConfirmBillPaymentResponseStruct
                                                                      .maybeFromMap((_model
                                                                              .bPPkConfirmSigningNewResponse2
                                                                              ?.jsonBody ??
                                                                          '')),
                                                                  ParamType
                                                                      .DataStruct,
                                                                ),
                                                                'biller':
                                                                    serializeParam(
                                                                  widget
                                                                      .billerDetails,
                                                                  ParamType
                                                                      .DataStruct,
                                                                ),
                                                              }.withoutNulls,
                                                            );

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          } else {
                                                            context.pushNamed(
                                                              PayBillsFailedPageWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'paymentResponse':
                                                                    serializeParam(
                                                                  WBConfirmBillPaymentResponseStruct
                                                                      .maybeFromMap((_model
                                                                              .bPPkConfirmSigningNewResponse2
                                                                              ?.jsonBody ??
                                                                          '')),
                                                                  ParamType
                                                                      .DataStruct,
                                                                ),
                                                                'isLocked':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                              }.withoutNulls,
                                                            );

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                        } else {
                                                          context.pushNamed(
                                                            PayBillsFailedPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'paymentResponse':
                                                                  serializeParam(
                                                                WBConfirmBillPaymentResponseStruct(
                                                                  errorMessage:
                                                                      WhitebankGroupAPIGroup
                                                                          .retailVerifyStepupAuthCall
                                                                          .detail(
                                                                    (_model.pKStepupVerifyAuthResponse2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                ParamType
                                                                    .DataStruct,
                                                              ),
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        context.pushNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(
                                                                errorMessage:
                                                                    getJsonField(
                                                                  _model
                                                                      .pKStepupVerifyPayload2,
                                                                  r'''$.error''',
                                                                ).toString(),
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      }
                                                    } else {
                                                      context.pushNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              errorMessage:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailGenStepupAuthOptionsCall
                                                                      .detail(
                                                                (_model.stepupOptionsResponse2
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  } else if (WhitebankGroupAPIGroup
                                                          .retailBillsPaymentInitiateCall
                                                          .status(
                                                        (_model.paymentInitiateResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) ==
                                                      BPStatus
                                                          .PENDING_CONFIRMATION
                                                          .name) {
                                                    _model.bPSigningChallengeResponseCopy =
                                                        await WhitebankGroupAPIGroup
                                                            .retailBillPaymentSigningChallengeCall
                                                            .call(
                                                      id: WhitebankGroupAPIGroup
                                                          .retailBillsPaymentInitiateCall
                                                          .id(
                                                        (_model.paymentInitiateResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                    );

                                                    _shouldSetState = true;
                                                    if (WhitebankGroupAPIGroup
                                                            .retailBillPaymentSigningChallengeCall
                                                            .preferredMethod(
                                                          (_model.bPSigningChallengeResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        SigningAvailableMethods
                                                            .mpin.name) {
                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .BILLS_PAYMENT,
                                                            ParamType.Enum,
                                                          ),
                                                          'bpId':
                                                              serializeParam(
                                                            WhitebankGroupAPIGroup
                                                                .retailBillsPaymentInitiateCall
                                                                .id(
                                                              (_model.paymentInitiateResponseCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'challenge':
                                                              serializeParam(
                                                            WhitebankGroupAPIGroup
                                                                .retailBillPaymentSigningChallengeCall
                                                                .challenge(
                                                              (_model.bPSigningChallengeResponseCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailBillPaymentSigningChallengeCall
                                                            .preferredMethod(
                                                          (_model.bPSigningChallengeResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        SigningAvailableMethods
                                                            .biometric.name) {
                                                      _model.createSignatureOutputCopy =
                                                          await actions
                                                              .createSignature(
                                                        WhitebankGroupAPIGroup
                                                            .retailBillPaymentSigningChallengeCall
                                                            .challenge(
                                                          (_model.bPSigningChallengeResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!,
                                                      );
                                                      _shouldSetState = true;
                                                      _model.bPConfirmSigningResponseCopy =
                                                          await WhitebankGroupAPIGroup
                                                              .retailBillPaymentConfirmSigningCall
                                                              .call(
                                                        method: 'biometric',
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge:
                                                            WhitebankGroupAPIGroup
                                                                .retailBillPaymentSigningChallengeCall
                                                                .challenge(
                                                          (_model.bPSigningChallengeResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        signature: _model
                                                            .createSignatureOutputCopy,
                                                        id: WhitebankGroupAPIGroup
                                                            .retailBillsPaymentInitiateCall
                                                            .id(
                                                          (_model.paymentInitiateResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        fmsSessionId:
                                                            currentUserData
                                                                ?.fmsSessionId,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .bPConfirmSigningResponseCopy
                                                              ?.succeeded ??
                                                          true)) {
                                                        context.pushNamed(
                                                          PayBillsSuccessPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .bPConfirmSigningResponseCopy
                                                                          ?.jsonBody ??
                                                                      '')),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'biller':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct
                                                                      .maybeFromMap(
                                                                          (_model.bPConfirmSigningResponseCopy?.jsonBody ??
                                                                              ''))
                                                                  ?.biller,
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        context.pushNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .bPConfirmSigningResponseCopy
                                                                          ?.jsonBody ??
                                                                      '')),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (WhitebankGroupAPIGroup
                                                                .retailBillPaymentSigningChallengeCall
                                                                .error(
                                                              (_model.bPSigningChallengeResponseCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            null &&
                                                        WhitebankGroupAPIGroup
                                                                .retailBillPaymentSigningChallengeCall
                                                                .error(
                                                              (_model.bPSigningChallengeResponseCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            '') {
                                                      context.goNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    } else {
                                                      context.goNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  } else if (WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .error(
                                                            (_model.paymentInitiateResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) !=
                                                          null &&
                                                      WhitebankGroupAPIGroup
                                                              .retailBillsPaymentInitiateCall
                                                              .error(
                                                            (_model.paymentInitiateResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) !=
                                                          '') {}

                                                  context.goNamed(
                                                    PayBillsFailedPageWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'paymentResponse':
                                                          serializeParam(
                                                        WBConfirmBillPaymentResponseStruct(),
                                                        ParamType.DataStruct,
                                                      ),
                                                      'isLocked':
                                                          serializeParam(
                                                        false,
                                                        ParamType.bool,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                } else {
                                                  _model.schedBPChallengeResponseCopy =
                                                      await WhitebankGroupAPIGroup
                                                          .retailScheduledBPSigningChallengeCall
                                                          .call(
                                                    requestBodyJson: widget
                                                        .submitParameters
                                                        ?.toMap(),
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                  );

                                                  _shouldSetState = true;
                                                  if ((WhitebankGroupAPIGroup
                                                              .retailScheduledBPSigningChallengeCall
                                                              .preferredMethod(
                                                            (_model.schedBPChallengeResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          SigningAvailableMethods
                                                              .passkey.name) &&
                                                      isWeb) {
                                                    _model.sBpSigningPKPayloadCopy =
                                                        await action_blocks
                                                            .createConfirmSigningPKPayload(
                                                      context,
                                                      stepupOptionsPayload:
                                                          WBStepupAuthOptionsPayloadStruct(
                                                        transactionType:
                                                            PasskeyTransactionType
                                                                .scheduled_bills_payment
                                                                .name,
                                                        transactionId:
                                                            getJsonField(
                                                          (_model.schedBPChallengeResponseCopy
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.operationId''',
                                                        ).toString(),
                                                        amount: widget
                                                            .submitParameters
                                                            ?.amount,
                                                        currency: widget
                                                            .submitParameters
                                                            ?.currency,
                                                        context: widget
                                                            .billerDetails
                                                            ?.code,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    if (_model
                                                        .sBpSigningPKPayloadCopy!
                                                        .success) {
                                                      _model.schedBPCreatePkResponseCopy =
                                                          await WhitebankGroupAPIGroup
                                                              .retailScheduledBPCreatePasskeySigningCall
                                                              .call(
                                                        requestBodyJson: _model
                                                            .sBpSigningPKPayloadCopy
                                                            ?.data
                                                            .toMap(),
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        fmsSessionId:
                                                            currentUserData
                                                                ?.fmsSessionId,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .schedBPCreatePkResponseCopy
                                                              ?.succeeded ??
                                                          true)) {
                                                        context.pushNamed(
                                                          PayBillsSuccessPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(
                                                                id: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreatePasskeySigningCall
                                                                    .id(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                referenceNumber:
                                                                    getJsonField(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.referenceNumber''',
                                                                ).toString(),
                                                                status: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreatePasskeySigningCall
                                                                    .status(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                biller:
                                                                    WBBillerStruct(
                                                                  name: WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreatePasskeySigningCall
                                                                      .billerName(
                                                                    (_model.schedBPCreatePkResponseCopy
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                accountNumber:
                                                                    WhitebankGroupAPIGroup
                                                                        .retailScheduledBPCreatePasskeySigningCall
                                                                        .accountNumberMasked(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                accountHolderName:
                                                                    FFAppState()
                                                                        .PaybillsInitiateModelAppState
                                                                        .accountHolderName,
                                                                amount: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreatePasskeySigningCall
                                                                    .amount(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                currency: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreatePasskeySigningCall
                                                                    .currency(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                remarks: FFAppState()
                                                                    .PaybillsInitiateModelAppState
                                                                    .remarks,
                                                                sourceAccount:
                                                                    AccountsStruct(
                                                                  accountNumber:
                                                                      FFAppState()
                                                                          .PaybillsInitiateModelAppState
                                                                          .sourceAccountNumber,
                                                                ),
                                                                totalAmount:
                                                                    WhitebankGroupAPIGroup
                                                                        .retailScheduledBPCreatePasskeySigningCall
                                                                        .amount(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'biller':
                                                                serializeParam(
                                                              WBBillerStruct(
                                                                name: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreatePasskeySigningCall
                                                                    .billerName(
                                                                  (_model.schedBPCreatePkResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'title':
                                                                serializeParam(
                                                              'Bill Payment Scheduled',
                                                              ParamType.String,
                                                            ),
                                                            'message':
                                                                serializeParam(
                                                              'Will be paid on the scheduled date.',
                                                              ParamType.String,
                                                            ),
                                                            'scheduleDate':
                                                                serializeParam(
                                                              WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreatePasskeySigningCall
                                                                  .nextRunAt(
                                                                (_model.schedBPCreatePkResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              ParamType.String,
                                                            ),
                                                            'isScheculed':
                                                                serializeParam(
                                                              true,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        context.pushNamed(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct(),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else {
                                                      context.pushNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              errorMessage: _model
                                                                  .sBpSigningPKPayloadCopy
                                                                  ?.errorMessage,
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  } else if (WhitebankGroupAPIGroup
                                                          .retailScheduledBPSigningChallengeCall
                                                          .preferredMethod(
                                                        (_model.schedBPChallengeResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) ==
                                                      SigningAvailableMethods
                                                          .mpin.name) {
                                                    FFAppState()
                                                            .PayBillsRequestBody =
                                                        widget
                                                            .submitParameters!
                                                            .toMap();
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      MPINPageWidget.routeName,
                                                      queryParameters: {
                                                        'usage': serializeParam(
                                                          MpinUsage
                                                              .SCHEDULED_BILLS_PAYMENT,
                                                          ParamType.Enum,
                                                        ),
                                                        'biller':
                                                            serializeParam(
                                                          widget.billerDetails,
                                                          ParamType.DataStruct,
                                                        ),
                                                        'challenge':
                                                            serializeParam(
                                                          WhitebankGroupAPIGroup
                                                              .retailScheduledBPSigningChallengeCall
                                                              .challenge(
                                                            (_model.schedBPChallengeResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if (WhitebankGroupAPIGroup
                                                          .retailScheduledBPSigningChallengeCall
                                                          .preferredMethod(
                                                        (_model.schedBPChallengeResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) ==
                                                      SigningAvailableMethods
                                                          .biometric.name) {
                                                    _model.schedBPCreateSignatureOutputCopy =
                                                        await actions
                                                            .createSignature(
                                                      WhitebankGroupAPIGroup
                                                          .retailScheduledBPSigningChallengeCall
                                                          .challenge(
                                                        (_model.schedBPChallengeResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!,
                                                    );
                                                    _shouldSetState = true;
                                                    _model.schedBPCreateResponseCopy =
                                                        await WhitebankGroupAPIGroup
                                                            .retailScheduledBPCreateCall
                                                            .call(
                                                      method:
                                                          SigningAvailableMethods
                                                              .biometric.name,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          WhitebankGroupAPIGroup
                                                              .retailScheduledBPSigningChallengeCall
                                                              .challenge(
                                                        (_model.schedBPChallengeResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      signature: _model
                                                          .schedBPCreateSignatureOutputCopy,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      fmsSessionId:
                                                          currentUserData
                                                              ?.fmsSessionId,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .schedBPCreateResponseCopy
                                                            ?.succeeded ??
                                                        true)) {
                                                      context.pushNamed(
                                                        PayBillsSuccessPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              id: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .id(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              referenceNumber:
                                                                  getJsonField(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.referenceNumber''',
                                                              ).toString(),
                                                              status: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .status(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              biller:
                                                                  WBBillerStruct(
                                                                name: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .billerName(
                                                                  (_model.schedBPCreateResponseCopy
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ),
                                                              accountNumber:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .accountNumberMasked(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              accountHolderName:
                                                                  FFAppState()
                                                                      .PaybillsInitiateModelAppState
                                                                      .accountHolderName,
                                                              amount: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .amount(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              totalAmount:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .amount(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              currency:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .currency(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              remarks: FFAppState()
                                                                  .PaybillsInitiateModelAppState
                                                                  .remarks,
                                                              sourceAccount:
                                                                  AccountsStruct(
                                                                accountNumber:
                                                                    FFAppState()
                                                                        .PaybillsInitiateModelAppState
                                                                        .sourceAccountNumber,
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'biller':
                                                              serializeParam(
                                                            WBBillerStruct(
                                                              name: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .billerName(
                                                                (_model.schedBPCreateResponseCopy
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'title':
                                                              serializeParam(
                                                            'Bill Payment Scheduled',
                                                            ParamType.String,
                                                          ),
                                                          'message':
                                                              serializeParam(
                                                            'Will be paid on the scheduled date.',
                                                            ParamType.String,
                                                          ),
                                                          'isScheculed':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                          'scheduleDate':
                                                              serializeParam(
                                                            WhitebankGroupAPIGroup
                                                                .retailScheduledBPCreateCall
                                                                .nextRunAt(
                                                              (_model.schedBPCreateResponseCopy
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      context.pushNamed(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  } else if (WhitebankGroupAPIGroup
                                                              .retailScheduledBPSigningChallengeCall
                                                              .error(
                                                            (_model.schedBPChallengeResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) !=
                                                          null &&
                                                      WhitebankGroupAPIGroup
                                                              .retailScheduledBPSigningChallengeCall
                                                              .error(
                                                            (_model.schedBPChallengeResponseCopy
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) !=
                                                          '') {
                                                    context.pushNamed(
                                                      PayBillsFailedPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'paymentResponse':
                                                            serializeParam(
                                                          WBConfirmBillPaymentResponseStruct(),
                                                          ParamType.DataStruct,
                                                        ),
                                                        'isLocked':
                                                            serializeParam(
                                                          false,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                      PayBillsFailedPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'paymentResponse':
                                                            serializeParam(
                                                          WBConfirmBillPaymentResponseStruct(),
                                                          ParamType.DataStruct,
                                                        ),
                                                        'isLocked':
                                                            serializeParam(
                                                          false,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                }

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                              },
                                              text: 'Pay',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.end,
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ],
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
