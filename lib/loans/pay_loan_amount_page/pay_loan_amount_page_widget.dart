import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/loans/loan_components/pay_loan_confirmation_bottom_sheet/pay_loan_confirmation_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pay_loan_amount_page_model.dart';
export 'pay_loan_amount_page_model.dart';

/// Pay Loan page
class PayLoanAmountPageWidget extends StatefulWidget {
  const PayLoanAmountPageWidget({
    super.key,
    this.submitParams,
  });

  /// Pay bills request body.
  final WBBPSubmitParametersStruct? submitParams;

  static String routeName = 'PayLoanAmountPage';
  static String routePath = '/payLoanAmountPage';

  @override
  State<PayLoanAmountPageWidget> createState() =>
      _PayLoanAmountPageWidgetState();
}

class _PayLoanAmountPageWidgetState extends State<PayLoanAmountPageWidget>
    with TickerProviderStateMixin {
  late PayLoanAmountPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayLoanAmountPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      _model.enteredAmount =
          FFAppState().GlobalLoanInitialPaymentDetails.amount;
      safeSetState(() {});
    });

    _model.remarksTextFieldTextController ??= TextEditingController();
    _model.remarksTextFieldFocusNode ??= FocusNode();

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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child: RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'How much would you like to \npay to ',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text: FFAppState()
                                                                        .GlobalLoanInitialPaymentDetails
                                                                        .loanType,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF009A9F),
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: '?',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryGradient,
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleMediumIsCustom,
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
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
                                                              Icon(
                                                                Icons
                                                                    .account_balance_wallet_outlined,
                                                                color: Color(
                                                                    0xFF99A1AF),
                                                                size: 24.0,
                                                              ),
                                                              Text(
                                                                'Available Balance',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: Color(
                                                                          0xFF575757),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                          Text(
                                                            '${valueOrDefault<String>(
                                                              FFAppState()
                                                                  .payingSourceAccountAppState
                                                                  .currency,
                                                              'PHP',
                                                            )} ${valueOrDefault<String>(
                                                              formatNumber(
                                                                FFAppState()
                                                                    .payingSourceAccountAppState
                                                                    .availableBalance,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .periodDecimal,
                                                              ),
                                                              '0.00',
                                                            )}',
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF252525),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF5F5F5),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Semantics(
                                                          label:
                                                              'payLoanAmount_amountField_component',
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                width: 320.0,
                                                                height: 68.0,
                                                                child: custom_widgets
                                                                    .ExpandingAmountInput(
                                                                  width: 320.0,
                                                                  height: 68.0,
                                                                  initialValue:
                                                                      '',
                                                                  fontSize:
                                                                      12.0,
                                                                  externalValue:
                                                                      _model
                                                                          .enteredAmount,
                                                                  isDisabled:
                                                                      true,
                                                                  onChanged:
                                                                      (value) async {
                                                                    _model.enteredAmount =
                                                                        valueOrDefault<
                                                                            double>(
                                                                      value,
                                                                      0.0,
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Or choose a quick amount',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF575757),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Semantics(
                                                              label:
                                                                  'payLoanAmount_quickAmount_button',
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                options: [
                                                                  ChipData(
                                                                      '₱50'),
                                                                  ChipData(
                                                                      '₱100'),
                                                                  ChipData(
                                                                      '₱200'),
                                                                  ChipData(
                                                                      '₱500')
                                                                ],
                                                                onChanged: true
                                                                    ? null
                                                                    : (val) async {
                                                                        safeSetState(() =>
                                                                            _model.quickAmountChoiceChipsValue =
                                                                                val?.firstOrNull);
                                                                        if (_model.quickAmountChoiceChipsValue ==
                                                                            '₱50') {
                                                                          _model
                                                                              .updateSubmitBodyStruct(
                                                                            (e) => e
                                                                              ..amount = 50.0
                                                                              ..currency = 'PHP',
                                                                          );
                                                                          _model.enteredAmount =
                                                                              50.0;
                                                                          safeSetState(
                                                                              () {});
                                                                        } else if (_model.quickAmountChoiceChipsValue ==
                                                                            '₱100') {
                                                                          _model
                                                                              .updateSubmitBodyStruct(
                                                                            (e) => e
                                                                              ..amount = 100.0
                                                                              ..currency = 'PHP',
                                                                          );
                                                                          _model.enteredAmount =
                                                                              100.0;
                                                                          safeSetState(
                                                                              () {});
                                                                        } else if (_model.quickAmountChoiceChipsValue ==
                                                                            '₱200') {
                                                                          _model
                                                                              .updateSubmitBodyStruct(
                                                                            (e) => e
                                                                              ..amount = 200.0
                                                                              ..currency = 'PHP',
                                                                          );
                                                                          _model.enteredAmount =
                                                                              200.0;
                                                                          safeSetState(
                                                                              () {});
                                                                        } else if (_model.quickAmountChoiceChipsValue ==
                                                                            '₱500') {
                                                                          _model
                                                                              .updateSubmitBodyStruct(
                                                                            (e) => e
                                                                              ..amount = 500.0
                                                                              ..currency = 'PHP',
                                                                          );
                                                                          _model.enteredAmount =
                                                                              500.0;
                                                                          safeSetState(
                                                                              () {});
                                                                        }

                                                                        if (_model.enteredAmount! >
                                                                            FFAppState().payingSourceAccountAppState.availableBalance) {
                                                                          _model.amountFieldError =
                                                                              'You do not have enough balance to complete this payment.';
                                                                          safeSetState(
                                                                              () {});
                                                                          return;
                                                                        } else {
                                                                          if (_model.enteredAmount! >
                                                                              FFAppState().payingUserLimits.remaining) {
                                                                            _model.amountFieldError =
                                                                                'The amount you entered exceeds your remaining daily limit.';
                                                                            safeSetState(() {});
                                                                          } else {
                                                                            _model.amountFieldError =
                                                                                null;
                                                                            safeSetState(() {});
                                                                          }

                                                                          return;
                                                                        }
                                                                      },
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                  iconColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                  iconSize:
                                                                      14.0,
                                                                  labelPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          10.0),
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Color(
                                                                            0xFF364153),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  iconSize:
                                                                      14.0,
                                                                  labelPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          10.0,
                                                                          16.0,
                                                                          10.0),
                                                                  elevation:
                                                                      0.0,
                                                                  borderColor:
                                                                      Color(
                                                                          0xFFE5E7EB),
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                chipSpacing:
                                                                    8.0,
                                                                rowSpacing: 8.0,
                                                                multiselect:
                                                                    false,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .center,
                                                                controller: _model
                                                                        .quickAmountChoiceChipsValueController ??=
                                                                    FormFieldController<
                                                                        List<
                                                                            String>>(
                                                                  [],
                                                                ),
                                                                wrapped: true,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 200.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .remarksTextFieldTextController,
                                                                focusNode: _model
                                                                    .remarksTextFieldFocusNode,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.remarksTextFieldTextController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          2000),
                                                                  () async {
                                                                    _model
                                                                        .updateSubmitBodyStruct(
                                                                      (e) => e
                                                                        ..remarks = _model
                                                                            .remarksTextFieldTextController
                                                                            .text,
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                ),
                                                                onFieldSubmitted:
                                                                    (_) async {
                                                                  _model
                                                                      .updateSubmitBodyStruct(
                                                                    (e) => e
                                                                      ..remarks = _model
                                                                          .remarksTextFieldTextController
                                                                          .text,
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                autofocus:
                                                                    false,
                                                                enabled: false,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Remarks',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelLargeFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        color: Color(
                                                                            0xFF72777A),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .neutral10,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF676666),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .base0,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          17.0,
                                                                          12.0,
                                                                          17.0),
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .formElementHover,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                                maxLines: null,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                enableInteractiveSelection:
                                                                    true,
                                                                validator: _model
                                                                    .remarksTextFieldTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 20.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Builder(
                                              builder: (context) => Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 60.0),
                                                child: Semantics(
                                                  label:
                                                      'payLoanAmount_pay_button',
                                                  child: FFButtonWidget(
                                                    onPressed: ((_model
                                                                    .submitBody
                                                                    ?.amount ==
                                                                0.0) ||
                                                            (_model.amountFieldError !=
                                                                    null &&
                                                                _model.amountFieldError !=
                                                                    ''))
                                                        ? null
                                                        : () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              context: context,
                                                              builder:
                                                                  (context) {
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
                                                                          PayLoanConfirmationBottomSheetWidget(
                                                                        loanInitialPaymentDetails:
                                                                            FFAppState().GlobalLoanInitialPaymentDetails,
                                                                        callBack:
                                                                            () async {
                                                                          FFAppState()
                                                                              .updateGlobalLoanInitialPaymentDetailsStruct(
                                                                            (e) => e
                                                                              ..idempotencyKey = functions.createUuid(),
                                                                          );
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.initialLoanPaymentResult = await WhitebankGroupAPIGroup
                                                                              .retailLoansPaymentCall
                                                                              .call(
                                                                            amount:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.amount,
                                                                            sourceAccountNumber:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.sourceAccountNumber,
                                                                            sourceAccountName:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.sourceAccountName,
                                                                            currency:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.currency,
                                                                            remarks:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.remarks,
                                                                            idempotencyKey:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.idempotencyKey,
                                                                            baseURL:
                                                                                FFDevEnvironmentValues().WBPBASEURL,
                                                                            loanAccountNumber:
                                                                                FFAppState().GlobalLoanInitialPaymentDetails.loanAccountNumber,
                                                                            accessToken:
                                                                                currentAuthenticationToken,
                                                                          );

                                                                          if ((_model.initialLoanPaymentResult?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().updateGlobalLoanInitialPaymentDetailsStruct(
                                                                              (e) => e..paymentID = LoanInitialPaymentResponseStruct.maybeFromMap((_model.initialLoanPaymentResult?.jsonBody ?? ''))?.id,
                                                                            );
                                                                            safeSetState(() {});
                                                                            _model.loanSigningChallengeResponse =
                                                                                await WhitebankGroupAPIGroup.retailLoanPaymentSigningChallengeCall.call(
                                                                              deviceId: FFAppState().DeviceDetails.deviceId,
                                                                              loanAccountNumber: FFAppState().GlobalLoanInitialPaymentDetails.loanAccountNumber,
                                                                              paymentId: LoanInitialPaymentResponseStruct.maybeFromMap((_model.initialLoanPaymentResult?.jsonBody ?? ''))?.id,
                                                                              baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                              accessToken: currentAuthenticationToken,
                                                                            );

                                                                            if ((WhitebankGroupAPIGroup.retailLoanPaymentSigningChallengeCall.preferredMethod(
                                                                                      (_model.loanSigningChallengeResponse?.jsonBody ?? ''),
                                                                                    ) ==
                                                                                    SigningAvailableMethods.passkey.name) &&
                                                                                isWeb) {
                                                                              _model.createSigningPKPayload = await action_blocks.createConfirmSigningPKPayload(
                                                                                context,
                                                                                stepupOptionsPayload: WBStepupAuthOptionsPayloadStruct(
                                                                                  transactionType: PasskeyTransactionType.loan_payment.name,
                                                                                  transactionId: FFAppState().GlobalLoanInitialPaymentDetails.paymentID,
                                                                                  amount: FFAppState().GlobalLoanInitialPaymentDetails.amount,
                                                                                  currency: FFAppState().GlobalLoanInitialPaymentDetails.currency,
                                                                                ),
                                                                              );
                                                                              if (_model.createSigningPKPayload!.success) {
                                                                                _model.loanConfirmPaymentResponse = await WhitebankGroupAPIGroup.retailLoanConfirmPaymentPasskeyCall.call(
                                                                                  loanAccountNumber: FFAppState().GlobalLoanInitialPaymentDetails.loanAccountNumber,
                                                                                  paymentId: FFAppState().GlobalLoanInitialPaymentDetails.paymentID,
                                                                                  requestBodyJson: _model.createSigningPKPayload?.data.toMap(),
                                                                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                  accessToken: currentAuthenticationToken,
                                                                                  fmsSessionId: currentUserData?.fmsSessionId,
                                                                                );

                                                                                if ((_model.loanConfirmPaymentResponse?.succeeded ?? true)) {
                                                                                  FFAppState().GlobalLoanPaymentConfirmation = LoanPaymentConfirmationResponseStruct.maybeFromMap((_model.loanConfirmPaymentResponse?.jsonBody ?? ''))!;
                                                                                  safeSetState(() {});

                                                                                  context.pushNamed(PayLoanSuccessPageWidget.routeName);
                                                                                } else {
                                                                                  context.pushNamed(
                                                                                    LoanFailedPageWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'isLocked': serializeParam(
                                                                                        false,
                                                                                        ParamType.bool,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                }
                                                                              } else {
                                                                                context.pushNamed(
                                                                                  LoanFailedPageWidget.routeName,
                                                                                  queryParameters: {
                                                                                    'isLocked': serializeParam(
                                                                                      false,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              }
                                                                            } else if ((LoanPaymentSigningChallengeResponseStruct.maybeFromMap((_model.loanSigningChallengeResponse?.jsonBody ?? ''))?.preferredMethod == SigningAvailableMethods.mpin.name) && (_model.loanSigningChallengeResponse?.succeeded ?? true) && !isWeb) {
                                                                              FFAppState().updateGlobalLoanInitialPaymentDetailsStruct(
                                                                                (e) => e..challengeID = LoanPaymentSigningChallengeResponseStruct.maybeFromMap((_model.loanSigningChallengeResponse?.jsonBody ?? ''))?.challenge,
                                                                              );
                                                                              safeSetState(() {});

                                                                              context.pushNamed(
                                                                                MPINPageWidget.routeName,
                                                                                queryParameters: {
                                                                                  'usage': serializeParam(
                                                                                    MpinUsage.LOAN_PAYMENT,
                                                                                    ParamType.Enum,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            } else if ((LoanPaymentSigningChallengeResponseStruct.maybeFromMap((_model.loanSigningChallengeResponse?.jsonBody ?? ''))?.preferredMethod == SigningAvailableMethods.biometric.name) && !isWeb) {
                                                                              _model.signature = await actions.createSignature(
                                                                                LoanPaymentSigningChallengeResponseStruct.maybeFromMap((_model.loanSigningChallengeResponse?.jsonBody ?? ''))!.challenge,
                                                                              );
                                                                              _model.loanConfirmPaymentResponseBio = await WhitebankGroupAPIGroup.retailLoanConfirmPaymentCall.call(
                                                                                method: SigningAvailableMethods.biometric.name,
                                                                                deviceId: FFAppState().DeviceDetails.deviceId,
                                                                                challenge: LoanPaymentSigningChallengeResponseStruct.maybeFromMap((_model.loanSigningChallengeResponse?.jsonBody ?? ''))?.challenge,
                                                                                signature: _model.signature,
                                                                                loanAccountNumber: FFAppState().GlobalLoanInitialPaymentDetails.loanAccountNumber,
                                                                                paymentId: LoanInitialPaymentResponseStruct.maybeFromMap((_model.initialLoanPaymentResult?.jsonBody ?? ''))?.id,
                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                accessToken: currentAuthenticationToken,
                                                                                fmsSessionId: currentUserData?.fmsSessionId,
                                                                              );

                                                                              if ((_model.loanConfirmPaymentResponseBio?.succeeded ?? true)) {
                                                                                FFAppState().GlobalLoanPaymentConfirmation = LoanPaymentConfirmationResponseStruct.maybeFromMap((_model.loanConfirmPaymentResponseBio?.jsonBody ?? ''))!;
                                                                                safeSetState(() {});

                                                                                context.pushNamed(PayLoanSuccessPageWidget.routeName);
                                                                              } else {
                                                                                context.pushNamed(
                                                                                  LoanFailedPageWidget.routeName,
                                                                                  queryParameters: {
                                                                                    'isLocked': serializeParam(
                                                                                      false,
                                                                                      ParamType.bool,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              }
                                                                            } else {
                                                                              _model.apiResults66 = await WhitebankGroupAPIGroup.retailLoanPaymentCancelCall.call(
                                                                                loanAccountNumber: FFAppState().GlobalLoanInitialPaymentDetails.loanAccountNumber,
                                                                                paymentId: LoanInitialPaymentResponseStruct.maybeFromMap((_model.initialLoanPaymentResult?.jsonBody ?? ''))?.id,
                                                                                accessToken: currentAuthenticationToken,
                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                              );

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
                                                                                          message: 'Your device is not allowed to perform this action. Please register it first.',
                                                                                          primaryButtonTitle: 'Confirm',
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
                                                                          } else {
                                                                            context.pushNamed(
                                                                              LoanFailedPageWidget.routeName,
                                                                              queryParameters: {
                                                                                'isLocked': serializeParam(
                                                                                  false,
                                                                                  ParamType.bool,
                                                                                ),
                                                                              }.withoutNulls,
                                                                            );
                                                                          }
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));

                                                            safeSetState(() {});
                                                          },
                                                    text: 'Send',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 56.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconAlignment:
                                                          IconAlignment.end,
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallIsCustom,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      disabledColor:
                                                          Color(0xFFDAE3E5),
                                                      disabledTextColor:
                                                          Color(0xFF939FA3),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ).animateOnPageLoad(animationsMap[
                                          'rowOnPageLoadAnimation']!),
                                    ].divide(SizedBox(height: 20.0)),
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
                        buttonWithoutBackground: true,
                        btnWOBgIcon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                        btnWOBgColor: FlutterFlowTheme.of(context).primaryText,
                        btnWOBgIconSize: 24.0,
                        isTitleLeftAlign: true,
                        titleLeftAlign: 'Pay Loan',
                        textLeftAlignColor: Color(0xFF444C66),
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
