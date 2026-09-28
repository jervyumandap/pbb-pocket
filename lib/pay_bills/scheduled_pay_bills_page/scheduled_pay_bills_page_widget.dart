import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/scheduled_payment_item_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/pay_bills/p_b_components/cancel_payment_bottom_sheet/cancel_payment_bottom_sheet_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'scheduled_pay_bills_page_model.dart';
export 'scheduled_pay_bills_page_model.dart';

/// ScheduledPayBillsPage
class ScheduledPayBillsPageWidget extends StatefulWidget {
  const ScheduledPayBillsPageWidget({super.key});

  static String routeName = 'ScheduledPayBillsPage';
  static String routePath = '/scheduledPayBillsPage';

  @override
  State<ScheduledPayBillsPageWidget> createState() =>
      _ScheduledPayBillsPageWidgetState();
}

class _ScheduledPayBillsPageWidgetState
    extends State<ScheduledPayBillsPageWidget> {
  late ScheduledPayBillsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduledPayBillsPageModel());

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
                          0.0,
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
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                20.0, 60.0),
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: (_model
                                                                  .apiRequestCompleter ??=
                                                              Completer<
                                                                  ApiCallResponse>()
                                                                ..complete(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailScheduledBPListCall
                                                                        .call(
                                                                  baseURL:
                                                                      FFDevEnvironmentValues()
                                                                          .WBPBASEURL,
                                                                  accessToken:
                                                                      currentAuthenticationToken,
                                                                )))
                                                          .future,
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: Container(
                                                              width: 100.0,
                                                              height: 100.0,
                                                              child:
                                                                  LoadingStateComponentWidget(
                                                                isFinished:
                                                                    true,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final paddedListviewRetailScheduledBPListResponse =
                                                            snapshot.data!;

                                                        return Builder(
                                                          builder: (context) {
                                                            final payments = (paddedListviewRetailScheduledBPListResponse
                                                                            .jsonBody
                                                                            .toList()
                                                                            .map<WBScheduledPaymentStruct?>(WBScheduledPaymentStruct
                                                                                .maybeFromMap)
                                                                            .toList()
                                                                        as Iterable<
                                                                            WBScheduledPaymentStruct?>)
                                                                    .withoutNulls
                                                                    .sortedList(
                                                                        keyOf: (e) => e
                                                                            .createdAt,
                                                                        desc:
                                                                            true)
                                                                    .toList() ??
                                                                [];
                                                            if (payments
                                                                .isEmpty) {
                                                              return Center(
                                                                child:
                                                                    EmptyListComponentWidget(),
                                                              );
                                                            }

                                                            return Semantics(
                                                              label:
                                                                  'Padded-Listview',
                                                              child: ListView
                                                                  .separated(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    payments
                                                                        .length,
                                                                separatorBuilder: (_,
                                                                        __) =>
                                                                    SizedBox(
                                                                        height:
                                                                            12.0),
                                                                itemBuilder:
                                                                    (context,
                                                                        paymentsIndex) {
                                                                  final paymentsItem =
                                                                      payments[
                                                                          paymentsIndex];
                                                                  return Semantics(
                                                                    label:
                                                                        'ScheduledPaymentItemComponent',
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .scheduledPaymentItemComponentModels
                                                                          .getModel(
                                                                        paymentsIndex
                                                                            .toString(),
                                                                        paymentsIndex,
                                                                      ),
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      child:
                                                                          ScheduledPaymentItemComponentWidget(
                                                                        key:
                                                                            Key(
                                                                          'Keyr37_${paymentsIndex.toString()}',
                                                                        ),
                                                                        paymentDetails:
                                                                            paymentsItem,
                                                                        callback:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            ViewTransactionPageWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'status': serializeParam(
                                                                                paymentsItem.status,
                                                                                ParamType.String,
                                                                              ),
                                                                              'amount': serializeParam(
                                                                                paymentsItem.amount.toDouble(),
                                                                                ParamType.double,
                                                                              ),
                                                                              'referenceNumber': serializeParam(
                                                                                paymentsItem.referenceNumber,
                                                                                ParamType.String,
                                                                              ),
                                                                              'dateCreated': serializeParam(
                                                                                paymentsItem.createdAt,
                                                                                ParamType.String,
                                                                              ),
                                                                              'recipientName': serializeParam(
                                                                                paymentsItem.billerName,
                                                                                ParamType.String,
                                                                              ),
                                                                              'currency': serializeParam(
                                                                                paymentsItem.currency,
                                                                                ParamType.String,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        deleteCallback:
                                                                            () async {
                                                                          await showModalBottomSheet(
                                                                            isScrollControlled:
                                                                                true,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              return WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(context).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: Padding(
                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                    child: CancelPaymentBottomSheetWidget(
                                                                                      callBack: () async {
                                                                                        _model.scheduledBPCancelResponse = await WhitebankGroupAPIGroup.retailScheduledBPCancelCall.call(
                                                                                          id: paymentsItem.id,
                                                                                          baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                          accessToken: currentAuthenticationToken,
                                                                                        );

                                                                                        if ((_model.scheduledBPCancelResponse?.succeeded ?? true)) {
                                                                                          Navigator.pop(context);
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
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: CustomReusableBottomSheetV2Widget(
                                                                                                      title: 'Payment Cancelled',
                                                                                                      message: 'Scheduled payment cancelled successfully',
                                                                                                      buttonTitle: 'Continue',
                                                                                                      callback: () async {
                                                                                                        safeSetState(() => _model.apiRequestCompleter = null);
                                                                                                        await _model.waitForApiRequestCompleted();
                                                                                                        Navigator.pop(context);
                                                                                                      },
                                                                                                      cancelCallback: () async {},
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        }
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));

                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 20.0)),
                          ),
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Semantics(
                          label: 'MobileNavigationBar',
                          child: wrapWithModel(
                            model: _model.mobileNavigationBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: MobileNavigationBarWidget(
                              pageIndex: 6,
                              shouldHideBottomNav: true,
                            ),
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
                          rightButtonIcon: null,
                          leftButtonIcon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          midRightButtonIcon: null,
                          buttonColor: Colors.transparent,
                          buttonWithoutBackground: false,
                          isTitleLeftAlign: true,
                          titleLeftAlign: 'Scheduled Payment',
                          textLeftAlignColor: Color(0xFF444C66),
                          rightButtonAction: () async {},
                          leftButtonAction: () async {
                            context.safePop();
                          },
                          midRightButtonAction: () async {},
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'CustomWebAppBar',
                      child: wrapWithModel(
                        model: _model.customWebAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomWebAppBarWidget(
                          pageTitle: 'Scheduled Payment',
                          leftButtonAction: () async {},
                          midButtonAction: () async {},
                          rightButtonAction: () async {},
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
