import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/select_source_account_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cheque_inquiry_page_model.dart';
export 'cheque_inquiry_page_model.dart';

/// Money Transfer Form
class ChequeInquiryPageWidget extends StatefulWidget {
  const ChequeInquiryPageWidget({super.key});

  static String routeName = 'ChequeInquiryPage';
  static String routePath = '/chequeInquiryPage';

  @override
  State<ChequeInquiryPageWidget> createState() =>
      _ChequeInquiryPageWidgetState();
}

class _ChequeInquiryPageWidgetState extends State<ChequeInquiryPageWidget> {
  late ChequeInquiryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChequeInquiryPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = false;
      safeSetState(() {});
      _model.isDateSelected = true;
      _model.isChequeSelected = false;
      _model.toDateInvalid = false;
      _model.fromDateInvalid = false;
      _model.selectedAccountInvalid = false;
      _model.isAccountSelected = false;
      safeSetState(() {});
    });

    _model.chequeNumberTextController ??= TextEditingController();
    _model.chequeNumberFocusNode ??= FocusNode();
    _model.chequeNumberFocusNode!.addListener(() => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            if (_model.isLoading)
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Semantics(
                  label: 'LoadingStateComponent',
                  child: wrapWithModel(
                    model: _model.loadingStateComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: LoadingStateComponentWidget(
                      isFinished: _model.isLoading,
                    ),
                  ),
                ),
              ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                          pageIndex: 1,
                          shouldHideBottomNav: false,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
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
                                return 36.0;
                              } else {
                                return 36.0;
                              }
                            }(),
                            0.0,
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
                                return 36.0;
                              } else {
                                return 36.0;
                              }
                            }(),
                            0.0,
                          ),
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
                        child: Visibility(
                          visible: _model.isLoading == false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 16.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Cheque Inquiry',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily,
                                                    fontSize: 24.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Manage your cheque book and cheque-related services — all online, no branch visit needed.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Choose Account',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily,
                                                      color: Color(0xFF002C75),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeIsCustom,
                                                    ),
                                              ),
                                            ),
                                            Semantics(
                                              label:
                                                  'chequeInquiry_selectAccount_component',
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return WebViewAware(
                                                        child: GestureDetector(
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
                                                                SelectSourceAccountBottomSheetWidget(
                                                              callBack:
                                                                  (selectedAccount) async {
                                                                _model.selectedAccountCheque =
                                                                    AccountModelStruct(
                                                                  accountName:
                                                                      selectedAccount
                                                                          .accountName,
                                                                  accountNumber:
                                                                      selectedAccount
                                                                          .fullAccountNumber,
                                                                  accountBalance:
                                                                      selectedAccount
                                                                          .currentBalance,
                                                                  currency:
                                                                      selectedAccount
                                                                          .currency,
                                                                  subtitle:
                                                                      selectedAccount
                                                                          .maskedAccountNumber,
                                                                );
                                                                _model.isAccountSelected =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                    .updateChequeInquiryAccountDetailsStruct(
                                                                  (e) => e
                                                                    ..accountName =
                                                                        selectedAccount
                                                                            .accountName
                                                                    ..accountBalance =
                                                                        selectedAccount
                                                                            .currentBalance
                                                                    ..accountNumber =
                                                                        selectedAccount
                                                                            .fullAccountNumber,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxHeight: 500.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(14.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 36.0,
                                                              height: 36.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE3F4F4),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            14.0),
                                                              ),
                                                              child: Icon(
                                                                Icons
                                                                    .account_balance_wallet_outlined,
                                                                color: Color(
                                                                    0xFF027377),
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    _model
                                                                        .selectedAccountCheque
                                                                        ?.accountName,
                                                                    'Select your account',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Color(
                                                                            0xFF002C75),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  '${valueOrDefault<String>(
                                                                    _model
                                                                        .selectedAccountCheque
                                                                        ?.subtitle,
                                                                    '***',
                                                                  )} ${valueOrDefault<String>(
                                                                    _model
                                                                        .selectedAccountCheque
                                                                        ?.currency,
                                                                    '***',
                                                                  )}${valueOrDefault<String>(
                                                                    formatNumber(
                                                                      _model
                                                                          .selectedAccountCheque
                                                                          ?.accountBalance,
                                                                      formatType:
                                                                          FormatType
                                                                              .decimal,
                                                                      decimalType:
                                                                          DecimalType
                                                                              .periodDecimal,
                                                                    ),
                                                                    '***',
                                                                  )}',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Color(
                                                                            0xFF5A7A8A),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                        Container(
                                                          width: 28.0,
                                                          height: 28.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFE3F4F4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            color: Color(
                                                                0xFF027377),
                                                            size: 12.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (_model.selectedAccountInvalid)
                                              Text(
                                                'Source account is required',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .redBase,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Filter by',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: Color(0xFF002C75),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  child: Semantics(
                                                    label:
                                                        'chequeInquiry_selectDate_component',
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
                                                        _model.isDateSelected =
                                                            true;
                                                        safeSetState(() {});
                                                        _model.isChequeSelected =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: 162.0,
                                                        height: 68.0,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxHeight: 500.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      14.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 22.0,
                                                                height: 22.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 3.0,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 10.0,
                                                                  height: 10.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: _model.isDateSelected
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'Date',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: Color(
                                                                          0xFF002C75),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Semantics(
                                                    label:
                                                        'chequeInquiry_selectCheque_component',
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
                                                        _model.isChequeSelected =
                                                            true;
                                                        safeSetState(() {});
                                                        _model.isDateSelected =
                                                            false;
                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: 162.0,
                                                        height: 68.0,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxHeight: 500.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      14.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 22.0,
                                                                height: 22.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 3.0,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 10.0,
                                                                  height: 10.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: _model.isChequeSelected
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'Cheque No.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: Color(
                                                                          0xFF027377),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Builder(
                                              builder: (context) {
                                                if (_model.isDateSelected) {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Text(
                                                          'Date Range',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF002C75),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
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
                                                                  Form(
                                                                    key: _model
                                                                        .formKey1,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .always,
                                                                    child:
                                                                        Semantics(
                                                                      label:
                                                                          'chequeInquiry_selectFromDate_component',
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .fromDateModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CustomDateLabelPickerWidgetWidget(
                                                                          label:
                                                                              valueOrDefault<String>(
                                                                            dateTimeFormat(
                                                                              "MM-dd-y",
                                                                              _model.fromDate,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            'From Date',
                                                                          ),
                                                                          isDateSelected:
                                                                              true,
                                                                          textfieldLabel:
                                                                              'From',
                                                                          callBack:
                                                                              () async {
                                                                            final _datePicked1Date =
                                                                                await showDatePicker(
                                                                              context: context,
                                                                              initialDate: getCurrentTimestamp,
                                                                              firstDate: DateTime(1900),
                                                                              lastDate: getCurrentTimestamp,
                                                                              builder: (context, child) {
                                                                                return wrapInMaterialDatePickerTheme(
                                                                                  context,
                                                                                  child!,
                                                                                  headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                  headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                  headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                        fontSize: 32.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                                                                                      ),
                                                                                  pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                  selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                  actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  iconSize: 24.0,
                                                                                );
                                                                              },
                                                                            );

                                                                            if (_datePicked1Date !=
                                                                                null) {
                                                                              safeSetState(() {
                                                                                _model.datePicked1 = DateTime(
                                                                                  _datePicked1Date.year,
                                                                                  _datePicked1Date.month,
                                                                                  _datePicked1Date.day,
                                                                                );
                                                                              });
                                                                            } else if (_model.datePicked1 !=
                                                                                null) {
                                                                              safeSetState(() {
                                                                                _model.datePicked1 = getCurrentTimestamp;
                                                                              });
                                                                            }
                                                                            _model.fromDate =
                                                                                _model.datePicked1;
                                                                            safeSetState(() {});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                      .fromDateInvalid)
                                                                    Text(
                                                                      'From date is required',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).redBase,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
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
                                                                  Form(
                                                                    key: _model
                                                                        .formKey2,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .always,
                                                                    child:
                                                                        Semantics(
                                                                      label:
                                                                          'chequeInquiry_selectToDate_component',
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .toDateModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CustomDateLabelPickerWidgetWidget(
                                                                          label:
                                                                              valueOrDefault<String>(
                                                                            dateTimeFormat(
                                                                              "MM-dd-y",
                                                                              _model.toDate,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ),
                                                                            'To Date',
                                                                          ),
                                                                          isDateSelected:
                                                                              true,
                                                                          textfieldLabel:
                                                                              'To',
                                                                          callBack:
                                                                              () async {
                                                                            final _datePicked2Date =
                                                                                await showDatePicker(
                                                                              context: context,
                                                                              initialDate: getCurrentTimestamp,
                                                                              firstDate: (_model.fromDate ?? DateTime(1900)),
                                                                              lastDate: (getCurrentTimestamp ?? DateTime(2050)),
                                                                              builder: (context, child) {
                                                                                return wrapInMaterialDatePickerTheme(
                                                                                  context,
                                                                                  child!,
                                                                                  headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                  headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                  headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).headlineLargeFamily,
                                                                                        fontSize: 32.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).headlineLargeIsCustom,
                                                                                      ),
                                                                                  pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                  selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                  actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  iconSize: 24.0,
                                                                                );
                                                                              },
                                                                            );

                                                                            if (_datePicked2Date !=
                                                                                null) {
                                                                              safeSetState(() {
                                                                                _model.datePicked2 = DateTime(
                                                                                  _datePicked2Date.year,
                                                                                  _datePicked2Date.month,
                                                                                  _datePicked2Date.day,
                                                                                );
                                                                              });
                                                                            } else if (_model.datePicked2 !=
                                                                                null) {
                                                                              safeSetState(() {
                                                                                _model.datePicked2 = getCurrentTimestamp;
                                                                              });
                                                                            }
                                                                            _model.toDate =
                                                                                _model.datePicked2;
                                                                            safeSetState(() {});
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                      .toDateInvalid)
                                                                    Text(
                                                                      'To date is required',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).redBase,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 10.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 10.0)),
                                                  );
                                                } else {
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Text(
                                                          'Cheque Number',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF002C75),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                      Form(
                                                        key: _model.formKey3,
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .disabled,
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .chequeNumberTextController,
                                                            focusNode: _model
                                                                .chequeNumberFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.chequeNumberTextController',
                                                              Duration(
                                                                  milliseconds:
                                                                      200),
                                                              () =>
                                                                  safeSetState(
                                                                      () {}),
                                                            ),
                                                            autofocus: false,
                                                            enabled: true,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: false,
                                                              labelText:
                                                                  'Enter cheque number...',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                              hintText:
                                                                  'Enter cheque number...',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .bgThemeColor,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                              errorStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Color(
                                                                            0xFFB3261E),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFF676666),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFF676666),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFB3261E),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFB3261E),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              filled: true,
                                                              fillColor:
                                                                  Colors.white,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            maxLines: null,
                                                            keyboardType:
                                                                const TextInputType
                                                                    .numberWithOptions(
                                                                    decimal:
                                                                        true),
                                                            validator: _model
                                                                .chequeNumberTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      '^[0-9.]+\$'))
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 12.0)),
                                                  );
                                                }
                                              },
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ],
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 50.0),
                                  child: Semantics(
                                    label: 'chequeInquiry_submit_button',
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.isAccountSelected) {
                                          _model.selectedAccountInvalid = false;
                                          safeSetState(() {});
                                          if (_model.isDateSelected) {
                                            await Future.wait([
                                              Future(() async {
                                                _model.formFromDate = true;
                                                if (_model.formKey1
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey1.currentState!
                                                        .validate()) {
                                                  _model.formFromDate = false;
                                                }
                                                if (_model.datePicked1 ==
                                                    null) {
                                                  _model.formFromDate = false;
                                                }
                                                _model.fromDateInvalid =
                                                    !_model.formFromDate!;
                                                safeSetState(() {});
                                              }),
                                              Future(() async {
                                                _model.formToDate = true;
                                                if (_model.formKey2
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey2.currentState!
                                                        .validate()) {
                                                  _model.formToDate = false;
                                                }
                                                if (_model.datePicked2 ==
                                                    null) {
                                                  _model.formToDate = false;
                                                }
                                                _model.toDateInvalid =
                                                    !_model.formToDate!;
                                                safeSetState(() {});
                                              }),
                                            ]);
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 500,
                                              ),
                                            );
                                            if (!((_model.toDateInvalid ==
                                                    true) ||
                                                (_model.fromDateInvalid ==
                                                    true))) {
                                              _model.toDateInvalid = false;
                                              _model.fromDateInvalid = false;
                                              safeSetState(() {});
                                              _model.apiResultglys =
                                                  await WhitebankGroupAPIGroup
                                                      .retailChequeInquiryCall
                                                      .call(
                                                accountNo: _model
                                                    .selectedAccountCheque
                                                    ?.accountNumber,
                                                searchBy: 'DTRNG',
                                                fromDate: dateTimeFormat(
                                                  "dd/MM/y",
                                                  _model.fromDate,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                toDate: dateTimeFormat(
                                                  "dd/MM/y",
                                                  _model.toDate,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                chequeNo: _model
                                                    .chequeNumberTextController
                                                    .text,
                                                baseURL:
                                                    FFDevEnvironmentValues()
                                                        .WBPBASEURL,
                                                accessToken:
                                                    currentAuthenticationToken,
                                              );

                                              if ((_model.apiResultglys
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                        .chequeInquiryRecords =
                                                    ChequeInquiryResponseStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultglys
                                                                    ?.jsonBody ??
                                                                ''))!
                                                        .records
                                                        .toList()
                                                        .cast<
                                                            ChequeInquiryRecordsStruct>();
                                                FFAppState()
                                                    .updateStopChequeModelStruct(
                                                  (e) => e
                                                    ..accountNumber = _model
                                                        .selectedAccountCheque
                                                        ?.accountNumber
                                                    ..accountBalance = _model
                                                        .selectedAccountCheque
                                                        ?.accountBalance,
                                                );
                                                safeSetState(() {});

                                                context.pushNamed(
                                                    ChequeInquiryResultPageWidget
                                                        .routeName);
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              CustomInformationalDialogWidget(
                                                            message: ChequeInquiryResponseErrorStruct
                                                                    .maybeFromMap((_model
                                                                            .apiResultglys
                                                                            ?.jsonBody ??
                                                                        ''))!
                                                                .detail,
                                                            primaryButtonTitle:
                                                                'Confirm',
                                                            title: ChequeInquiryResponseErrorStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultglys?.jsonBody ??
                                                                            ''))
                                                                ?.title,
                                                            primaryButtonAction:
                                                                () async {
                                                              Navigator.pop(
                                                                  context);
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

                                              _model.toDateInvalid = false;
                                              _model.fromDateInvalid = false;
                                              safeSetState(() {});
                                            }
                                          } else {
                                            _model.formValidateCheque = true;
                                            if (_model.formKey3.currentState ==
                                                    null ||
                                                !_model.formKey3.currentState!
                                                    .validate()) {
                                              _model.formValidateCheque = false;
                                            }
                                            if (_model.formValidateCheque!) {
                                              _model.apiResultgly =
                                                  await WhitebankGroupAPIGroup
                                                      .retailChequeInquiryCall
                                                      .call(
                                                accountNo: _model
                                                    .selectedAccountCheque
                                                    ?.accountNumber,
                                                searchBy: 'CHQNO',
                                                fromDate: dateTimeFormat(
                                                  "dd/MM/y",
                                                  _model.fromDate,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                toDate: dateTimeFormat(
                                                  "dd/MM/y",
                                                  _model.toDate,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                chequeNo: _model
                                                    .chequeNumberTextController
                                                    .text,
                                                baseURL:
                                                    FFDevEnvironmentValues()
                                                        .WBPBASEURL,
                                                accessToken:
                                                    currentAuthenticationToken,
                                              );

                                              if ((_model.apiResultgly
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                        .chequeInquiryRecords =
                                                    ChequeInquiryResponseStruct
                                                            .maybeFromMap((_model
                                                                    .apiResultgly
                                                                    ?.jsonBody ??
                                                                ''))!
                                                        .records
                                                        .toList()
                                                        .cast<
                                                            ChequeInquiryRecordsStruct>();
                                                safeSetState(() {});

                                                context.pushNamed(
                                                    ChequeInquiryResultPageWidget
                                                        .routeName);
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              CustomInformationalDialogWidget(
                                                            message: ChequeInquiryResponseErrorStruct
                                                                    .maybeFromMap((_model
                                                                            .apiResultgly
                                                                            ?.jsonBody ??
                                                                        ''))!
                                                                .detail,
                                                            primaryButtonTitle:
                                                                'Confirm',
                                                            title: ChequeInquiryResponseErrorStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultgly?.jsonBody ??
                                                                            ''))
                                                                ?.title,
                                                            primaryButtonAction:
                                                                () async {
                                                              Navigator.pop(
                                                                  context);
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
                                            }
                                          }
                                        } else {
                                          _model.selectedAccountInvalid = true;
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF027377),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
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
                  ),
                ),
              ],
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
                  btnWOBgIcon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF444C66),
                  ),
                  btnWOBgColor: Color(0xFF444C66),
                  btnWOBgIconSize: 24.0,
                  isTitleLeftAlign: true,
                  titleLeftAlign: '',
                  textLeftAlignColor: Color(0xFF444C66),
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
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: CustomReusableBottomSheetV2Widget(
                                title: 'Trust This Device?',
                                message:
                                    'We noticed this is your first login on this device. For your security, please confirm if you trust this device to access your account.',
                                buttonTitle: 'Trust Device',
                                cancelButtonTitle: 'Not now',
                                callback: () async {
                                  var _shouldSetState = false;
                                  _model.devicesResponse =
                                      await WhitebankGroupAPIGroup
                                          .retailSettingsDevicesListCall
                                          .call(
                                    accessToken: currentAuthenticationToken,
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                  );

                                  _shouldSetState = true;
                                  if (((_model.devicesResponse?.jsonBody ?? '')
                                              .toList()
                                              .map<TrustedDeviceStruct?>(
                                                  TrustedDeviceStruct.maybeFromMap)
                                              .toList()
                                          as Iterable<TrustedDeviceStruct?>)
                                      .withoutNulls
                                      .where((e) =>
                                          e.deviceId ==
                                          FFAppState().DeviceDetails.deviceId)
                                      .toList()
                                      .isNotEmpty) {
                                    _model.initTrustResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailSettingsDeviceInitiateTrustCall
                                            .call(
                                      deviceId: ((_model.devicesResponse
                                                          ?.jsonBody ??
                                                      '')
                                                  .toList()
                                                  .map<TrustedDeviceStruct?>(
                                                      TrustedDeviceStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<TrustedDeviceStruct?>)
                                          .withoutNulls
                                          .where((e) =>
                                              e.deviceId ==
                                              FFAppState()
                                                  .DeviceDetails
                                                  .deviceId)
                                          .toList()
                                          .firstOrNull
                                          ?.id,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                    );

                                    _shouldSetState = true;
                                    if (WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .error(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            null ||
                                        WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .error(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            '') {
                                      context.pushNamed(
                                        AccountVerificationPageWidget.routeName,
                                        queryParameters: {
                                          'sessionToken': serializeParam(
                                            WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .sessionId(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            ParamType.String,
                                          ),
                                          'purpose': serializeParam(
                                            VerificationType.trustDevice,
                                            ParamType.Enum,
                                          ),
                                          'deviceId': serializeParam(
                                            ((_model.devicesResponse
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<TrustedDeviceStruct?>(
                                                            TrustedDeviceStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        TrustedDeviceStruct?>)
                                                .withoutNulls
                                                .where((e) =>
                                                    e.deviceId ==
                                                    FFAppState()
                                                        .DeviceDetails
                                                        .deviceId)
                                                .toList()
                                                .firstOrNull
                                                ?.id,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else if (WhitebankGroupAPIGroup
                                            .retailSettingsDeviceInitiateTrustCall
                                            .error(
                                          (_model.initTrustResponse?.jsonBody ??
                                              ''),
                                        ) ==
                                        ResponseStatus
                                            .MAX_TRUSTED_DEVICES_REACHED.name) {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    CustomInformationalDialogWidget(
                                                  message:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    )?.toString(),
                                                    'Maximum number of trusted devices (3) reached',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
                                                  primaryButtonAction:
                                                      () async {
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
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    CustomInformationalDialogWidget(
                                                  message:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    )?.toString(),
                                                    'Failed to initiate trust device.',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
                                                  title: valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.error''',
                                                    )?.toString(),
                                                    'Device already trusted.',
                                                  ),
                                                  primaryButtonAction:
                                                      () async {
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

                                    return;
                                  } else {
                                    _model.fcmTokenOutput =
                                        await actions.getFCMToken();
                                    _shouldSetState = true;
                                    _model.registerDeviceResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailSettingsDeviceRegisterCall
                                            .call(
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      deviceName:
                                          FFAppState().DeviceDetails.name,
                                      pushToken: _model.fcmTokenOutput,
                                      pushPlatform:
                                          FFAppState().DeviceDetails.os,
                                      deviceType: FFAppState().DeviceDetails.os,
                                      osVersion:
                                          FFAppState().DeviceDetails.osVersion,
                                      appVersion:
                                          FFAppConstants.BuildVersionNumber,
                                    );

                                    _shouldSetState = true;
                                    // If newly registered device is not trusted, then initiate trust
                                    if (WhitebankGroupAPIGroup
                                            .retailSettingsDeviceRegisterCall
                                            .trusted(
                                          (_model.registerDeviceResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ) ==
                                        false) {
                                      _model.initTrustResponseCopy =
                                          await WhitebankGroupAPIGroup
                                              .retailSettingsDeviceInitiateTrustCall
                                              .call(
                                        deviceId: ((_model.devicesResponse
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<TrustedDeviceStruct?>(
                                                        TrustedDeviceStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    TrustedDeviceStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.deviceId ==
                                                FFAppState()
                                                    .DeviceDetails
                                                    .deviceId)
                                            .toList()
                                            .firstOrNull
                                            ?.id,
                                        accessToken: currentAuthenticationToken,
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                      );

                                      _shouldSetState = true;
                                      if (WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .error(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              null ||
                                          WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .error(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '') {
                                        context.pushNamed(
                                          AccountVerificationPageWidget
                                              .routeName,
                                          queryParameters: {
                                            'sessionToken': serializeParam(
                                              WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .sessionId(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                            'purpose': serializeParam(
                                              VerificationType.trustDevice,
                                              ParamType.Enum,
                                            ),
                                            'deviceId': serializeParam(
                                              WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceRegisterCall
                                                  .id(
                                                (_model.registerDeviceResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else if (WhitebankGroupAPIGroup
                                              .retailSettingsDeviceInitiateTrustCall
                                              .error(
                                            (_model.initTrustResponseCopy
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          ResponseStatus
                                              .MAX_TRUSTED_DEVICES_REACHED
                                              .name) {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      CustomInformationalDialogWidget(
                                                    message:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initTrustResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Maximum number of trusted devices (3) reached',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    primaryButtonAction:
                                                        () async {
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
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      CustomInformationalDialogWidget(
                                                    message:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initTrustResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Failed to initiate trust device.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    primaryButtonAction:
                                                        () async {
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

                                      return;
                                    } else {
                                      Navigator.pop(context);
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        isDismissible: false,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child:
                                                    CustomReusableBottomSheetV2Widget(
                                                  title:
                                                      'You have successfullly trusted this device.',
                                                  message:
                                                      'Device trusted successfully',
                                                  buttonTitle:
                                                      'Go to Dashboard',
                                                  callback: () async {
                                                    context.goNamed(
                                                      DashboardWidget.routeName,
                                                      extra: <String, dynamic>{
                                                        '__transition_info__':
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  cancelCallback: () async {},
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }

                                    return;
                                  }
                                },
                                cancelCallback: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));

                    safeSetState(() {});
                  },
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midRightButtonAction: () async {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
