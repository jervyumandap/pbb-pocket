import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/loan_card_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pay_bills/p_b_components/feature_flag_bottom_sheet/feature_flag_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'manage_loans_page_model.dart';
export 'manage_loans_page_model.dart';

class ManageLoansPageWidget extends StatefulWidget {
  const ManageLoansPageWidget({super.key});

  static String routeName = 'ManageLoansPage';
  static String routePath = '/manageLoansPage';

  @override
  State<ManageLoansPageWidget> createState() => _ManageLoansPageWidgetState();
}

class _ManageLoansPageWidgetState extends State<ManageLoansPageWidget> {
  late ManageLoansPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageLoansPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().LoanMonthlyModel = LoanMonthlyModelStruct();
      safeSetState(() {});
      await action_blocks.refreshSessionActionBlock(context);
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
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 0.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 0.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return (FFAppState().isDrawerOpen
                                    ? valueOrDefault<double>(
                                        FFAppConstants.maxDrawerWidth,
                                        260.0,
                                      )
                                    : FFAppConstants.minDrawerWidth);
                              } else {
                                return (FFAppState().isDrawerOpen
                                    ? valueOrDefault<double>(
                                        FFAppConstants.maxDrawerWidth,
                                        260.0,
                                      )
                                    : FFAppConstants.minDrawerWidth);
                              }
                            }(),
                            270.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return FFAppConstants.MobileAppBarHeight;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return FFAppConstants.MobileAppBarHeight;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return FFAppConstants.WebAppBarHeight;
                              } else {
                                return FFAppConstants.WebAppBarHeight;
                              }
                            }(),
                            72.0,
                          ),
                          0.0,
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
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Manage Loans',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineSmallIsCustom,
                                            ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
                                          child: Semantics(
                                            label:
                                                'manage_loans_inquire_loan_link_text',
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                    .FeatureFlagsAppstate
                                                    .retailLoanApplication) {
                                                  context.pushNamed(
                                                      LoanInquirePageWidget
                                                          .routeName);
                                                } else {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                FeatureFlagBottomSheetWidget(
                                                              callBack:
                                                                  () async {},
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                }
                                              },
                                              child: Text(
                                                'Inquire Loan',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 130.0),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (false)
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFAEB),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: Color(0xFFF5D77A),
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 44.0,
                                                                  height: 44.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFE6F7FB),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF5D77A),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Icon(
                                                                    Icons
                                                                        .access_time,
                                                                    color: Color(
                                                                        0xFFA8770F),
                                                                    size: 24.0,
                                                                  ),
                                                                ),
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
                                                                            color:
                                                                                Color(0xFF006B84),
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
                                                                      '₱12,450.00 · Auto Loan',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF252525),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Due on May 28,2026',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF939FA3),
                                                                            fontSize:
                                                                                11.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          2.0)),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Pay Now',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 38.0,
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
                                                                color: Colors
                                                                    .white,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      color: Color(
                                                                          0xFF8E5D00),
                                                                      fontSize:
                                                                          13.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyLargeIsCustom,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFF5D77A),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100.0),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                              FutureBuilder<ApiCallResponse>(
                                                future: FFAppState().loans(
                                                  uniqueQueryKey:
                                                      '${currentUserData?.user.userName}_ManageLoans',
                                                  overrideCache: FFAppState()
                                                      .LoanPaymentPushThrough,
                                                  requestFn: () =>
                                                      WhitebankGroupAPIGroup
                                                          .retailLoansCall
                                                          .call(
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        child:
                                                            LoadingStateComponentWidget(
                                                          isFinished: true,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final queryColumnRetailLoansResponse =
                                                      snapshot.data!;

                                                  return Builder(
                                                    builder: (context) {
                                                      final loans =
                                                          (getJsonField(
                                                                queryColumnRetailLoansResponse
                                                                    .jsonBody,
                                                                r'''$.loans''',
                                                                true,
                                                              )
                                                                      ?.toList()
                                                                      .map<WBLoanDetailsStruct?>(
                                                                          WBLoanDetailsStruct
                                                                              .maybeFromMap)
                                                                      .toList() as Iterable<WBLoanDetailsStruct?>)
                                                                  .withoutNulls
                                                                  .toList() ??
                                                              [];
                                                      if (loans.isEmpty) {
                                                        return EmptyListComponentWidget(
                                                          image: '',
                                                          title:
                                                              'Your loans will appear here once created.',
                                                        );
                                                      }

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            loans.length,
                                                            (loansIndex) {
                                                          final loansItem =
                                                              loans[loansIndex];
                                                          return FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: FFAppState()
                                                                .loanResched(
                                                              uniqueQueryKey:
                                                                  loansItem
                                                                      .loanAccountNumber,
                                                              overrideCache:
                                                                  FFAppState()
                                                                      .LoanPaymentPushThrough,
                                                              requestFn: () =>
                                                                  WhitebankGroupAPIGroup
                                                                      .retailLoanRepaymentScheduleCall
                                                                      .call(
                                                                loanAccountNumber:
                                                                    loansItem
                                                                        .loanAccountNumber,
                                                                baseURL:
                                                                    FFDevEnvironmentValues()
                                                                        .WBPBASEURL,
                                                                accessToken:
                                                                    currentAuthenticationToken,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final containerRetailLoanRepaymentScheduleResponse =
                                                                  snapshot
                                                                      .data!;

                                                              return Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: FutureBuilder<
                                                                    ApiCallResponse>(
                                                                  future: FFAppState()
                                                                      .loanQueries(
                                                                    uniqueQueryKey:
                                                                        loansItem
                                                                            .loanAccountNumber,
                                                                    overrideCache:
                                                                        FFAppState()
                                                                            .LoanPaymentPushThrough,
                                                                    requestFn: () =>
                                                                        WhitebankGroupAPIGroup
                                                                            .retailLoansDetailsCall
                                                                            .call(
                                                                      loanAccountNumber:
                                                                          loansItem
                                                                              .loanAccountNumber,
                                                                      baseURL:
                                                                          FFDevEnvironmentValues()
                                                                              .WBPBASEURL,
                                                                      accessToken:
                                                                          currentAuthenticationToken,
                                                                    ),
                                                                  ),
                                                                  builder: (context,
                                                                      snapshot) {
                                                                    // Customize what your widget looks like when it's loading.
                                                                    if (!snapshot
                                                                        .hasData) {
                                                                      return Center(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          child:
                                                                              LoadingStateComponentWidget(
                                                                            isFinished:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    final loanCardComponentRetailLoansDetailsResponse =
                                                                        snapshot
                                                                            .data!;

                                                                    return Semantics(
                                                                      label:
                                                                          'manageLoansPage_account_details_component',
                                                                      child:
                                                                          LoanCardComponentWidget(
                                                                        key: Key(
                                                                            'Keyc47_${loansIndex}_of_${loans.length}'),
                                                                        loanDetails:
                                                                            WBLoanDetailsStruct(
                                                                          loanAccountNumber:
                                                                              loansItem.loanAccountNumber,
                                                                          maskedAccountNumber:
                                                                              loansItem.maskedAccountNumber,
                                                                          loanType:
                                                                              loansItem.loanType,
                                                                          productName:
                                                                              loansItem.productName,
                                                                          currency:
                                                                              loansItem.currency,
                                                                          status:
                                                                              loansItem.status,
                                                                          principalAmount:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.principalAmount,
                                                                          outstandingBalance:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.outstandingBalance,
                                                                          disbursementDate:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.disbursementDate,
                                                                          maturityDate:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.maturityDate,
                                                                          interestRate:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.interestRate,
                                                                          monthlyPayment:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.monthlyPayment,
                                                                          nextDueDate:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.nextDueDate,
                                                                          nextPaymentAmount:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.nextPaymentAmount,
                                                                          totalInterestPaid:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.totalInterestPaid,
                                                                          remainingTerm:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.remainingTerm,
                                                                          originalTerm:
                                                                              WBLoanDetailsStruct.maybeFromMap(getJsonField(
                                                                            loanCardComponentRetailLoansDetailsResponse.jsonBody,
                                                                            r'''$.loan''',
                                                                          ))?.originalTerm,
                                                                        ),
                                                                        monthlySpan: LoanRepaymentListStruct.maybeFromMap(containerRetailLoanRepaymentScheduleResponse.jsonBody)!
                                                                            .schedule
                                                                            .length,
                                                                        monthlyPaid: LoanRepaymentListStruct.maybeFromMap(containerRetailLoanRepaymentScheduleResponse.jsonBody)!
                                                                            .schedule
                                                                            .where((e) =>
                                                                                e.status ==
                                                                                'PAID')
                                                                            .toList()
                                                                            .length,
                                                                        callBack:
                                                                            () async {
                                                                          FFAppState()
                                                                              .updateLoanMonthlyModelStruct(
                                                                            (e) => e
                                                                              ..isOverDue = (LoanRepaymentListStruct.maybeFromMap(containerRetailLoanRepaymentScheduleResponse.jsonBody)?.schedule.where((e) => e.status == 'OVERDUE').toList() != null && (LoanRepaymentListStruct.maybeFromMap(containerRetailLoanRepaymentScheduleResponse.jsonBody)?.schedule.where((e) => e.status == 'OVERDUE').toList())!.isNotEmpty) == true
                                                                              ..totalMonths = LoanRepaymentListStruct.maybeFromMap(containerRetailLoanRepaymentScheduleResponse.jsonBody)?.schedule.length
                                                                              ..monthsPaid = LoanRepaymentListStruct.maybeFromMap(containerRetailLoanRepaymentScheduleResponse.jsonBody)?.schedule.where((e) => e.status == 'PAID').toList().length,
                                                                          );
                                                                          safeSetState(
                                                                              () {});

                                                                          context
                                                                              .pushNamed(
                                                                            LoanDetailsPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'loanAccountNumber': serializeParam(
                                                                                loansItem.loanAccountNumber,
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        }).divide(SizedBox(
                                                            height: 16.0)),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Semantics(
                        label: 'manage_loans_menu_mobile_ navigationbar',
                        child: wrapWithModel(
                          model: _model.mobileNavigationBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: MobileNavigationBarWidget(
                            pageIndex: 11,
                            shouldHideBottomNav: false,
                          ),
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'manage_loans_menu_mobile_hamburger',
                      child: wrapWithModel(
                        model: _model.customMobileAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomMobileAppBarWidget(
                          pageTitle: '',
                          rightButtonIcon: null,
                          leftButtonIcon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          midRightButtonIcon: null,
                          buttonColor: Colors.transparent,
                          buttonWithoutBackground: false,
                          isTitleLeftAlign: false,
                          rightButtonAction: () async {},
                          leftButtonAction: () async {
                            context.safePop();
                          },
                          midRightButtonAction: () async {},
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'manage_loans_menu_web_hamburger',
                      child: wrapWithModel(
                        model: _model.customWebAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomWebAppBarWidget(
                          pageTitle: '',
                          leftButtonAction: () async {},
                          midButtonAction: () async {},
                          rightButtonAction: () async {},
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 56.0, 16.0, 0.0),
                          child: Semantics(
                            label: 'manageLoansPage_inquire_loan_entry',
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState()
                                    .FeatureFlagsAppstate
                                    .retailLoanApplication) {
                                  context.pushNamed(
                                      LoanInquirePageWidget.routeName);
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
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: FeatureFlagBottomSheetWidget(
                                              callBack: () async {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                }
                              },
                              child: Text(
                                'Inquire Loan',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
