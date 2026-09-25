import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/download_loan_transactions_bottom_sheet/download_loan_transactions_bottom_sheet_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loans/loan_components/pay_loan_source_account_bottom_sheet/pay_loan_source_account_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/feature_flag_bottom_sheet/feature_flag_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'loan_details_page_model.dart';
export 'loan_details_page_model.dart';

/// Money Transfer Form
class LoanDetailsPageWidget extends StatefulWidget {
  const LoanDetailsPageWidget({
    super.key,
    required this.loanAccountNumber,
  });

  final String? loanAccountNumber;

  static String routeName = 'LoanDetailsPage';
  static String routePath = '/loanDetailsPage';

  @override
  State<LoanDetailsPageWidget> createState() => _LoanDetailsPageWidgetState();
}

class _LoanDetailsPageWidgetState extends State<LoanDetailsPageWidget> {
  late LoanDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoanDetailsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      FFAppState().LoanPaymentPushThrough = false;
      safeSetState(() {});
      _model.toDate = dateTimeFormat(
        "y-MM-d",
        getCurrentTimestamp,
        locale: FFLocalizations.of(context).languageCode,
      );
      _model.daysFrom = 1000;
      safeSetState(() {});
      _model.isLoading = false;
      _model.selectedAll = true;
      _model.selectedThisYear = false;
      _model.selectedSixMonths = false;
      _model.selected30Days = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: FutureBuilder<ApiCallResponse>(
          future: WhitebankGroupAPIGroup.retailLoansDetailsCall.call(
            loanAccountNumber: widget.loanAccountNumber,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  child: LoadingStateComponentWidget(
                    isFinished: true,
                  ),
                ),
              );
            }
            final containerRetailLoansDetailsResponse = snapshot.data!;

            return Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Stack(
                children: [
                  if (_model.isLoading)
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.loadingStateComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: LoadingStateComponentWidget(
                          isFinished: _model.isLoading,
                        ),
                      ),
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.mobileNavigationBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: MobileNavigationBarWidget(
                              pageIndex: 1,
                              shouldHideBottomNav: false,
                            ),
                          ),
                        ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 36.0;
                                    } else {
                                      return 36.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return FFAppConstants.MobileAppBarHeight;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return FFAppConstants.WebAppBarHeight;
                                    } else {
                                      return FFAppConstants.WebAppBarHeight;
                                    }
                                  }(),
                                  72.0,
                                ),
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 36.0;
                                    } else {
                                      return 36.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                0.0),
                            child: Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return double.infinity;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return FFAppConstants.ContentMaxWidth;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return FFAppConstants.ContentMaxWidth;
                                } else {
                                  return FFAppConstants.ContentMaxWidth;
                                }
                              }(),
                              constraints: BoxConstraints(
                                maxHeight: 1200.0,
                              ),
                              decoration: BoxDecoration(),
                              child: Visibility(
                                visible: _model.isLoading == false,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/loans_background.png',
                                            ).image,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(1.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Semantics(
                                                label:
                                                    'loan_details_menu_mobile',
                                                child: wrapWithModel(
                                                  model: _model
                                                      .customMobileAppBarModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      CustomMobileAppBarWidget(
                                                    pageTitle: '',
                                                    rightButtonIcon: Icon(
                                                      Icons.calendar_today,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 24.0,
                                                    ),
                                                    leftButtonIcon: Icon(
                                                      Icons.chevron_left_sharp,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      size: 24.0,
                                                    ),
                                                    midRightButtonIcon: null,
                                                    buttonColor:
                                                        Colors.transparent,
                                                    buttonWithoutBackground:
                                                        false,
                                                    btnWOBgIcon: Icon(
                                                      Icons.chevron_left,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    btnWOBgColor:
                                                        Color(0xFF444C66),
                                                    btnWOBgIconSize: 24.0,
                                                    isTitleLeftAlign: true,
                                                    titleLeftAlign:
                                                        'Loan Details',
                                                    textLeftAlignColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    rightButtonAction:
                                                        () async {
                                                      context.pushNamed(
                                                        LoanSchedulePageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'loanAccountNumber':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              WBLoanDetailsStruct
                                                                  .maybeFromMap(
                                                                      getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))?.loanAccountNumber,
                                                              '-',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                          'loanType':
                                                              serializeParam(
                                                            valueOrDefault<
                                                                String>(
                                                              WBLoanDetailsStruct
                                                                  .maybeFromMap(
                                                                      getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))?.productName,
                                                              '-',
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    leftButtonAction: () async {
                                                      context.safePop();
                                                    },
                                                    midRightButtonAction:
                                                        () async {},
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0,
                                                          valueOrDefault<
                                                              double>(
                                                            isWeb ? 20.0 : 0.0,
                                                            0.0,
                                                          ),
                                                          20.0,
                                                          20.0),
                                                  child: Semantics(
                                                    label: 'loan_details',
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        WBLoanDetailsStruct.maybeFromMap(
                                                                            getJsonField(
                                                                          containerRetailLoansDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.loan''',
                                                                        ))?.productName,
                                                                        '-',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).titleLargeIsCustom,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      functions.maskAccountNumber(
                                                                          valueOrDefault<
                                                                              String>(
                                                                        WBLoanDetailsStruct.maybeFromMap(
                                                                            getJsonField(
                                                                          containerRetailLoansDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.loan''',
                                                                        ))?.loanAccountNumber,
                                                                        '-',
                                                                      )),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xBFF1F4F8),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          5.0)),
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                            ))
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    LoanSchedulePageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'loanAccountNumber':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          WBLoanDetailsStruct.maybeFromMap(
                                                                              getJsonField(
                                                                            containerRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.loanAccountNumber,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'loanType':
                                                                          serializeParam(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          WBLoanDetailsStruct.maybeFromMap(
                                                                              getJsonField(
                                                                            containerRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.productName,
                                                                          '-',
                                                                        ),
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .calendar_today,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'OutStanding Balance',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0x80F1F4F8),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '${WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                        containerRetailLoansDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.loan''',
                                                                      ))?.currency} ${formatNumber(
                                                                        WBLoanDetailsStruct.maybeFromMap(
                                                                            getJsonField(
                                                                          containerRetailLoansDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.loan''',
                                                                        ))?.outstandingBalance,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.periodDecimal,
                                                                      )}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            fontSize:
                                                                                30.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        5.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              LinearPercentIndicator(
                                                                percent: functions.getPercentage(
                                                                    FFAppState()
                                                                        .LoanMonthlyModel
                                                                        .monthsPaid,
                                                                    FFAppState()
                                                                        .LoanMonthlyModel
                                                                        .totalMonths)!,
                                                                lineHeight: 6.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                backgroundColor:
                                                                    Color(
                                                                        0x2FFFFFFF),
                                                                barRadius: Radius
                                                                    .circular(
                                                                        100.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    '${FFAppState().LoanMonthlyModel.monthsPaid.toString()} of  ${FFAppState().LoanMonthlyModel.totalMonths.toString()} months',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xC0F1F4F8),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'of ${WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                      containerRetailLoansDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.loan''',
                                                                    ))?.currency} ${formatNumber(
                                                                      WBLoanDetailsStruct
                                                                          .maybeFromMap(
                                                                              getJsonField(
                                                                        containerRetailLoansDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.loan''',
                                                                      ))?.principalAmount,
                                                                      formatType:
                                                                          FormatType
                                                                              .decimal,
                                                                      decimalType:
                                                                          DecimalType
                                                                              .periodDecimal,
                                                                    )}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xC0F1F4F8),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 20.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (!functions
                                                        .checkPaymentDateMissing(
                                                            WhitebankGroupAPIGroup
                                                                .retailLoansDetailsCall
                                                                .loan(
                                                              containerRetailLoansDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'nextDueDate')! &&
                                                    ((WBLoanDetailsStruct.maybeFromMap(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailLoansDetailsCall
                                                                        .loan(
                                                              containerRetailLoansDetailsResponse
                                                                  .jsonBody,
                                                            ))
                                                                ?.latestPaymentDate ==
                                                            '') ||
                                                        !functions.isLessThan24Hours(
                                                            WBLoanDetailsStruct
                                                                .maybeFromMap(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailLoansDetailsCall
                                                                        .loan(
                                                          containerRetailLoansDetailsResponse
                                                              .jsonBody,
                                                        ))?.latestPaymentDate)!))
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Next Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  '${WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                    containerRetailLoansDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.loan''',
                                                                  ))?.currency} ${formatNumber(
                                                                    WBLoanDetailsStruct
                                                                        .maybeFromMap(
                                                                            getJsonField(
                                                                      containerRetailLoansDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.loan''',
                                                                    ))?.nextPaymentAmount,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .periodDecimal,
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            20.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'Due ${dateTimeFormat(
                                                                    "MMMM d, y",
                                                                    functions.stringToDateTimeWithFormat(
                                                                        WBLoanDetailsStruct.maybeFromMap(
                                                                            getJsonField(
                                                                      containerRetailLoansDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.loan''',
                                                                    ))?.nextDueDate),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 5.0)),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      Semantics(
                                                                label:
                                                                    'loan_details_pay_button',
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed: ((dateTimeFormat(
                                                                                "dd",
                                                                                functions.stringToDateTimeWithFormat(WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                  containerRetailLoansDetailsResponse.jsonBody,
                                                                                  r'''$.loan''',
                                                                                ))?.nextDueDate),
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              ) !=
                                                                              dateTimeFormat(
                                                                                "dd",
                                                                                getCurrentTimestamp,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              )) ||
                                                                          FFAppState().LoanMonthlyModel.isOverDue)
                                                                      ? null
                                                                      : () async {
                                                                          if (FFAppState()
                                                                              .FeatureFlagsAppstate
                                                                              .retailLoanPayments) {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return WebViewAware(
                                                                                  child: GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(context).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: PayLoanSourceAccountBottomSheetWidget(
                                                                                        callBack: (selectedAccount) async {
                                                                                          _model.sourceAccount = selectedAccount;
                                                                                          safeSetState(() {});
                                                                                          if (selectedAccount.currentBalance <
                                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                                r'''$.loan''',
                                                                                              ))!
                                                                                                  .nextPaymentAmount) {
                                                                                            await showDialog(
                                                                                              context: context,
                                                                                              builder: (dialogContext) {
                                                                                                return Dialog(
                                                                                                  elevation: 0,
                                                                                                  insetPadding: EdgeInsets.zero,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                  child: WebViewAware(
                                                                                                    child: GestureDetector(
                                                                                                      onTap: () {
                                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                                      },
                                                                                                      child: CustomInformationalDialogWidget(
                                                                                                        message: 'You don\'t have enough balance to make this payment',
                                                                                                        primaryButtonTitle: 'Confirm',
                                                                                                        title: 'Insufficient Balance',
                                                                                                        primaryButtonAction: () async {
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        secondaryButtonAction: () async {},
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            );
                                                                                          } else {
                                                                                            FFAppState().payingSourceAccountAppState = selectedAccount;
                                                                                            safeSetState(() {});
                                                                                            FFAppState().GlobalLoanInitialPaymentDetails = LoanInitialPaymentDetailsStruct(
                                                                                              amount: WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                                r'''$.loan''',
                                                                                              ))?.nextPaymentAmount,
                                                                                              sourceAccountNumber: selectedAccount.fullAccountNumber,
                                                                                              sourceAccountName: selectedAccount.accountName,
                                                                                              currency: WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                                r'''$.loan''',
                                                                                              ))?.currency,
                                                                                              remarks: 'Loan Payment',
                                                                                              idempotencyKey: '',
                                                                                              loanType: WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                                r'''$.loan''',
                                                                                              ))?.productName,
                                                                                              loanAccountNumber: WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                                r'''$.loan''',
                                                                                              ))?.loanAccountNumber,
                                                                                            );
                                                                                            safeSetState(() {});
                                                                                            Navigator.pop(context);

                                                                                            context.pushNamed(PayLoanAmountPageWidget.routeName);
                                                                                          }
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          } else {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return WebViewAware(
                                                                                  child: GestureDetector(
                                                                                    onTap: () {
                                                                                      FocusScope.of(context).unfocus();
                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                    },
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: FeatureFlagBottomSheetWidget(
                                                                                        callBack: () async {
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          }
                                                                        },
                                                                  text:
                                                                      'Pay Now',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: Color(
                                                                        0xFF027377),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    disabledColor:
                                                                        Color(
                                                                            0xFFE0E0E0),
                                                                    disabledTextColor:
                                                                        Color(
                                                                            0xFF9E9E9E),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            if (FFAppState()
                                                                .LoanMonthlyModel
                                                                .isOverDue)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Your payment is past due. Kindly proceed to the nearest branch to make your payment and avoid further delays.',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .redBase,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                Divider(
                                                  thickness: 1.0,
                                                  color: Color(0xFFEAEAEA),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'PRINCIPAL',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                        Text(
                                                          '${WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                            containerRetailLoansDetailsResponse
                                                                .jsonBody,
                                                            r'''$.loan''',
                                                          ))?.currency} ${formatNumber(
                                                            WBLoanDetailsStruct
                                                                .maybeFromMap(
                                                                    getJsonField(
                                                              containerRetailLoansDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.loan''',
                                                            ))?.principalAmount,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .periodDecimal,
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'INTEREST',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                        Text(
                                                          '${WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                            containerRetailLoansDetailsResponse
                                                                .jsonBody,
                                                            r'''$.loan''',
                                                          ))?.currency} ${formatNumber(
                                                            WBLoanDetailsStruct
                                                                .maybeFromMap(
                                                                    getJsonField(
                                                              containerRetailLoansDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.loan''',
                                                            ))?.totalInterestPaid,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .periodDecimal,
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Semantics(
                                          label: 'loan_information',
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  6.0),
                                                      child: Text(
                                                        'Loan Information',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF02568E),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Original Loan Amount',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            '${WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                              containerRetailLoansDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.loan''',
                                                            ))?.currency} ${formatNumber(
                                                              WBLoanDetailsStruct
                                                                  .maybeFromMap(
                                                                      getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))?.principalAmount,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .periodDecimal,
                                                            )}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFEAEAEA),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Interest Rate (p.a)',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            '${valueOrDefault<String>(
                                                              WBLoanDetailsStruct
                                                                      .maybeFromMap(
                                                                          getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))
                                                                  ?.interestRate
                                                                  .toString(),
                                                              '0',
                                                            )}%',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFEAEAEA),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Term',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            '${valueOrDefault<String>(
                                                              WBLoanDetailsStruct
                                                                      .maybeFromMap(
                                                                          getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))
                                                                  ?.originalTerm
                                                                  .toString(),
                                                              '0',
                                                            )} months',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFEAEAEA),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Start Date',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            dateTimeFormat(
                                                              "MMMM d, y",
                                                              functions.stringToDateTimeWithFormat(
                                                                  WBLoanDetailsStruct
                                                                      .maybeFromMap(
                                                                          getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))?.disbursementDate),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFEAEAEA),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Maturity Date',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            dateTimeFormat(
                                                              "MMMM d, y",
                                                              functions.stringToDateTimeWithFormat(
                                                                  WBLoanDetailsStruct
                                                                      .maybeFromMap(
                                                                          getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))?.maturityDate),
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFEAEAEA),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Source Account',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WBLoanDetailsStruct
                                                                  .maybeFromMap(
                                                                      getJsonField(
                                                                containerRetailLoansDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.loan''',
                                                              ))?.maskedAccountNumber,
                                                              'Savings . . . 4821',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFEAEAEA),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Due Date',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF5C6466),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                          Text(
                                                            functions
                                                                    .checkPaymentDateMissing(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailLoansDetailsCall
                                                                            .loan(
                                                                          containerRetailLoansDetailsResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        'nextDueDate')!
                                                                ? 'N/A'
                                                                : dateTimeFormat(
                                                                    "MMMM d, y",
                                                                    functions.stringToDateTimeWithFormat(
                                                                        WBLoanDetailsStruct.maybeFromMap(
                                                                            getJsonField(
                                                                      containerRetailLoansDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.loan''',
                                                                    ))?.nextDueDate),
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 10.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future: WhitebankGroupAPIGroup
                                              .retailLoansTransactionsCall
                                              .call(
                                            loanAccountNumber:
                                                widget.loanAccountNumber,
                                            limit: 10,
                                            offset: 0,
                                            fromDate: functions
                                                .getDateRangeByDays(
                                                    _model.daysFrom)
                                                ?.fromDate
                                                ?.toString(),
                                            toDate: _model.toDate,
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                            accessToken:
                                                currentAuthenticationToken,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final containerRetailLoansTransactionsResponse =
                                                snapshot.data!;

                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(15.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Text(
                                                            'Loan Payment History',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF02568E),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                        Builder(
                                                          builder: (context) =>
                                                              Semantics(
                                                            label:
                                                                'loanDetails_transactionHistoryDowload_button',
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                _model.loanDownload =
                                                                    [];
                                                                safeSetState(
                                                                    () {});
                                                                if (LoanTransactionResponseStruct.maybeFromMap(
                                                                        containerRetailLoansTransactionsResponse
                                                                            .jsonBody)!
                                                                    .transactions
                                                                    .where((e) =>
                                                                        e.transactionType ==
                                                                        'PAYMENT')
                                                                    .toList()
                                                                    .isNotEmpty) {
                                                                  for (int loop1Index =
                                                                          0;
                                                                      loop1Index <
                                                                          LoanTransactionResponseStruct.maybeFromMap(containerRetailLoansTransactionsResponse.jsonBody)!
                                                                              .transactions
                                                                              .where((e) => e.transactionType == 'PAYMENT')
                                                                              .toList()
                                                                              .length;
                                                                      loop1Index++) {
                                                                    final currentLoop1Item = LoanTransactionResponseStruct.maybeFromMap(containerRetailLoansTransactionsResponse
                                                                            .jsonBody)!
                                                                        .transactions
                                                                        .where((e) =>
                                                                            e.transactionType ==
                                                                            'PAYMENT')
                                                                        .toList()[loop1Index];
                                                                    _model.addToLoanDownload(
                                                                        LoanTransactionListModelDownloadStruct(
                                                                      transactionId:
                                                                          currentLoop1Item
                                                                              .transactionId,
                                                                      transactionDate:
                                                                          currentLoop1Item
                                                                              .transactionDate,
                                                                      valueDate:
                                                                          currentLoop1Item
                                                                              .valueDate,
                                                                      amount: currentLoop1Item
                                                                          .amount,
                                                                      currency:
                                                                          currentLoop1Item
                                                                              .currency,
                                                                      transactionType:
                                                                          currentLoop1Item
                                                                              .transactionType,
                                                                      description:
                                                                          currentLoop1Item
                                                                              .description,
                                                                      referenceNumber:
                                                                          currentLoop1Item
                                                                              .referenceNumber,
                                                                      runningBalance:
                                                                          currentLoop1Item
                                                                              .runningBalance,
                                                                      direction:
                                                                          'CREDIT',
                                                                    ));
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                DownloadLoanTransactionsBottomSheetWidget(
                                                                              data: _model.loanDownload.map((e) => e.toMap()).toList(),
                                                                              title: 'Loan Payment History',
                                                                              message: 'Download loan payment history.',
                                                                              cancelButtonTitle: 'Cancel',
                                                                              submitButtonTitle: 'Confirm',
                                                                              fromDate: functions.getDateRangeByDays(_model.daysFrom)?.fromDate,
                                                                              toDate: getCurrentTimestamp,
                                                                              loanAccountNumber: valueOrDefault<String>(
                                                                                WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                  containerRetailLoansDetailsResponse.jsonBody,
                                                                                  r'''$.loan''',
                                                                                ))?.loanAccountNumber,
                                                                                '-',
                                                                              ),
                                                                              accountType: WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                r'''$.loan''',
                                                                              ))!
                                                                                  .productName,
                                                                              currency: WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                                containerRetailLoansDetailsResponse.jsonBody,
                                                                                r'''$.loan''',
                                                                              ))!
                                                                                  .currency,
                                                                              accountNumber: FFAppState().selectedAccount.fullAccountNumber,
                                                                              accountName: valueOrDefault<String>(
                                                                                currentUserData?.user.fullName,
                                                                                'Ben Uy',
                                                                              ),
                                                                              cancelButtonAction: () async {},
                                                                              submitButtonAction: () async {},
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                CustomInformationalDialogWidget(
                                                                              message: 'Empty payment history.',
                                                                              primaryButtonTitle: 'Confirm',
                                                                              primaryButtonAction: () async {
                                                                                Navigator.pop(context);
                                                                              },
                                                                              secondaryButtonAction: () async {},
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }
                                                              },
                                                              text: 'Download',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleSmallIsCustom,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Semantics(
                                                          label:
                                                              'loanDetails_allFilter_button',
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.daysFrom =
                                                                  1000;
                                                              safeSetState(
                                                                  () {});
                                                              _model.selectedAll =
                                                                  true;
                                                              _model.selectedThisYear =
                                                                  false;
                                                              _model.selectedSixMonths =
                                                                  false;
                                                              _model.selected30Days =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'All',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: _model
                                                                      .selectedAll
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: _model.selectedAll
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Semantics(
                                                          label:
                                                              'loanDetails_oneYearFilter_button',
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.daysFrom =
                                                                  365;
                                                              safeSetState(
                                                                  () {});
                                                              _model.selectedAll =
                                                                  false;
                                                              _model.selectedThisYear =
                                                                  true;
                                                              _model.selectedSixMonths =
                                                                  false;
                                                              _model.selected30Days =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'This year',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: _model
                                                                      .selectedThisYear
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: _model.selectedThisYear
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Semantics(
                                                          label:
                                                              'loanDetails_sixMonthsFilter_button',
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.daysFrom =
                                                                  180;
                                                              safeSetState(
                                                                  () {});
                                                              _model.selectedAll =
                                                                  false;
                                                              _model.selectedThisYear =
                                                                  false;
                                                              _model.selectedSixMonths =
                                                                  true;
                                                              _model.selected30Days =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text:
                                                                'Last 6 months',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: _model
                                                                      .selectedSixMonths
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: _model.selectedSixMonths
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Semantics(
                                                          label:
                                                              'loanDetails_thirtyDaysFilter_button',
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.daysFrom =
                                                                  30;
                                                              safeSetState(
                                                                  () {});
                                                              _model.selectedAll =
                                                                  false;
                                                              _model.selectedThisYear =
                                                                  false;
                                                              _model.selectedSixMonths =
                                                                  false;
                                                              _model.selected30Days =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text:
                                                                'Last 30 days',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: _model
                                                                      .selected30Days
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: _model.selected30Days
                                                                            ? FlutterFlowTheme.of(context).secondaryBackground
                                                                            : FlutterFlowTheme.of(context).secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 5.0)),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        if (WhitebankGroupAPIGroup
                                                                    .retailLoansTransactionsCall
                                                                    .transactions(
                                                                      containerRetailLoansTransactionsResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.where((e) =>
                                                                        LoanTransactionsListModelStruct.maybeFromMap(e)
                                                                            ?.transactionType ==
                                                                        'PAYMENT')
                                                                    .toList() !=
                                                                null &&
                                                            (WhitebankGroupAPIGroup
                                                                    .retailLoansTransactionsCall
                                                                    .transactions(
                                                                      containerRetailLoansTransactionsResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.where((e) =>
                                                                        LoanTransactionsListModelStruct.maybeFromMap(e)
                                                                            ?.transactionType ==
                                                                        'PAYMENT')
                                                                    .toList())!
                                                                .isNotEmpty) {
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final loanTransactions = WhitebankGroupAPIGroup
                                                                        .retailLoansTransactionsCall
                                                                        .transactions(
                                                                          containerRetailLoansTransactionsResponse
                                                                              .jsonBody,
                                                                        )
                                                                        ?.where((e) =>
                                                                            LoanTransactionsListModelStruct.maybeFromMap(e)?.transactionType ==
                                                                            'PAYMENT')
                                                                        .toList()
                                                                        .toList() ??
                                                                    [];

                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List.generate(
                                                                      loanTransactions
                                                                          .length,
                                                                      (loanTransactionsIndex) {
                                                                    final loanTransactionsItem =
                                                                        loanTransactions[
                                                                            loanTransactionsIndex];
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Loan Payment',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                LoanTransactionsListModelStruct.maybeFromMap(loanTransactionsItem)?.transactionDate,
                                                                                'Mar 23, 2025',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 5.0)),
                                                                        ),
                                                                        Text(
                                                                          '${LoanTransactionsListModelStruct.maybeFromMap(loanTransactionsItem)?.currency}${formatNumber(
                                                                            LoanTransactionsListModelStruct.maybeFromMap(loanTransactionsItem)?.amount,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.periodDecimal,
                                                                          )}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                color: Color(0xFF979C9E),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  }).divide(SizedBox(
                                                                      height:
                                                                          2.0)),
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        } else {
                                                          return wrapWithModel(
                                                            model: _model
                                                                .emptyListComponentModel,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                EmptyListComponentWidget(
                                                              title:
                                                                  'No Payment have been made.',
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 10.0)),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 20.0))
                                        .addToEnd(SizedBox(height: 40.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    wrapWithModel(
                      model: _model.customWebAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomWebAppBarWidget(
                        pageTitle: '',
                        midButtonIcon: null,
                        rightButtonIcon: null,
                        leftButtonAction: () async {},
                        midButtonAction: () async {},
                        rightButtonAction: () async {},
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
