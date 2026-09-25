import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/date_range_bottom_sheet/date_range_bottom_sheet_widget.dart';
import '/components/download_transactions_bottom_sheet/download_transactions_bottom_sheet_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/qr_scan_generate/transaction_item_component_v2/transaction_item_component_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'q_r_payment_history_page_model.dart';
export 'q_r_payment_history_page_model.dart';

class QRPaymentHistoryPageWidget extends StatefulWidget {
  const QRPaymentHistoryPageWidget({super.key});

  static String routeName = 'QRPaymentHistoryPage';
  static String routePath = '/qrPaymentHistoryPage';

  @override
  State<QRPaymentHistoryPageWidget> createState() =>
      _QRPaymentHistoryPageWidgetState();
}

class _QRPaymentHistoryPageWidgetState extends State<QRPaymentHistoryPageWidget>
    with TickerProviderStateMixin {
  late QRPaymentHistoryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRPaymentHistoryPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: FutureBuilder<ApiCallResponse>(
                future: (_model
                        .apiRequestCompleter ??= Completer<ApiCallResponse>()
                      ..complete(WhitebankGroupAPIGroup
                          .retailQRPaymentHistoryCall
                          .call(
                        limit: _model.filterLimit,
                        offset: _model.filterOffset,
                        qrType: _model.filterQrType?.name,
                        fromDate: _model.filterFromDate != null &&
                                _model.filterFromDate != ''
                            ? _model.filterFromDate
                            : dateTimeFormat(
                                "yyyy-MM-dd",
                                functions.getDateRangeByDays(100)?.fromDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                        toDate: _model.filterToDate != null &&
                                _model.filterToDate != ''
                            ? _model.filterToDate
                            : dateTimeFormat(
                                "yyyy-MM-dd",
                                functions.getDateRangeByDays(30)?.toDate,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                        status: _model.filterStatus?.name,
                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                        accessToken: currentAuthenticationToken,
                      )))
                    .future,
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
                  final containerRetailQRPaymentHistoryResponse =
                      snapshot.data!;

                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(),
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
                                    child: Semantics(
                                      label: 'Header Text',
                                      child: Text(
                                        'Manage QR Payment',
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
                                ),
                                Expanded(
                                  child: Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                            .fromSTEB(0.0, 27.0,
                                                                0.0, 60.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final payments =
                                                            (getJsonField(
                                                                  containerRetailQRPaymentHistoryResponse
                                                                      .jsonBody,
                                                                  r'''$.payments''',
                                                                  true,
                                                                )?.toList().map<WBQrPaymentsStruct?>(WBQrPaymentsStruct.maybeFromMap).toList()
                                                                        as Iterable<
                                                                            WBQrPaymentsStruct?>)
                                                                    .withoutNulls
                                                                    .sortedList(
                                                                        keyOf: (e) => e
                                                                            .createdAt,
                                                                        desc:
                                                                            true)
                                                                    .toList() ??
                                                                [];

                                                        return Semantics(
                                                          label:
                                                              'Qr Payment ListView',
                                                          child: ListView
                                                              .separated(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                payments.length,
                                                            separatorBuilder: (_,
                                                                    __) =>
                                                                SizedBox(
                                                                    height:
                                                                        12.0),
                                                            itemBuilder: (context,
                                                                paymentsIndex) {
                                                              final paymentsItem =
                                                                  payments[
                                                                      paymentsIndex];
                                                              return Semantics(
                                                                label:
                                                                    'TransactionItemComponentV2',
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .transactionItemComponentV2Models
                                                                      .getModel(
                                                                    paymentsIndex
                                                                        .toString(),
                                                                    paymentsIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      TransactionItemComponentV2Widget(
                                                                    key: Key(
                                                                      'Keyhh3_${paymentsIndex.toString()}',
                                                                    ),
                                                                    details:
                                                                        ItemsStruct(
                                                                      id: paymentsItem
                                                                          .id,
                                                                      referenceNumber:
                                                                          paymentsItem
                                                                              .referenceNumber,
                                                                      transferType:
                                                                          paymentsItem
                                                                              .qrType,
                                                                      status: paymentsItem
                                                                          .status,
                                                                      destinationAccount:
                                                                          '${paymentsItem.recipient.name} - ${paymentsItem.recipient.accountNumber}',
                                                                      amount: paymentsItem
                                                                          .amount,
                                                                      currency:
                                                                          paymentsItem
                                                                              .currency,
                                                                      createdAt:
                                                                          paymentsItem
                                                                              .createdAt,
                                                                    ),
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
                                                                            paymentsItem.status,
                                                                            ParamType.String,
                                                                          ),
                                                                          'amount':
                                                                              serializeParam(
                                                                            paymentsItem.amount,
                                                                            ParamType.double,
                                                                          ),
                                                                          'referenceNumber':
                                                                              serializeParam(
                                                                            paymentsItem.referenceNumber,
                                                                            ParamType.String,
                                                                          ),
                                                                          'dateCreated':
                                                                              serializeParam(
                                                                            paymentsItem.createdAt,
                                                                            ParamType.String,
                                                                          ),
                                                                          'recipientName':
                                                                              serializeParam(
                                                                            paymentsItem.recipient.name,
                                                                            ParamType.String,
                                                                          ),
                                                                          'currency':
                                                                              serializeParam(
                                                                            paymentsItem.currency,
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    moreCallback:
                                                                        () async {},
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation']!),
                                              ].divide(SizedBox(height: 14.0)),
                                            ),
                                          ),
                                          if (!((getJsonField(
                                            containerRetailQRPaymentHistoryResponse
                                                .jsonBody,
                                            r'''$.payments''',
                                          )
                                                      .toList()
                                                      .map<WBQrPaymentsStruct?>(
                                                          WBQrPaymentsStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      WBQrPaymentsStruct?>)
                                              .withoutNulls
                                              .isNotEmpty))
                                            Semantics(
                                              label: 'Emply List Placeholder',
                                              child: wrapWithModel(
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
                            child: Semantics(
                              label: 'MobileNavigationBar',
                              child: wrapWithModel(
                                model: _model.mobileNavigationBarModel,
                                updateCallback: () => safeSetState(() {}),
                                child: MobileNavigationBarWidget(
                                  pageIndex: 10,
                                  shouldHideBottomNav: true,
                                ),
                              ),
                            ),
                          ),
                        Semantics(
                          label: 'CustomWebAppBar',
                          child: wrapWithModel(
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
                                  enableDrag: false,
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
                                              _model.filterFromDate =
                                                  fromDate.toString();
                                              _model.filterToDate =
                                                  toDate.toString();
                                              safeSetState(() {});
                                              safeSetState(() => _model
                                                  .apiRequestCompleter = null);
                                              await _model
                                                  .waitForApiRequestCompleted();
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
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
                                          child:
                                              DownloadTransactionsBottomSheetWidget(
                                            data: (getJsonField(
                                              containerRetailQRPaymentHistoryResponse
                                                  .jsonBody,
                                              r'''$.payments''',
                                              true,
                                            )!
                                                        .toList()
                                                        .map<WBQrPaymentsStruct?>(
                                                            WBQrPaymentsStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        WBQrPaymentsStruct?>)
                                                .withoutNulls
                                                .map((e) => e.toMap())
                                                .toList(),
                                            title: 'Download Transactions',
                                            submitButtonTitle: 'Download',
                                            cancelButtonTitle: 'Download',
                                            cancelButtonAction: () async {},
                                            submitButtonAction: () async {},
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
                        Semantics(
                          label: 'CustomMobileAppBar',
                          child: wrapWithModel(
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
                                          child:
                                              DownloadTransactionsBottomSheetWidget(
                                            data: (getJsonField(
                                              containerRetailQRPaymentHistoryResponse
                                                  .jsonBody,
                                              r'''$.payments''',
                                              true,
                                            )!
                                                        .toList()
                                                        .map<WBQrPaymentsStruct?>(
                                                            WBQrPaymentsStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        WBQrPaymentsStruct?>)
                                                .withoutNulls
                                                .map((e) => e.toMap())
                                                .toList(),
                                            title: 'Download Transactions',
                                            submitButtonTitle: 'Download',
                                            cancelButtonTitle: 'Download',
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
                                  enableDrag: false,
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
                                              _model.filterFromDate =
                                                  dateTimeFormat(
                                                "yyyy-MM-dd",
                                                fromDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              );
                                              _model.filterToDate =
                                                  dateTimeFormat(
                                                "yyyy-MM-dd",
                                                toDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              );
                                              safeSetState(() {});
                                              safeSetState(() => _model
                                                  .apiRequestCompleter = null);
                                              await _model
                                                  .waitForApiRequestCompleted();
                                              Navigator.pop(context);
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
