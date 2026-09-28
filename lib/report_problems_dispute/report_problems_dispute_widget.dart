import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/report_problem_questions_widget.dart';
import '/components/select_source_account_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'report_problems_dispute_model.dart';
export 'report_problems_dispute_model.dart';

class ReportProblemsDisputeWidget extends StatefulWidget {
  const ReportProblemsDisputeWidget({super.key});

  static String routeName = 'ReportProblemsDispute';
  static String routePath = '/reportProblemsDispute';

  @override
  State<ReportProblemsDisputeWidget> createState() =>
      _ReportProblemsDisputeWidgetState();
}

class _ReportProblemsDisputeWidgetState
    extends State<ReportProblemsDisputeWidget> {
  late ReportProblemsDisputeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportProblemsDisputeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      _model.isIssueNotSelected = false;
      _model.isTypeTransactionNotSelected = false;
      _model.isAccountNotSelected = false;
      safeSetState(() {});
    });

    _model.textFieldAmountTextController ??= TextEditingController();
    _model.textFieldAmountFocusNode ??= FocusNode();

    _model.textFieldReferenceNumberTextController ??= TextEditingController();
    _model.textFieldReferenceNumberFocusNode ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Semantics(
                                                  label:
                                                      'reportDispute_selectIssue_component',
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
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
                                                                    ReportProblemQuestionsWidget(
                                                                  reportType:
                                                                      ReportType
                                                                          .DISPUTE,
                                                                  questionType:
                                                                      ReportQuestions
                                                                          .ISSUES,
                                                                  selected:
                                                                      (selectedItem,
                                                                          selectedValue) async {
                                                                    _model
                                                                        .updateSelectedDisputeDisplayStruct(
                                                                      (e) => e
                                                                        ..issue =
                                                                            selectedItem,
                                                                    );
                                                                    _model
                                                                        .updateSelectedDisputeValueStruct(
                                                                      (e) => e
                                                                        ..category =
                                                                            selectedValue,
                                                                    );
                                                                    safeSetState(
                                                                        () {});
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
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFE3E5E5),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .selectedDisputeDisplay
                                                                    ?.issue,
                                                                'What\'s the issue?',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (_model.isIssueNotSelected)
                                                  Text(
                                                    'Issue not selected.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Semantics(
                                                  label:
                                                      'reportDispute_selectAccount_component',
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
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
                                                                    SelectSourceAccountBottomSheetWidget(
                                                                  callBack:
                                                                      (selectedAccount) async {
                                                                    _model
                                                                        .updateSelectedDisputeDisplayStruct(
                                                                      (e) => e
                                                                        ..accountName =
                                                                            selectedAccount.accountName,
                                                                    );
                                                                    _model
                                                                        .updateSelectedDisputeValueStruct(
                                                                      (e) => e
                                                                        ..accountNumber =
                                                                            selectedAccount.fullAccountNumber,
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
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFE3E5E5),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .selectedDisputeDisplay
                                                                    ?.accountName,
                                                                'Choose which Account',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (_model.isAccountNotSelected)
                                                  Text(
                                                    'Account not selected.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Semantics(
                                                  label:
                                                      'reportDispute_selectTransaction_component',
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
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
                                                                    ReportProblemQuestionsWidget(
                                                                  reportType:
                                                                      ReportType
                                                                          .DISPUTE,
                                                                  questionType:
                                                                      ReportQuestions
                                                                          .TRANSACTION_TYPE,
                                                                  selected:
                                                                      (selectedItem,
                                                                          selectedValue) async {
                                                                    _model
                                                                        .updateSelectedDisputeDisplayStruct(
                                                                      (e) => e
                                                                        ..transactionTypeName =
                                                                            selectedItem,
                                                                    );
                                                                    _model
                                                                        .updateSelectedDisputeValueStruct(
                                                                      (e) => e
                                                                        ..transactionType =
                                                                            selectedValue,
                                                                    );
                                                                    safeSetState(
                                                                        () {});
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
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFE3E5E5),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .selectedDisputeDisplay
                                                                    ?.transactionTypeName,
                                                                'What type of transaction?',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (_model
                                                    .isTypeTransactionNotSelected)
                                                  Text(
                                                    'Transaction type not selected.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                            Semantics(
                                              label:
                                                  'reportDispute_selectDate_component',
                                              child: wrapWithModel(
                                                model: _model
                                                    .customDateLabelPickerWidgetModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    CustomDateLabelPickerWidgetWidget(
                                                  label: valueOrDefault<String>(
                                                    dateTimeFormat(
                                                      "dd-MMM-yyyy",
                                                      _model.dateInput,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    'When did it happened?',
                                                  ),
                                                  isDateSelected: true,
                                                  textfieldLabel:
                                                      'When did it happened?',
                                                  callBack: () async {
                                                    final _datePickedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          getCurrentTimestamp,
                                                      firstDate: DateTime(1900),
                                                      lastDate:
                                                          getCurrentTimestamp,
                                                      builder:
                                                          (context, child) {
                                                        return wrapInMaterialDatePickerTheme(
                                                          context,
                                                          child!,
                                                          headerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          headerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          headerTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineLargeFamily,
                                                                    fontSize:
                                                                        32.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .headlineLargeIsCustom,
                                                                  ),
                                                          pickerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          pickerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          selectedDateTimeBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          selectedDateTimeForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          actionButtonForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 24.0,
                                                        );
                                                      },
                                                    );

                                                    if (_datePickedDate !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked =
                                                            DateTime(
                                                          _datePickedDate.year,
                                                          _datePickedDate.month,
                                                          _datePickedDate.day,
                                                        );
                                                      });
                                                    } else if (_model
                                                            .datePicked !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked =
                                                            getCurrentTimestamp;
                                                      });
                                                    }
                                                    _model.dateInput =
                                                        _model.datePicked;
                                                    safeSetState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: Color(0xFFE3E5E5),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Semantics(
                                                label:
                                                    'reportDispute_amopunt_textfield',
                                                child: Container(
                                                  width: 200.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textFieldAmountTextController,
                                                    focusNode: _model
                                                        .textFieldAmountFocusNode,
                                                    autofocus: false,
                                                    enabled: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelText: 'Amount',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMediumIsCustom,
                                                              ),
                                                      hintText:
                                                          'Amount (Optional)',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMediumIsCustom,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFE3E5E5),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    enableInteractiveSelection:
                                                        true,
                                                    validator: _model
                                                        .textFieldAmountTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: Color(0xFFE3E5E5),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Semantics(
                                                label:
                                                    'reportDisputer_reference_textfield',
                                                child: Container(
                                                  width: 200.0,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textFieldReferenceNumberTextController,
                                                    focusNode: _model
                                                        .textFieldReferenceNumberFocusNode,
                                                    autofocus: false,
                                                    enabled: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelText:
                                                          'Reference Number',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMediumIsCustom,
                                                              ),
                                                      hintText:
                                                          'Reference Number (Optional)',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMediumIsCustom,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFE3E5E5),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    enableInteractiveSelection:
                                                        true,
                                                    validator: _model
                                                        .textFieldReferenceNumberTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Semantics(
                                              label:
                                                  'reportDispute_details_textfield',
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController3,
                                                  focusNode:
                                                      _model.textFieldFocusNode,
                                                  autofocus: false,
                                                  enabled: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText:
                                                        'Additional Details',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumIsCustom,
                                                            ),
                                                    hintText:
                                                        'Describe the issue in your own words. . . (Optional)',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumIsCustom,
                                                            ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFE3E5E5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFE3E5E5),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  maxLines: 2,
                                                  maxLength: 100,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .textController3Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Upload Screenshot   ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
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
                                                        TextSpan(
                                                          text: '(optional)',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF7A7A6E),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 56.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x202E521F),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .file_upload_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                          Text(
                                                            'Click to upload file',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 5.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 50.0),
                                  child: Semantics(
                                    label: 'reportDispute_submit_button',
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState()
                                                .reportDisputeRequestDetails =
                                            ReportDisputeRequestStruct();
                                        safeSetState(() {});
                                        if (_model.selectedDisputeValue ==
                                            null) {
                                          _model.isIssueNotSelected = true;
                                          _model.isTypeTransactionNotSelected =
                                              true;
                                          _model.isAccountNotSelected = true;
                                          safeSetState(() {});
                                        } else {
                                          if (_model.selectedDisputeValue
                                                  ?.category ==
                                              '') {
                                            _model.isIssueNotSelected = true;
                                            safeSetState(() {});
                                          } else {
                                            _model.isIssueNotSelected = false;
                                            safeSetState(() {});
                                            if (_model.selectedDisputeValue
                                                    ?.accountNumber ==
                                                '') {
                                              _model.isAccountNotSelected =
                                                  true;
                                              safeSetState(() {});
                                            } else {
                                              _model.isAccountNotSelected =
                                                  false;
                                              safeSetState(() {});
                                              if (_model.selectedDisputeValue
                                                      ?.transactionType ==
                                                  '') {
                                                _model.isTypeTransactionNotSelected =
                                                    true;
                                                safeSetState(() {});
                                              } else {
                                                _model.isTypeTransactionNotSelected =
                                                    false;
                                                safeSetState(() {});
                                                if (_model.selectedDisputeValue
                                                        ?.transactionType ==
                                                    'transfer') {
                                                  _model.transferHistoryResult =
                                                      await WhitebankGroupAPIGroup
                                                          .getTransferHistoryCall
                                                          .call(
                                                    search: _model
                                                        .textFieldReferenceNumberTextController
                                                        .text,
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model.transferHistoryResult
                                                              ?.succeeded ??
                                                          true) &&
                                                      (TransferHistoryModelStruct
                                                              .maybeFromMap((_model
                                                                      .transferHistoryResult
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .items
                                                          .isNotEmpty) &&
                                                      (_model.textFieldReferenceNumberTextController
                                                              .text !=
                                                          '')) {
                                                    _model.apiResultrol =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputesChallengeWithTransactionIDCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      transactionType: _model
                                                          .selectedDisputeValue
                                                          ?.transactionType,
                                                      transactionReference: _model
                                                          .textFieldReferenceNumberTextController
                                                          .text,
                                                      category: _model
                                                          .selectedDisputeValue
                                                          ?.category,
                                                      description: functions
                                                          .reportFormatText(
                                                              'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                        "dd-MMM-yyyy",
                                                        _model.dateInput,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      evidenceUrlsJson: functions
                                                          .reportStringToJson(
                                                              'google.com',
                                                              functions
                                                                  .reportFormatText(
                                                                      'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                                "dd-MMM-yyyy",
                                                                _model
                                                                    .dateInput,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                      idempotencyKey: functions
                                                          .createUuid(),
                                                      transactionId: TransferHistoryModelStruct
                                                              .maybeFromMap((_model
                                                                      .transferHistoryResult
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.items
                                                          .firstOrNull
                                                          ?.id,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model.apiResultrol
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultrol?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .mpin.name) &&
                                                        !isWeb) {
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..challenge = ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResultrol
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge
                                                          ..deviceId =
                                                              FFAppState()
                                                                  .DeviceDetails
                                                                  .deviceId
                                                          ..transactionType = _model
                                                              .selectedDisputeValue
                                                              ?.transactionType
                                                          ..transactionReference =
                                                              _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text
                                                          ..category = _model
                                                              .selectedDisputeValue
                                                              ?.category
                                                          ..description = functions
                                                              .reportFormatText(
                                                                  'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                            "dd-MMM-yyyy",
                                                            _model.dateInput,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')
                                                          ..transactionId =
                                                              TransferHistoryModelStruct
                                                                      .maybeFromMap(
                                                                          (_model.transferHistoryResult?.jsonBody ??
                                                                              ''))
                                                                  ?.items
                                                                  .firstOrNull
                                                                  ?.id,
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .REPORT_DISPUTE,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((_model
                                                                .apiResultrol
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultrol?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb) {
                                                    } else if ((_model
                                                                .apiResultrol
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultrol?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .biometric
                                                                .name) &&
                                                        !isWeb) {
                                                      _model.transferSignatureID =
                                                          await actions
                                                              .createSignature(
                                                        ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultrol
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .challenge,
                                                      );
                                                      _model.transferSigningConfirmID =
                                                          await WhitebankGroupAPIGroup
                                                              .retailReportDisputeChallengeSigningCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge: ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultrol
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                        signature: _model
                                                            .transferSignatureID,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .transferSigningConfirmID
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateReportRefNumStruct(
                                                          (e) => e
                                                            ..referenceNumber =
                                                                ReportDisputeSuccesssStruct.maybeFromMap(
                                                                        (_model.transferSigningConfirmID?.jsonBody ??
                                                                            ''))
                                                                    ?.referenceNumber,
                                                        );
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            ReportSuccessPageWidget
                                                                .routeName);
                                                      } else {
                                                        context.pushNamed(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (ReportDistputeChallengeErrorStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultrol
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.error ==
                                                        'DEVICE_NOT_OWNED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                  message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                              .apiResultrol
                                                                              ?.jsonBody ??
                                                                          ''))!
                                                                      .message,
                                                                  primaryButtonTitle:
                                                                      'Confirm',
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
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  } else {
                                                    _model.apiResultxzg =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputesChallengeCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      transactionType: _model
                                                          .selectedDisputeValue
                                                          ?.transactionType,
                                                      transactionReference: _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text ==
                                                              ''
                                                          ? 'N/A'
                                                          : _model
                                                              .textFieldReferenceNumberTextController
                                                              .text,
                                                      category: _model
                                                          .selectedDisputeValue
                                                          ?.category,
                                                      description: functions
                                                          .reportFormatText(
                                                              'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                        "dd-MMM-yyyy",
                                                        _model.dateInput,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      evidenceUrlsJson: functions
                                                          .reportStringToJson(
                                                              'google.com',
                                                              functions
                                                                  .reportFormatText(
                                                                      'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                                "dd-MMM-yyyy",
                                                                _model
                                                                    .dateInput,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                      idempotencyKey: functions
                                                          .createUuid(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultxzg?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .mpin.name) &&
                                                        !isWeb &&
                                                        (_model.apiResultxzg
                                                                ?.succeeded ??
                                                            true)) {
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..challenge = ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResultxzg
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge,
                                                      );
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..deviceId =
                                                              FFAppState()
                                                                  .DeviceDetails
                                                                  .deviceId
                                                          ..transactionType = _model
                                                              .selectedDisputeValue
                                                              ?.transactionType
                                                          ..transactionReference =
                                                              _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text
                                                          ..category = _model
                                                              .selectedDisputeValue
                                                              ?.category
                                                          ..description = functions
                                                              .reportFormatText(
                                                                  'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                            "dd-MMM-yyyy",
                                                            _model.dateInput,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .REPORT_DISPUTE,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultxzg?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb &&
                                                        (_model.apiResultxzg
                                                                ?.succeeded ??
                                                            true)) {
                                                    } else if ((ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultxzg?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .biometric
                                                                .name) &&
                                                        !isWeb &&
                                                        (_model.apiResultxzg
                                                                ?.succeeded ??
                                                            true)) {
                                                      _model.transferSignature =
                                                          await actions
                                                              .createSignature(
                                                        ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultxzg
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .challenge,
                                                      );
                                                      _model.transferSigningConfirm =
                                                          await WhitebankGroupAPIGroup
                                                              .retailReportDisputeChallengeSigningCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge: ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultxzg
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                        signature: _model
                                                            .transferSignature,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .transferSigningConfirm
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateReportRefNumStruct(
                                                          (e) => e
                                                            ..referenceNumber =
                                                                ReportDisputeSuccesssStruct.maybeFromMap(
                                                                        (_model.transferSigningConfirm?.jsonBody ??
                                                                            ''))
                                                                    ?.referenceNumber,
                                                        );
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            ReportSuccessPageWidget
                                                                .routeName);
                                                      } else {
                                                        context.pushNamed(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (ReportDistputeChallengeErrorStruct
                                                                .maybeFromMap((_model
                                                                        .apiResultxzg
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.error ==
                                                        'DEVICE_NOT_OWNED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                  message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                              .apiResultxzg
                                                                              ?.jsonBody ??
                                                                          ''))!
                                                                      .message,
                                                                  primaryButtonTitle:
                                                                      'Confirm',
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
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  }
                                                } else if (_model
                                                        .selectedDisputeValue
                                                        ?.transactionType ==
                                                    'bill_payment') {
                                                  _model.billsPaymentHistoryAPI =
                                                      await WhitebankGroupAPIGroup
                                                          .retailBillsPaymentHistoryCall
                                                          .call(
                                                    referenceNumber: _model
                                                        .textFieldReferenceNumberTextController
                                                        .text,
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model.billsPaymentHistoryAPI
                                                              ?.succeeded ??
                                                          true) &&
                                                      (BillsPaymentHistoryModelStruct
                                                              .maybeFromMap((_model
                                                                      .billsPaymentHistoryAPI
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .payments
                                                          .isNotEmpty) &&
                                                      (_model.textFieldReferenceNumberTextController
                                                              .text !=
                                                          '')) {
                                                    _model.billsPaymentChallenge =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputesChallengeWithTransactionIDCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      transactionType: _model
                                                          .selectedDisputeValue
                                                          ?.transactionType,
                                                      transactionReference: _model
                                                          .textFieldReferenceNumberTextController
                                                          .text,
                                                      category: _model
                                                          .selectedDisputeValue
                                                          ?.category,
                                                      description: functions
                                                          .reportFormatText(
                                                              'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                        "dd-MMM-yyyy",
                                                        _model.dateInput,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      evidenceUrlsJson: functions
                                                          .reportStringToJson(
                                                              'google.com',
                                                              functions
                                                                  .reportFormatText(
                                                                      'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                                "dd-MMM-yyyy",
                                                                _model
                                                                    .dateInput,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                      idempotencyKey: functions
                                                          .createUuid(),
                                                      transactionId: BillsPaymentHistoryModelStruct
                                                              .maybeFromMap((_model
                                                                      .billsPaymentHistoryAPI
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.payments
                                                          .firstOrNull
                                                          ?.id,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model.billsPaymentChallenge
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.billsPaymentChallenge?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .mpin.name) &&
                                                        !isWeb) {
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..challenge = ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .billsPaymentChallenge
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge,
                                                      );
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..deviceId =
                                                              FFAppState()
                                                                  .DeviceDetails
                                                                  .deviceId
                                                          ..transactionType = _model
                                                              .selectedDisputeValue
                                                              ?.transactionType
                                                          ..transactionReference =
                                                              _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text
                                                          ..category = _model
                                                              .selectedDisputeValue
                                                              ?.category
                                                          ..description = functions
                                                              .reportFormatText(
                                                                  'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                            "dd-MMM-yyyy",
                                                            _model.dateInput,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')
                                                          ..transactionId =
                                                              BillsPaymentHistoryModelStruct
                                                                      .maybeFromMap(
                                                                          (_model.billsPaymentHistoryAPI?.jsonBody ??
                                                                              ''))
                                                                  ?.payments
                                                                  .firstOrNull
                                                                  ?.id,
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .REPORT_DISPUTE,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.billsPaymentChallenge?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb &&
                                                        (_model.billsPaymentChallenge
                                                                ?.succeeded ??
                                                            true)) {
                                                    } else if ((ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.billsPaymentChallenge?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .biometric
                                                                .name) &&
                                                        !isWeb &&
                                                        (_model.billsPaymentChallenge
                                                                ?.succeeded ??
                                                            true)) {
                                                      _model.billsSignatureID =
                                                          await actions
                                                              .createSignature(
                                                        ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .billsPaymentChallenge
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .challenge,
                                                      );
                                                      _model.billsSigningConfirmID =
                                                          await WhitebankGroupAPIGroup
                                                              .retailReportDisputeChallengeSigningCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge: ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .billsPaymentChallenge
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                        signature: _model
                                                            .billsSignatureID,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .billsSigningConfirmID
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateReportRefNumStruct(
                                                          (e) => e
                                                            ..referenceNumber =
                                                                ReportDisputeSuccesssStruct.maybeFromMap(
                                                                        (_model.billsSigningConfirmID?.jsonBody ??
                                                                            ''))
                                                                    ?.referenceNumber,
                                                        );
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            ReportSuccessPageWidget
                                                                .routeName);
                                                      } else {
                                                        context.pushNamed(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (ReportDistputeChallengeErrorStruct
                                                                .maybeFromMap((_model
                                                                        .billsPaymentChallenge
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.error ==
                                                        'DEVICE_NOT_OWNED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                  message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                              .billsPaymentChallenge
                                                                              ?.jsonBody ??
                                                                          ''))!
                                                                      .message,
                                                                  primaryButtonTitle:
                                                                      'Confirm',
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
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  } else {
                                                    _model.billsPaymentChangeNoId =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputesChallengeCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      transactionType: _model
                                                          .selectedDisputeValue
                                                          ?.transactionType,
                                                      transactionReference: _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text ==
                                                              ''
                                                          ? 'N/A'
                                                          : _model
                                                              .textFieldReferenceNumberTextController
                                                              .text,
                                                      category: _model
                                                          .selectedDisputeValue
                                                          ?.category,
                                                      description: functions
                                                          .reportFormatText(
                                                              'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                        "dd-MMM-yyyy",
                                                        _model.dateInput,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      evidenceUrlsJson: functions
                                                          .reportStringToJson(
                                                              'google.com',
                                                              functions
                                                                  .reportFormatText(
                                                                      'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                                "dd-MMM-yyyy",
                                                                _model
                                                                    .dateInput,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                      idempotencyKey: functions
                                                          .createUuid(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model.billsPaymentChangeNoId
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.billsPaymentChangeNoId?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .mpin.name) &&
                                                        !isWeb) {
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..challenge = ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .billsPaymentChangeNoId
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge,
                                                      );
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..deviceId =
                                                              FFAppState()
                                                                  .DeviceDetails
                                                                  .deviceId
                                                          ..transactionType = _model
                                                              .selectedDisputeValue
                                                              ?.transactionType
                                                          ..transactionReference =
                                                              _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text
                                                          ..category = _model
                                                              .selectedDisputeValue
                                                              ?.category
                                                          ..description = functions
                                                              .reportFormatText(
                                                                  'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                            "dd-MMM-yyyy",
                                                            _model.dateInput,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .REPORT_DISPUTE,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((_model
                                                                .billsPaymentChangeNoId
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.billsPaymentChangeNoId?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb) {
                                                    } else if ((_model
                                                                .billsPaymentChangeNoId
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.billsPaymentChangeNoId?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .biometric
                                                                .name) &&
                                                        !isWeb) {
                                                      _model.billsSignatureNoID =
                                                          await actions
                                                              .createSignature(
                                                        ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .billsPaymentChangeNoId
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .challenge,
                                                      );
                                                      _model.billsSigningConfirmNoID =
                                                          await WhitebankGroupAPIGroup
                                                              .retailReportDisputeChallengeSigningCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge: ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .billsPaymentChangeNoId
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                        signature: _model
                                                            .billsSignatureNoID,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .billsSigningConfirmNoID
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateReportRefNumStruct(
                                                          (e) => e
                                                            ..referenceNumber =
                                                                ReportDisputeSuccesssStruct.maybeFromMap(
                                                                        (_model.billsSigningConfirmNoID?.jsonBody ??
                                                                            ''))
                                                                    ?.referenceNumber,
                                                        );
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            ReportSuccessPageWidget
                                                                .routeName);
                                                      } else {
                                                        context.pushNamed(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (ReportDistputeChallengeErrorStruct
                                                                .maybeFromMap((_model
                                                                        .billsPaymentChangeNoId
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.error ==
                                                        'DEVICE_NOT_OWNED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                  message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                              .billsPaymentChangeNoId
                                                                              ?.jsonBody ??
                                                                          ''))!
                                                                      .message,
                                                                  primaryButtonTitle:
                                                                      'Confirm',
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
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  }
                                                } else if (_model
                                                        .selectedDisputeValue
                                                        ?.transactionType ==
                                                    'qr_payment') {
                                                  _model.qrPaymentHistoryAPI =
                                                      await WhitebankGroupAPIGroup
                                                          .retailQRPaymentHistoryCall
                                                          .call(
                                                    referenceNumber: _model
                                                        .textFieldReferenceNumberTextController
                                                        .text,
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model.qrPaymentHistoryAPI
                                                              ?.succeeded ??
                                                          true) &&
                                                      (QRPaymentHistoryModelStruct
                                                              .maybeFromMap((_model
                                                                      .qrPaymentHistoryAPI
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .payments
                                                          .isNotEmpty) &&
                                                      (_model.textFieldReferenceNumberTextController
                                                              .text !=
                                                          '')) {
                                                    _model.qRPaymentChallenge =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputesChallengeWithTransactionIDCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      transactionType: _model
                                                          .selectedDisputeValue
                                                          ?.transactionType,
                                                      transactionReference: _model
                                                          .textFieldReferenceNumberTextController
                                                          .text,
                                                      category: _model
                                                          .selectedDisputeValue
                                                          ?.category,
                                                      description: functions
                                                          .reportFormatText(
                                                              'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                        "dd-MMM-yyyy",
                                                        _model.dateInput,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      evidenceUrlsJson: functions
                                                          .reportStringToJson(
                                                              'google.com',
                                                              functions
                                                                  .reportFormatText(
                                                                      'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                                "dd-MMM-yyyy",
                                                                _model
                                                                    .dateInput,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                      idempotencyKey: functions
                                                          .createUuid(),
                                                      transactionId: QRPaymentHistoryModelStruct
                                                              .maybeFromMap((_model
                                                                      .qrPaymentHistoryAPI
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.payments
                                                          .firstOrNull
                                                          ?.id,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model.qRPaymentChallenge
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.qRPaymentChallenge?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .mpin.name) &&
                                                        !isWeb) {
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..challenge = ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .qRPaymentChallenge
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge,
                                                      );
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..deviceId =
                                                              FFAppState()
                                                                  .DeviceDetails
                                                                  .deviceId
                                                          ..transactionType = _model
                                                              .selectedDisputeValue
                                                              ?.transactionType
                                                          ..transactionReference =
                                                              _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text
                                                          ..category = _model
                                                              .selectedDisputeValue
                                                              ?.category
                                                          ..description = functions
                                                              .reportFormatText(
                                                                  'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                            "dd-MMM-yyyy",
                                                            _model.dateInput,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')
                                                          ..transactionId =
                                                              QRPaymentHistoryModelStruct
                                                                      .maybeFromMap(
                                                                          (_model.qrPaymentHistoryAPI?.jsonBody ??
                                                                              ''))
                                                                  ?.payments
                                                                  .firstOrNull
                                                                  ?.id,
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .REPORT_DISPUTE,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((_model
                                                                .qRPaymentChallenge
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.qRPaymentChallenge?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb) {
                                                    } else if ((_model
                                                                .qRPaymentChallenge
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.qRPaymentChallenge?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .biometric
                                                                .name) &&
                                                        !isWeb) {
                                                      _model.qRSignatureID =
                                                          await actions
                                                              .createSignature(
                                                        ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .qRPaymentChallenge
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .challenge,
                                                      );
                                                      _model.qRSigningConfirmID =
                                                          await WhitebankGroupAPIGroup
                                                              .retailReportDisputeChallengeSigningCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge: ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .qRPaymentChallenge
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                        signature: _model
                                                            .qRSignatureID,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .qRSigningConfirmID
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateReportRefNumStruct(
                                                          (e) => e
                                                            ..referenceNumber =
                                                                ReportDisputeSuccesssStruct.maybeFromMap(
                                                                        (_model.qRSigningConfirmID?.jsonBody ??
                                                                            ''))
                                                                    ?.referenceNumber,
                                                        );
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            ReportSuccessPageWidget
                                                                .routeName);
                                                      } else {
                                                        context.pushNamed(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (ReportDistputeChallengeErrorStruct
                                                                .maybeFromMap((_model
                                                                        .qRPaymentChallenge
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.error ==
                                                        'DEVICE_NOT_OWNED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                  message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                              .qRPaymentChallenge
                                                                              ?.jsonBody ??
                                                                          ''))!
                                                                      .message,
                                                                  primaryButtonTitle:
                                                                      'Confirm',
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
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  } else {
                                                    _model.qRPaymentChangeNoId =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputesChallengeCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      transactionType: _model
                                                          .selectedDisputeValue
                                                          ?.transactionType,
                                                      transactionReference: _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text ==
                                                              ''
                                                          ? 'N/A'
                                                          : _model
                                                              .textFieldReferenceNumberTextController
                                                              .text,
                                                      category: _model
                                                          .selectedDisputeValue
                                                          ?.category,
                                                      description: functions
                                                          .reportFormatText(
                                                              'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                        "dd-MMM-yyyy",
                                                        _model.dateInput,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      evidenceUrlsJson: functions
                                                          .reportStringToJson(
                                                              'google.com',
                                                              functions
                                                                  .reportFormatText(
                                                                      'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                                "dd-MMM-yyyy",
                                                                _model
                                                                    .dateInput,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                      idempotencyKey: functions
                                                          .createUuid(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model.qRPaymentChangeNoId
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.qRPaymentChangeNoId?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .mpin.name) &&
                                                        !isWeb) {
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..challenge = ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .qRPaymentChangeNoId
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge,
                                                      );
                                                      safeSetState(() {});
                                                      FFAppState()
                                                          .updateReportDisputeRequestDetailsStruct(
                                                        (e) => e
                                                          ..deviceId =
                                                              FFAppState()
                                                                  .DeviceDetails
                                                                  .deviceId
                                                          ..transactionType = _model
                                                              .selectedDisputeValue
                                                              ?.transactionType
                                                          ..transactionReference =
                                                              _model
                                                                  .textFieldReferenceNumberTextController
                                                                  .text
                                                          ..category = _model
                                                              .selectedDisputeValue
                                                              ?.category
                                                          ..description = functions
                                                              .reportFormatText(
                                                                  'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                            "dd-MMM-yyyy",
                                                            _model.dateInput,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        MPINPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'usage':
                                                              serializeParam(
                                                            MpinUsage
                                                                .REPORT_DISPUTE,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((_model
                                                                .qRPaymentChangeNoId
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.qRPaymentChangeNoId?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) &&
                                                        isWeb) {
                                                    } else if ((_model
                                                                .qRPaymentChangeNoId
                                                                ?.succeeded ??
                                                            true) &&
                                                        (ReportDisputeChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.qRPaymentChangeNoId?.jsonBody ??
                                                                            ''))
                                                                ?.preferredMethod ==
                                                            SigningAvailableMethods
                                                                .biometric
                                                                .name) &&
                                                        !isWeb) {
                                                      _model.qRSignatureNoID =
                                                          await actions
                                                              .createSignature(
                                                        ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .qRPaymentChangeNoId
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .challenge,
                                                      );
                                                      _model.qRSigningConfirmNoID =
                                                          await WhitebankGroupAPIGroup
                                                              .retailReportDisputeChallengeSigningCall
                                                              .call(
                                                        method:
                                                            SigningAvailableMethods
                                                                .biometric.name,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        challenge: ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .qRPaymentChangeNoId
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                        signature: _model
                                                            .qRSignatureNoID,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      if ((_model
                                                              .qRSigningConfirmNoID
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateReportRefNumStruct(
                                                          (e) => e
                                                            ..referenceNumber =
                                                                ReportDisputeSuccesssStruct.maybeFromMap(
                                                                        (_model.qRSigningConfirmNoID?.jsonBody ??
                                                                            ''))
                                                                    ?.referenceNumber,
                                                        );
                                                        safeSetState(() {});

                                                        context.pushNamed(
                                                            ReportSuccessPageWidget
                                                                .routeName);
                                                      } else {
                                                        context.pushNamed(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (ReportDistputeChallengeErrorStruct
                                                                .maybeFromMap((_model
                                                                        .qRPaymentChangeNoId
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.error ==
                                                        'DEVICE_NOT_OWNED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
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
                                                                  message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                              .qRPaymentChangeNoId
                                                                              ?.jsonBody ??
                                                                          ''))!
                                                                      .message,
                                                                  primaryButtonTitle:
                                                                      'Confirm',
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
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  }
                                                } else if (_model
                                                        .selectedDisputeValue
                                                        ?.transactionType ==
                                                    'other') {
                                                  _model.otherReport =
                                                      await WhitebankGroupAPIGroup
                                                          .retailReportDisputesChallengeCall
                                                          .call(
                                                    deviceId: FFAppState()
                                                        .DeviceDetails
                                                        .deviceId,
                                                    transactionType: _model
                                                        .selectedDisputeValue
                                                        ?.transactionType,
                                                    transactionReference: _model
                                                                .textFieldReferenceNumberTextController
                                                                .text ==
                                                            ''
                                                        ? 'N/A'
                                                        : _model
                                                            .textFieldReferenceNumberTextController
                                                            .text,
                                                    category: _model
                                                        .selectedDisputeValue
                                                        ?.category,
                                                    description: functions
                                                        .reportFormatText(
                                                            'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                      "dd-MMM-yyyy",
                                                      _model.dateInput,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                    evidenceUrlsJson: functions
                                                        .reportStringToJson(
                                                            'google.com',
                                                            functions
                                                                .reportFormatText(
                                                                    'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                              "dd-MMM-yyyy",
                                                              _model.dateInput,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}')),
                                                    idempotencyKey:
                                                        functions.createUuid(),
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                    accessToken:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model.otherReport
                                                              ?.succeeded ??
                                                          true) &&
                                                      (ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .otherReport
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.preferredMethod ==
                                                          SigningAvailableMethods
                                                              .mpin.name) &&
                                                      !isWeb) {
                                                    FFAppState()
                                                        .updateReportDisputeRequestDetailsStruct(
                                                      (e) => e
                                                        ..challenge = ReportDisputeChallengeResponseStruct
                                                                .maybeFromMap((_model
                                                                        .otherReport
                                                                        ?.jsonBody ??
                                                                    ''))
                                                            ?.challenge,
                                                    );
                                                    safeSetState(() {});
                                                    FFAppState()
                                                        .updateReportDisputeRequestDetailsStruct(
                                                      (e) => e
                                                        ..deviceId =
                                                            FFAppState()
                                                                .DeviceDetails
                                                                .deviceId
                                                        ..transactionType = _model
                                                            .selectedDisputeValue
                                                            ?.transactionType
                                                        ..transactionReference =
                                                            _model.textFieldReferenceNumberTextController
                                                                        .text ==
                                                                    ''
                                                                ? 'N/A'
                                                                : _model
                                                                    .textFieldReferenceNumberTextController
                                                                    .text
                                                        ..category = _model
                                                            .selectedDisputeValue
                                                            ?.category
                                                        ..description = functions
                                                            .reportFormatText(
                                                                'Issue: ${_model.selectedDisputeDisplay?.issue}\\nAccount Affected: ${_model.selectedDisputeDisplay?.accountName}, ${_model.selectedDisputeValue?.accountNumber}\\nTransaction Type: ${_model.selectedDisputeDisplay?.transactionTypeName}\\nDate happened: ${dateTimeFormat(
                                                          "dd-MMM-yyyy",
                                                          _model.dateInput,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        )}\\nAmount: ${_model.textFieldAmountTextController.text}\\nReference Number: ${_model.textFieldReferenceNumberTextController.text}\\nAdditional: ${_model.textController3.text}'),
                                                    );
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      MPINPageWidget.routeName,
                                                      queryParameters: {
                                                        'usage': serializeParam(
                                                          MpinUsage
                                                              .REPORT_DISPUTE,
                                                          ParamType.Enum,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else if ((_model.otherReport
                                                              ?.succeeded ??
                                                          true) &&
                                                      (ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .otherReport
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.preferredMethod ==
                                                          SigningAvailableMethods
                                                              .passkey.name) &&
                                                      isWeb) {
                                                  } else if ((_model.otherReport
                                                              ?.succeeded ??
                                                          true) &&
                                                      (ReportDisputeChallengeResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .otherReport
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.preferredMethod ==
                                                          SigningAvailableMethods
                                                              .biometric
                                                              .name) &&
                                                      !isWeb) {
                                                    _model.otherReportSignatureNoID =
                                                        await actions
                                                            .createSignature(
                                                      ReportDisputeChallengeResponseStruct
                                                              .maybeFromMap((_model
                                                                      .otherReport
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .challenge,
                                                    );
                                                    _model.otherSigningConfirmNoID =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputeChallengeSigningCall
                                                            .call(
                                                      method:
                                                          SigningAvailableMethods
                                                              .biometric.name,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge: ReportDisputeChallengeResponseStruct
                                                              .maybeFromMap((_model
                                                                      .otherReport
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.challenge,
                                                      signature: _model
                                                          .otherReportSignatureNoID,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    if ((_model
                                                            .otherSigningConfirmNoID
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                          .updateReportRefNumStruct(
                                                        (e) => e
                                                          ..referenceNumber = ReportDisputeSuccesssStruct
                                                                  .maybeFromMap((_model
                                                                          .otherSigningConfirmNoID
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.referenceNumber,
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                          ReportSuccessPageWidget
                                                              .routeName);
                                                    } else {
                                                      context.pushNamed(
                                                        ReportDisputeFailedPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  } else if (ReportDistputeChallengeErrorStruct
                                                              .maybeFromMap((_model
                                                                      .otherReport
                                                                      ?.jsonBody ??
                                                                  ''))
                                                          ?.error ==
                                                      'DEVICE_NOT_OWNED') {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: WebViewAware(
                                                            child:
                                                                GestureDetector(
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
                                                                message: ReportDistputeChallengeErrorStruct.maybeFromMap((_model
                                                                            .otherReport
                                                                            ?.jsonBody ??
                                                                        ''))!
                                                                    .message,
                                                                primaryButtonTitle:
                                                                    'Confirm',
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
                                                  } else {
                                                    context.pushNamed(
                                                      ReportDisputeFailedPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'isLocked':
                                                            serializeParam(
                                                          false,
                                                          ParamType.bool,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  }
                                                } else {
                                                  _model.isTypeTransactionNotSelected =
                                                      true;
                                                  safeSetState(() {});
                                                }
                                              }
                                            }
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Submit Dispute',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              fontSize: 14.0,
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
                            pageIndex: 11,
                            shouldHideBottomNav: false,
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
                        isTitleLeftAlign: true,
                        titleLeftAlign: 'Dispute a Transaction',
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
                        pageTitle: 'Dispute a Transaction',
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
