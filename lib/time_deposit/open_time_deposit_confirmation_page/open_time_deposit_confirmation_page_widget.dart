import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'open_time_deposit_confirmation_page_model.dart';
export 'open_time_deposit_confirmation_page_model.dart';

class OpenTimeDepositConfirmationPageWidget extends StatefulWidget {
  const OpenTimeDepositConfirmationPageWidget({super.key});

  static String routeName = 'OpenTimeDepositConfirmationPage';
  static String routePath = '/openTimeDepositConfirmationPage';

  @override
  State<OpenTimeDepositConfirmationPageWidget> createState() =>
      _OpenTimeDepositConfirmationPageWidgetState();
}

class _OpenTimeDepositConfirmationPageWidgetState
    extends State<OpenTimeDepositConfirmationPageWidget> {
  late OpenTimeDepositConfirmationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenTimeDepositConfirmationPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
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
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
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
                          return FFAppConstants.WebAppBarHeight;
                        } else {
                          return FFAppConstants.WebAppBarHeight;
                        }
                      }(),
                      72.0,
                    ),
                    0.0,
                    0.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          titleLeftAlign: 'Open Time Deposit',
                          rightButtonAction: () async {},
                          leftButtonAction: () async {
                            context.safePop();
                          },
                          midRightButtonAction: () async {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF013373),
                                FlutterFlowTheme.of(context).primary
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Semantics(
                                    label:
                                        'open_time_deposit_review_product_name_text',
                                    child: Text(
                                      'REGULAR TIME DEPOSIT',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFFD9E1EA),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Semantics(
                                    label:
                                        'open_time_deposit_review_deposit_amount_text',
                                    child: Text(
                                      valueOrDefault<String>(
                                        '${FFAppState().openTimeDepositState.currency} ${formatNumber(
                                          FFAppState()
                                              .openTimeDepositState
                                              .principal,
                                          formatType: FormatType.decimal,
                                          decimalType:
                                              DecimalType.periodDecimal,
                                        )}',
                                        '₱ 50,000.00',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 34.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Semantics(
                                        label:
                                            'open_time_deposit_review_term_label',
                                        child: Text(
                                          'Term',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFFD9E2EA),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Semantics(
                                        label:
                                            'open_time_deposit_review_term_value_text',
                                        child: Text(
                                          FFAppState()
                                              .openTimeDepositState
                                              .displayTermLong,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Semantics(
                                        label:
                                            'open_time_deposit_review_interest_rate_label',
                                        child: Text(
                                          'Rate (p.a.)',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFFD9E2EA),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Semantics(
                                        label:
                                            'open_time_deposit_review_interest_rate_value_text',
                                        child: Text(
                                          FFAppState()
                                              .openTimeDepositState
                                              .displayNetInterest,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Semantics(
                                      label:
                                          'open_time_deposit_review_maturity_date_label',
                                      child: Text(
                                        'Maturity Date',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFFD9E2EA),
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Semantics(
                                      label:
                                          'open_time_deposit_review_maturity_date_value_text',
                                      child: Text(
                                        FFAppState()
                                            .openTimeDepositState
                                            .displayMaturityDate,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 1.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'EARNINGS CALCULATION',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF027377),
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Semantics(
                          label:
                              'open_time_deposit_review_funding_details_section',
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0x00F0F8F8),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Color(0xFFE3EAEB),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_from_account_label',
                                          child: Text(
                                            'From account',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF5C6466),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_from_account_value_text',
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .selectedAccount
                                                  .accountType
                                                  ?.name,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1A2536),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: Color(0xFFF5F5F5),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_available_balance_label',
                                          child: Text(
                                            'Available balance',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF5C6466),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_available_balance_value_text',
                                          child: Text(
                                            '${FFAppState().selectedAccount.currency}${formatNumber(
                                              FFAppState()
                                                  .selectedAccount
                                                  .availableBalance,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                            )}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1A2536),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: Color(0xFFF5F5F5),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_opening_date_label',
                                          child: Text(
                                            'Opens',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF5C6466),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_opening_date_value_text',
                                          child: Text(
                                            'Real-time, today',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1A2536),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'EARNINGS CALCULATION',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF027377),
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Semantics(
                          label:
                              'open_time_deposit_review_earnings_calculation_section',
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0x00F0F8F8),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Color(0xFFE3EAEB),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Gross interest',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF5C6466),
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_gross_interest_value_text',
                                          child: Text(
                                            FFAppState()
                                                .openTimeDepositState
                                                .displayGrossInterest,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1A2536),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: Color(0xFFF5F5F5),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Withholding tax (20%)',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF5C6466),
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        Semantics(
                                          label:
                                              'open_time_deposit_review_withholding_tax_value_text',
                                          child: Text(
                                            FFAppState()
                                                .openTimeDepositState
                                                .displayWithholdingTax,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF1A2536),
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: Color(0xFFF5F5F5),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Net interest',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF5C6466),
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        Text(
                                          FFAppState()
                                              .openTimeDepositState
                                              .displayNetInterest,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF1A2536),
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF7FCFC),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        bottomRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Maturity value',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF027377),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          Semantics(
                                            label:
                                                'open_time_deposit_review_maturity_value_text',
                                            child: Text(
                                              FFAppState()
                                                  .openTimeDepositState
                                                  .displayMaturityValue,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF1A2536),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
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
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 40.0, 16.0, 48.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Semantics(
                                label:
                                    'open_time_deposit_review_terms_checkbox',
                                child: Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryButton,
                                  ),
                                  child: Checkbox(
                                    value: _model.policyCheckboxValue ??= false,
                                    onChanged: (newValue) async {
                                      safeSetState(() => _model
                                          .policyCheckboxValue = newValue!);
                                    },
                                    side: (FlutterFlowTheme.of(context)
                                                .primaryButton !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryButton,
                                          )
                                        : null,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryButton,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (!isWeb) {
                                    context.pushNamed(
                                      WebViewPageWidget.routeName,
                                      queryParameters: {
                                        'url': serializeParam(
                                          'https://pbb.com.ph/data-privacy',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    return;
                                  } else {
                                    await launchURL(
                                        FFAppConstants.dataPrivacyPolicyUrl);
                                    return;
                                  }
                                },
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            'By logging in or registering, you agree to our ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .neutral7,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Terms of Service',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryLabel,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ', ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .neutral7,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Privacy Policy ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryLabel,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'and ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .neutral7,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Personal Data Protection Policy',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryLabel,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 54.0),
                        child: Semantics(
                          label: 'open_time_deposit_review_continue_button',
                          child: wrapWithModel(
                            model: _model.primaryButtonComponentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: PrimaryButtonComponentWidget(
                              buttonTitle: 'Open Time Deposit',
                              buttonWidth: double.infinity,
                              buttonHeight: 48.0,
                              buttonColor: FlutterFlowTheme.of(context).primary,
                              textColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              borderRadius: 16.0,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              childPadding: 16.0,
                              buttonDisabledOption: false,
                              callback: () async {
                                _model.apiResulthdh =
                                    await WhitebankGroupAPIGroup
                                        .retailTimeDepositsChallengeCall
                                        .call(
                                  productCode: FFAppState()
                                      .openTimeDepositState
                                      .productCode,
                                  amount: FFAppState()
                                      .openTimeDepositState
                                      .principal,
                                  termDays: functions.stringToInt(
                                      (String value) {
                                    return value.replaceAll(
                                        RegExp(r'[^0-9]'), '');
                                  }(FFAppState()
                                          .openTimeDepositState
                                          .displayTerm)),
                                  sourceAccountNumber: FFAppState()
                                      .selectedAccount
                                      .fullAccountNumber,
                                  deviceId: FFAppState().DeviceDetails.deviceId,
                                  idempotencyKey: functions.createUuid(),
                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                  accessToken: currentAuthenticationToken,
                                );

                                if ((_model.apiResulthdh?.succeeded ?? true)) {
                                  FFAppState().updateOpenTimeDepositStateStruct(
                                    (e) => e
                                      ..openingID =
                                          TimeDepositChallengeResponseStruct
                                                  .maybeFromMap((_model
                                                          .apiResulthdh
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.openingId,
                                  );
                                  safeSetState(() {});
                                  if ((TimeDepositChallengeResponseStruct
                                                  .maybeFromMap((_model
                                                          .apiResulthdh
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.preferredMethod ==
                                          SigningAvailableMethods.mpin.name) &&
                                      !isWeb) {
                                    FFAppState()
                                        .updateOpenTimeDepositStateStruct(
                                      (e) => e
                                        ..openingID =
                                            TimeDepositChallengeResponseStruct
                                                    .maybeFromMap((_model
                                                            .apiResulthdh
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.openingId,
                                    );
                                    safeSetState(() {});

                                    context.pushNamed(
                                      MPINPageWidget.routeName,
                                      queryParameters: {
                                        'challenge': serializeParam(
                                          TimeDepositChallengeResponseStruct
                                                  .maybeFromMap((_model
                                                          .apiResulthdh
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.challenge,
                                          ParamType.String,
                                        ),
                                        'mpinHash': serializeParam(
                                          '',
                                          ParamType.String,
                                        ),
                                        'usage': serializeParam(
                                          MpinUsage.TIME_DEPOSIT,
                                          ParamType.Enum,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else if ((TimeDepositChallengeResponseStruct
                                                  .maybeFromMap((_model
                                                          .apiResulthdh
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.availableMethods
                                              .contains(SigningAvailableMethods
                                                  .passkey.name) ==
                                          true) &&
                                      isWeb) {
                                    //
                                    // /// SAMPLE
                                    // {
                                    //   "transactionType": "fund_transfer",
                                    //   "transactionId": "550e8400-e29b-41d4-a716-446655440000",
                                    //   "amount": 1500,
                                    //   "currency": "PHP",
                                    //   "context": "****5678"
                                    // }
                                    _model.signingPKPayload =
                                        await action_blocks
                                            .createConfirmSigningPKPayload(
                                      context,
                                      stepupOptionsPayload:
                                          WBStepupAuthOptionsPayloadStruct(
                                        transactionType: PasskeyTransactionType
                                            .time_deposit.name,
                                        transactionId: FFAppState()
                                            .openTimeDepositState
                                            .openingID,
                                        amount: FFAppState()
                                            .openTimeDepositState
                                            .principal,
                                        currency: FFAppState()
                                            .openTimeDepositState
                                            .currency,
                                      ),
                                    );
                                    _model.tDConfirmOutputPasskey =
                                        await WhitebankGroupAPIGroup
                                            .retailTimeDepositsConfirmPasskeyCall
                                            .call(
                                      requestBodyJson: _model
                                          .signingPKPayload?.data
                                          .toMap(),
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                      fmsSessionId:
                                          currentUserData?.fmsSessionId,
                                    );

                                    if ((_model.tDConfirmOutputPasskey
                                            ?.succeeded ??
                                        true)) {
                                      FFAppState()
                                              .TimeDepositSuccessOutputState =
                                          TimeDepositSuccessOutputStruct
                                              .maybeFromMap((_model
                                                      .tDConfirmOutputPasskey
                                                      ?.jsonBody ??
                                                  ''))!;
                                      safeSetState(() {});

                                      context.pushNamed(
                                          TimeDepositSuccessPageWidget
                                              .routeName);
                                    } else {
                                      context.goNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else {
                                    _model.createSignatureOutputV2 =
                                        await actions.createSignature(
                                      TimeDepositChallengeResponseStruct
                                              .maybeFromMap((_model
                                                      .apiResulthdh?.jsonBody ??
                                                  ''))!
                                          .challenge,
                                    );
                                    _model.tDConfirmOutput =
                                        await WhitebankGroupAPIGroup
                                            .retailTimeDepositsConfirmCall
                                            .call(
                                      openingId: FFAppState()
                                          .openTimeDepositState
                                          .openingID,
                                      method: SigningAvailableMethods
                                          .biometric.name,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      challenge:
                                          TimeDepositChallengeResponseStruct
                                                  .maybeFromMap((_model
                                                          .apiResulthdh
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.challenge,
                                      signature: _model.createSignatureOutputV2,
                                      mpin: FFAppState().pinInput,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      fmsSessionId:
                                          currentUserData?.fmsSessionId,
                                    );

                                    if ((_model.tDConfirmOutput?.succeeded ??
                                        true)) {
                                      FFAppState()
                                              .TimeDepositSuccessOutputState =
                                          TimeDepositSuccessOutputStruct
                                              .maybeFromMap((_model
                                                      .tDConfirmOutput
                                                      ?.jsonBody ??
                                                  ''))!;
                                      safeSetState(() {});

                                      context.pushNamed(
                                          TimeDepositSuccessPageWidget
                                              .routeName);
                                    } else {
                                      context.goNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  }
                                } else {
                                  context.goNamed(
                                    PayTransferFailedPageWidget.routeName,
                                    queryParameters: {
                                      'route': serializeParam(
                                        'transfer',
                                        ParamType.String,
                                      ),
                                      'isLocked': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                  );
                                }

                                safeSetState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
          ],
        ),
      ),
    );
  }
}
