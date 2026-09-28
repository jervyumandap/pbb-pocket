import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'account_verification_page_model.dart';
export 'account_verification_page_model.dart';

/// Reusabe verification page
class AccountVerificationPageWidget extends StatefulWidget {
  const AccountVerificationPageWidget({
    super.key,
    required this.sessionToken,
    required this.purpose,
    this.deviceId,
  });

  final String? sessionToken;
  final VerificationType? purpose;

  /// Fetched device id for confirming trust.
  final String? deviceId;

  static String routeName = 'AccountVerificationPage';
  static String routePath = '/accountVerificationPage';

  @override
  State<AccountVerificationPageWidget> createState() =>
      _AccountVerificationPageWidgetState();
}

class _AccountVerificationPageWidgetState
    extends State<AccountVerificationPageWidget> with TickerProviderStateMixin {
  late AccountVerificationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountVerificationPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      _model.sessionToken = widget.sessionToken;
      safeSetState(() {});
      // Purpose Check
      if (widget.purpose == VerificationType.createCredentials) {
        _model.sendOtpResponse =
            await WhitebankGroupAPIGroup.registrationSendOtpCall.call(
          channel: 'SMS',
          sessionToken: widget.sessionToken,
          baseURL: FFDevEnvironmentValues().WBPBASEURL,
        );

        if (WhitebankGroupAPIGroup.registrationSendOtpCall.error(
                  (_model.sendOtpResponse?.jsonBody ?? ''),
                ) ==
                null ||
            WhitebankGroupAPIGroup.registrationSendOtpCall.error(
                  (_model.sendOtpResponse?.jsonBody ?? ''),
                ) ==
                '') {
          _model.isLoading = false;
          _model.expirationMS = FFAppConstants.OTPTimer;
          _model.isTimerExpired = false;
          safeSetState(() {});
          _model.timerController.onStartTimer();
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
                  child: CustomInformationalDialogWidget(
                    message: valueOrDefault<String>(
                      getJsonField(
                        (_model.sendOtpResponse?.jsonBody ?? ''),
                        r'''$.message''',
                      )?.toString(),
                      'Something went wrong.',
                    ),
                    primaryButtonTitle: 'Okay',
                    title: valueOrDefault<String>(
                      getJsonField(
                        (_model.sendOtpResponse?.jsonBody ?? ''),
                        r'''$.title''',
                      )?.toString(),
                      'Oops!',
                    ),
                    primaryButtonAction: () async {
                      Navigator.pop(context);
                      context.safePop();
                    },
                    secondaryButtonAction: () async {},
                  ),
                ),
              );
            },
          );
        }
      } else if (widget.purpose == VerificationType.createNewPassword) {
      } else if (widget.purpose == VerificationType.createNewMpin) {
      } else if (widget.purpose == VerificationType.recoverPassword) {
        _model.isLoading = false;
        _model.expirationMS = 180000;
        _model.isTimerExpired = false;
        safeSetState(() {});
        _model.timerController.onStartTimer();
      } else if (widget.purpose == VerificationType.recoverMpin) {
        _model.timerController.onStartTimer();
        _model.isLoading = false;
        _model.expirationMS = FFAppConstants.OTPTimer;
        _model.isTimerExpired = false;
        safeSetState(() {});
      } else if (widget.purpose == VerificationType.trustDevice) {
        _model.isLoading = false;
        _model.expirationMS = valueOrDefault<int>(
          FFAppConstants.OTPTimer,
          60000,
        );
        _model.isTimerExpired = false;
        safeSetState(() {});
        _model.timerController.onStartTimer();
      }

      _model.isLoading = false;
      safeSetState(() {});
    });

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
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => Scaffold(
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
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
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
                                    20.0, 0.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Verify your identity',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'We sent an OTP to your registered email ${FFAppState().EnrollingUserAppstate.user.maskedEmail} associated with this account.',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 20.0),
                                      child: Semantics(
                                        label: 'OTP Pincode Container',
                                        child: Container(
                                          width: 266.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Form(
                                            key: _model.formKey,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Semantics(
                                                  label:
                                                      'accountverification_otp_pincode',
                                                  child: PinCodeTextField(
                                                    autoDisposeControllers:
                                                        false,
                                                    appContext: context,
                                                    length: ((widget
                                                                        .purpose ==
                                                                    VerificationType
                                                                        .createCredentials) ||
                                                                (widget.purpose ==
                                                                    VerificationType
                                                                        .recoverPassword) ||
                                                                (widget
                                                                        .purpose ==
                                                                    VerificationType
                                                                        .recoverMpin) ||
                                                                (widget
                                                                        .purpose ==
                                                                    VerificationType
                                                                        .changePassword)) &&
                                                            ((FFDevEnvironmentValues.currentEnvironment == 'SITMob') ||
                                                                (FFDevEnvironmentValues
                                                                        .currentEnvironment ==
                                                                    'SITWeb') ||
                                                                (FFDevEnvironmentValues
                                                                        .currentEnvironment ==
                                                                    'UATWeb') ||
                                                                (FFDevEnvironmentValues
                                                                        .currentEnvironment ==
                                                                    'UATMob') ||
                                                                (FFDevEnvironmentValues
                                                                        .currentEnvironment ==
                                                                    'UAT'))
                                                        ? 5
                                                        : 6,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeIsCustom,
                                                            ),
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    enableActiveFill: false,
                                                    autoFocus: true,
                                                    focusNode:
                                                        _model.pinCodeFocusNode,
                                                    enablePinAutofill: true,
                                                    errorTextSpace: 0.0,
                                                    showCursor: false,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    obscureText: false,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter
                                                          .digitsOnly
                                                    ],
                                                    pinTheme: PinTheme(
                                                      fieldHeight: 33.0,
                                                      fieldWidth: 33.0,
                                                      borderWidth: 1.0,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                100.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                100.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                100.0),
                                                        topRight:
                                                            Radius.circular(
                                                                100.0),
                                                      ),
                                                      shape:
                                                          PinCodeFieldShape.box,
                                                      activeColor:
                                                          valueOrDefault<Color>(
                                                        _model.isOtpValid!
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral10
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .neutral10,
                                                      ),
                                                      inactiveColor:
                                                          valueOrDefault<Color>(
                                                        _model.isOtpValid!
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral10
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .neutral10,
                                                      ),
                                                      selectedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    controller: _model
                                                        .pinCodeController,
                                                    onChanged: (_) async {
                                                      // pincode.length < 5
                                                      if (_model
                                                              .pinCodeController!
                                                              .text
                                                              .length <
                                                          5) {
                                                        _model.hasOtpEntered =
                                                            false;
                                                        safeSetState(() {});
                                                      } else {
                                                        _model.hasOtpEntered =
                                                            true;
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    onCompleted: (_) async {
                                                      _model.hasOtpEntered =
                                                          true;
                                                      safeSetState(() {});
                                                    },
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .disabled,
                                                    validator: _model
                                                        .pinCodeControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                if (_model.isOtpValid == false)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Semantics(
                                                      label: 'Error_Text',
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model.errorText,
                                                          '*Please enter valid OTP',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                              ]
                                                  .divide(
                                                      SizedBox(height: 16.0))
                                                  .around(
                                                      SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!),
                                    ),
                                    Semantics(
                                      label: 'resend_otp_richtext',
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Didn\'t receive the code? ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily,
                                                    color: Color(0xFF444C66),
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumIsCustom,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: 'Resend new one',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.isTimerExpired
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryButton
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral7,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryButtonText,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumIsCustom,
                                                  ),
                                              mouseCursor:
                                                  SystemMouseCursors.click,
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  var _shouldSetState = false;
                                                  if (_model.isTimerExpired) {
                                                    if (widget.purpose ==
                                                        VerificationType
                                                            .createCredentials) {
                                                      _model.timerController
                                                          .onResetTimer();

                                                      _model.resendOtpResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .registrationResendOtpCall
                                                              .call(
                                                        sessionToken: widget
                                                            .sessionToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .resendOtpResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.expirationMS =
                                                            FFAppConstants
                                                                .OTPTimer;
                                                        _model.isTimerExpired =
                                                            false;
                                                        _model.isLoading =
                                                            false;
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model
                                                              .pinCodeController
                                                              ?.clear();
                                                        });
                                                        _model.timerController
                                                            .onStartTimer();
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    CustomInformationalDialogWidget(
                                                                  message:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .registrationResendOtpCall
                                                                        .detail(
                                                                      (_model.resendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Resend Otp Failed.',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Okay',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .registrationResendOtpCall
                                                                        .title(
                                                                      (_model.resendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Oops!',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
                                                                    context
                                                                        .safePop();
                                                                  },
                                                                  secondaryButtonAction:
                                                                      () async {},
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }
                                                    } else if (widget
                                                            .purpose ==
                                                        VerificationType
                                                            .trustDevice) {
                                                      _model.timerController
                                                          .onResetTimer();

                                                      _model.trustResendOtpResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .retailSettingsDeviceInitiateTrustCall
                                                              .call(
                                                        deviceId:
                                                            widget.deviceId,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .trustResendOtpResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.expirationMS =
                                                            60000;
                                                        _model.isTimerExpired =
                                                            false;
                                                        _model.isLoading =
                                                            false;
                                                        _model.sessionToken =
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsDeviceInitiateTrustCall
                                                                .sessionId(
                                                          (_model.trustResendOtpResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model
                                                              .pinCodeController
                                                              ?.clear();
                                                        });
                                                        _model.timerController
                                                            .onStartTimer();
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    CustomInformationalDialogWidget(
                                                                  message:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      (_model.trustResendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.message''',
                                                                    )?.toString(),
                                                                    'Resend Otp failed.',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Okay',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      (_model.trustResendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.title''',
                                                                    )?.toString(),
                                                                    'Oops!',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
                                                                    context
                                                                        .safePop();
                                                                  },
                                                                  secondaryButtonAction:
                                                                      () async {},
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }
                                                    } else if (widget
                                                            .purpose ==
                                                        VerificationType
                                                            .recoverPassword) {
                                                      _model.timerController
                                                          .onResetTimer();

                                                      _model.recoverPwResendOtpResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .recoveryPasswordResendOtpCall
                                                              .call(
                                                        sessionToken: widget
                                                            .sessionToken,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        fmsSessionId:
                                                            currentUserData
                                                                ?.fmsSessionId,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .recoverPwResendOtpResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.expirationMS =
                                                            60000;
                                                        _model.isTimerExpired =
                                                            false;
                                                        _model.isLoading =
                                                            false;
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model
                                                              .pinCodeController
                                                              ?.clear();
                                                        });
                                                        _model.timerController
                                                            .onStartTimer();
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    CustomInformationalDialogWidget(
                                                                  message:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .recoveryPasswordResendOtpCall
                                                                        .message(
                                                                      (_model.recoverPwResendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Something went wrong.',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Okay',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .recoveryPasswordResendOtpCall
                                                                        .title(
                                                                      (_model.recoverPwResendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Oops!',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
                                                                    context
                                                                        .safePop();
                                                                  },
                                                                  secondaryButtonAction:
                                                                      () async {},
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }
                                                    } else if (widget
                                                            .purpose ==
                                                        VerificationType
                                                            .recoverMpin) {
                                                      _model.timerController
                                                          .onResetTimer();

                                                      _model.recoverMpinResendOtpResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .recoveryMPINResendOtpCall
                                                              .call(
                                                        sessionToken: widget
                                                            .sessionToken,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        fmsSessionId:
                                                            currentUserData
                                                                ?.fmsSessionId,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .recoverMpinResendOtpResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.expirationMS =
                                                            60000;
                                                        _model.isTimerExpired =
                                                            false;
                                                        _model.isLoading =
                                                            false;
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model
                                                              .pinCodeController
                                                              ?.clear();
                                                        });
                                                        _model.timerController
                                                            .onStartTimer();
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  WebViewAware(
                                                                child:
                                                                    CustomInformationalDialogWidget(
                                                                  message:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .recoveryMPINResendOtpCall
                                                                        .message(
                                                                      (_model.recoverMpinResendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Something went wrong!',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Okay',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .recoveryMPINResendOtpCall
                                                                        .title(
                                                                      (_model.recoverMpinResendOtpResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Oops!',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
                                                                    context
                                                                        .safePop();
                                                                  },
                                                                  secondaryButtonAction:
                                                                      () async {},
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }
                                                    }
                                                  } else {
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Semantics(
                                      label: 'Timer Row',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.timerController.onStartTimer();
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'New request in ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .neutral7,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Semantics(
                                              label: 'Resend_Otp_Timer',
                                              child: FlutterFlowTimer(
                                                initialTime:
                                                    valueOrDefault<int>(
                                                  _model.expirationMS,
                                                  60000,
                                                ),
                                                getDisplayTime: (value) =>
                                                    StopWatchTimer
                                                        .getDisplayTime(
                                                  value,
                                                  hours: false,
                                                  milliSecond: false,
                                                ),
                                                controller:
                                                    _model.timerController,
                                                updateStateInterval: Duration(
                                                    milliseconds: 1000),
                                                onChanged: (value, displayTime,
                                                    shouldUpdate) {
                                                  _model.timerMilliseconds =
                                                      value;
                                                  _model.timerValue =
                                                      displayTime;
                                                  if (shouldUpdate)
                                                    safeSetState(() {});
                                                },
                                                onEnded: () async {
                                                  _model.isTimerExpired = true;
                                                  safeSetState(() {});
                                                },
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .headlineSmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral7,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                            Container(
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
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 60.0),
                                  child: Semantics(
                                    label: 'Confirm_otp_button',
                                    child: wrapWithModel(
                                      model: _model.primaryButtonComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryButtonComponentWidget(
                                        buttonTitle: 'Next',
                                        buttonWidth: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 450.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 450.0;
                                          } else {
                                            return 450.0;
                                          }
                                        }(),
                                        buttonHeight: 48.0,
                                        buttonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: 16.0,
                                        buttonDisabledOption:
                                            !_model.hasOtpEntered,
                                        callback: () async {
                                          var _shouldSetState = false;
                                          if (widget.purpose ==
                                              VerificationType
                                                  .createCredentials) {
                                            _model.verifyOtpResponse2 =
                                                await WhitebankGroupAPIGroup
                                                    .registrationVerifyOtpCall
                                                    .call(
                                              sessionToken: _model.sessionToken,
                                              otpCode: valueOrDefault<String>(
                                                _model.pinCodeController!.text,
                                                '123456',
                                              ),
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            _shouldSetState = true;
                                            if (!(_model.verifyOtpResponse2
                                                    ?.succeeded ??
                                                true)) {
                                              _model.isOtpValid = false;
                                              _model.errorText =
                                                  WhitebankGroupAPIGroup
                                                      .registrationVerifyOtpCall
                                                      .title(
                                                (_model.verifyOtpResponse2
                                                        ?.jsonBody ??
                                                    ''),
                                              )!;
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else if (WhitebankGroupAPIGroup
                                                .registrationVerifyOtpCall
                                                .isVerified(
                                              (_model.verifyOtpResponse2
                                                      ?.jsonBody ??
                                                  ''),
                                            )!) {
                                              _model.isOtpValid = true;
                                              safeSetState(() {});
                                              _model.timerController
                                                  .onStopTimer();

                                              context.goNamed(
                                                AccountCredentialsPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'sessionToken':
                                                      serializeParam(
                                                    _model.sessionToken,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else {
                                              _model.isOtpValid = false;
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          } else if (widget.purpose ==
                                              VerificationType
                                                  .createNewPassword) {
                                            _model.passwordChangeConfirmResponse2 =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsPasswordChangeConfirmOtpCall
                                                    .call(
                                              otp: _model
                                                  .pinCodeController!.text,
                                              sessionId: _model.sessionToken,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            _shouldSetState = true;
                                            if ((WhitebankGroupAPIGroup
                                                            .retailSettingsPasswordChangeConfirmOtpCall
                                                            .error(
                                                          (_model.passwordChangeConfirmResponse2
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        null ||
                                                    WhitebankGroupAPIGroup
                                                            .retailSettingsPasswordChangeConfirmOtpCall
                                                            .error(
                                                          (_model.passwordChangeConfirmResponse2
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        '') &&
                                                (_model.passwordChangeConfirmResponse2
                                                        ?.succeeded ??
                                                    true)) {
                                              _model.isOtpValid = true;
                                              safeSetState(() {});
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CustomReusableBottomSheetV2Widget(
                                                        title: WhitebankGroupAPIGroup
                                                            .retailSettingsPasswordChangeConfirmOtpCall
                                                            .message(
                                                          (_model.passwordChangeConfirmResponse2
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!,
                                                        message:
                                                            'Your password has been reset. You can now log in using your new credentials.',
                                                        buttonTitle:
                                                            'Back to Login',
                                                        callback: () async {
                                                          context.pushNamed(
                                                              SecurityAndCredentialsPageWidget
                                                                  .routeName);
                                                        },
                                                        cancelCallback:
                                                            () async {},
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else {
                                              _model.isOtpValid = false;
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          } else if (widget.purpose ==
                                              VerificationType.trustDevice) {
                                            _model.deviceKeypairOutput =
                                                await actions
                                                    .generatePcKeyPair();
                                            _shouldSetState = true;
                                            _model.trustConfirmResponse2 =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsDeviceInitiateTrustConfirmOtpCall
                                                    .call(
                                              deviceId: widget.deviceId,
                                              sessionId: _model.sessionToken,
                                              otp: _model
                                                  .pinCodeController!.text,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              devicePublicKey: getJsonField(
                                                _model.deviceKeypairOutput,
                                                r'''$.publicKeyPem''',
                                              ).toString(),
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            _shouldSetState = true;
                                            if (WhitebankGroupAPIGroup
                                                        .retailSettingsDeviceInitiateTrustConfirmOtpCall
                                                        .error(
                                                      (_model.trustConfirmResponse2
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    null ||
                                                WhitebankGroupAPIGroup
                                                        .retailSettingsDeviceInitiateTrustConfirmOtpCall
                                                        .error(
                                                      (_model.trustConfirmResponse2
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    '') {
                                              FFAppState().canBiometricsLogin =
                                                  false;
                                              safeSetState(() {});
                                              FFAppState()
                                                  .updateCurrentDeviceDetailsAppStateStruct(
                                                (e) => e..trusted = true,
                                              );
                                              safeSetState(() {});
                                              _model.isOtpValid = true;
                                              safeSetState(() {});
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CustomReusableBottomSheetV2Widget(
                                                        title:
                                                            'You have successfullly trusted this device.',
                                                        message:
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsDeviceInitiateTrustConfirmOtpCall
                                                                .message(
                                                          (_model.trustConfirmResponse2
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!,
                                                        buttonTitle:
                                                            'Go to Dashboard',
                                                        callback: () async {
                                                          context.goNamed(
                                                            DashboardWidget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              '__transition_info__':
                                                                  TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        0),
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        cancelCallback:
                                                            () async {},
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else {
                                              _model.isOtpValid = false;
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          } else if (widget.purpose ==
                                              VerificationType
                                                  .recoverPassword) {
                                            _model.passwordVerifyResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailAuthPasswordRecoveryVerifyOtpCall
                                                    .call(
                                              sessionToken: _model.sessionToken,
                                              otp: _model
                                                  .pinCodeController!.text,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            _shouldSetState = true;
                                            if ((_model.passwordVerifyResponse
                                                    ?.succeeded ??
                                                true)) {
                                              _model.isOtpValid = true;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                CreateNewPasswordPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'purpose': serializeParam(
                                                    VerificationType
                                                        .recoverPassword,
                                                    ParamType.Enum,
                                                  ),
                                                  'resetToken': serializeParam(
                                                    WhitebankGroupAPIGroup
                                                        .retailAuthPasswordRecoveryVerifyOtpCall
                                                        .resetToken(
                                                      (_model.passwordVerifyResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if ((WhitebankGroupAPIGroup
                                                        .retailAuthPasswordRecoveryVerifyOtpCall
                                                        .error(
                                                      (_model.passwordVerifyResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    ResponseStatus
                                                        .INVALID_OTP.name) ||
                                                (WhitebankGroupAPIGroup
                                                        .retailAuthPasswordRecoveryVerifyOtpCall
                                                        .title(
                                                      (_model.passwordVerifyResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    'Incorrect Code')) {
                                              _model.isOtpValid = false;
                                              _model.errorText =
                                                  'Invalid verification code.';
                                              safeSetState(() {});
                                            } else if (WhitebankGroupAPIGroup
                                                    .retailAuthPasswordRecoveryVerifyOtpCall
                                                    .title(
                                                  (_model.passwordVerifyResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'Session Expired') {
                                              _model.isOtpValid = false;
                                              _model.errorText =
                                                  'Code has expired.';
                                              safeSetState(() {});
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
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message:
                                                            WhitebankGroupAPIGroup
                                                                .retailAuthPasswordRecoveryVerifyOtpCall
                                                                .detail(
                                                          (_model.passwordVerifyResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!,
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        primaryButtonAction:
                                                            () async {
                                                          safeSetState(() {
                                                            _model
                                                                .pinCodeController
                                                                ?.clear();
                                                          });
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            }

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          } else if (widget.purpose ==
                                              VerificationType.recoverMpin) {
                                            _model.mpinVerifyResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailAuthMpinRecoveryVerifyOtpCall
                                                    .call(
                                              sessionToken: _model.sessionToken,
                                              otp: _model
                                                  .pinCodeController!.text,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            _shouldSetState = true;
                                            if ((_model.mpinVerifyResponse
                                                    ?.succeeded ??
                                                true)) {
                                              _model.isOtpValid = true;
                                              safeSetState(() {});

                                              context.pushNamed(
                                                CreateMpinPageWidget.routeName,
                                                queryParameters: {
                                                  'isUpdating': serializeParam(
                                                    false,
                                                    ParamType.bool,
                                                  ),
                                                  'resetToken': serializeParam(
                                                    WhitebankGroupAPIGroup
                                                        .retailAuthMpinRecoveryVerifyOtpCall
                                                        .resetToken(
                                                      (_model.mpinVerifyResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else if ((WhitebankGroupAPIGroup
                                                        .retailAuthMpinRecoveryVerifyOtpCall
                                                        .error(
                                                      (_model.mpinVerifyResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    ResponseStatus
                                                        .INVALID_OTP.name) ||
                                                (WhitebankGroupAPIGroup
                                                        .retailAuthMpinRecoveryVerifyOtpCall
                                                        .title(
                                                      (_model.mpinVerifyResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    'Incorrect Code')) {
                                              _model.isOtpValid = false;
                                              _model.errorText =
                                                  'Invalid verification code.';
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            } else if (WhitebankGroupAPIGroup
                                                    .retailAuthMpinRecoveryVerifyOtpCall
                                                    .title(
                                                  (_model.mpinVerifyResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'Session Expired') {
                                              _model.isOtpValid = false;
                                              _model.errorText =
                                                  'Code has expired.';
                                              safeSetState(() {});
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
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            (_model.mpinVerifyResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.detail''',
                                                          )?.toString(),
                                                          'Invalid Otp',
                                                        ),
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
                                                  );
                                                },
                                              );

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          }

                                          _model.timerController.onStopTimer();
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'Custom Mobile AppBar',
                      child: wrapWithModel(
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
                          rightButtonAction: () async {},
                          leftButtonAction: () async {
                            context.safePop();
                          },
                          midRightButtonAction: () async {},
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'Custom Web AppBar',
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
          ],
        ),
      ),
    );
  }
}
