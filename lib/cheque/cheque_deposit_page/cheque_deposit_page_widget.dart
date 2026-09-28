import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/cheque/cheque_book_request_component/cheque_book_request_component_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pay_bills/p_b_components/feature_flag_bottom_sheet/feature_flag_bottom_sheet_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cheque_deposit_page_model.dart';
export 'cheque_deposit_page_model.dart';

class ChequeDepositPageWidget extends StatefulWidget {
  const ChequeDepositPageWidget({super.key});

  static String routeName = 'ChequeDepositPage';
  static String routePath = '/chequeDepositPage';

  @override
  State<ChequeDepositPageWidget> createState() =>
      _ChequeDepositPageWidgetState();
}

class _ChequeDepositPageWidgetState extends State<ChequeDepositPageWidget> {
  late ChequeDepositPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChequeDepositPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiResultdt9 = await WhitebankGroupAPIGroup
              .retailChequebookEligibleAccountsCall
              .call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          );

          if ((_model.apiResultdt9?.succeeded ?? true)) {
            FFAppState().ChequeEligibleAccountsState =
                WhitebankGroupAPIGroup.retailChequebookEligibleAccountsCall
                    .accounts(
                      (_model.apiResultdt9?.jsonBody ?? ''),
                    )!
                    .map((e) => AccountsStruct.maybeFromMap(e))
                    .withoutNulls
                    .toList()
                    .toList()
                    .cast<AccountsStruct>();
            safeSetState(() {});
            for (int loop1Index = 0;
                loop1Index < FFAppState().ChequeEligibleAccountsState.length;
                loop1Index++) {
              final currentLoop1Item =
                  FFAppState().ChequeEligibleAccountsState[loop1Index];
              _model.apiResulthd5 = await WhitebankGroupAPIGroup
                  .getBalanceByAccountNumberCall
                  .call(
                accountNumber: currentLoop1Item.accountNumber,
                accessToken: currentAuthenticationToken,
                baseURL: FFDevEnvironmentValues().WBPBASEURL,
              );

              if ((_model.apiResulthd5?.succeeded ?? true)) {
                _model.addToBalances(<String, dynamic>{
                  'accountNumber': currentLoop1Item.accountNumber,
                  'availableBalance': AccountsStruct.maybeFromMap(
                          (_model.apiResulthd5?.jsonBody ?? ''))
                      ?.availableBalance,
                  'currentBalance': AccountsStruct.maybeFromMap(
                          (_model.apiResulthd5?.jsonBody ?? ''))
                      ?.currentBalance,
                  'currency': AccountsStruct.maybeFromMap(
                          (_model.apiResulthd5?.jsonBody ?? ''))
                      ?.currency,
                  'asOf': AccountsStruct.maybeFromMap(
                          (_model.apiResulthd5?.jsonBody ?? ''))
                      ?.asOf,
                });
                safeSetState(() {});
              }
            }
            _model.outputv2 = await actions.mergeAccountsWithBalancesV2(
              FFAppState()
                  .ChequeEligibleAccountsState
                  .map((e) => e.toMap())
                  .toList()
                  .toList(),
              _model.balances.toList(),
            );
            FFAppState().ChequeEligibleAccountsState = _model.outputv2!
                .map((e) => AccountsStruct.maybeFromMap(e))
                .withoutNulls
                .toList()
                .toList()
                .cast<AccountsStruct>();
            safeSetState(() {});
          } else {
            return;
          }
        }),
      ]);
      _model.isLoading = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      FFAppState().accountListOrder =
          FFAppState().AccountsState.toList().cast<AccountsStruct>();
      FFAppState().update(() {});
    }();

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
        body: Stack(
          children: [
            if (!_model.isLoading)
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
                          return 0.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 0.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 25.0;
                        } else {
                          return 25.0;
                        }
                      }(),
                      25.0,
                    ),
                    0.0,
                    0.0),
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
                              color: FlutterFlowTheme.of(context).primaryText,
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
                                if (FFAppState()
                                    .FeatureFlagsAppstate
                                    .retailChequeInquiry) {
                                  context.pushNamed(
                                      ChequeInquiryPageWidget.routeName);
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
                                'Cheque Inquiry',
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
                      ],
                    ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Cheque Book Request',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .headlineSmallIsCustom,
                                            ),
                                      ),
                                      Text(
                                        'Manage your cheque book and cheque-related services — all online, no branch visit needed.',
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
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.isRequestLimitReached) {
                                        return;
                                      }

                                      context.pushNamed(
                                          ChequeDepositFormPageWidget
                                              .routeName);
                                    },
                                    child: wrapWithModel(
                                      model: _model
                                          .chequeBookRequestComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChequeBookRequestComponentWidget(
                                        isRequestLimitReached:
                                            _model.isRequestLimitReached,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (_model.isLoading)
              wrapWithModel(
                model: _model.loadingStateComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(
                  isFinished: !_model.isLoading,
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.mobileNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MobileNavigationBarWidget(
                    pageIndex: 14,
                    shouldHideBottomNav: true,
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
          ],
        ),
      ),
    );
  }
}
