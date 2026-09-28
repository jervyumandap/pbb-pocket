import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_mobile_bottom_sheet_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'change_m_pin_page_model.dart';
export 'change_m_pin_page_model.dart';

class ChangeMPinPageWidget extends StatefulWidget {
  const ChangeMPinPageWidget({
    super.key,
    bool? isUpdating,
    this.mpin,
  }) : this.isUpdating = isUpdating ?? false;

  final bool isUpdating;
  final String? mpin;

  static String routeName = 'ChangeMPinPage';
  static String routePath = '/changeMPinPage';

  @override
  State<ChangeMPinPageWidget> createState() => _ChangeMPinPageWidgetState();
}

class _ChangeMPinPageWidgetState extends State<ChangeMPinPageWidget>
    with TickerProviderStateMixin {
  late ChangeMPinPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeMPinPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    _model.mpinCodeFocusNode ??= FocusNode();

    _model.confirmMpinCodeFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation2': AnimationInfo(
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
      'containerOnPageLoadAnimation3': AnimationInfo(
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
    // On page dispose action.
    () async {
      context.pushNamed(SecurityAndCredentialsPageWidget.routeName);
    }();

    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Semantics(
                                              label: 'Header-Text',
                                              child: Text(
                                                'Update ${valueOrDefault<String>(
                                                  FFAppState()
                                                      .mpinLengthConfig
                                                      .toString(),
                                                  '4',
                                                )}-digit Mobile Pin (MPIN)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmallFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmallIsCustom,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Semantics(
                                              label: 'SubHeader-Text',
                                              child: Text(
                                                'Remember your ${valueOrDefault<String>(
                                                  FFAppState()
                                                      .mpinLengthConfig
                                                      .toString(),
                                                  '4',
                                                )}-digit MPIN, which serves as your login code to enter the app.',
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral7,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: Container(
                                              width: 280.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Form(
                                                key: _model.formKey1,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'MpinCode',
                                                      child: PinCodeTextField(
                                                        autoDisposeControllers:
                                                            false,
                                                        appContext: context,
                                                        length:
                                                            valueOrDefault<int>(
                                                          FFAppState()
                                                              .mpinLengthConfig,
                                                          4,
                                                        ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                        focusNode: _model
                                                            .mpinCodeFocusNode,
                                                        enablePinAutofill:
                                                            false,
                                                        errorTextSpace: 0.0,
                                                        showCursor: false,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        obscureText: _model
                                                            .isCreateMpinHide,
                                                        obscuringCharacter: '●',
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        pinTheme: PinTheme(
                                                          fieldHeight: 36.0,
                                                          fieldWidth: 36.0,
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
                                                              PinCodeFieldShape
                                                                  .circle,
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .neutral10,
                                                          inactiveColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .neutral10,
                                                          selectedColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                        ),
                                                        controller:
                                                            _model.mpinCode,
                                                        onChanged: (_) async {
                                                          safeSetState(() {});
                                                        },
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .disabled,
                                                        validator: _model
                                                            .mpinCodeValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 16.0))
                                                      .around(SizedBox(
                                                          height: 16.0)),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation1']!),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.isCreateMpinHide) {
                                                _model.isCreateMpinHide = false;
                                                safeSetState(() {});
                                              } else {
                                                _model.isCreateMpinHide = true;
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  safeSetState(() => _model
                                                          .isCreateMpinHide =
                                                      !_model.isCreateMpinHide);
                                                },
                                                value: _model.isCreateMpinHide,
                                                onIcon: FaIcon(
                                                  FontAwesomeIcons.eyeSlash,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 16.0,
                                                ),
                                                offIcon: FaIcon(
                                                  FontAwesomeIcons.eye,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
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
                                          color: Color(0x3400AAA5),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Semantics(
                                                label: 'RichText Guides',
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            '●  MPIN should not be  sequential (ex. 1234)\n',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral4,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            '●  MPIN should not be repeating (ex. 0000)',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral4,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation2']!),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Semantics(
                                                label: 'Header-Text',
                                                child: Text(
                                                  'Re-enter your ${valueOrDefault<String>(
                                                    FFAppState()
                                                        .mpinLengthConfig
                                                        .toString(),
                                                    '4',
                                                  )}-digit MPIN',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: Container(
                                              width: 280.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Form(
                                                key: _model.formKey2,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label: 'Confirm-MpinCode',
                                                      child: PinCodeTextField(
                                                        autoDisposeControllers:
                                                            false,
                                                        appContext: context,
                                                        length:
                                                            valueOrDefault<int>(
                                                          FFAppState()
                                                              .mpinLengthConfig,
                                                          4,
                                                        ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                        focusNode: _model
                                                            .confirmMpinCodeFocusNode,
                                                        enablePinAutofill:
                                                            false,
                                                        errorTextSpace: 0.0,
                                                        showCursor: false,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        obscureText: _model
                                                            .isReEnterMpinHide,
                                                        obscuringCharacter: '●',
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        pinTheme: PinTheme(
                                                          fieldHeight: 36.0,
                                                          fieldWidth: 36.0,
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
                                                              PinCodeFieldShape
                                                                  .circle,
                                                          activeColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .neutral10,
                                                          inactiveColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .neutral10,
                                                          selectedColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                        ),
                                                        controller: _model
                                                            .confirmMpinCode,
                                                        onChanged: (_) async {
                                                          safeSetState(() {});
                                                        },
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .disabled,
                                                        validator: _model
                                                            .confirmMpinCodeValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 16.0))
                                                      .around(SizedBox(
                                                          height: 16.0)),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation3']!),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.isReEnterMpinHide) {
                                                _model.isReEnterMpinHide =
                                                    false;
                                                safeSetState(() {});
                                              } else {
                                                _model.isReEnterMpinHide = true;
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: ToggleIcon(
                                                onPressed: () async {
                                                  safeSetState(() => _model
                                                          .isReEnterMpinHide =
                                                      !_model
                                                          .isReEnterMpinHide);
                                                },
                                                value: _model.isReEnterMpinHide,
                                                onIcon: FaIcon(
                                                  FontAwesomeIcons.eyeSlash,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 16.0,
                                                ),
                                                offIcon: FaIcon(
                                                  FontAwesomeIcons.eye,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) => Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 60.0),
                                child: Semantics(
                                  label: 'Button Next',
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
                                          FlutterFlowTheme.of(context).primary,
                                      textColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: 16.0,
                                      buttonDisabledOption: ((String mpin1,
                                                  String mpin2) {
                                            return mpin1.length != 4 ||
                                                mpin2.length != 4;
                                          }(_model.mpinCode!.text,
                                              _model.confirmMpinCode!.text)) ||
                                          (_model.mpinCode!.text !=
                                              _model.confirmMpinCode!.text),
                                      callback: () async {
                                        var _shouldSetState = false;
                                        _model.mpinChangeSetNewPin =
                                            await WhitebankGroupAPIGroup
                                                .mpinChangeSetNewPinCall
                                                .call(
                                          changeToken: FFAppState()
                                              .MpinChangeVerify
                                              .changeToken,
                                          deviceId: FFAppState()
                                              .DeviceDetails
                                              .deviceId,
                                          newMpin: _model.mpinCode!.text,
                                          confirmMpin:
                                              _model.confirmMpinCode!.text,
                                          baseURL: FFDevEnvironmentValues()
                                              .WBPBASEURL,
                                          accessToken:
                                              currentAuthenticationToken,
                                          fmsSessionId:
                                              currentUserData?.fmsSessionId,
                                        );

                                        _shouldSetState = true;
                                        if ((_model.mpinChangeSetNewPin
                                                ?.succeeded ??
                                            true)) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      CustomMobileBottomSheetWidget(
                                                    textTitle:
                                                        'Your new MPIN has been set. You can now continue securely.',
                                                    btnText:
                                                        'MPIN Reset Successful',
                                                    textBody:
                                                        'Your new MPIN has been set. You can now continue securely.',
                                                    btnCallback: () async {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          FFAppState().mpinVerify = '';
                                          safeSetState(() {});

                                          context.goNamed(
                                              SecurityAndCredentialsPageWidget
                                                  .routeName);
                                        } else {
                                          if (functions.checkMpin(
                                                  _model.mpinCode!.text) ==
                                              'repeating') {
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
                                                    child:
                                                        CustomInformationalDialogWidget(
                                                      message:
                                                          'MPIN should not be repeating.',
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      primaryButtonAction:
                                                          () async {
                                                        _model.mpinCode
                                                            ?.clear();
                                                        _model.confirmMpinCode
                                                            ?.clear();

                                                        Navigator.pop(context);
                                                      },
                                                      secondaryButtonAction:
                                                          () async {},
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else if (functions.checkMpin(
                                                  _model.mpinCode!.text) ==
                                              'sequential') {
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
                                                    child:
                                                        CustomInformationalDialogWidget(
                                                      message:
                                                          'MPIN should not be sequential.',
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      primaryButtonAction:
                                                          () async {
                                                        _model.mpinCode
                                                            ?.clear();
                                                        _model.confirmMpinCode
                                                            ?.clear();

                                                        Navigator.pop(context);
                                                      },
                                                      secondaryButtonAction:
                                                          () async {},
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
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child:
                                                        CustomInformationalDialogWidget(
                                                      message: MpinVerifyErrorStruct
                                                              .maybeFromMap((_model
                                                                      .mpinChangeSetNewPin
                                                                      ?.jsonBody ??
                                                                  ''))!
                                                          .message,
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      primaryButtonAction:
                                                          () async {
                                                        context.pushNamed(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'route':
                                                                serializeParam(
                                                              'limits',
                                                              ParamType.String,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              true,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
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

                                          _model.mpinChangeChallenge =
                                              await WhitebankGroupAPIGroup
                                                  .mpinChangeChallengeCall
                                                  .call(
                                            deviceId: FFAppState()
                                                .DeviceDetails
                                                .deviceId,
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                            accessToken:
                                                currentAuthenticationToken,
                                            fmsSessionId:
                                                currentUserData?.fmsSessionId,
                                          );

                                          _shouldSetState = true;
                                          if ((_model.mpinChangeChallenge
                                                  ?.succeeded ??
                                              true)) {
                                            _model.mpinChangeChallengeSignature =
                                                await actions.createPcSignature(
                                              DeviceSignaturePayloadModelStruct(
                                                mpin: FFAppState().mpinVerify,
                                                challenge:
                                                    NewMpinChangeChallengeResponseStruct
                                                            .maybeFromMap((_model
                                                                    .mpinChangeChallenge
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.challenge,
                                              ),
                                            );
                                            _shouldSetState = true;
                                            _model.mpinChangeVerify =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsMpinVerifyCall
                                                    .call(
                                              deviceId: FFAppState()
                                                  .DeviceDetails
                                                  .deviceId,
                                              challenge:
                                                  NewMpinChangeChallengeResponseStruct
                                                          .maybeFromMap((_model
                                                                  .mpinChangeChallenge
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.challenge,
                                              signature: getJsonField(
                                                _model
                                                    .mpinChangeChallengeSignature,
                                                r'''$.signatureBase64''',
                                              ).toString(),
                                              currentMpin:
                                                  FFAppState().mpinVerify,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              fmsSessionId:
                                                  currentUserData?.fmsSessionId,
                                            );

                                            _shouldSetState = true;
                                            if ((_model.mpinChangeVerify
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState()
                                                  .updateMpinChangeVerifyStruct(
                                                (e) => e
                                                  ..changeToken = MpinChangeVerifyStruct
                                                          .maybeFromMap((_model
                                                                  .mpinChangeVerify
                                                                  ?.jsonBody ??
                                                              ''))
                                                      ?.changeToken,
                                              );
                                              safeSetState(() {});
                                            } else {
                                              context.pushNamed(
                                                PayTransferFailedPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'route': serializeParam(
                                                    'limits',
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
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                  Semantics(
                    label: 'CustomMobileAppBar',
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
                          context.goNamed(
                              SecurityAndCredentialsPageWidget.routeName);
                        },
                        midRightButtonAction: () async {},
                      ),
                    ),
                  ),
                  Semantics(
                    label: 'CustomWebAppBar',
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
    );
  }
}
