import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pay_bills/p_b_components/pay_bills_confirmation_bottom_sheet/pay_bills_confirmation_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/pay_bills_recurring_bottom_sheet/pay_bills_recurring_bottom_sheet_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'pay_bills_amount_page_model.dart';
export 'pay_bills_amount_page_model.dart';

/// Pay Bills page
class PayBillsAmountPageWidget extends StatefulWidget {
  const PayBillsAmountPageWidget({
    super.key,
    this.submitParams,
    required this.billerDetails,
    bool? isFromFavorite,
  }) : this.isFromFavorite = isFromFavorite ?? false;

  /// Pay bills request body.
  final WBBPSubmitParametersStruct? submitParams;

  /// could also be from a saved biller.
  final WBBillerStruct? billerDetails;

  final bool isFromFavorite;

  static String routeName = 'PayBillsAmountPage';
  static String routePath = '/payBillsAmountPage';

  @override
  State<PayBillsAmountPageWidget> createState() =>
      _PayBillsAmountPageWidgetState();
}

class _PayBillsAmountPageWidgetState extends State<PayBillsAmountPageWidget>
    with TickerProviderStateMixin {
  late PayBillsAmountPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayBillsAmountPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.submitBody = FFAppState().PaybillsInitiateModelAppState;
          safeSetState(() {});
        }),
        Future(() async {
          _model.paymentLimitsResponse =
              await WhitebankGroupAPIGroup.retailBillsPaymentLimitsCall.call(
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          if ((_model.paymentLimitsResponse?.succeeded ?? true)) {
            FFAppState().payingUserLimits = WBPaymentLimitsStruct.maybeFromMap(
                WhitebankGroupAPIGroup.retailBillsPaymentLimitsCall.limits(
              (_model.paymentLimitsResponse?.jsonBody ?? ''),
            ))!;
            safeSetState(() {});
            return;
          } else {
            return;
          }
        }),
      ]);
    });

    _model.remarksTextFieldTextController ??= TextEditingController();
    _model.remarksTextFieldFocusNode ??= FocusNode();

    _model.scheduleTextFieldTextController ??= TextEditingController(
        text: (String text) {
      return text[0].toUpperCase() + text.substring(1);
    }(valueOrDefault<String>(
      _model.scheduleType?.name,
      'Once',
    )));
    _model.scheduleTextFieldFocusNode ??= FocusNode();

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
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: WhitebankGroupAPIGroup
                                                        .retailBillsPaymentBillerDetailsCall
                                                        .call(
                                                      id: widget
                                                          .billerDetails?.id,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final paddedColumnRetailBillsPaymentBillerDetailsResponse =
                                                          snapshot.data!;

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Flexible(
                                                                child: RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'How much would you like to \npay to ',
                                                                        style:
                                                                            TextStyle(),
                                                                      ),
                                                                      TextSpan(
                                                                        text: valueOrDefault<
                                                                            String>(
                                                                          widget
                                                                              .billerDetails
                                                                              ?.name,
                                                                          'BDO Unibank',
                                                                        ),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Color(0xFF009A9F),
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '?',
                                                                        style:
                                                                            TextStyle(),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryGradient,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
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
                                                                      Icon(
                                                                        Icons
                                                                            .account_balance_wallet_outlined,
                                                                        color: Color(
                                                                            0xFF99A1AF),
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Text(
                                                                        'Available Balance',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: Color(0xFF575757),
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            8.0)),
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
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.periodDecimal,
                                                                      ),
                                                                      '0.00',
                                                                    )}',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xFF252525),
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Minimum:  ${formatNumber(
                                                                      WBFetchedBillerStruct.maybeFromMap(
                                                                              paddedColumnRetailBillsPaymentBillerDetailsResponse.jsonBody)
                                                                          ?.minAmount,
                                                                      formatType:
                                                                          FormatType
                                                                              .decimal,
                                                                      decimalType:
                                                                          DecimalType
                                                                              .periodDecimal,
                                                                    )}',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xFF252525),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    'Maximum:  ${formatNumber(
                                                                      WBFetchedBillerStruct.maybeFromMap(
                                                                              paddedColumnRetailBillsPaymentBillerDetailsResponse.jsonBody)
                                                                          ?.maxAmount,
                                                                      formatType:
                                                                          FormatType
                                                                              .decimal,
                                                                      decimalType:
                                                                          DecimalType
                                                                              .periodDecimal,
                                                                    )}',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .end,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xFF252525),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        8.0)),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFF5F5F5),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Semantics(
                                                                  label:
                                                                      'Expanding Amount Input Component',
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        320.0,
                                                                    height:
                                                                        68.0,
                                                                    child: custom_widgets
                                                                        .ExpandingAmountInput(
                                                                      width:
                                                                          320.0,
                                                                      height:
                                                                          68.0,
                                                                      initialValue:
                                                                          '',
                                                                      fontSize:
                                                                          12.0,
                                                                      externalValue:
                                                                          valueOrDefault<
                                                                              double>(
                                                                        _model
                                                                            .enteredAmount,
                                                                        0.0,
                                                                      ),
                                                                      isDisabled:
                                                                          false,
                                                                      onChanged:
                                                                          (value) async {
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..amount =
                                                                                value
                                                                            ..currency = 'PHP',
                                                                        );
                                                                        _model.enteredAmount =
                                                                            valueOrDefault<double>(
                                                                          value,
                                                                          0.0,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                        safeSetState(
                                                                            () {
                                                                          _model
                                                                              .quickAmountChoiceChipsValueController
                                                                              ?.reset();
                                                                        });
                                                                        if (_model.enteredAmount! >
                                                                            FFAppState().payingSourceAccountAppState.availableBalance) {
                                                                          _model.amountFieldError =
                                                                              'You do not have enough balance to complete this payment.';
                                                                          safeSetState(
                                                                              () {});
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
                                                                        }
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          if (_model.amountFieldError !=
                                                                  null &&
                                                              _model.amountFieldError !=
                                                                  '')
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    _model
                                                                        .amountFieldError,
                                                                    '-',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Color(
                                                                            0xFFB3261E),
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
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Or choose a quick amount',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
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
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 8.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Semantics(
                                                                  label:
                                                                      'Quick-Amount-ChoiceChips',
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
                                                                    onChanged:
                                                                        (val) async {
                                                                      safeSetState(() =>
                                                                          _model.quickAmountChoiceChipsValue =
                                                                              val?.firstOrNull);
                                                                      if (_model
                                                                              .quickAmountChoiceChipsValue ==
                                                                          '₱50') {
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..amount =
                                                                                50.0
                                                                            ..currency = 'PHP',
                                                                        );
                                                                        _model.enteredAmount =
                                                                            50.0;
                                                                        safeSetState(
                                                                            () {});
                                                                      } else if (_model
                                                                              .quickAmountChoiceChipsValue ==
                                                                          '₱100') {
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..amount =
                                                                                100.0
                                                                            ..currency = 'PHP',
                                                                        );
                                                                        _model.enteredAmount =
                                                                            100.0;
                                                                        safeSetState(
                                                                            () {});
                                                                      } else if (_model
                                                                              .quickAmountChoiceChipsValue ==
                                                                          '₱200') {
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..amount =
                                                                                200.0
                                                                            ..currency = 'PHP',
                                                                        );
                                                                        _model.enteredAmount =
                                                                            200.0;
                                                                        safeSetState(
                                                                            () {});
                                                                      } else if (_model
                                                                              .quickAmountChoiceChipsValue ==
                                                                          '₱500') {
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..amount =
                                                                                500.0
                                                                            ..currency = 'PHP',
                                                                        );
                                                                        _model.enteredAmount =
                                                                            500.0;
                                                                        safeSetState(
                                                                            () {});
                                                                      }

                                                                      if (_model
                                                                              .enteredAmount! >
                                                                          FFAppState()
                                                                              .payingSourceAccountAppState
                                                                              .availableBalance) {
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
                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          _model.amountFieldError =
                                                                              null;
                                                                          safeSetState(
                                                                              () {});
                                                                        }

                                                                        return;
                                                                      }
                                                                    },
                                                                    selectedChipStyle:
                                                                        ChipStyle(
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                      iconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .info,
                                                                      iconSize:
                                                                          14.0,
                                                                      labelPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          10.0,
                                                                          20.0,
                                                                          10.0),
                                                                      elevation:
                                                                          0.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      borderWidth:
                                                                          2.0,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    unselectedChipStyle:
                                                                        ChipStyle(
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF364153),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                      iconColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryText,
                                                                      iconSize:
                                                                          14.0,
                                                                      labelPadding: EdgeInsetsDirectional.fromSTEB(
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
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    chipSpacing:
                                                                        8.0,
                                                                    rowSpacing:
                                                                        8.0,
                                                                    multiselect:
                                                                        false,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .center,
                                                                    controller: _model
                                                                            .quickAmountChoiceChipsValueController ??=
                                                                        FormFieldController<
                                                                            List<String>>(
                                                                      [],
                                                                    ),
                                                                    wrapped:
                                                                        true,
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
                                                                      'Remarks TextField',
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        200.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .remarksTextFieldTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .remarksTextFieldFocusNode,
                                                                      onChanged:
                                                                          (_) =>
                                                                              EasyDebounce.debounce(
                                                                        '_model.remarksTextFieldTextController',
                                                                        Duration(
                                                                            milliseconds:
                                                                                2000),
                                                                        () async {
                                                                          _model
                                                                              .updateSubmitBodyStruct(
                                                                            (e) => e
                                                                              ..remarks = _model.remarksTextFieldTextController.text,
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
                                                                            ..remarks =
                                                                                _model.remarksTextFieldTextController.text,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      autofocus:
                                                                          false,
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .done,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelText:
                                                                            'Remarks',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                            ),
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              color: Color(0xFF72777A),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).neutral10,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFF676666),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).base0,
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            17.0,
                                                                            12.0,
                                                                            17.0),
                                                                        hoverColor:
                                                                            FlutterFlowTheme.of(context).formElementHover,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                      maxLines:
                                                                          null,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
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
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Semantics(
                                                                label:
                                                                    'Scheduled Checkbox',
                                                                child: Theme(
                                                                  data:
                                                                      ThemeData(
                                                                    checkboxTheme:
                                                                        CheckboxThemeData(
                                                                      visualDensity:
                                                                          VisualDensity
                                                                              .compact,
                                                                      materialTapTargetSize:
                                                                          MaterialTapTargetSize
                                                                              .shrinkWrap,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    unselectedWidgetColor:
                                                                        Color(
                                                                            0xFFD0D1DA),
                                                                  ),
                                                                  child:
                                                                      Checkbox(
                                                                    value: _model
                                                                            .scheduledCheckboxValue ??=
                                                                        false,
                                                                    onChanged:
                                                                        (newValue) async {
                                                                      safeSetState(() =>
                                                                          _model.scheduledCheckboxValue =
                                                                              newValue!);
                                                                      if (newValue!) {
                                                                        FFAppState()
                                                                            .updatePaybillsInitiateModelAppStateStruct(
                                                                          (e) => e
                                                                            ..frequency =
                                                                                _model.scheduleType?.name
                                                                            ..idempotencyKey =
                                                                                null
                                                                            ..deviceId = FFAppState().DeviceDetails.deviceId,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..frequency =
                                                                                TransactionScheduleType.ONCE.name
                                                                            ..idempotencyKey =
                                                                                null
                                                                            ..deviceId = FFAppState().DeviceDetails.deviceId,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      } else {
                                                                        FFAppState()
                                                                            .updatePaybillsInitiateModelAppStateStruct(
                                                                          (e) => e
                                                                            ..frequency =
                                                                                null
                                                                            ..startDate =
                                                                                null
                                                                            ..endCondition =
                                                                                null
                                                                            ..endDate =
                                                                                null
                                                                            ..maxOccurrences =
                                                                                null
                                                                            ..deviceId =
                                                                                null
                                                                            ..idempotencyKey = functions.createUuid(),
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                        _model
                                                                            .updateSubmitBodyStruct(
                                                                          (e) => e
                                                                            ..frequency =
                                                                                null
                                                                            ..idempotencyKey =
                                                                                functions.createUuid()
                                                                            ..deviceId =
                                                                                null
                                                                            ..startDate =
                                                                                null
                                                                            ..endCondition =
                                                                                null
                                                                            ..endDate =
                                                                                null
                                                                            ..maxOccurrences = null,
                                                                        );
                                                                        _model.paymentDate =
                                                                            null;
                                                                        _model.paymentEndDate =
                                                                            null;
                                                                        safeSetState(
                                                                            () {});
                                                                      }
                                                                    },
                                                                    side: (Color(0xFFD0D1DA) !=
                                                                            null)
                                                                        ? BorderSide(
                                                                            width:
                                                                                2,
                                                                            color:
                                                                                Color(0xFFD0D1DA),
                                                                          )
                                                                        : null,
                                                                    activeColor:
                                                                        Color(
                                                                            0xFF0AACB2),
                                                                    checkColor:
                                                                        Colors
                                                                            .white,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'Schedule Payment',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: Color(
                                                                          0xFF002C75),
                                                                      fontSize:
                                                                          14.0,
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
                                                            ],
                                                          ),
                                                          if (_model
                                                                  .scheduledCheckboxValue ??
                                                              true)
                                                            Semantics(
                                                              label:
                                                                  'Sched fields Column',
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Stack(
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Semantics(
                                                                                  label: 'Schedule TextField',
                                                                                  child: Container(
                                                                                    width: 200.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.scheduleTextFieldTextController,
                                                                                      focusNode: _model.scheduleTextFieldFocusNode,
                                                                                      autofocus: false,
                                                                                      enabled: true,
                                                                                      textInputAction: TextInputAction.done,
                                                                                      readOnly: true,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'Set as recurring',
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
                                                                                      validator: _model.scheduleTextFieldTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Semantics(
                                                                            label:
                                                                                'Select Biller Action',
                                                                            child:
                                                                                InkWell(
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
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: PayBillsRecurringBottomSheetWidget(
                                                                                            callBack: (scheduleType) async {
                                                                                              _model.scheduleType = scheduleType;
                                                                                              _model.updateSubmitBodyStruct(
                                                                                                (e) => e..frequency = scheduleType.name,
                                                                                              );
                                                                                              safeSetState(() {});
                                                                                              FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                                                (e) => e..frequency = scheduleType.name,
                                                                                              );
                                                                                              safeSetState(() {});
                                                                                              // capitalized string first letter
                                                                                              safeSetState(() {
                                                                                                _model.scheduleTextFieldTextController?.text = ((String value) {
                                                                                                  return value[0].toUpperCase() + value.substring(1);
                                                                                                }(scheduleType.name));
                                                                                              });
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                height: 44.0,
                                                                                decoration: BoxDecoration(),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        height:
                                                                            20.0)),
                                                                  ),
                                                                  Semantics(
                                                                    label:
                                                                        'Start CustomDateLabelPicker',
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .startCustomDateLabelPickerModel,
                                                                      updateCallback:
                                                                          () =>
                                                                              safeSetState(() {}),
                                                                      updateOnChange:
                                                                          true,
                                                                      child:
                                                                          CustomDateLabelPickerWidgetWidget(
                                                                        label: _model.paymentDate != null &&
                                                                                _model.paymentDate != ''
                                                                            ? dateTimeFormat(
                                                                                "yMMMd",
                                                                                _model.datePicked1,
                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                              )
                                                                            : 'Payment Date',
                                                                        isDateSelected: _model.paymentDate !=
                                                                                null &&
                                                                            _model.paymentDate !=
                                                                                '',
                                                                        textfieldLabel:
                                                                            'Payment Date',
                                                                        hoverStyle:
                                                                            IconButtonBadgeHoverStyleStruct(
                                                                          iconColor:
                                                                              FlutterFlowTheme.of(context).primaryButton,
                                                                          defaultIconColor:
                                                                              FlutterFlowTheme.of(context).primaryButton,
                                                                        ),
                                                                        callBack:
                                                                            () async {
                                                                          // Payment Date
                                                                          final _datePicked1Date =
                                                                              await showDatePicker(
                                                                            context:
                                                                                context,
                                                                            initialDate:
                                                                                functions.addDaysFromDate(getCurrentTimestamp, 1),
                                                                            firstDate:
                                                                                (functions.addDaysFromDate(getCurrentTimestamp, 1) ?? DateTime(1900)),
                                                                            lastDate:
                                                                                DateTime(2050),
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
                                                                              _model.datePicked1 = functions.addDaysFromDate(getCurrentTimestamp, 1);
                                                                            });
                                                                          }
                                                                          if (_model.datePicked1 !=
                                                                              null) {
                                                                            _model.paymentDate =
                                                                                dateTimeFormat(
                                                                              "yyyy-MM-dd",
                                                                              _model.datePicked1,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            );
                                                                            _model.updateSubmitBodyStruct(
                                                                              (e) => e..startDate = _model.paymentDate,
                                                                            );
                                                                            safeSetState(() {});
                                                                            FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                              (e) => e..startDate = _model.paymentDate,
                                                                            );
                                                                            safeSetState(() {});
                                                                          }
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .scheduleType !=
                                                                      TransactionScheduleType
                                                                          .ONCE)
                                                                    Semantics(
                                                                      label:
                                                                          'End CustomDateLabelPicker',
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .endCustomDateLabelPickerModel,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        updateOnChange:
                                                                            true,
                                                                        child:
                                                                            CustomDateLabelPickerWidgetWidget(
                                                                          label: _model.paymentEndDate != null && _model.paymentEndDate != ''
                                                                              ? dateTimeFormat(
                                                                                  "yMMMd",
                                                                                  _model.datePicked2,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                )
                                                                              : 'End Date',
                                                                          isDateSelected:
                                                                              _model.paymentEndDate != null && _model.paymentEndDate != '',
                                                                          textfieldLabel:
                                                                              'End Date',
                                                                          hoverStyle:
                                                                              IconButtonBadgeHoverStyleStruct(
                                                                            iconColor:
                                                                                FlutterFlowTheme.of(context).primaryButton,
                                                                            defaultIconColor:
                                                                                FlutterFlowTheme.of(context).primaryButton,
                                                                          ),
                                                                          callBack:
                                                                              () async {
                                                                            if (_model.paymentDate != null &&
                                                                                _model.paymentDate != '') {
                                                                              // End Date
                                                                              final _datePicked2Date = await showDatePicker(
                                                                                context: context,
                                                                                initialDate: functions.getDateAfter(_model.paymentDate!),
                                                                                firstDate: (functions.getDateAfter(_model.paymentDate!) ?? DateTime(1900)),
                                                                                lastDate: DateTime(2050),
                                                                              );

                                                                              if (_datePicked2Date != null) {
                                                                                safeSetState(() {
                                                                                  _model.datePicked2 = DateTime(
                                                                                    _datePicked2Date.year,
                                                                                    _datePicked2Date.month,
                                                                                    _datePicked2Date.day,
                                                                                  );
                                                                                });
                                                                              } else if (_model.datePicked2 != null) {
                                                                                safeSetState(() {
                                                                                  _model.datePicked2 = functions.getDateAfter(_model.paymentDate!);
                                                                                });
                                                                              }
                                                                              if (_model.datePicked2 != null) {
                                                                                _model.paymentEndDate = dateTimeFormat(
                                                                                  "yyyy-MM-dd",
                                                                                  _model.datePicked2,
                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                );
                                                                                _model.updateSubmitBodyStruct(
                                                                                  (e) => e
                                                                                    ..endDate = _model.paymentEndDate
                                                                                    ..endCondition = ScheduleEndCondition.END_DATE.name,
                                                                                );
                                                                                safeSetState(() {});
                                                                                FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                                  (e) => e
                                                                                    ..endDate = _model.paymentEndDate
                                                                                    ..endCondition = ScheduleEndCondition.END_DATE.name,
                                                                                );
                                                                                safeSetState(() {});
                                                                              }
                                                                            }
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        12.0)),
                                                              ),
                                                            ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          60.0),
                                                                  child:
                                                                      Semantics(
                                                                    label:
                                                                        'Send-Button',
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed: ((_model.submitBody!.amount < WBFetchedBillerStruct.maybeFromMap(paddedColumnRetailBillsPaymentBillerDetailsResponse.jsonBody)!.minAmount) ||
                                                                              (_model.amountFieldError != null && _model.amountFieldError != '') ||
                                                                              ((_model.scheduledCheckboxValue == true) && (_model.scheduleType == TransactionScheduleType.ONCE) && (_model.paymentDate == null || _model.paymentDate == '')) ||
                                                                              ((_model.scheduledCheckboxValue == true) && (_model.scheduleType != TransactionScheduleType.ONCE) && (_model.paymentDate == null || _model.paymentDate == '') && (_model.paymentEndDate == null || _model.paymentEndDate == '')) ||
                                                                              (_model.submitBody!.amount > WBFetchedBillerStruct.maybeFromMap(paddedColumnRetailBillsPaymentBillerDetailsResponse.jsonBody)!.maxAmount))
                                                                          ? null
                                                                          : () async {
                                                                              if (_model.submitBody?.frequency != null && _model.submitBody?.frequency != '') {
                                                                                if (_model.submitBody?.frequency == TransactionScheduleType.ONCE.name) {
                                                                                  _model.updateSubmitBodyStruct(
                                                                                    (e) => e
                                                                                      ..endCondition = ScheduleEndCondition.OCCURRENCE_COUNT.name
                                                                                      ..maxOccurrences = 1
                                                                                      ..endDate = null,
                                                                                  );
                                                                                  safeSetState(() {});
                                                                                  FFAppState().updatePaybillsInitiateModelAppStateStruct(
                                                                                    (e) => e
                                                                                      ..endCondition = ScheduleEndCondition.OCCURRENCE_COUNT.name
                                                                                      ..maxOccurrences = 1
                                                                                      ..endDate = null,
                                                                                  );
                                                                                  safeSetState(() {});
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
                                                                                            child: PayBillsConfirmationBottomSheetWidget(
                                                                                              submitParameters: _model.submitBody!,
                                                                                              billerDetails: widget.billerDetails!,
                                                                                              isFromFavorite: widget.isFromFavorite,
                                                                                              callBack: () async {},
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => safeSetState(() {}));

                                                                                  return;
                                                                                }
                                                                              }
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
                                                                                        child: PayBillsConfirmationBottomSheetWidget(
                                                                                          submitParameters: _model.submitBody!,
                                                                                          billerDetails: widget.billerDetails!,
                                                                                          isFromFavorite: widget.isFromFavorite,
                                                                                          callBack: () async {},
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            },
                                                                      text:
                                                                          'Send',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width: double
                                                                            .infinity,
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
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
                        titleLeftAlign: 'Pay Amount',
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
