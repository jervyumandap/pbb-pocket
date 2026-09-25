import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/custom_date_picker_widget/custom_date_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/o_t_p_verification_component/o_t_p_verification_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'account_validation_page_v1_model.dart';
export 'account_validation_page_v1_model.dart';

class AccountValidationPageV1Widget extends StatefulWidget {
  const AccountValidationPageV1Widget({
    super.key,
    this.module,
  });

  final String? module;

  static String routeName = 'AccountValidationPageV1';
  static String routePath = '/accountValidationPageV1';

  @override
  State<AccountValidationPageV1Widget> createState() =>
      _AccountValidationPageV1WidgetState();
}

class _AccountValidationPageV1WidgetState
    extends State<AccountValidationPageV1Widget> with TickerProviderStateMixin {
  late AccountValidationPageV1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountValidationPageV1Model());

    _model.textFieldAccountNumberTextController ??= TextEditingController();
    _model.textFieldAccountNumberFocusNode ??= FocusNode();

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
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).bgThemeColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/PBBBackgroundWeb.png',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
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
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Form(
                                    key: _model.formKey,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Padding(
                                      padding: EdgeInsets.all(26.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Account Information',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .textFieldAccountNumberTextController,
                                                    focusNode: _model
                                                        .textFieldAccountNumberFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelText:
                                                          'Account Number',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLargeIsCustom,
                                                              ),
                                                      hintText:
                                                          'Enter Account Number *',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMediumFamily,
                                                                color: Color(
                                                                    0xFF72777A),
                                                                fontSize: 14.0,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral10,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
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
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .base0,
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  17.0,
                                                                  16.0,
                                                                  17.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .formElementHover,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                    maxLength: 15,
                                                    maxLengthEnforcement:
                                                        MaxLengthEnforcement
                                                            .enforced,
                                                    buildCounter: (context,
                                                            {required currentLength,
                                                            required isFocused,
                                                            maxLength}) =>
                                                        null,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    enableInteractiveSelection:
                                                        true,
                                                    validator: _model
                                                        .textFieldAccountNumberTextControllerValidator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      FilteringTextInputFormatter
                                                          .allow(
                                                              RegExp('[0-9]'))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),

                                          // 1. Create a page/ app state -ex: DobPickedValue
                                          // 2. Pass a conditional value
                                          //   if DobPickedValue is set, then pass the DobPickedValue else pass the label of the
                                          // date picker
                                          // 3. Set Actions - Date picker, set page and app state
                                          // 4. set DobPickedValue from Date picked.
                                          wrapWithModel(
                                            model: _model
                                                .customDatePickerWidgetModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CustomDatePickerWidgetWidget(
                                              label: _model.dateOfBirthValue !=
                                                          null &&
                                                      _model.dateOfBirthValue !=
                                                          ''
                                                  ? dateTimeFormat(
                                                      "MM-d-yyyy",
                                                      _model.datePicked,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )
                                                  : 'Date of Birth',
                                              callBack: () async {
                                                final _datePickedDate =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate: DateTime(1900),
                                                  lastDate: getCurrentTimestamp,
                                                );

                                                if (_datePickedDate != null) {
                                                  safeSetState(() {
                                                    _model.datePicked =
                                                        DateTime(
                                                      _datePickedDate.year,
                                                      _datePickedDate.month,
                                                      _datePickedDate.day,
                                                    );
                                                  });
                                                } else if (_model.datePicked !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                if (_model.datePicked != null) {
                                                  _model.dateOfBirthValue =
                                                      dateTimeFormat(
                                                    "yyyy-MM-dd",
                                                    _model.datePicked,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  );
                                                  safeSetState(() {});
                                                  FFAppState()
                                                      .isDateOfBirthSet = true;
                                                  FFAppState().dateOfBirth =
                                                      dateTimeFormat(
                                                    "yyyy-MM-dd",
                                                    _model.datePicked,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  );
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 18.0)),
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onDoubleTap: () async {
                                      var _shouldSetState = false;
                                      _model.formOutput = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        safeSetState(
                                            () => _model.formOutput = false);
                                        return;
                                      }
                                      if (_model.datePicked == null) {
                                        _model.formOutput = false;
                                        safeSetState(() {});
                                        return;
                                      }
                                      _shouldSetState = true;
                                      _model.registrationInitiateValidationResponse =
                                          await WhitebankGroupAPIGroup
                                              .registrationInitiateWithValidationCall
                                              .call(
                                        accountNumber: _model
                                            .textFieldAccountNumberTextController
                                            .text,
                                        birthDate: _model.dateOfBirthValue,
                                      );

                                      _shouldSetState = true;
                                      if ((_model
                                              .registrationInitiateValidationResponse
                                              ?.succeeded ??
                                          true)) {
                                        _model.sendOtpResponse =
                                            await WhitebankGroupAPIGroup
                                                .registrationSendOtpCall
                                                .call(
                                          channel: 'SMS',
                                          sessionToken: WhitebankGroupAPIGroup
                                              .registrationInitiateWithValidationCall
                                              .sessionToken(
                                            (_model.registrationInitiateValidationResponse
                                                    ?.jsonBody ??
                                                ''),
                                          ),
                                        );

                                        _shouldSetState = true;
                                        if ((_model
                                                .sendOtpResponse?.succeeded ??
                                            true)) {
                                          // OTP Verification Component
                                          // OTP Verification Component
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        OTPVerificationComponentWidget(
                                                      callbackResendOTP:
                                                          () async {
                                                        _model.resendOtpResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .registrationResendOtpCall
                                                                .call(
                                                          sessionToken:
                                                              WhitebankGroupAPIGroup
                                                                  .registrationInitiateWithValidationCall
                                                                  .sessionToken(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          channel: 'SMS',
                                                        );

                                                        if (!(_model
                                                                .resendOtpResponse
                                                                ?.succeeded ??
                                                            true)) {
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
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    WebViewAware(
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
                                                                      message: WhitebankGroupAPIGroup
                                                                          .registrationResendOtpCall
                                                                          .message(
                                                                        (_model.resendOtpResponse?.jsonBody ??
                                                                            ''),
                                                                      )!,
                                                                      primaryButtonTitle:
                                                                          'Dismiss',
                                                                      title: WhitebankGroupAPIGroup
                                                                          .registrationResendOtpCall
                                                                          .error(
                                                                        (_model.resendOtpResponse?.jsonBody ??
                                                                            ''),
                                                                      ),
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
                                                      },
                                                      callbackClose: () async {
                                                        Navigator.pop(context);
                                                      },
                                                      callbackSuccess:
                                                          () async {},
                                                      callbackConfirm:
                                                          () async {
                                                        _model.verifyOtpResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .registrationVerifyOtpCall
                                                                .call(
                                                          otpCode: FFAppState()
                                                              .pinInput,
                                                          sessionToken:
                                                              WhitebankGroupAPIGroup
                                                                  .registrationInitiateWithValidationCall
                                                                  .sessionToken(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                        );

                                                        if (WhitebankGroupAPIGroup
                                                            .registrationVerifyOtpCall
                                                            .isVerified(
                                                          (_model.verifyOtpResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!) {
                                                          context.pushNamed(
                                                            AccountSetupPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'sessionToken':
                                                                  serializeParam(
                                                                WhitebankGroupAPIGroup
                                                                    .registrationInitiateWithValidationCall
                                                                    .sessionToken(
                                                                  (_model.registrationInitiateValidationResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
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
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    WebViewAware(
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
                                                                      message: WhitebankGroupAPIGroup
                                                                          .registrationVerifyOtpCall
                                                                          .message(
                                                                        (_model.verifyOtpResponse?.jsonBody ??
                                                                            ''),
                                                                      )!,
                                                                      primaryButtonTitle:
                                                                          'Dismiss',
                                                                      title: WhitebankGroupAPIGroup
                                                                          .registrationVerifyOtpCall
                                                                          .error(
                                                                        (_model.verifyOtpResponse?.jsonBody ??
                                                                            ''),
                                                                      ),
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
                                                      },
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
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        CustomInformationalDialogWidget(
                                                      message:
                                                          WhitebankGroupAPIGroup
                                                              .registrationSendOtpCall
                                                              .message(
                                                        (_model.sendOtpResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!,
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      title: WhitebankGroupAPIGroup
                                                          .registrationSendOtpCall
                                                          .error(
                                                        (_model.sendOtpResponse
                                                                ?.jsonBody ??
                                                            ''),
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
                                                      WhitebankGroupAPIGroup
                                                          .registrationInitiateWithValidationCall
                                                          .reason(
                                                        (_model.registrationInitiateValidationResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Please check your connection and try again. If the issue continues, contact support.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .registrationInitiateWithValidationCall
                                                          .status(
                                                        (_model.registrationInitiateValidationResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Failed',
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

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    child: FFButtonWidget(
                                      onPressed: _model.isFormValidated
                                          ? null
                                          : () async {
                                              var _shouldSetState = false;
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.datePicked == null) {
                                                return;
                                              }
                                              _model.registrationInitiatewithValidationResponse =
                                                  await WhitebankGroupAPIGroup
                                                      .registrationInitiateWithValidationCall
                                                      .call(
                                                accountNumber: _model
                                                    .textFieldAccountNumberTextController
                                                    .text,
                                                birthDate:
                                                    _model.dateOfBirthValue,
                                              );

                                              _shouldSetState = true;
                                              if ((_model
                                                      .registrationInitiatewithValidationResponse
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.accountVerificationResponse =
                                                    await _model
                                                        .accountVerification(
                                                  context,
                                                  sessionToken:
                                                      WhitebankGroupAPIGroup
                                                          .registrationInitiateWithValidationCall
                                                          .sessionToken(
                                                    (_model.registrationInitiatewithValidationResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                );
                                                _shouldSetState = true;
                                                if (_model
                                                        .accountVerificationResponse !=
                                                    ActionBlockReturnType
                                                        .success) {
                                                  _model.registrationSendOtpResponse =
                                                      await WhitebankGroupAPIGroup
                                                          .registrationSendOtpCall
                                                          .call(
                                                    channel: 'SMS',
                                                    sessionToken:
                                                        WhitebankGroupAPIGroup
                                                            .registrationInitiateWithValidationCall
                                                            .sessionToken(
                                                      (_model.registrationInitiatewithValidationResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .registrationSendOtpResponse
                                                          ?.succeeded ??
                                                      true)) {
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
                                                                  OTPVerificationComponentWidget(
                                                                callbackResendOTP:
                                                                    () async {
                                                                  _model.registrationResendOtpResponse =
                                                                      await WhitebankGroupAPIGroup
                                                                          .registrationResendOtpCall
                                                                          .call(
                                                                    sessionToken:
                                                                        WhitebankGroupAPIGroup
                                                                            .registrationInitiateWithValidationCall
                                                                            .sessionToken(
                                                                      (_model.registrationInitiatewithValidationResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    channel:
                                                                        'SMS',
                                                                  );

                                                                  if (!(_model
                                                                          .registrationResendOtpResponse
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(dialogContext).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: CustomInformationalDialogWidget(
                                                                                message: 'Please check your connection and try again. If the issue continues, contact support.',
                                                                                primaryButtonTitle: 'Dismiss',
                                                                                title: 'Something went wrong',
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
                                                                callbackClose:
                                                                    () async {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                callbackSuccess:
                                                                    () async {},
                                                                callbackConfirm:
                                                                    () async {
                                                                  _model.registrationVerifyOtpResponse =
                                                                      await WhitebankGroupAPIGroup
                                                                          .registrationVerifyOtpCall
                                                                          .call(
                                                                    otpCode:
                                                                        FFAppState()
                                                                            .pinInput,
                                                                    sessionToken:
                                                                        WhitebankGroupAPIGroup
                                                                            .registrationInitiateWithValidationCall
                                                                            .sessionToken(
                                                                      (_model.registrationInitiatewithValidationResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                  );

                                                                  if ((_model
                                                                          .registrationVerifyOtpResponse
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    context
                                                                        .pushNamed(
                                                                      AccountSetupPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'sessionToken':
                                                                            serializeParam(
                                                                          '',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(dialogContext).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: CustomInformationalDialogWidget(
                                                                                message: 'Please check your connection and try again. If the issue continues, contact support.',
                                                                                primaryButtonTitle: 'Dismiss',
                                                                                title: 'Something went wrong',
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
                                                    );
                                                  } else {
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
                                                                message:
                                                                    'Please check your connection and try again. If the issue continues, contact support.',
                                                                primaryButtonTitle:
                                                                    'Dismiss',
                                                                title:
                                                                    'Something went wrong',
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
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
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
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              CustomInformationalDialogWidget(
                                                            message:
                                                                valueOrDefault<
                                                                    String>(
                                                              WhitebankGroupAPIGroup
                                                                  .registrationInitiateWithValidationCall
                                                                  .reason(
                                                                (_model.registrationInitiatewithValidationResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              'Please check your connection and try again. If the issue continues, contact support.',
                                                            ),
                                                            primaryButtonTitle:
                                                                'Dismiss',
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              WhitebankGroupAPIGroup
                                                                  .registrationInitiateWithValidationCall
                                                                  .status(
                                                                (_model.registrationInitiatewithValidationResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              'Failed',
                                                            ),
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

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                      text: 'Next',
                                      options: FFButtonOptions(
                                        width: () {
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
                                        height: 40.0,
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
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .neutral9,
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation']!),
                                ),
                              ),
                            ]
                                .divide(SizedBox(height: 16.0))
                                .around(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.customMobileAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomMobileAppBarWidget(
                        pageTitle: 'Register an Account',
                        rightButtonIcon: null,
                        leftButtonIcon: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        midRightButtonIcon: null,
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
