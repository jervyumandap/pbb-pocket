import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/date_range_bottom_sheet/date_range_bottom_sheet_widget.dart';
import '/components/download_transactions_bottom_sheet/download_transactions_bottom_sheet_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'statement_of_account_page_model.dart';
export 'statement_of_account_page_model.dart';

class StatementOfAccountPageWidget extends StatefulWidget {
  const StatementOfAccountPageWidget({
    super.key,
    required this.accountNumber,
  });

  final String? accountNumber;

  static String routeName = 'StatementOfAccountPage';
  static String routePath = '/statementOfAccountPage';

  @override
  State<StatementOfAccountPageWidget> createState() =>
      _StatementOfAccountPageWidgetState();
}

class _StatementOfAccountPageWidgetState
    extends State<StatementOfAccountPageWidget> with TickerProviderStateMixin {
  late StatementOfAccountPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatementOfAccountPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.filterFromDate = functions.getDateRangeByDays(100)?.fromDate;
      _model.filterToDate = getCurrentTimestamp;
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
            Flexible(
              child: FutureBuilder<ApiCallResponse>(
                future: (_model
                        .apiRequestCompleter ??= Completer<ApiCallResponse>()
                      ..complete(WhitebankGroupAPIGroup
                          .retailDashboardAccountTransactionsCall
                          .call(
                        accountNumber: widget.accountNumber,
                        limit: 30,
                        fromDate: dateTimeFormat(
                                      "yyyy-MM-dd",
                                      _model.filterFromDate,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ) !=
                                    ''
                            ? dateTimeFormat(
                                "yyyy-MM-dd",
                                _model.filterFromDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )
                            : dateTimeFormat(
                                "yyyy-MM-dd",
                                functions.getDateRangeByDays(100)?.fromDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                        toDate: dateTimeFormat(
                                      "yyyy-MM-dd",
                                      _model.filterToDate,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ) !=
                                    ''
                            ? dateTimeFormat(
                                "yyyy-MM-dd",
                                _model.filterToDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )
                            : dateTimeFormat(
                                "yyyy-MM-dd",
                                getCurrentTimestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                        accessToken: currentAuthenticationToken,
                        offset: 0,
                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                      )))
                    .future,
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
                  final containerRetailDashboardAccountTransactionsResponse =
                      snapshot.data!;

                  return Container(
                    width: double.infinity,
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
                            width: double.infinity,
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
                                      'Transaction History',
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
                                Flexible(
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    27.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Builder(
                                                          builder: (context) {
                                                            final transactionsHistoryList = WhitebankGroupAPIGroup
                                                                    .retailDashboardAccountTransactionsCall
                                                                    .transactions(
                                                                      containerRetailDashboardAccountTransactionsResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.map((e) =>
                                                                        RecentTransactionsStruct
                                                                            .maybeFromMap(e))
                                                                    .withoutNulls
                                                                    .toList()
                                                                    .toList() ??
                                                                [];

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  transactionsHistoryList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  transactionsHistoryListIndex) {
                                                                final transactionsHistoryListItem =
                                                                    transactionsHistoryList[
                                                                        transactionsHistoryListIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  transactionsHistoryListItem.description,
                                                                                  'ATM Withdrawal - SM Mall',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.poppins(
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      color: FlutterFlowTheme.of(context).base100,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 125.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Opacity(
                                                                                      opacity: 0.6,
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          functions.formatTransactionDate(transactionsHistoryListItem.transactionDate),
                                                                                          '-',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              font: GoogleFonts.poppins(
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                              ),
                                                                                              color: Color(0xFF707070),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    width: 85.0,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Opacity(
                                                                                      opacity: 0.6,
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          transactionsHistoryListItem.referenceNumber,
                                                                                          'REF-MNO345',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              font: GoogleFonts.poppins(
                                                                                                fontWeight: FontWeight.normal,
                                                                                                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                              ),
                                                                                              color: Color(0xFF707070),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 2.0)),
                                                                              ),
                                                                            ].divide(SizedBox(height: 10.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        '${transactionsHistoryListItem.direction == TransactionDirectionType.DEBIT.name ? '-' : '+'}PHP ${valueOrDefault<String>(
                                                                          functions
                                                                              .formatWithCommas(transactionsHistoryListItem.amount),
                                                                          '50,000',
                                                                        )}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: transactionsHistoryListItem.direction == TransactionDirectionType.DEBIT.name ? Color(0xFF979C9E) : FlutterFlowTheme.of(context).success2,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            3.0)),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation']!),
                                                  ].divide(
                                                      SizedBox(height: 14.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (WhitebankGroupAPIGroup
                                                  .retailDashboardAccountTransactionsCall
                                                  .transactions(
                                                    containerRetailDashboardAccountTransactionsResponse
                                                        .jsonBody,
                                                  )
                                                  ?.firstOrNull ==
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textSize: 12.0,
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 16.0)),
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
                        Builder(
                          builder: (context) => wrapWithModel(
                            model: _model.customWebAppBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CustomWebAppBarWidget(
                              pageTitle: '',
                              midButtonIcon: Icon(
                                Icons.filter_list_rounded,
                                size: 24.0,
                              ),
                              rightButtonIcon: Icon(
                                Icons.file_download_outlined,
                                size: 24.0,
                              ),
                              leftButtonAction: () async {},
                              midButtonAction: () async {
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
                                              safeSetState(() => _model
                                                  .apiRequestCompleter = null);
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
                              rightButtonAction: () async {
                                if ((WhitebankGroupAPIGroup
                                                .retailDashboardAccountTransactionsCall
                                                .transactions(
                                              containerRetailDashboardAccountTransactionsResponse
                                                  .jsonBody,
                                            ) !=
                                            null &&
                                        (WhitebankGroupAPIGroup
                                                .retailDashboardAccountTransactionsCall
                                                .transactions(
                                          containerRetailDashboardAccountTransactionsResponse
                                              .jsonBody,
                                        ))!
                                            .isNotEmpty) ==
                                    true) {
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
                                            child:
                                                DownloadTransactionsBottomSheetWidget(
                                              title: 'Download Transactions',
                                              data: (getJsonField(
                                                containerRetailDashboardAccountTransactionsResponse
                                                    .jsonBody,
                                                r'''$.transactions''',
                                                true,
                                              )!
                                                          .toList()
                                                          .map<WBAccountTransactionStruct?>(
                                                              WBAccountTransactionStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          WBAccountTransactionStruct?>)
                                                  .withoutNulls
                                                  .sortedList(
                                                      keyOf: (e) =>
                                                          e.transactionDate,
                                                      desc: false)
                                                  .map((e) => e.toMap())
                                                  .toList(),
                                              submitButtonTitle: 'Download',
                                              cancelButtonTitle: 'Cancel',
                                              message: '',
                                              fromDate: _model.filterFromDate,
                                              toDate: _model.filterToDate,
                                              cancelButtonAction: () async {},
                                              submitButtonAction: () async {},
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child:
                                                CustomInformationalDialogWidget(
                                              message:
                                                  'No transaction history is available to download at the moment.',
                                              primaryButtonTitle: 'Back',
                                              primaryButtonAction: () async {
                                                Navigator.pop(context);
                                              },
                                              secondaryButtonAction:
                                                  () async {},
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Builder(
                          builder: (context) => wrapWithModel(
                            model: _model.customMobileAppBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CustomMobileAppBarWidget(
                              pageTitle: '',
                              rightButtonIcon: Icon(
                                Icons.file_download_outlined,
                                color: Color(0xFF027377),
                                size: 24.0,
                              ),
                              leftButtonIcon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              midRightButtonIcon: Icon(
                                Icons.filter_list_rounded,
                                color: Color(0xFF027377),
                                size: 24.0,
                              ),
                              buttonColor: Colors.transparent,
                              buttonWithoutBackground: false,
                              isTitleLeftAlign: false,
                              rightButtonAction: () async {
                                if ((WhitebankGroupAPIGroup
                                                .retailDashboardAccountTransactionsCall
                                                .transactions(
                                              containerRetailDashboardAccountTransactionsResponse
                                                  .jsonBody,
                                            ) !=
                                            null &&
                                        (WhitebankGroupAPIGroup
                                                .retailDashboardAccountTransactionsCall
                                                .transactions(
                                          containerRetailDashboardAccountTransactionsResponse
                                              .jsonBody,
                                        ))!
                                            .isNotEmpty) ==
                                    true) {
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
                                            child:
                                                DownloadTransactionsBottomSheetWidget(
                                              title: 'Download Transactions',
                                              data: (getJsonField(
                                                containerRetailDashboardAccountTransactionsResponse
                                                    .jsonBody,
                                                r'''$.transactions''',
                                                true,
                                              )!
                                                          .toList()
                                                          .map<WBAccountTransactionStruct?>(
                                                              WBAccountTransactionStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          WBAccountTransactionStruct?>)
                                                  .withoutNulls
                                                  .sortedList(
                                                      keyOf: (e) =>
                                                          e.transactionDate,
                                                      desc: false)
                                                  .map((e) => e.toMap())
                                                  .toList(),
                                              submitButtonTitle: 'Download',
                                              cancelButtonTitle: 'Cancel',
                                              message: '',
                                              fromDate: _model.filterFromDate,
                                              toDate: _model.filterToDate,
                                              cancelButtonAction: () async {},
                                              submitButtonAction: () async {},
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child:
                                                CustomInformationalDialogWidget(
                                              message:
                                                  'No transaction history is available to download at the moment.',
                                              primaryButtonTitle: 'Back',
                                              primaryButtonAction: () async {
                                                Navigator.pop(context);
                                              },
                                              secondaryButtonAction:
                                                  () async {},
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }
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
                                              safeSetState(() => _model
                                                  .apiRequestCompleter = null);
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
                        ),
                        if (true &&
                            responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                          wrapWithModel(
                            model: _model.mobileNavigationBarModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: MobileNavigationBarWidget(
                              pageIndex: 9,
                              shouldHideBottomNav: false,
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
