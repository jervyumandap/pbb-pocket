import '/backend/schema/enums/enums.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'account_validation_success_page_model.dart';
export 'account_validation_success_page_model.dart';

class AccountValidationSuccessPageWidget extends StatefulWidget {
  const AccountValidationSuccessPageWidget({
    super.key,
    required this.sessionToken,
    required this.accountNumber,
  });

  final String? sessionToken;
  final String? accountNumber;

  static String routeName = 'AccountValidationSuccessPage';
  static String routePath = '/accountValidationSuccessPage';

  @override
  State<AccountValidationSuccessPageWidget> createState() =>
      _AccountValidationSuccessPageWidgetState();
}

class _AccountValidationSuccessPageWidgetState
    extends State<AccountValidationSuccessPageWidget>
    with TickerProviderStateMixin {
  late AccountValidationSuccessPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountValidationSuccessPageModel());

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
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 200.0, 20.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Semantics(
                                                  label: 'Greetings Text',
                                                  child: Text(
                                                    'Welcome back, ',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Semantics(
                                                  label: 'User name Text',
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      '${FFAppState().EnrollingUserAppstate.user.firstName}!',
                                                      'Firstname!',
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLargeFamily,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLargeIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Semantics(
                                                label:
                                                    'RichText Account number',
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'We found your account ending in ',
                                                        style: TextStyle(),
                                                      ),
                                                      TextSpan(
                                                        text: (String
                                                            accountNumber) {
                                                          return '*' *
                                                                  (accountNumber
                                                                          .length -
                                                                      4) +
                                                              accountNumber.substring(
                                                                  accountNumber
                                                                          .length -
                                                                      4);
                                                        }(widget
                                                            .accountNumber!),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            '. Is this your account?',
                                                        style: TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 0.0),
                                          child: Semantics(
                                            label: 'Filelds-Container',
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0x3400AAA5),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'RichText User details',
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  '•  Full Name: ',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF898C95),
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  valueOrDefault<
                                                                      String>(
                                                                FFAppState()
                                                                    .EnrollingUserAppstate
                                                                    .user
                                                                    .fullName,
                                                                'Rodrigo Abad',
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            ),
                                                            TextSpan(
                                                              text: '\n',
                                                              style:
                                                                  TextStyle(),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  '•  Mobile No.: ',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF898C95),
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  valueOrDefault<
                                                                      String>(
                                                                FFAppState()
                                                                    .EnrollingUserAppstate
                                                                    .user
                                                                    .maskedContact,
                                                                '09XX***XX21',
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            ),
                                                            TextSpan(
                                                              text: '\n',
                                                              style:
                                                                  TextStyle(),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  '•  Email address: ',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF898C95),
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  valueOrDefault<
                                                                      String>(
                                                                FFAppState()
                                                                    .EnrollingUserAppstate
                                                                    .user
                                                                    .maskedEmail,
                                                                'r***@example.com',
                                                              ),
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
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
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation']!),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Semantics(
                                      label: 'LottieAnimation',
                                      child: Lottie.asset(
                                        'assets/jsons/Nzi18ElhAM.json',
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                        repeat: false,
                                        animate: true,
                                      ),
                                    ),
                                  ),
                                ],
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Semantics(
                                            label: 'Continue Button',
                                            child: wrapWithModel(
                                              model: _model
                                                  .primaryButtonComponentModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  PrimaryButtonComponentWidget(
                                                buttonTitle: 'Yes, continue',
                                                buttonWidth: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return double.infinity;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 450.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
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
                                                textColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: 16.0,
                                                buttonDisabledOption: false,
                                                callback: () async {
                                                  context.pushNamed(
                                                    AccountVerificationPageWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'sessionToken':
                                                          serializeParam(
                                                        widget.sessionToken,
                                                        ParamType.String,
                                                      ),
                                                      'purpose': serializeParam(
                                                        VerificationType
                                                            .createCredentials,
                                                        ParamType.Enum,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 60.0),
                                          child: Semantics(
                                            label: 'Cancel/Back Button',
                                            child: wrapWithModel(
                                              model: _model
                                                  .primaryButtonComponentModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  PrimaryButtonComponentWidget(
                                                buttonTitle:
                                                    'This is not my account',
                                                buttonWidth: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return double.infinity;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 450.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
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
                                                        .secondaryBackground,
                                                textColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius: 16.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                buttonDisabledOption: false,
                                                callback: () async {
                                                  context.safePop();
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 60.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Semantics(
                                              label: 'Cancel/Back Button',
                                              child: wrapWithModel(
                                                model: _model
                                                    .primaryButtonComponentModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    PrimaryButtonComponentWidget(
                                                  buttonTitle:
                                                      'This is not my account',
                                                  buttonWidth: double.infinity,
                                                  buttonHeight: 48.0,
                                                  buttonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderRadius: 16.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  buttonDisabledOption: false,
                                                  callback: () async {
                                                    context.safePop();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Semantics(
                                              label: 'Continue Button',
                                              child: wrapWithModel(
                                                model: _model
                                                    .primaryButtonComponentModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    PrimaryButtonComponentWidget(
                                                  buttonTitle: 'Yes, continue',
                                                  buttonWidth: double.infinity,
                                                  buttonHeight: 48.0,
                                                  buttonColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  textColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  borderRadius: 16.0,
                                                  buttonDisabledOption: false,
                                                  callback: () async {
                                                    context.pushNamed(
                                                      AccountVerificationPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'sessionToken':
                                                            serializeParam(
                                                          widget.sessionToken,
                                                          ParamType.String,
                                                        ),
                                                        'purpose':
                                                            serializeParam(
                                                          VerificationType
                                                              .createCredentials,
                                                          ParamType.Enum,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 20.0)),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'Custom Mobile App Bar',
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
                      label: 'Custom Web App Bar',
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
