import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bills_payment_verification_page_model.dart';
export 'bills_payment_verification_page_model.dart';

class BillsPaymentVerificationPageWidget extends StatefulWidget {
  const BillsPaymentVerificationPageWidget({
    super.key,
    required this.billsHeader,
    required this.billsBody,
    this.bpFieldsModel,
  });

  final BillsHeaderStruct? billsHeader;
  final BillsBodyStruct? billsBody;
  final BillsPaymentFieldsModelStruct? bpFieldsModel;

  static String routeName = 'BillsPaymentVerificationPage';
  static String routePath = '/billsPaymentVerificationPage';

  @override
  State<BillsPaymentVerificationPageWidget> createState() =>
      _BillsPaymentVerificationPageWidgetState();
}

class _BillsPaymentVerificationPageWidgetState
    extends State<BillsPaymentVerificationPageWidget>
    with TickerProviderStateMixin {
  late BillsPaymentVerificationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillsPaymentVerificationPageModel());

    _model.pinCodeFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/PBBBackgroundWeb.png',
                  ).image,
                ),
              ),
              alignment: AlignmentDirectional(
                  0.0,
                  valueOrDefault<double>(
                    () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return -1.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return -1.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 0.0;
                      } else {
                        return 0.0;
                      }
                    }(),
                    0.0,
                  )),
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
                          return 270.0;
                        } else {
                          return 270.0;
                        }
                      }(),
                      80.0,
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
                          return 0.0;
                        } else {
                          return 0.0;
                        }
                      }(),
                      0.0,
                    ),
                    0.0,
                    0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return double.infinity;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 450.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 450.0;
                            } else {
                              return 450.0;
                            }
                          }(),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsets.all(26.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'One-time Password',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Enter the 5-digit that we have sent via the mobile number ${_model.otpDetails?.countryCode}${_model.otpDetails?.mobileNumber}.',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                  ),
                                  PinCodeTextField(
                                    autoDisposeControllers: false,
                                    appContext: context,
                                    length: 5,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    enableActiveFill: false,
                                    autoFocus: true,
                                    focusNode: _model.pinCodeFocusNode,
                                    enablePinAutofill: false,
                                    errorTextSpace: 16.0,
                                    showCursor: false,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    obscureText: false,
                                    hintCharacter: '●',
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    pinTheme: PinTheme(
                                      fieldHeight: 44.0,
                                      fieldWidth: 44.0,
                                      borderWidth: valueOrDefault<double>(
                                        (_model.pinCodeFocusNode?.hasFocus ??
                                                false)
                                            ? 2.0
                                            : 1.0,
                                        2.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(100.0),
                                        bottomRight: Radius.circular(100.0),
                                        topLeft: Radius.circular(100.0),
                                        topRight: Radius.circular(100.0),
                                      ),
                                      shape: PinCodeFieldShape.box,
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      inactiveColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      selectedColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    controller: _model.pinCodeController,
                                    onChanged: (_) {},
                                    onCompleted: (_) async {
                                      safeSetState(() {});
                                    },
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    validator: _model.pinCodeControllerValidator
                                        .asValidator(context),
                                  ),
                                  Builder(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        _model.updateOtpValidityDetailsStruct(
                                          (e) => e
                                            ..pin =
                                                _model.pinCodeController!.text,
                                        );
                                        safeSetState(() {});
                                        _model.verifyOtpAuthTokenResponse =
                                            await PbbGroup.oauthTokenCall.call(
                                          channelCode: 'cbxr',
                                          originatingChannelCode: 'cbxr',
                                          grantType: 'password',
                                          checkPoint: 'verifyotp',
                                          baseURL: 'https://lumine.pbb.com.ph',
                                        );

                                        if ((_model.verifyOtpAuthTokenResponse
                                                ?.succeeded ??
                                            true)) {
                                          _model.verifyOtpResponse =
                                              await PbbGroup.smsCall.call(
                                            headerJson:
                                                _model.verifyOtpHeader?.toMap(),
                                            oAuthaccessToken: PbbGroup
                                                .oauthTokenCall
                                                .accesstoken(
                                              (_model.verifyOtpAuthTokenResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            checkpointDetailsJson: _model
                                                .otpValidityDetails
                                                ?.toMap(),
                                            baseURL:
                                                'https://lumine.pbb.com.ph',
                                            checkpointKey: 'ValidityDetails',
                                          );

                                          if (SMSResponseStruct.maybeFromMap(
                                                      (_model.verifyOtpResponse
                                                              ?.jsonBody ??
                                                          ''))
                                                  ?.messageDetails
                                                  .statusMessage ==
                                              'valid') {
                                            _model.timerValidityController
                                                .onStopTimer();
                                            _model.bpValidationOAuthTokenResponse2 =
                                                await PbbGroup.oauthTokenCall
                                                    .call(
                                              channelCode: 'cbxr',
                                              originatingChannelCode: 'cbxr',
                                              grantType: 'password',
                                              baseURL:
                                                  'https://uat-bp.pbb.com.ph',
                                              checkPoint: 'verifyotp',
                                            );

                                            if ((_model
                                                    .bpValidationOAuthTokenResponse2
                                                    ?.succeeded ??
                                                true)) {
                                              // -> billspaymentPaybills API
                                              _model.bpPayBillsResponse2 =
                                                  await PbbGroup.oauthTokenCall
                                                      .call();

                                              if ((_model.bpPayBillsResponse2
                                                      ?.succeeded ??
                                                  true)) {
                                                context.pushNamed(
                                                  BillsPaymentTransactionSummaryPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'billsHeader':
                                                        serializeParam(
                                                      widget.billsHeader,
                                                      ParamType.DataStruct,
                                                    ),
                                                    'billsBody': serializeParam(
                                                      widget.billsBody,
                                                      ParamType.DataStruct,
                                                    ),
                                                    'bpPaybillsResponseDetails':
                                                        serializeParam(
                                                      ResponseDetailsStruct(),
                                                      ParamType.DataStruct,
                                                    ),
                                                    'bpFieldsModel':
                                                        serializeParam(
                                                      widget.bpFieldsModel,
                                                      ParamType.DataStruct,
                                                    ),
                                                  }.withoutNulls,
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
                                              } else {
                                                context.pushNamed(
                                                  BillsPaymentTransactionSummaryPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'billsHeader':
                                                        serializeParam(
                                                      widget.billsHeader,
                                                      ParamType.DataStruct,
                                                    ),
                                                    'billsBody': serializeParam(
                                                      widget.billsBody,
                                                      ParamType.DataStruct,
                                                    ),
                                                    'bpPaybillsResponseDetails':
                                                        serializeParam(
                                                      ResponseDetailsStruct(
                                                        message:
                                                            'Payment unsuccessful!',
                                                      ),
                                                      ParamType.DataStruct,
                                                    ),
                                                    'bpFieldsModel':
                                                        serializeParam(
                                                      widget.bpFieldsModel,
                                                      ParamType.DataStruct,
                                                    ),
                                                  }.withoutNulls,
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
                                              }
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
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child:
                                                            CustomInformationalDialogWidget(
                                                          message: PbbGroup
                                                              .oauthTokenCall
                                                              .errorMessage(
                                                            (_model.bpValidationOAuthTokenResponse2
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!,
                                                          primaryButtonTitle:
                                                              'Dismiss',
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
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: SMSResponseStruct
                                                                .maybeFromMap((_model
                                                                        .verifyOtpResponse
                                                                        ?.jsonBody ??
                                                                    ''))!
                                                            .messageDetails
                                                            .statusMessage,
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        primaryButtonAction:
                                                            () async {
                                                          _model
                                                              .pinCodeController
                                                              ?.clear();

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

                                        safeSetState(() {});
                                      },
                                      text: 'Continue',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 44.0,
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
                                  Container(
                                    width: double.infinity,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDAF8FF),
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Resend code (',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF00A8CF),
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        FlutterFlowTimer(
                                          initialTime: valueOrDefault<int>(
                                            (int.parse(_model
                                                    .otpDetails!.validity)) *
                                                1000,
                                            180,
                                          ),
                                          getDisplayTime: (value) =>
                                              StopWatchTimer.getDisplayTime(
                                            value,
                                            hours: false,
                                            minute: false,
                                            milliSecond: false,
                                          ),
                                          controller:
                                              _model.timerValidityController,
                                          updateStateInterval:
                                              Duration(milliseconds: 1000),
                                          onChanged: (value, displayTime,
                                              shouldUpdate) {
                                            _model.timerValidityMilliseconds =
                                                value;
                                            _model.timerValidityValue =
                                                displayTime;
                                            if (shouldUpdate)
                                              safeSetState(() {});
                                          },
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF00A8CF),
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                        Text(
                                          ')',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color: Color(0xFF00A8CF),
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 15.0)),
                              ),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                    ]
                        .divide(SizedBox(height: 26.0))
                        .around(SizedBox(height: 26.0)),
                  ),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.customMobileAppBarModel,
              updateCallback: () => safeSetState(() {}),
              child: CustomMobileAppBarWidget(
                pageTitle: 'Verify Account',
                rightButtonIcon: null,
                leftButtonIcon: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                backgroudColor: FFAppConstants.AppBarSecondaryBackgroundColor,
                titleColor: FlutterFlowTheme.of(context).info,
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
                pageTitle: 'Verify Account',
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
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.mobileNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MobileNavigationBarWidget(
                    pageIndex: 6,
                    shouldHideBottomNav: true,
                  ),
                ),
              ),
            if (_model.verifyOtpHeader == null)
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/Loading_Lottie_animation.json',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
