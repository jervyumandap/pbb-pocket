import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
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
import 'create_mpin_page_model.dart';
export 'create_mpin_page_model.dart';

class CreateMpinPageWidget extends StatefulWidget {
  const CreateMpinPageWidget({
    super.key,
    bool? isUpdating,
    this.resetToken,
  }) : this.isUpdating = isUpdating ?? false;

  final bool isUpdating;

  /// for mpin recovery
  final String? resetToken;

  static String routeName = 'CreateMpinPage';
  static String routePath = '/createMpinPage';

  @override
  State<CreateMpinPageWidget> createState() => _CreateMpinPageWidgetState();
}

class _CreateMpinPageWidgetState extends State<CreateMpinPageWidget>
    with TickerProviderStateMixin {
  late CreateMpinPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateMpinPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.retrievePublicKeyOutput = await actions.retrieveStoredData(
        'device_public_key',
      );
      _model.isCreateMpinHide = true;
      _model.isReEnterMpinHide = true;
      safeSetState(() {});
    });

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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
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
                                            'Create your ${valueOrDefault<String>(
                                              FFAppState()
                                                  .mpinLengthConfig
                                                  .toString(),
                                              '4',
                                            )}-digit Mobile Pin (MPIN)',
                                            style: FlutterFlowTheme.of(context)
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Semantics(
                                          label: 'Sub-Header-Text',
                                          child: Text(
                                            'Remember your ${valueOrDefault<String>(
                                              FFAppState()
                                                  .mpinLengthConfig
                                                  .toString(),
                                              '4',
                                            )}-digit MPIN, which serves as your login code to enter the app.',
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral7,
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
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: Semantics(
                                              label: 'Mpin Fileld-Container',
                                              child: Container(
                                                width: 280.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Form(
                                                  key: _model.formKey2,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Semantics(
                                                        label: 'MpinCode',
                                                        child: PinCodeTextField(
                                                          autoDisposeControllers:
                                                              false,
                                                          appContext: context,
                                                          length:
                                                              valueOrDefault<
                                                                  int>(
                                                            FFAppState()
                                                                .mpinLengthConfig,
                                                            4,
                                                          ),
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyLargeIsCustom,
                                                                  ),
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          enableActiveFill:
                                                              false,
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
                                                          obscuringCharacter:
                                                              '●',
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
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      100.0),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      100.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      100.0),
                                                              topRight: Radius
                                                                  .circular(
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
                                              child: Semantics(
                                                label: 'mpinCode_toggle_mask',
                                                child: ToggleIcon(
                                                  onPressed: () async {
                                                    safeSetState(() => _model
                                                            .isCreateMpinHide =
                                                        !_model
                                                            .isCreateMpinHide);
                                                  },
                                                  value:
                                                      _model.isCreateMpinHide,
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
                                          ),
                                        ],
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
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Semantics(
                                            label: 'RichText_Guides',
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        '●  MPIN should not be  sequential (ex. 1234)\n',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral4,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        '●  MPIN should not be repeating (ex. 0000)',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral4,
                                                    ),
                                                  )
                                                ],
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
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
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 25.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 20.0),
                                          child: Semantics(
                                            label:
                                                'Confirm Mpin Fileld-Container',
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
                                                      label: 'Confirm_MpinCode',
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
                                              _model.isReEnterMpinHide = false;
                                              safeSetState(() {});
                                            } else {
                                              _model.isReEnterMpinHide = true;
                                              safeSetState(() {});
                                            }
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Semantics(
                                              label:
                                                  'confirmMpinCode_toggle_mask',
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                            Builder(
                              builder: (context) => Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 60.0),
                                child: Semantics(
                                  label: 'Next_Button',
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
                                                  String mpin2,
                                                  int mpinLength) {
                                            return mpin1.length != mpinLength ||
                                                mpin2.length != mpinLength;
                                          }(
                                              _model.mpinCode!.text,
                                              _model.confirmMpinCode!.text,
                                              valueOrDefault<int>(
                                                FFAppState().mpinLengthConfig,
                                                4,
                                              ))) ||
                                          (_model.mpinCode!.text !=
                                              _model.confirmMpinCode!.text),
                                      callback: () async {
                                        if (widget.resetToken == null ||
                                            widget.resetToken == '') {
                                          if (widget.isUpdating) {
                                            _model.mpinChangeResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsMpinChangeCall
                                                    .call(
                                              currentMpin: FFAppState()
                                                  .currentMpinToChangeAppState,
                                              newMpin: _model.mpinCode!.text,
                                              confirmNewMpin:
                                                  _model.confirmMpinCode!.text,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            if (WhitebankGroupAPIGroup
                                                        .retailSettingsMpinChangeCall
                                                        .error(
                                                      (_model.mpinChangeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    null ||
                                                WhitebankGroupAPIGroup
                                                        .retailSettingsMpinChangeCall
                                                        .error(
                                                      (_model.mpinChangeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    '') {
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
                                                            'MPIN Reset Successful',
                                                        message:
                                                            'Your new MPIN has been set. You can now continue securely.',
                                                        buttonTitle: 'Continue',
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
                                            } else {
                                              if (functions.checkMpin(
                                                      _model.mpinCode!.text) ==
                                                  'repeating') {
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
                                                              'MPIN should not be repeating.',
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: WhitebankGroupAPIGroup
                                                              .retailSettingsMpinChangeCall
                                                              .title(
                                                            (_model.mpinChangeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          primaryButtonAction:
                                                              () async {
                                                            _model.mpinCode
                                                                ?.clear();
                                                            _model
                                                                .confirmMpinCode
                                                                ?.clear();

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
                                              } else if (functions.checkMpin(
                                                      _model.mpinCode!.text) ==
                                                  'sequential') {
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
                                                              'MPIN should not be sequential.',
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: WhitebankGroupAPIGroup
                                                              .retailSettingsMpinChangeCall
                                                              .title(
                                                            (_model.mpinChangeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          primaryButtonAction:
                                                              () async {
                                                            _model.mpinCode
                                                                ?.clear();
                                                            _model
                                                                .confirmMpinCode
                                                                ?.clear();

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
                                                                  .retailSettingsMpinChangeCall
                                                                  .message(
                                                            (_model.mpinChangeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!,
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: WhitebankGroupAPIGroup
                                                              .retailSettingsMpinChangeCall
                                                              .title(
                                                            (_model.mpinChangeResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          primaryButtonAction:
                                                              () async {
                                                            _model.mpinCode
                                                                ?.clear();
                                                            _model
                                                                .confirmMpinCode
                                                                ?.clear();

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
                                            }

                                            FFAppState()
                                                .currentMpinToChangeAppState = '';
                                          } else {
                                            _model.mpinSetResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsMpinSetCall
                                                    .call(
                                              mpin: _model.mpinCode!.text,
                                              confirmMpin:
                                                  _model.confirmMpinCode!.text,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              isTrustDevice: true,
                                              devicePublicKey: _model
                                                  .retrievePublicKeyOutput,
                                              deviceId: FFAppState()
                                                  .DeviceDetails
                                                  .deviceId,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            if (WhitebankGroupAPIGroup
                                                        .retailSettingsMpinSetCall
                                                        .error(
                                                      (_model.mpinSetResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    null ||
                                                WhitebankGroupAPIGroup
                                                        .retailSettingsMpinSetCall
                                                        .error(
                                                      (_model.mpinSetResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    '') {
                                              // isMpinSet TRUE
                                              FFAppState().isMpinSet = true;
                                              FFAppState().canMpinLogin = true;
                                              FFAppState().userName =
                                                  valueOrDefault<String>(
                                                currentUserData
                                                    ?.user.firstName,
                                                'Ben',
                                              );
                                              FFAppState()
                                                  .updateCurrentDeviceDetailsAppStateStruct(
                                                (e) => e..isMpinSet = true,
                                              );
                                              safeSetState(() {});

                                              context.goNamed(
                                                  AccountEnrollmentWelcomePageWidget
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
                                                              'MPIN should not be repeating.',
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: valueOrDefault<
                                                              String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsMpinSetCall
                                                                .title(
                                                              (_model.mpinSetResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'Oops!',
                                                          ),
                                                          primaryButtonAction:
                                                              () async {
                                                            _model.mpinCode
                                                                ?.clear();
                                                            _model
                                                                .confirmMpinCode
                                                                ?.clear();

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
                                              } else if (functions.checkMpin(
                                                      _model.mpinCode!.text) ==
                                                  'sequential') {
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
                                                              'MPIN should not be sequential.',
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: valueOrDefault<
                                                              String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsMpinSetCall
                                                                .title(
                                                              (_model.mpinSetResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'Oops!',
                                                          ),
                                                          primaryButtonAction:
                                                              () async {
                                                            _model.mpinCode
                                                                ?.clear();
                                                            _model
                                                                .confirmMpinCode
                                                                ?.clear();

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
                                                              valueOrDefault<
                                                                  String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsMpinSetCall
                                                                .message(
                                                              (_model.mpinSetResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'Failed to set Mpin',
                                                          ),
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: valueOrDefault<
                                                              String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsMpinSetCall
                                                                .title(
                                                              (_model.mpinSetResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'Oops!',
                                                          ),
                                                          primaryButtonAction:
                                                              () async {
                                                            _model.mpinCode
                                                                ?.clear();
                                                            _model
                                                                .confirmMpinCode
                                                                ?.clear();

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
                                            }
                                          }
                                        } else {
                                          _model.mpinRecoveryResetResponse =
                                              await WhitebankGroupAPIGroup
                                                  .retailAuthMpinRecoveryResetCall
                                                  .call(
                                            resetToken: widget.resetToken,
                                            newMpin: _model.mpinCode!.text,
                                            confirmMpin:
                                                _model.confirmMpinCode!.text,
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                          );

                                          if ((_model.mpinRecoveryResetResponse
                                                  ?.succeeded ??
                                              true)) {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        CustomReusableBottomSheetV2Widget(
                                                      title:
                                                          'Mpin Recovery Successful',
                                                      message:
                                                          'Your MPIN has been reset. You can now log in using your new MPIN.',
                                                      buttonTitle:
                                                          'Back to Login',
                                                      callback: () async {
                                                        context.goNamed(
                                                            LandingPageWidget
                                                                .routeName);
                                                      },
                                                      cancelCallback:
                                                          () async {},
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          } else {
                                            if (functions.checkMpin(
                                                    _model.mpinCode!.text) ==
                                                'repeating') {
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
                                                            'MPIN should not be repeating.',
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinRecoveryResetCall
                                                              .title(
                                                            (_model.mpinRecoveryResetResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          _model.mpinCode
                                                              ?.clear();
                                                          _model.confirmMpinCode
                                                              ?.clear();

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
                                            } else if (functions.checkMpin(
                                                    _model.mpinCode!.text) ==
                                                'sequential') {
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
                                                            'MPIN should not be sequential.',
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinRecoveryResetCall
                                                              .title(
                                                            (_model.mpinRecoveryResetResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          _model.mpinCode
                                                              ?.clear();
                                                          _model.confirmMpinCode
                                                              ?.clear();

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
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinRecoveryResetCall
                                                              .message(
                                                            (_model.mpinRecoveryResetResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Something went wrong',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinRecoveryResetCall
                                                              .title(
                                                            (_model.mpinRecoveryResetResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          _model.mpinCode
                                                              ?.clear();
                                                          _model.confirmMpinCode
                                                              ?.clear();

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
                                          }
                                        }

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
    );
  }
}
