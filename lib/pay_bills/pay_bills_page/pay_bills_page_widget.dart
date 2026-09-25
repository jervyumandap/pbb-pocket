import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/favorite_biller_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pay_bills/p_b_components/biller_list_bottom_sheet/biller_list_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/biller_tile_component/biller_tile_component_widget.dart';
import '/pay_bills/p_b_components/edit_delete_biller_bottom_sheet/edit_delete_biller_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/modify_biller_bottom_sheet/modify_biller_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/pay_bills_source_account_bottom_sheet/pay_bills_source_account_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/save_biller_success_bottom_sheet/save_biller_success_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pay_bills_page_model.dart';
export 'pay_bills_page_model.dart';

/// Pay Bills page
class PayBillsPageWidget extends StatefulWidget {
  const PayBillsPageWidget({
    super.key,
    this.sourceAccount,
  });

  final AccountsStruct? sourceAccount;

  static String routeName = 'PayBillsPage';
  static String routePath = '/payBillsPage';

  @override
  State<PayBillsPageWidget> createState() => _PayBillsPageWidgetState();
}

class _PayBillsPageWidgetState extends State<PayBillsPageWidget>
    with TickerProviderStateMixin {
  late PayBillsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayBillsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      safeSetState(() {});
      await _model.getBillerList(context);
      safeSetState(() {});
      _model.isGetBillersLoading = false;
      safeSetState(() {});
      FFAppState().payingSourceAccountAppState = widget.sourceAccount!;
      safeSetState(() {});
    });

    _model.billerTextFieldTextController ??=
        TextEditingController(text: _model.selectedBiller?.name);
    _model.billerTextFieldFocusNode ??= FocusNode();

    _model.billerTextField2TextController ??= TextEditingController(
        text: _model.selectedBiller?.name != null &&
                _model.selectedBiller?.name != ''
            ? _model.selectedBiller?.name
            : '');
    _model.billerTextField2FocusNode ??= FocusNode();

    _model.accountNumTextFieldTextController ??= TextEditingController();
    _model.accountNumTextFieldFocusNode ??= FocusNode();
    _model.accountNumTextFieldFocusNode!.addListener(() => safeSetState(() {}));
    _model.accountNumTextFieldMask =
        MaskTextInputFormatter(mask: '######################');
    _model.accountNameTextFieldTextController ??= TextEditingController();
    _model.accountNameTextFieldFocusNode ??= FocusNode();
    _model.accountNameTextFieldFocusNode!
        .addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
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
                                    children: [
                                      Text(
                                        'Pay Bills',
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
                                    ],
                                  ),
                                  Semantics(
                                    label: 'paybills_billers_tab',
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE2E8F0),
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Expanded(
                                              child: Semantics(
                                                label: 'Biller-Button',
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.selectedTab =
                                                        BbPageViewSelection
                                                            .BILLERS;
                                                    safeSetState(() {});
                                                    await _model
                                                        .pageViewController
                                                        ?.animateToPage(
                                                      0,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  text: 'Billers',
                                                  options: FFButtonOptions(
                                                    width: 100.0,
                                                    height: 44.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconAlignment:
                                                        IconAlignment.end,
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.selectedTab ==
                                                              BbPageViewSelection
                                                                  .BILLERS
                                                          ? Colors.white
                                                          : Color(0xFFE2E8F0),
                                                      Colors.white,
                                                    ),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.selectedTab ==
                                                                    BbPageViewSelection
                                                                        .BILLERS
                                                                ? Color(
                                                                    0xFF0F172B)
                                                                : Color(
                                                                    0xFF45556C),
                                                            Color(0xFF0F172B),
                                                          ),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  showLoadingIndicator: false,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Semantics(
                                                label: 'Favorites-Button',
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.selectedTab =
                                                        BbPageViewSelection
                                                            .FAVORITES;
                                                    safeSetState(() {});
                                                    await _model
                                                        .pageViewController
                                                        ?.animateToPage(
                                                      1,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  text: 'Favorites',
                                                  options: FFButtonOptions(
                                                    width: 100.0,
                                                    height: 44.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconAlignment:
                                                        IconAlignment.end,
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: _model.selectedTab ==
                                                            BbPageViewSelection
                                                                .FAVORITES
                                                        ? Colors.white
                                                        : Color(0xFFE2E8F0),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: _model
                                                                      .selectedTab ==
                                                                  BbPageViewSelection
                                                                      .FAVORITES
                                                              ? Color(
                                                                  0xFF0F172B)
                                                              : Color(
                                                                  0xFF45556C),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  showLoadingIndicator: false,
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 4.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                            Expanded(
                              child: Semantics(
                                label: 'Scroller-Container',
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: _model
                                        .savedBillersQuery(
                                      uniqueQueryKey:
                                          '${currentUserUid}_SavedBillers',
                                      overrideCache: true,
                                      requestFn: () => WhitebankGroupAPIGroup
                                          .retailSavedBillersListCall
                                          .call(
                                        accessToken: currentAuthenticationToken,
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                      ),
                                    )
                                        .then((result) {
                                      try {
                                        _model.apiRequestCompleted = true;
                                        _model.apiRequestLastUniqueKey =
                                            '${currentUserUid}_SavedBillers';
                                      } finally {}
                                      return result;
                                    }),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: LoadingStateComponentWidget(
                                            isFinished: true,
                                          ),
                                        );
                                      }
                                      final pageViewRetailSavedBillersListResponse =
                                          snapshot.data!;

                                      return Semantics(
                                        label: 'PageView',
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController ??=
                                                PageController(
                                                    initialPage: max(
                                                        0,
                                                        min(
                                                            valueOrDefault<int>(
                                                              _model.selectedTab ==
                                                                      BbPageViewSelection
                                                                          .BILLERS
                                                                  ? 0
                                                                  : 1,
                                                              0,
                                                            ),
                                                            1))),
                                            onPageChanged: (_) async {
                                              if (_model.pageViewCurrentIndex ==
                                                  0) {
                                                _model.selectedTab =
                                                    BbPageViewSelection.BILLERS;
                                                safeSetState(() {});
                                              } else {
                                                _model.selectedTab =
                                                    BbPageViewSelection
                                                        .FAVORITES;
                                                safeSetState(() {});
                                              }
                                            },
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  60.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        primary: false,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            if ((WhitebankGroupAPIGroup
                                                                            .retailSavedBillersListCall
                                                                            .savedBillers(
                                                                          pageViewRetailSavedBillersListResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null &&
                                                                    (WhitebankGroupAPIGroup
                                                                            .retailSavedBillersListCall
                                                                            .savedBillers(
                                                                      pageViewRetailSavedBillersListResponse
                                                                          .jsonBody,
                                                                    ))!
                                                                        .isNotEmpty) ==
                                                                true)
                                                              Semantics(
                                                                label:
                                                                    'Favs-Column',
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          'Favorites',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .headlineSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 15.0,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final sbillers = (getJsonField(
                                                                              pageViewRetailSavedBillersListResponse.jsonBody,
                                                                              r'''$.savedBillers''',
                                                                              true,
                                                                            )?.toList().map<WBSavedBillerStruct?>(WBSavedBillerStruct.maybeFromMap).toList() as Iterable<WBSavedBillerStruct?>)
                                                                                .withoutNulls
                                                                                .toList() ??
                                                                            [];

                                                                        return Semantics(
                                                                          label:
                                                                              'Favs-Items-Wrap',
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                0.0,
                                                                            runSpacing:
                                                                                0.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.start,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children:
                                                                                List.generate(sbillers.length, (sbillersIndex) {
                                                                              final sbillersItem = sbillers[sbillersIndex];
                                                                              return Semantics(
                                                                                label: 'FavoriteBillerComponent',
                                                                                child: wrapWithModel(
                                                                                  model: _model.favoriteBillerComponentModels.getModel(
                                                                                    sbillersIndex.toString(),
                                                                                    sbillersIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: FavoriteBillerComponentWidget(
                                                                                    key: Key(
                                                                                      'Keyqu8_${sbillersIndex.toString()}',
                                                                                    ),
                                                                                    billerName: sbillersItem.nickname,
                                                                                    image: '',
                                                                                    callBack: () async {
                                                                                      FFAppState().PaybillsInitiateModelAppState = WBBPSubmitParametersStruct(
                                                                                        billerId: sbillersItem.biller.id,
                                                                                        accountNumber: sbillersItem.accountNumber,
                                                                                        accountHolderName: sbillersItem.accountHolderName,
                                                                                        savedBillerId: sbillersItem.id,
                                                                                        sourceAccountNumber: widget.sourceAccount?.fullAccountNumber,
                                                                                        idempotencyKey: functions.createUuid(),
                                                                                      );
                                                                                      // If no source account is passed.
                                                                                      if (widget.sourceAccount != null) {
                                                                                        context.pushNamed(
                                                                                          PayBillsAmountPageWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'billerDetails': serializeParam(
                                                                                              WBBillerStruct(
                                                                                                id: sbillersItem.biller.id,
                                                                                                code: sbillersItem.biller.code,
                                                                                                name: sbillersItem.nickname,
                                                                                                category: sbillersItem.biller.category,
                                                                                              ),
                                                                                              ParamType.DataStruct,
                                                                                            ),
                                                                                            'isFromFavorite': serializeParam(
                                                                                              true,
                                                                                              ParamType.bool,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                          extra: <String, dynamic>{
                                                                                            '__transition_info__': TransitionInfo(
                                                                                              hasTransition: true,
                                                                                              transitionType: PageTransitionType.fade,
                                                                                              duration: Duration(milliseconds: 0),
                                                                                            ),
                                                                                          },
                                                                                        );
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
                                                                                                  child: PayBillsSourceAccountBottomSheetWidget(
                                                                                                    callBack: (selectedAccount) async {
                                                                                                      _model.sourceAccount = selectedAccount;
                                                                                                      safeSetState(() {});
                                                                                                      FFAppState().payingSourceAccountAppState = selectedAccount;
                                                                                                      FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                                                        (e) => e..sourceAccountNumber = _model.sourceAccount?.fullAccountNumber,
                                                                                                      );
                                                                                                      safeSetState(() {});
                                                                                                      Navigator.pop(context);

                                                                                                      context.pushNamed(
                                                                                                        PayBillsAmountPageWidget.routeName,
                                                                                                        queryParameters: {
                                                                                                          'billerDetails': serializeParam(
                                                                                                            WBBillerStruct(
                                                                                                              id: sbillersItem.biller.id,
                                                                                                              code: sbillersItem.biller.code,
                                                                                                              name: sbillersItem.nickname,
                                                                                                              category: sbillersItem.biller.category,
                                                                                                            ),
                                                                                                            ParamType.DataStruct,
                                                                                                          ),
                                                                                                          'isFromFavorite': serializeParam(
                                                                                                            true,
                                                                                                            ParamType.bool,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      }

                                                                                      FFAppState().isFromFavorite = true;
                                                                                      safeSetState(() {});
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          20.0)),
                                                                ),
                                                              ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Billers',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (false)
                                                                  Stack(
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Container(
                                                                              width: 200.0,
                                                                              child: TextFormField(
                                                                                controller: _model.billerTextFieldTextController,
                                                                                focusNode: _model.billerTextFieldFocusNode,
                                                                                autofocus: false,
                                                                                enabled: true,
                                                                                textInputAction: TextInputAction.done,
                                                                                readOnly: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  isDense: true,
                                                                                  labelText: 'Select Biller',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        color: Color(0xFF72777A),
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).neutral10,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0xFF676666),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  filled: true,
                                                                                  fillColor: FlutterFlowTheme.of(context).base0,
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 17.0, 12.0, 17.0),
                                                                                  hoverColor: FlutterFlowTheme.of(context).formElementHover,
                                                                                  suffixIcon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                    ),
                                                                                maxLines: null,
                                                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                enableInteractiveSelection: true,
                                                                                validator: _model.billerTextFieldTextControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
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
                                                                                    child: BillerListBottomSheetWidget(
                                                                                      callBack: (selectedBiller, accountNumberLabel) async {
                                                                                        _model.selectedBiller = selectedBiller;
                                                                                        _model.accountNumberLabel = accountNumberLabel!;
                                                                                        safeSetState(() {});
                                                                                        safeSetState(() {
                                                                                          _model.billerTextFieldTextController?.text = selectedBiller.name;
                                                                                        });
                                                                                        safeSetState(() {
                                                                                          _model.accountNameTextFieldTextController?.clear();
                                                                                        });
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ).then((value) =>
                                                                              safeSetState(() {}));
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              44.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                Semantics(
                                                                  label:
                                                                      'Biller-Row',
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (!_model
                                                                          .isGetBillersLoading)
                                                                        Expanded(
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Semantics(
                                                                                      label: 'Biller-TextField2',
                                                                                      child: Container(
                                                                                        width: 200.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.billerTextField2TextController,
                                                                                          focusNode: _model.billerTextField2FocusNode,
                                                                                          autofocus: false,
                                                                                          enabled: true,
                                                                                          textInputAction: TextInputAction.done,
                                                                                          readOnly: true,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            isDense: true,
                                                                                            labelText: 'Select Biller',
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                                ),
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                                  color: Color(0xFF72777A),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                                ),
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).neutral10,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF676666),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                            ),
                                                                                            filled: true,
                                                                                            fillColor: FlutterFlowTheme.of(context).base0,
                                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 17.0, 12.0, 17.0),
                                                                                            hoverColor: FlutterFlowTheme.of(context).formElementHover,
                                                                                            suffixIcon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                              ),
                                                                                          maxLines: null,
                                                                                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                          enableInteractiveSelection: true,
                                                                                          validator: _model.billerTextField2TextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              if (_model.listOfBillers.isNotEmpty)
                                                                                Opacity(
                                                                                  opacity: 0.0,
                                                                                  child: Semantics(
                                                                                    label: 'paybills_select_biller_dropdown',
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 44.0,
                                                                                      child: custom_widgets.BillersDropdown(
                                                                                        width: double.infinity,
                                                                                        height: 44.0,
                                                                                        placeholder: 'Select Biller',
                                                                                        initialValue: '',
                                                                                        showError: false,
                                                                                        errorText: 'Please select biller.',
                                                                                        billers: _model.listOfBillers,
                                                                                        onChanged: (label, value, selectedBiller) async {
                                                                                          _model.selectedBiller = WBBillerStruct(
                                                                                            id: selectedBiller.id,
                                                                                            code: selectedBiller.billerCode,
                                                                                            name: selectedBiller.name,
                                                                                            category: selectedBiller.category.name,
                                                                                            isNew: true,
                                                                                          );
                                                                                          _model.accountNumberLabel = selectedBiller.accountNumberLabel;
                                                                                          safeSetState(() {});
                                                                                          safeSetState(() {
                                                                                            _model.billerTextField2TextController?.text = selectedBiller.name;
                                                                                          });
                                                                                          safeSetState(() {
                                                                                            _model.accountNumTextFieldTextController?.clear();
                                                                                            _model.accountNameTextFieldTextController?.clear();
                                                                                          });
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      if (_model
                                                                          .isGetBillersLoading)
                                                                        Container(
                                                                          width:
                                                                              50.0,
                                                                          height:
                                                                              50.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.loadingStateComponentModel,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                LoadingStateComponentWidget(
                                                                              isFinished: !_model.isGetBillersLoading,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Semantics(
                                                                        label:
                                                                            'paybills_account_number_field',
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              200.0,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.accountNumTextFieldTextController,
                                                                            focusNode:
                                                                                _model.accountNumTextFieldFocusNode,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.accountNumTextFieldTextController',
                                                                              Duration(milliseconds: 2000),
                                                                              () => safeSetState(() {}),
                                                                            ),
                                                                            autofocus:
                                                                                false,
                                                                            textInputAction:
                                                                                TextInputAction.done,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              isDense: true,
                                                                              labelText: _model.accountNumberLabel,
                                                                              labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    color: Color(0xFF72777A),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).neutral10,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color(0xFF676666),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              filled: true,
                                                                              fillColor: FlutterFlowTheme.of(context).base0,
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 17.0, 12.0, 17.0),
                                                                              hoverColor: FlutterFlowTheme.of(context).formElementHover,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                            maxLength:
                                                                                22,
                                                                            buildCounter: (context, {required currentLength, required isFocused, maxLength}) =>
                                                                                null,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            enableInteractiveSelection:
                                                                                true,
                                                                            validator:
                                                                                _model.accountNumTextFieldTextControllerValidator.asValidator(context),
                                                                            inputFormatters: [
                                                                              _model.accountNumTextFieldMask
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Semantics(
                                                                        label:
                                                                            'paybills_account_name_field',
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              200.0,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.accountNameTextFieldTextController,
                                                                            focusNode:
                                                                                _model.accountNameTextFieldFocusNode,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.accountNameTextFieldTextController',
                                                                              Duration(milliseconds: 2000),
                                                                              () => safeSetState(() {}),
                                                                            ),
                                                                            autofocus:
                                                                                false,
                                                                            textInputAction:
                                                                                TextInputAction.done,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              isDense: true,
                                                                              labelText: 'Account Name',
                                                                              labelStyle: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    color: Color(0xFF72777A),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).neutral10,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: Color(0xFF676666),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              filled: true,
                                                                              fillColor: FlutterFlowTheme.of(context).base0,
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 17.0, 12.0, 17.0),
                                                                              hoverColor: FlutterFlowTheme.of(context).formElementHover,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            enableInteractiveSelection:
                                                                                true,
                                                                            validator:
                                                                                _model.accountNameTextFieldTextControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      20.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Manage Payment',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineSmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            15.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Semantics(
                                                              label:
                                                                  'Scheduled-Payment-Row',
                                                              child: InkWell(
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
                                                                  context.pushNamed(
                                                                      ScheduledPayBillsPageWidget
                                                                          .routeName);
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Semantics(
                                                                        label:
                                                                            'Scheduled-Payment-Container',
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              77.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFE8FBFF),
                                                                            borderRadius:
                                                                                BorderRadius.circular(16.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Scheduled Payment',
                                                                                        style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                              font: GoogleFonts.manrope(
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        'View your scheduled payments',
                                                                                        style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                              font: GoogleFonts.manrope(
                                                                                                fontWeight: FontWeight.w500,
                                                                                                fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Icon(
                                                                                  Icons.keyboard_arrow_right_rounded,
                                                                                  color: Color(0xFF027377),
                                                                                  size: 24.0,
                                                                                ),
                                                                              ].divide(SizedBox(width: 16.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Semantics(
                                                                    label:
                                                                        'Review-Payment-Container',
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            PaymentHistoryWidget.routeName);
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            77.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFE8FBFF),
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Review Payment',
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                            font: GoogleFonts.manrope(
                                                                                              fontWeight: FontWeight.bold,
                                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'View your payment transactions',
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                            font: GoogleFonts.manrope(
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontStyle: FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Icon(
                                                                                Icons.keyboard_arrow_right_rounded,
                                                                                color: Color(0xFF027377),
                                                                                size: 24.0,
                                                                              ),
                                                                            ].divide(SizedBox(width: 16.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            Semantics(
                                                                      label:
                                                                          'Next-Button',
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed: ((_model.accountNumTextFieldTextController.text == '') ||
                                                                                (_model.accountNameTextFieldTextController.text == '') ||
                                                                                (_model.selectedBiller == null))
                                                                            ? null
                                                                            : () async {
                                                                                _model.validateBillerResponse = await WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.call(
                                                                                  billerId: _model.selectedBiller?.id,
                                                                                  accountNumber: _model.accountNumTextFieldTextController.text,
                                                                                  accessToken: currentAuthenticationToken,
                                                                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                );

                                                                                if (WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.isValid(
                                                                                      (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                    ) ==
                                                                                    true) {
                                                                                  FFAppState().PaybillsInitiateModelAppState = WBBPSubmitParametersStruct(
                                                                                    billerId: _model.selectedBiller?.id,
                                                                                    accountNumber: _model.accountNumTextFieldTextController.text,
                                                                                    accountHolderName: _model.accountNameTextFieldTextController.text,
                                                                                    sourceAccountNumber: widget.sourceAccount?.fullAccountNumber,
                                                                                    idempotencyKey: functions.createUuid(),
                                                                                  );
                                                                                  // If no source account is passed.
                                                                                  if (widget.sourceAccount != null) {
                                                                                    context.pushNamed(
                                                                                      PayBillsAmountPageWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'billerDetails': serializeParam(
                                                                                          _model.selectedBiller,
                                                                                          ParamType.DataStruct,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        '__transition_info__': TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.fade,
                                                                                          duration: Duration(milliseconds: 0),
                                                                                        ),
                                                                                      },
                                                                                    );
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
                                                                                              child: PayBillsSourceAccountBottomSheetWidget(
                                                                                                callBack: (selectedAccount) async {
                                                                                                  _model.sourceAccount = selectedAccount;
                                                                                                  safeSetState(() {});
                                                                                                  FFAppState().payingSourceAccountAppState = selectedAccount;
                                                                                                  FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                                                    (e) => e..sourceAccountNumber = _model.sourceAccount?.fullAccountNumber,
                                                                                                  );
                                                                                                  safeSetState(() {});
                                                                                                  Navigator.pop(context);

                                                                                                  context.pushNamed(
                                                                                                    PayBillsAmountPageWidget.routeName,
                                                                                                    queryParameters: {
                                                                                                      'billerDetails': serializeParam(
                                                                                                        _model.selectedBiller,
                                                                                                        ParamType.DataStruct,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  }
                                                                                } else if (WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.error(
                                                                                          (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                        ) !=
                                                                                        null &&
                                                                                    WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.error(
                                                                                          (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                        ) !=
                                                                                        '') {
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
                                                                                              message: valueOrDefault<String>(
                                                                                                WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.message(
                                                                                                  (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                                ),
                                                                                                'Something went wrong.',
                                                                                              ),
                                                                                              primaryButtonTitle: 'Okay',
                                                                                              title: valueOrDefault<String>(
                                                                                                WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.title(
                                                                                                  (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                                ),
                                                                                                'Oops!',
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
                                                                                } else {
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
                                                                                              message: valueOrDefault<String>(
                                                                                                WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.message(
                                                                                                  (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                                ),
                                                                                                'Biller Account is Invalid.',
                                                                                              ),
                                                                                              primaryButtonTitle: 'Okay',
                                                                                              title: valueOrDefault<String>(
                                                                                                WhitebankGroupAPIGroup.retailBillsPaymentValidateBillerAccountCall.title(
                                                                                                  (_model.validateBillerResponse?.jsonBody ?? ''),
                                                                                                ),
                                                                                                'Oops!',
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

                                                                                safeSetState(() {});
                                                                              },
                                                                        text:
                                                                            'Next',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              56.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconAlignment:
                                                                              IconAlignment.end,
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                              ),
                                                                          elevation:
                                                                              0.0,
                                                                          borderRadius:
                                                                              BorderRadius.circular(16.0),
                                                                          disabledColor:
                                                                              Color(0xFFDAE3E5),
                                                                          disabledTextColor:
                                                                              Color(0xFF939FA3),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 16.0)),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'rowOnPageLoadAnimation']!),
                                                          ].divide(SizedBox(
                                                              height: 20.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  20.0,
                                                                  40.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        primary: false,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            if ((WhitebankGroupAPIGroup
                                                                            .retailSavedBillersListCall
                                                                            .savedBillers(
                                                                          pageViewRetailSavedBillersListResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null &&
                                                                    (WhitebankGroupAPIGroup
                                                                            .retailSavedBillersListCall
                                                                            .savedBillers(
                                                                      pageViewRetailSavedBillersListResponse
                                                                          .jsonBody,
                                                                    ))!
                                                                        .isNotEmpty) ==
                                                                true)
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final favs = (getJsonField(
                                                                        pageViewRetailSavedBillersListResponse
                                                                            .jsonBody,
                                                                        r'''$.savedBillers''',
                                                                        true,
                                                                      )?.toList().map<WBSavedBillerStruct?>(WBSavedBillerStruct.maybeFromMap).toList() as Iterable<WBSavedBillerStruct?>)
                                                                          .withoutNulls
                                                                          .toList() ??
                                                                      [];

                                                                  return Semantics(
                                                                    label:
                                                                        'Favorites-ListView',
                                                                    child: ListView
                                                                        .separated(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          favs.length,
                                                                      separatorBuilder: (_,
                                                                              __) =>
                                                                          SizedBox(
                                                                              height: 12.0),
                                                                      itemBuilder:
                                                                          (context,
                                                                              favsIndex) {
                                                                        final favsItem =
                                                                            favs[favsIndex];
                                                                        return Builder(
                                                                          builder: (context) =>
                                                                              Semantics(
                                                                            label:
                                                                                'BillerTileComponent',
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.billerTileComponentModels.getModel(
                                                                                favsIndex.toString(),
                                                                                favsIndex,
                                                                              ),
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: BillerTileComponentWidget(
                                                                                key: Key(
                                                                                  'Keyyw3_${favsIndex.toString()}',
                                                                                ),
                                                                                biller: favsItem,
                                                                                tapAction: (biller) async {
                                                                                  FFAppState().PaybillsInitiateModelAppState = WBBPSubmitParametersStruct(
                                                                                    billerId: favsItem.biller.id,
                                                                                    accountNumber: favsItem.accountNumber,
                                                                                    accountHolderName: favsItem.accountHolderName,
                                                                                    savedBillerId: favsItem.id,
                                                                                    sourceAccountNumber: widget.sourceAccount?.fullAccountNumber,
                                                                                    idempotencyKey: functions.createUuid(),
                                                                                    currency: 'PHP',
                                                                                  );
                                                                                  safeSetState(() {});
                                                                                  // If no source account is passed.
                                                                                  if (widget.sourceAccount != null) {
                                                                                    context.pushNamed(
                                                                                      PayBillsAmountPageWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'billerDetails': serializeParam(
                                                                                          favsItem.biller,
                                                                                          ParamType.DataStruct,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        '__transition_info__': TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.fade,
                                                                                          duration: Duration(milliseconds: 0),
                                                                                        ),
                                                                                      },
                                                                                    );
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
                                                                                              child: PayBillsSourceAccountBottomSheetWidget(
                                                                                                callBack: (selectedAccount) async {
                                                                                                  _model.sourceAccount = selectedAccount;
                                                                                                  safeSetState(() {});
                                                                                                  FFAppState().payingSourceAccountAppState = selectedAccount;
                                                                                                  FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                                                    (e) => e..sourceAccountNumber = selectedAccount.fullAccountNumber,
                                                                                                  );
                                                                                                  safeSetState(() {});
                                                                                                  Navigator.pop(context);

                                                                                                  context.pushNamed(
                                                                                                    PayBillsAmountPageWidget.routeName,
                                                                                                    queryParameters: {
                                                                                                      'billerDetails': serializeParam(
                                                                                                        favsItem.biller,
                                                                                                        ParamType.DataStruct,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => safeSetState(() {}));
                                                                                  }
                                                                                },
                                                                                moreAction: () async {
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
                                                                                            child: ModifyBillerBottomSheetWidget(
                                                                                              biller: favsItem,
                                                                                              editAction: (savedBiller) async {
                                                                                                Navigator.pop(context);
                                                                                                await Future.delayed(
                                                                                                  Duration(
                                                                                                    milliseconds: 100,
                                                                                                  ),
                                                                                                );
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
                                                                                                          child: EditDeleteBillerBottomSheetWidget(
                                                                                                            actionType: BillerActionType.edit,
                                                                                                            biller: savedBiller,
                                                                                                            callBack: (biller) async {
                                                                                                              _model.billerUpdateResponse = await WhitebankGroupAPIGroup.retailSavedBillerUpdateCall.call(
                                                                                                                id: favsItem.id,
                                                                                                                nickname: biller.nickname,
                                                                                                                accessToken: currentAuthenticationToken,
                                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                                              );

                                                                                                              if ((_model.billerUpdateResponse?.succeeded ?? true)) {
                                                                                                                Navigator.pop(context);
                                                                                                                await Future.delayed(
                                                                                                                  Duration(
                                                                                                                    milliseconds: 100,
                                                                                                                  ),
                                                                                                                );
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
                                                                                                                          child: SaveBillerSuccessBottomSheetWidget(
                                                                                                                            title: 'Biller update succesful.',
                                                                                                                            callBack: () async {},
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() {}));

                                                                                                                safeSetState(() {
                                                                                                                  _model.clearSavedBillersQueryCacheKey(_model.apiRequestLastUniqueKey);
                                                                                                                  _model.apiRequestCompleted = false;
                                                                                                                });
                                                                                                                await _model.waitForApiRequestCompleted(minWait: 300, maxWait: 2000);
                                                                                                              } else {
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
                                                                                                                            message: valueOrDefault<String>(
                                                                                                                              getJsonField(
                                                                                                                                (_model.billerUpdateResponse?.jsonBody ?? ''),
                                                                                                                                r'''$.message''',
                                                                                                                              )?.toString(),
                                                                                                                              'Something went wrong.',
                                                                                                                            ),
                                                                                                                            primaryButtonTitle: 'Dismiss',
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
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => safeSetState(() {}));
                                                                                              },
                                                                                              deleteAction: (savedBiller) async {
                                                                                                Navigator.pop(context);
                                                                                                await Future.delayed(
                                                                                                  Duration(
                                                                                                    milliseconds: 100,
                                                                                                  ),
                                                                                                );
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
                                                                                                          child: EditDeleteBillerBottomSheetWidget(
                                                                                                            actionType: BillerActionType.delete,
                                                                                                            biller: favsItem,
                                                                                                            callBack: (biller) async {
                                                                                                              _model.billerDeleteResponse = await WhitebankGroupAPIGroup.retailSavedBillerDeleteCall.call(
                                                                                                                id: favsItem.id,
                                                                                                                accessToken: currentAuthenticationToken,
                                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                                              );

                                                                                                              if ((_model.billerDeleteResponse?.succeeded ?? true)) {
                                                                                                                Navigator.pop(context);
                                                                                                                await Future.delayed(
                                                                                                                  Duration(
                                                                                                                    milliseconds: 100,
                                                                                                                  ),
                                                                                                                );
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
                                                                                                                          child: SaveBillerSuccessBottomSheetWidget(
                                                                                                                            title: 'Biller deleted succesfully.',
                                                                                                                            callBack: () async {},
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    );
                                                                                                                  },
                                                                                                                ).then((value) => safeSetState(() {}));

                                                                                                                safeSetState(() {
                                                                                                                  _model.clearSavedBillersQueryCacheKey(_model.apiRequestLastUniqueKey);
                                                                                                                  _model.apiRequestCompleted = false;
                                                                                                                });
                                                                                                                await _model.waitForApiRequestCompleted(minWait: 200, maxWait: 2000);
                                                                                                              } else {
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
                                                                                                                            message: valueOrDefault<String>(
                                                                                                                              getJsonField(
                                                                                                                                (_model.billerDeleteResponse?.jsonBody ?? ''),
                                                                                                                                r'''$.message''',
                                                                                                                              )?.toString(),
                                                                                                                              'Something went wrong',
                                                                                                                            ),
                                                                                                                            primaryButtonTitle: 'Dismiss',
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
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => safeSetState(() {}));

                                                                                  safeSetState(() {});
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            if ((WhitebankGroupAPIGroup
                                                                            .retailSavedBillersListCall
                                                                            .savedBillers(
                                                                          pageViewRetailSavedBillersListResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null &&
                                                                    (WhitebankGroupAPIGroup
                                                                            .retailSavedBillersListCall
                                                                            .savedBillers(
                                                                      pageViewRetailSavedBillersListResponse
                                                                          .jsonBody,
                                                                    ))!
                                                                        .isNotEmpty) ==
                                                                false)
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          140.0,
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .emptyListComponentModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            EmptyListComponentWidget(
                                                                          title:
                                                                              'No favorites found.',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                          ].divide(SizedBox(
                                                              height: 20.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
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
                        child: wrapWithModel(
                          model: _model.mobileNavigationBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: MobileNavigationBarWidget(
                            pageIndex: 6,
                            shouldHideBottomNav: true,
                          ),
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
                        rightButtonAction: () async {},
                        leftButtonAction: () async {
                          context.safePop();
                        },
                        midRightButtonAction: () async {},
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
            ),
          ],
        ),
      ),
    );
  }
}
