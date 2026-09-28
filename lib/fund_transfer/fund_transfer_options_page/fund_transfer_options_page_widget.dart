import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_account_selection/fund_transfer_account_selection_widget.dart';
import '/fund_transfer/fund_transfer_mode_options/fund_transfer_mode_options_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'fund_transfer_options_page_model.dart';
export 'fund_transfer_options_page_model.dart';

class FundTransferOptionsPageWidget extends StatefulWidget {
  const FundTransferOptionsPageWidget({
    super.key,
    bool? isAccountSelected,
    this.account,
  }) : this.isAccountSelected = isAccountSelected ?? false;

  final bool isAccountSelected;

  /// -
  final AccountsStruct? account;

  static String routeName = 'FundTransferOptionsPage';
  static String routePath = '/fundTransferOptionsPage';

  @override
  State<FundTransferOptionsPageWidget> createState() =>
      _FundTransferOptionsPageWidgetState();
}

class _FundTransferOptionsPageWidgetState
    extends State<FundTransferOptionsPageWidget> {
  late FundTransferOptionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FundTransferOptionsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      _model.apiResultj46 =
          await WhitebankGroupAPIGroup.getBeneficiariesCall.call(
        accessToken: currentAuthenticationToken,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
      );

      if ((_model.apiResultj46?.succeeded ?? true)) {
        FFAppState().BeneficiaryListState =
            ((_model.apiResultj46?.jsonBody ?? '')
                    .toList()
                    .map<BeneficiaryModelStruct?>(
                        BeneficiaryModelStruct.maybeFromMap)
                    .toList() as Iterable<BeneficiaryModelStruct?>)
                .withoutNulls
                .toList()
                .cast<BeneficiaryModelStruct>();
        FFAppState().updateFundTransferiniatedResponseStruct(
          (e) => e..sourceAccountNumber = widget.account?.fullAccountNumber,
        );
        safeSetState(() {});
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
                    message: valueOrDefault<String>(
                      getJsonField(
                        (_model.apiResultj46?.jsonBody ?? ''),
                        r'''$.message''',
                      )?.toString(),
                      'Something went wrong.',
                    ),
                    primaryButtonTitle: 'Dismiss',
                    title: valueOrDefault<String>(
                      getJsonField(
                        (_model.apiResultj46?.jsonBody ?? ''),
                        r'''$.title''',
                      )?.toString(),
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

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    wrapWithModel(
                      model: _model.mobileNavigationBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileNavigationBarWidget(
                        pageIndex: 0,
                        shouldHideBottomNav: false,
                      ),
                    ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width == 480.0
                                ? 24.0
                                : 0.0,
                            0.0,
                          ),
                          0.0,
                          0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Visibility(
                          visible: !_model.isLoading,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 72.0;
                                    } else {
                                      return 72.0;
                                    }
                                  }(),
                                  72.0,
                                ),
                                0.0,
                                0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 36.0;
                                            } else {
                                              return 36.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        0.0,
                                        0.0,
                                        0.0),
                                    child: wrapWithModel(
                                      model: _model.customMobileAppBarModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CustomMobileAppBarWidget(
                                        pageTitle: '',
                                        rightButtonIcon: null,
                                        leftButtonIcon: Icon(
                                          Icons.arrow_back_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        midRightButtonIcon: null,
                                        buttonColor: Colors.transparent,
                                        buttonWithoutBackground: true,
                                        btnWOBgIcon: Icon(
                                          Icons.arrow_back,
                                          color: Color(0xFF383839),
                                          size: 24.0,
                                        ),
                                        btnWOBgIconSize: 24.0,
                                        isTitleLeftAlign: false,
                                        rightButtonAction: () async {},
                                        leftButtonAction: () async {
                                          context.safePop();
                                        },
                                        midRightButtonAction: () async {},
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 36.0;
                                            } else {
                                              return 36.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 8.0;
                                            } else {
                                              return 8.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 0.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 36.0;
                                            } else {
                                              return 36.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Text(
                                                      'Where to Send',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .neutral3,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmallIsCustom,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 16.0),
                                                  child: Semantics(
                                                    label:
                                                        'fund_transfer_options_within_pbb_account_card',
                                                    container: false,
                                                    image: false,
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (widget
                                                            .isAccountSelected) {
                                                          FFAppState()
                                                              .updateFundTransferiniatedResponseStruct(
                                                            (e) => e
                                                              ..transferType =
                                                                  TransactionTypeKey
                                                                      .INTRABANK
                                                                      .name,
                                                          );
                                                          FFAppState()
                                                                  .isFromFavorite =
                                                              false;
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            FundTransferPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'isFromFavorites':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                              'accountNumber':
                                                                  serializeParam(
                                                                widget.account
                                                                    ?.fullAccountNumber,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'accountType':
                                                                  serializeParam(
                                                                widget
                                                                    .account
                                                                    ?.accountType
                                                                    ?.name,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'bankName':
                                                                  serializeParam(
                                                                '',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          FFAppState()
                                                              .updateFundTransferiniatedResponseStruct(
                                                            (e) => e
                                                              ..transferType =
                                                                  TransactionTypeKey
                                                                      .INTRABANK
                                                                      .name,
                                                          );
                                                          FFAppState()
                                                                  .isFromFavorite =
                                                              false;
                                                          safeSetState(() {});
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        FundTransferAccountSelectionWidget(
                                                                      transferDirection: TransactionTypeKey
                                                                          .INTRABANK
                                                                          .name,
                                                                      isFromFavorites:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        }
                                                      },
                                                      child: Container(
                                                        height: 77.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Semantics(
                                                                    label:
                                                                        'fund_transfer_options_within_pbb_account_icon',
                                                                    image: true,
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Sizes=140,_Type=Pictorial_marks.png',
                                                                        width:
                                                                            53.0,
                                                                        height:
                                                                            35.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width:
                                                                        205.0,
                                                                    height:
                                                                        52.0,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Semantics(
                                                                          label:
                                                                              'fund_transfer_options_within_pbb_account_title',
                                                                          child:
                                                                              Text(
                                                                            'Within PBB Account',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.manrope(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  fontSize: 16.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  lineHeight: 1.6,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Semantics(
                                                                          label:
                                                                              'fund_transfer_options_within_pbb_account_description',
                                                                          child:
                                                                              Text(
                                                                            'Send to your account or others',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.manrope(
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                              Semantics(
                                                                label:
                                                                    'fund_transfer_options_within_pbb_account_arrow',
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_right_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Semantics(
                                                  label:
                                                      'fund_transfer_options_other_banks_card',
                                                  container: true,
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (widget
                                                          .isAccountSelected) {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                      FundTransferModeOptionsWidget(
                                                                    accountNumber: widget
                                                                        .account
                                                                        ?.fullAccountNumber,
                                                                    isFromFavorites:
                                                                        false,
                                                                    accountType: widget
                                                                        .account
                                                                        ?.accountType
                                                                        ?.name,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      } else {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                      FundTransferAccountSelectionWidget(
                                                                    transferDirection:
                                                                        TransactionTypeKey
                                                                            .OTHER_BANK
                                                                            .name,
                                                                    isFromFavorites:
                                                                        false,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      }

                                                      FFAppState()
                                                              .isFromFavorite =
                                                          false;
                                                      FFAppState()
                                                          .updateFundTransferiniatedResponseStruct(
                                                        (e) => e
                                                          ..transferType =
                                                              TransactionTypeKey
                                                                  .INSTAPAY
                                                                  .name,
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      height: 77.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                            16.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: 49.0,
                                                                  height: 49.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x1100727D),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Semantics(
                                                                    label:
                                                                        'fund_transfer_options_other_banks_icon',
                                                                    child: Icon(
                                                                      Icons
                                                                          .house_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryGradient,
                                                                      size:
                                                                          28.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: 205.0,
                                                                  height: 52.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Semantics(
                                                                        label:
                                                                            'fund_transfer_options_other_banks_title',
                                                                        child:
                                                                            Text(
                                                                          'Send to other Banks',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.manrope(
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.bold,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Semantics(
                                                                        label:
                                                                            'fund_transfer_options_other_banks_description',
                                                                        child:
                                                                            Text(
                                                                          'Bdo, Unionbank, BPI or others',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.manrope(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 16.0)),
                                                            ),
                                                            Semantics(
                                                              label:
                                                                  'fund_transfer_options_other_banks_arrow',
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_right_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 16.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 23.0, 16.0, 0.0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'fund_transfer_options_manage_transfer_header',
                                                          child: Text(
                                                            'Manage Transfer',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    16.0),
                                                        child: Semantics(
                                                          label:
                                                              'fund_transfer_options_scheduled_transfer_card',
                                                          container: true,
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
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  FundTransferScheduledPaymentPageWidget
                                                                      .routeName);
                                                            },
                                                            child: Container(
                                                              height: 77.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            16.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              205.0,
                                                                          height:
                                                                              52.0,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Semantics(
                                                                                label: 'fund_transfer_options_scheduled_transfer_title',
                                                                                child: Text(
                                                                                  'Scheduled Transfer',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.manrope(
                                                                                          fontWeight: FontWeight.bold,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        lineHeight: 1.6,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              Semantics(
                                                                                label: 'fund_transfer_options_scheduled_transfer_description',
                                                                                child: Text(
                                                                                  'View your scheduled transfer',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.manrope(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 16.0)),
                                                                    ),
                                                                    Semantics(
                                                                      label:
                                                                          'fund_transfer_options_scheduled_transfer_arrow',
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_right_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Semantics(
                                                        label:
                                                            'fund_transfer_options_review_transfers_card',
                                                        container: true,
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                                TransactionHistoryV2Widget
                                                                    .routeName);
                                                          },
                                                          child: Container(
                                                            height: 77.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            205.0,
                                                                        height:
                                                                            52.0,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Semantics(
                                                                              label: 'fund_transfer_options_review_transfers_title',
                                                                              child: Text(
                                                                                'Review  Transfers',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Semantics(
                                                                              label: 'fund_transfer_options_review_transfers_description',
                                                                              child: Text(
                                                                                'View all transfer transactions',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                  Semantics(
                                                                    label:
                                                                        'fund_transfer_options_review_transfers_arrow',
                                                                    child: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_right_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 8.0),
                                                    child: Semantics(
                                                      label:
                                                          'fund_transfer_options_favorites_header',
                                                      child: Text(
                                                        'Favorites',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                    .BeneficiaryListState
                                                    .isNotEmpty)
                                                  Builder(
                                                    builder: (context) {
                                                      final beneficiaryList =
                                                          FFAppState()
                                                              .BeneficiaryListState
                                                              .toList();

                                                      return Semantics(
                                                        label:
                                                            'fund_transfer_options_favorites_list',
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              beneficiaryList
                                                                  .length,
                                                              (beneficiaryListIndex) {
                                                            final beneficiaryListItem =
                                                                beneficiaryList[
                                                                    beneficiaryListIndex];
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Semantics(
                                                                  label:
                                                                      'fund_transfer_options_favorite_item',
                                                                  child:
                                                                      TransactionItemWidget(
                                                                    key: Key(
                                                                        'Key376_${beneficiaryListIndex}_of_${beneficiaryList.length}'),
                                                                    userInitial:
                                                                        functions
                                                                            .extractReceiver(beneficiaryListItem.accountHolderName),
                                                                    userNickname:
                                                                        beneficiaryListItem
                                                                            .nickname,
                                                                    accountType:
                                                                        'Savings Account',
                                                                    accountNumber:
                                                                        beneficiaryListItem
                                                                            .accountNumber,
                                                                    inFavPage:
                                                                        false,
                                                                    openBotSheet:
                                                                        (isOpenBotSheet) async {},
                                                                    proceedAction:
                                                                        () async {
                                                                      FFAppState()
                                                                          .updateFundTransferiniatedResponseStruct(
                                                                        (e) => e
                                                                          ..destinationAccountName =
                                                                              beneficiaryListItem.accountHolderName
                                                                          ..destinationBankCode =
                                                                              beneficiaryListItem.bankCode
                                                                          ..destinationAccountNumber =
                                                                              beneficiaryListItem.accountNumber
                                                                          ..transferType =
                                                                              beneficiaryListItem.transferType,
                                                                      );
                                                                      FFAppState()
                                                                              .isFromFavorite =
                                                                          true;
                                                                      safeSetState(
                                                                          () {});
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(context).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: FundTransferAccountSelectionWidget(
                                                                                  transferDirection: beneficiaryListItem.transferType,
                                                                                  isFromFavorites: true,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  width: 343.0,
                                                                  child:
                                                                      Divider(
                                                                    thickness:
                                                                        1.0,
                                                                    color: Color(
                                                                        0x14000000),
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          }),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                if (!(FFAppState()
                                                    .BeneficiaryListState
                                                    .isNotEmpty))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .emptyListComponentModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          EmptyListComponentWidget(
                                                        title:
                                                            'Add recipient as favorite after each transaction',
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (_model.isLoading)
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/Loading_Lottie_animation.json',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
