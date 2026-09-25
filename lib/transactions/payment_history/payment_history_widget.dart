import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/bills_payment_item_component_copy/bills_payment_item_component_copy_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/date_range_bottom_sheet/date_range_bottom_sheet_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'payment_history_model.dart';
export 'payment_history_model.dart';

class PaymentHistoryWidget extends StatefulWidget {
  const PaymentHistoryWidget({super.key});

  static String routeName = 'PaymentHistory';
  static String routePath = '/paymentHistory';

  @override
  State<PaymentHistoryWidget> createState() => _PaymentHistoryWidgetState();
}

class _PaymentHistoryWidgetState extends State<PaymentHistoryWidget>
    with TickerProviderStateMixin {
  late PaymentHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentHistoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      _model.isLoading = true;
      _model.filterFromDate = functions.getDateRangeByDays(30)?.fromDate;
      _model.filterToDate = functions.getDateRangeByDays(30)?.toDate;
      safeSetState(() {});
      _model.isLoading = false;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
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
          children: [
            Expanded(
              child: FutureBuilder<ApiCallResponse>(
                future: _model
                    .transactionHistoryQuery(
                  uniqueQueryKey:
                      '${currentUserData?.user.id}_transactionHistoryV2Page',
                  overrideCache: false,
                  requestFn: () =>
                      WhitebankGroupAPIGroup.retailBillsPaymentHistoryCall.call(
                    fromDate: _model.filterFromDate != null
                        ? ((String date) {
                            return (date ?? '').isEmpty
                                ? ''
                                : '${date}T00:00:00Z';
                          }(dateTimeFormat(
                            "yyyy-MM-dd",
                            _model.filterFromDate,
                            locale: FFLocalizations.of(context).languageCode,
                          )))
                        : dateTimeFormat(
                            "yyyy-MM-dd",
                            functions.getDateRangeByDays(100)?.fromDate,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                    toDate: _model.filterToDate != null
                        ? ((String date) {
                            return (date ?? '').isEmpty
                                ? ''
                                : '${date}T23:59:59Z';
                          }(dateTimeFormat(
                            "yyyy-MM-dd",
                            _model.filterToDate,
                            locale: FFLocalizations.of(context).languageCode,
                          )))
                        : dateTimeFormat(
                            "yyyy-MM-dd",
                            getCurrentTimestamp,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                    limit: '10',
                    accessToken: currentAuthenticationToken,
                    baseURL: FFDevEnvironmentValues().WBPBASEURL,
                  ),
                )
                    .then((result) {
                  try {
                    _model.apiRequestCompleted = true;
                    _model.apiRequestLastUniqueKey =
                        '${currentUserData?.user.id}_transactionHistoryV2Page';
                  } finally {}
                  return result;
                }),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                      ),
                    );
                  }
                  final containerRetailBillsPaymentHistoryResponse =
                      snapshot.data!;

                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/bg-vector-1.png',
                        ).image,
                      ),
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
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        18.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Payment History',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            color: Color(0xFF383839),
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                                if (false)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 18.0, 16.0, 24.0),
                                    child: Container(
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE2E8F0),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  _model.isFundTransferSelected =
                                                      true;
                                                  safeSetState(() {});
                                                  _model.isLoading = true;
                                                  _model.filterFromDate =
                                                      functions
                                                          .getDateRangeByDays(
                                                              30)
                                                          ?.fromDate;
                                                  _model.filterToDate =
                                                      functions
                                                          .getDateRangeByDays(
                                                              30)
                                                          ?.toDate;
                                                  safeSetState(() {});
                                                },
                                                text: 'Transfer',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: _model
                                                          .isFundTransferSelected
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : Color(0xFFE2E8F0),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: valueOrDefault<
                                                            Color>(
                                                          _model.isFundTransferSelected
                                                              ? Color(
                                                                  0xFF0F172B)
                                                              : Color(
                                                                  0xFF45556C),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                        ),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  _model.isFundTransferSelected =
                                                      false;
                                                  safeSetState(() {});
                                                  _model.isLoading = true;
                                                  _model.filterFromDate =
                                                      functions
                                                          .getDateRangeByDays(
                                                              30)
                                                          ?.fromDate;
                                                  _model.filterToDate =
                                                      functions
                                                          .getDateRangeByDays(
                                                              30)
                                                          ?.toDate;
                                                  safeSetState(() {});
                                                },
                                                text: 'Bills Payment',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: !_model
                                                          .isFundTransferSelected
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : Color(0xFFE2E8F0),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: valueOrDefault<
                                                            Color>(
                                                          !_model.isFundTransferSelected
                                                              ? Color(
                                                                  0xFF0F172B)
                                                              : Color(
                                                                  0xFF45556C),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                        ),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                Expanded(
                                  child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final recentTransactions = BillsPaymentHistoryModelStruct
                                                                      .maybeFromMap(
                                                                          containerRetailBillsPaymentHistoryResponse
                                                                              .jsonBody)
                                                                  ?.payments
                                                                  .sortedList(
                                                                      keyOf: (e) =>
                                                                          e.createdAt,
                                                                      desc: true)
                                                                  .toList() ??
                                                              [];

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                recentTransactions
                                                                    .length,
                                                            itemBuilder: (context,
                                                                recentTransactionsIndex) {
                                                              final recentTransactionsItem =
                                                                  recentTransactions[
                                                                      recentTransactionsIndex];
                                                              return wrapWithModel(
                                                                model: _model
                                                                    .billsPaymentItemComponentCopyModels
                                                                    .getModel(
                                                                  recentTransactionsItem
                                                                      .id,
                                                                  recentTransactionsIndex,
                                                                ),
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    BillsPaymentItemComponentCopyWidget(
                                                                  key: Key(
                                                                    'Keyni8_${recentTransactionsItem.id}',
                                                                  ),
                                                                  transaction:
                                                                      recentTransactionsItem,
                                                                  callback:
                                                                      () async {
                                                                    context
                                                                        .pushNamed(
                                                                      ViewTransactionPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'status':
                                                                            serializeParam(
                                                                          recentTransactionsItem
                                                                              .status,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'amount':
                                                                            serializeParam(
                                                                          recentTransactionsItem
                                                                              .amount,
                                                                          ParamType
                                                                              .double,
                                                                        ),
                                                                        'referenceNumber':
                                                                            serializeParam(
                                                                          recentTransactionsItem
                                                                              .referenceNumber,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'dateCreated':
                                                                            serializeParam(
                                                                          recentTransactionsItem
                                                                              .createdAt,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'recipientName':
                                                                            serializeParam(
                                                                          recentTransactionsItem
                                                                              .biller
                                                                              .name,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'currency':
                                                                            serializeParam(
                                                                          recentTransactionsItem
                                                                              .currency,
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                      extra: <String,
                                                                          dynamic>{
                                                                        '__transition_info__':
                                                                            TransitionInfo(
                                                                          hasTransition:
                                                                              true,
                                                                          transitionType:
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 0),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'containerOnPageLoadAnimation']!),
                                                ].divide(
                                                    SizedBox(height: 14.0)),
                                              ),
                                            ),
                                            if (getJsonField(
                                                  containerRetailBillsPaymentHistoryResponse
                                                      .jsonBody,
                                                  r'''$.payments''',
                                                ) ==
                                                null)
                                              wrapWithModel(
                                                model: _model
                                                    .emptyListComponentModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: EmptyListComponentWidget(
                                                  title:
                                                      'No Transactions Available',
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  textSize: 12.0,
                                                ),
                                              ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (true)
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: wrapWithModel(
                              model: _model.mobileNavigationBarModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: MobileNavigationBarWidget(
                                pageIndex: 10,
                                shouldHideBottomNav: true,
                              ),
                            ),
                          ),
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
                        wrapWithModel(
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
                            rightButtonAction: () async {
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
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: DateRangeBottomSheetWidget(
                                          cancelButtonAction: () async {
                                            Navigator.pop(context);
                                          },
                                          submitButtonAction: () async {},
                                          selectedFilter:
                                              (fromDate, toDate) async {
                                            _model.filterFromDate = fromDate;
                                            _model.filterToDate = toDate;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.clearTransactionHistoryQueryCacheKey(
                                                  _model
                                                      .apiRequestLastUniqueKey);
                                              _model.apiRequestCompleted =
                                                  false;
                                            });
                                            await _model
                                                .waitForApiRequestCompleted();
                                            Navigator.pop(
                                                context,
                                                FilterDateRangeModelStruct(
                                                  fromDate: fromDate,
                                                  toDate: toDate,
                                                ));
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            leftButtonAction: () async {
                              context.safePop();
                            },
                            midRightButtonAction: () async {
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
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: DateRangeBottomSheetWidget(
                                          cancelButtonAction: () async {
                                            Navigator.pop(context);
                                          },
                                          submitButtonAction: () async {},
                                          selectedFilter:
                                              (fromDate, toDate) async {
                                            _model.filterFromDate = fromDate;
                                            _model.filterToDate = toDate;
                                            safeSetState(() {});
                                            safeSetState(() {
                                              _model.clearTransactionHistoryQueryCacheKey(
                                                  _model
                                                      .apiRequestLastUniqueKey);
                                              _model.apiRequestCompleted =
                                                  false;
                                            });
                                            await _model
                                                .waitForApiRequestCompleted();
                                            Navigator.pop(
                                                context,
                                                FilterDateRangeModelStruct(
                                                  fromDate: fromDate,
                                                  toDate: toDate,
                                                ));
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: wrapWithModel(
                              model: _model.mobileNavigationBarModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: MobileNavigationBarWidget(
                                pageIndex: 11,
                                shouldHideBottomNav: true,
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
