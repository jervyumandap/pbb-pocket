import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/date_range_bottom_sheet/date_range_bottom_sheet_widget.dart';
import '/components/download_transactions_bottom_sheet/download_transactions_bottom_sheet_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_item_component/transaction_item_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'transaction_history_v2_model.dart';
export 'transaction_history_v2_model.dart';

class TransactionHistoryV2Widget extends StatefulWidget {
  const TransactionHistoryV2Widget({super.key});

  static String routeName = 'TransactionHistoryV2';
  static String routePath = '/transactionHistoryV2';

  @override
  State<TransactionHistoryV2Widget> createState() =>
      _TransactionHistoryV2WidgetState();
}

class _TransactionHistoryV2WidgetState extends State<TransactionHistoryV2Widget>
    with TickerProviderStateMixin {
  late TransactionHistoryV2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionHistoryV2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      await Future.wait([
        Future(() async {
          _model.apiResultfx8 =
              await WhitebankGroupAPIGroup.retailBillsPaymentHistoryCall.call(
            limit: '10',
            offset: '0',
            fromDate: _model.filterFromDate != null
                ? dateTimeFormat(
                    "yyyy-MM-dd",
                    _model.filterFromDate,
                    locale: FFLocalizations.of(context).languageCode,
                  )
                : dateTimeFormat(
                    "yyyy-MM-dd",
                    functions.getDateRangeByDays(100)?.fromDate,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
            toDate: _model.filterToDate != null
                ? dateTimeFormat(
                    "yyyy-MM-dd",
                    _model.filterToDate,
                    locale: FFLocalizations.of(context).languageCode,
                  )
                : dateTimeFormat(
                    "yyyy-MM-dd",
                    getCurrentTimestamp,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          if ((_model.apiResultfx8?.succeeded ?? true)) {
            _model.billsPaymentHistory =
                BillsPaymentHistoryModelStruct.maybeFromMap(
                    (_model.apiResultfx8?.jsonBody ?? ''));
            safeSetState(() {});
          }
        }),
        Future(() async {
          _model.apiResultya0 =
              await WhitebankGroupAPIGroup.getTransferHistoryCall.call(
            search: '',
            endDate: _model.filterToDate != null
                ? dateTimeFormat(
                    "yyyy-MM-dd",
                    _model.filterToDate,
                    locale: FFLocalizations.of(context).languageCode,
                  )
                : dateTimeFormat(
                    "yyyy-MM-dd",
                    getCurrentTimestamp,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
            startDate: _model.filterFromDate != null
                ? dateTimeFormat(
                    "yyyy-MM-dd",
                    _model.filterFromDate,
                    locale: FFLocalizations.of(context).languageCode,
                  )
                : dateTimeFormat(
                    "yyyy-MM-dd",
                    functions.getDateRangeByDays(100)?.fromDate,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
            status: '',
            transferType: '',
            limit: 10,
            page: 1,
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          if ((_model.apiResultya0?.succeeded ?? true)) {
            _model.transferHistoryModel =
                TransferHistoryModelStruct.maybeFromMap(
                    (_model.apiResultya0?.jsonBody ?? ''));
            safeSetState(() {});
          }
        }),
      ]);
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
                future: WhitebankGroupAPIGroup.getTransferHistoryCall.call(
                  accessToken: currentAuthenticationToken,
                  page: 1,
                  endDate: dateTimeFormat(
                    "yyyy-MM-dd",
                    getCurrentTimestamp,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  startDate: _model.filterFromDate != null
                      ? dateTimeFormat(
                          "yyyy-MM-dd",
                          _model.filterFromDate,
                          locale: FFLocalizations.of(context).languageCode,
                        )
                      : dateTimeFormat(
                          "yyyy-MM-dd",
                          functions.getDateRangeByDays(100)?.fromDate,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                  limit: 10,
                  search: '',
                  status: '',
                  transferType: '',
                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                ),
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
                  final containerGetTransferHistoryResponse = snapshot.data!;

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
                                      'Transfer History',
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
                                              MainAxisAlignment.spaceBetween,
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
                                                                  27.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final recentTransactions = TransferHistoryModelStruct
                                                                      .maybeFromMap(
                                                                          containerGetTransferHistoryResponse
                                                                              .jsonBody)
                                                                  ?.items
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
                                                              return Semantics(
                                                                label:
                                                                    'history_transaction_row',
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .transactionItemComponentModels
                                                                      .getModel(
                                                                    recentTransactionsItem
                                                                        .id,
                                                                    recentTransactionsIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      TransactionItemComponentWidget(
                                                                    key: Key(
                                                                      'Key3w9_${recentTransactionsItem.id}',
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
                                                                            recentTransactionsItem.status,
                                                                            ParamType.String,
                                                                          ),
                                                                          'amount':
                                                                              serializeParam(
                                                                            recentTransactionsItem.amount,
                                                                            ParamType.double,
                                                                          ),
                                                                          'referenceNumber':
                                                                              serializeParam(
                                                                            recentTransactionsItem.referenceNumber,
                                                                            ParamType.String,
                                                                          ),
                                                                          'dateCreated':
                                                                              serializeParam(
                                                                            recentTransactionsItem.createdAt,
                                                                            ParamType.String,
                                                                          ),
                                                                          'recipientName':
                                                                              serializeParam(
                                                                            recentTransactionsItem.destinationAccount,
                                                                            ParamType.String,
                                                                          ),
                                                                          'currency':
                                                                              serializeParam(
                                                                            recentTransactionsItem.currency,
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                  ),
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
                                            if (TransferHistoryModelStruct
                                                        .maybeFromMap(
                                                            containerGetTransferHistoryResponse
                                                                .jsonBody)
                                                    ?.items
                                                    .firstOrNull ==
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
                        Builder(
                          builder: (context) => wrapWithModel(
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
                                if ((TransferHistoryModelStruct.maybeFromMap(
                                                    containerGetTransferHistoryResponse
                                                        .jsonBody)
                                                ?.items !=
                                            null &&
                                        (TransferHistoryModelStruct.maybeFromMap(
                                                    containerGetTransferHistoryResponse
                                                        .jsonBody)
                                                ?.items)!
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
                                              data: TransferHistoryModelStruct
                                                      .maybeFromMap(
                                                          containerGetTransferHistoryResponse
                                                              .jsonBody)!
                                                  .items
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
                                // history_back_button
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
