import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/date_range_bottom_sheet/date_range_bottom_sheet_widget.dart';
import '/components/download_transactions_bottom_sheet/download_transactions_bottom_sheet_widget.dart';
import '/components/filter_tags_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_item_component/transaction_item_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'transaction_history_v2_page_model.dart';
export 'transaction_history_v2_page_model.dart';

class TransactionHistoryV2PageWidget extends StatefulWidget {
  const TransactionHistoryV2PageWidget({super.key});

  static String routeName = 'TransactionHistoryV2Page';
  static String routePath = '/transactionHistoryV2Page';

  @override
  State<TransactionHistoryV2PageWidget> createState() =>
      _TransactionHistoryV2PageWidgetState();
}

class _TransactionHistoryV2PageWidgetState
    extends State<TransactionHistoryV2PageWidget>
    with TickerProviderStateMixin {
  late TransactionHistoryV2PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionHistoryV2PageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: wrapWithModel(
                      model: _model.mobileNavigationBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileNavigationBarWidget(
                        pageIndex: 11,
                        shouldHideBottomNav: true,
                      ),
                    ),
                  ),
                Expanded(
                  child: FutureBuilder<ApiCallResponse>(
                    future: _model
                        .transactionHistoryQuery(
                      uniqueQueryKey:
                          '${currentUserData?.user.id}_transactionHistoryV2Page',
                      overrideCache: false,
                      requestFn: () => WhitebankGroupAPIGroup
                          .retailDashboardAccountTransactionsCall
                          .call(
                        accountNumber: '1234567890001',
                        fromDate: _model.filterFromDate != null
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
                        toDate: _model.filterToDate != null
                            ? dateTimeFormat(
                                "yyyy-MM-dd",
                                _model.filterToDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              )
                            : dateTimeFormat(
                                "yyyy-MM-dd",
                                functions.getDateRangeByDays(30)?.toDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                        limit: 10,
                        offset: 0,
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
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: LoadingStateComponentWidget(
                              isFinished: true,
                            ),
                          ),
                        );
                      }
                      final pageContainerRetailDashboardAccountTransactionsResponse =
                          snapshot.data!;

                      return Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                                  16.0,
                                  valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return FFAppConstants
                                            .MobileAppBarHeight;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return FFAppConstants
                                            .MobileAppBarHeight;
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
                                  0.0,
                                  0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Transaction history',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmallFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral3,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmallIsCustom,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        if (false)
                                          Wrap(
                                            spacing: 8.0,
                                            runSpacing: 8.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              wrapWithModel(
                                                model: _model
                                                    .filterTagsComponentModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    FilterTagsComponentWidget(
                                                  hideCloseButton: false,
                                                  callback: () async {},
                                                  closeCallback: () async {},
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .filterTagsComponentModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    FilterTagsComponentWidget(
                                                  label: '7 Days',
                                                  hideCloseButton: false,
                                                  callback: () async {},
                                                  closeCallback: () async {},
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model
                                                    .filterTagsComponentModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    FilterTagsComponentWidget(
                                                  label: '₱500- ₱6000',
                                                  callback: () async {},
                                                  closeCallback: () async {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return double.infinity;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 450.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 450.0;
                                            } else {
                                              return 450.0;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Builder(
                                            builder: (context) {
                                              final recentTransactions =
                                                  TransferHistoryModelStruct
                                                              .maybeFromMap(
                                                                  pageContainerRetailDashboardAccountTransactionsResponse
                                                                      .jsonBody)
                                                          ?.items
                                                          .toList() ??
                                                      [];

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    recentTransactions.length,
                                                itemBuilder: (context,
                                                    recentTransactionsIndex) {
                                                  final recentTransactionsItem =
                                                      recentTransactions[
                                                          recentTransactionsIndex];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .transactionItemComponentModels
                                                        .getModel(
                                                      recentTransactionsItem.id,
                                                      recentTransactionsIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        TransactionItemComponentWidget(
                                                      key: Key(
                                                        'Keyw70_${recentTransactionsItem.id}',
                                                      ),
                                                      transaction:
                                                          recentTransactionsItem,
                                                      callback: () async {},
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation']!),
                                      ].divide(SizedBox(height: 14.0)),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                            ),
                            if (false)
                              wrapWithModel(
                                model: _model.loadingStateComponentModel,
                                updateCallback: () => safeSetState(() {}),
                                child: LoadingStateComponentWidget(
                                  isFinished: false,
                                ),
                              ),
                            wrapWithModel(
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                midRightButtonIcon: Icon(
                                  Icons.filter_list_rounded,
                                  color: Color(0xFF027377),
                                  size: 24.0,
                                ),
                                buttonColor: Colors.transparent,
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
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                DownloadTransactionsBottomSheetWidget(
                                              title: 'Download Transactions',
                                              data: (getJsonField(
                                                pageContainerRetailDashboardAccountTransactionsResponse
                                                    .jsonBody,
                                                r'''$.transactions''',
                                                true,
                                              )!
                                                          .toList()
                                                          .map<RecentTransactionsStruct?>(
                                                              RecentTransactionsStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          RecentTransactionsStruct?>)
                                                  .withoutNulls
                                                  .map((e) => e.toMap())
                                                  .toList(),
                                              submitButtonTitle: 'Download',
                                              cancelButtonTitle: 'Cancel',
                                              message: '',
                                              cancelButtonAction: () async {},
                                              submitButtonAction: () async {},
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
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: DateRangeBottomSheetWidget(
                                              cancelButtonAction: () async {
                                                Navigator.pop(context);
                                              },
                                              submitButtonAction: () async {},
                                              selectedFilter:
                                                  (fromDate, toDate) async {
                                                _model.filterFromDate =
                                                    fromDate;
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
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
