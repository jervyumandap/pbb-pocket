import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/investment_empty_list_component_widget.dart';
import '/components/loading_state_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/investment_summary/investment_summary_compoment/investment_summary_compoment_widget.dart';
import '/service_request/service_request_date_range_bottom_sheet_copy/service_request_date_range_bottom_sheet_copy_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'investment_summary_page_model.dart';
export 'investment_summary_page_model.dart';

class InvestmentSummaryPageWidget extends StatefulWidget {
  const InvestmentSummaryPageWidget({super.key});

  static String routeName = 'InvestmentSummaryPage';
  static String routePath = '/investmentSummaryPage';

  @override
  State<InvestmentSummaryPageWidget> createState() =>
      _InvestmentSummaryPageWidgetState();
}

class _InvestmentSummaryPageWidgetState
    extends State<InvestmentSummaryPageWidget> {
  late InvestmentSummaryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvestmentSummaryPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult3xzs =
          await WhitebankGroupAPIGroup.retailInvestmentsCall.call(
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        accessToken: currentAuthenticationToken,
      );

      if ((_model.apiResult3xzs?.succeeded ?? true)) {
        _model.investmentSummaryState = InvestmentSummaryStruct.maybeFromMap(
            (_model.apiResult3xzs?.jsonBody ?? ''));
        _model.isLoading = false;
        safeSetState(() {});
      } else {
        await showDialog(
          context: context,
          builder: (dialogContext) {
            return Dialog(
              elevation: 0,
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              alignment: AlignmentDirectional(0.0, 0.0)
                  .resolve(Directionality.of(context)),
              child: WebViewAware(
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: CustomInformationalDialogWidget(
                    message:
                        WhitebankGroupAPIGroup.retailInvestmentsCall.message(
                      (_model.apiResult3xzs?.jsonBody ?? ''),
                    )!,
                    primaryButtonTitle: 'Close',
                    title: WhitebankGroupAPIGroup.retailInvestmentsCall.title(
                      (_model.apiResult3xzs?.jsonBody ?? ''),
                    ),
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
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Container(
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
                            return 300.0;
                          } else {
                            return 300.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
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
                            return 16.0;
                          } else {
                            return 16.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            wrapWithModel(
                              model: _model.customMobileAppBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CustomMobileAppBarWidget(
                                pageTitle: '',
                                rightButtonIcon: null,
                                leftButtonIcon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                midRightButtonIcon: null,
                                buttonColor: Colors.transparent,
                                buttonWithoutBackground: true,
                                btnWOBgIcon: Icon(
                                  Icons.arrow_back,
                                ),
                                btnWOBgColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                btnWOBgIconSize: 24.0,
                                isTitleLeftAlign: false,
                                titleLeftAlign: '',
                                rightButtonAction: () async {},
                                leftButtonAction: () async {
                                  context.safePop();
                                },
                                midRightButtonAction: () async {},
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 56.0, 16.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
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
                                                  ServiceRequestDateRangeBottomSheetCopyWidget(
                                                submitButtonTitle:
                                                    'Download Statement',
                                                cancelButtonAction: () async {
                                                  Navigator.pop(context);
                                                },
                                                submitButtonAction: () async {},
                                                selectedFilter:
                                                    (fromDate, toDate) async {
                                                  _model.datePicked1 = '';
                                                  safeSetState(() {});
                                                  _model.apiResultgtx =
                                                      await WhitebankGroupAPIGroup
                                                          .retailInvestmentsStatementCall
                                                          .call(
                                                    fromDate:
                                                        _model.datePicked1,
                                                    toDate: _model.datePicked2,
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    safeSetState(() {});
                                  },
                                  child: Text(
                                    'Download Statement',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Investments Summary',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                        Text(
                                          'My Investments',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF828BA6),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        if (_model.investmentSummaryState
                                                ?.holdings.firstOrNull ==
                                            null)
                                          wrapWithModel(
                                            model: _model
                                                .investmentEmptyListComponentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                InvestmentEmptyListComponentWidget(),
                                          ),
                                      ].divide(SizedBox(height: 32.0)),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final holdings = _model
                                            .investmentSummaryState?.holdings
                                            .toList() ??
                                        [];

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: holdings.length,
                                      itemBuilder: (context, holdingsIndex) {
                                        final holdingsItem =
                                            holdings[holdingsIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 16.0),
                                          child: wrapWithModel(
                                            model: _model
                                                .investmentSummaryCompomentModels
                                                .getModel(
                                              holdingsItem.isinSeriesNo,
                                              holdingsIndex,
                                            ),
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            updateOnChange: true,
                                            child:
                                                InvestmentSummaryCompomentWidget(
                                              key: Key(
                                                'Keynz3_${holdingsItem.isinSeriesNo}',
                                              ),
                                              investmentSummaryItem:
                                                  holdingsItem,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.customWebAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomWebAppBarWidget(
                    pageTitle: '',
                    leftButtonAction: () async {},
                    midButtonAction: () async {},
                    rightButtonAction: () async {},
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  wrapWithModel(
                    model: _model.mobileNavigationBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MobileNavigationBarWidget(
                      pageIndex: 20,
                      shouldHideBottomNav: false,
                    ),
                  ),
                if (_model.isLoading)
                  wrapWithModel(
                    model: _model.loadingStateModel,
                    updateCallback: () => safeSetState(() {}),
                    child: LoadingStateWidget(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
