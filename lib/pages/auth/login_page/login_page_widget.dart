import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/login_header_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.outputToken = await actions.checkRefreshToken();
        }),
        Future(() async {
          _model.username = await actions.readUsernameSecurely();
        }),
        Future(() async {
          _model.biometricPreference =
              await actions.readBiometricPreferenceSecurely();
        }),
        Future(() async {
          _model.userID = await actions.readUserIDSecurely();
        }),
        Future(() async {
          if (isWeb) {
            await actions.injectPaygilantWebSdk(
              valueOrDefault<String>(
                FFDevEnvironmentValues().PaygilantDomain,
                'poc-ap1.paygilant.com',
              ),
              valueOrDefault<String>(
                FFDevEnvironmentValues().PaygilantClientKey,
                '3238baaafa4a',
              ),
            );
          } else {
            await actions.initPaygilant(
              'https://poc-ap1.paygilant.com/3238baaafa4a/',
            );
          }
        }),
        Future(() async {
          // Retrieved username for pk.
          _model.retrievedUsernameForPK = await actions.retrieveStoredData(
            FFAppConstants.WBUsernameKey,
          );
        }),
      ]);
      _model.loadingStatement = false;
      safeSetState(() {});
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.textFieldUsernameTextController ??= TextEditingController();
    _model.textFieldUsernameFocusNode ??= FocusNode();
    _model.textFieldUsernameFocusNode!.addListener(() => safeSetState(() {}));
    _model.textFieldPwTextController ??= TextEditingController();
    _model.textFieldPwFocusNode ??= FocusNode();
    _model.textFieldPwFocusNode!.addListener(() => safeSetState(() {}));
    _model.textFieldUsernameWebTextController ??= TextEditingController();
    _model.textFieldUsernameWebFocusNode ??= FocusNode();
    _model.textFieldUsernameWebFocusNode!
        .addListener(() => safeSetState(() {}));
    _model.textFieldPwWebTextController ??= TextEditingController();
    _model.textFieldPwWebFocusNode ??= FocusNode();
    _model.textFieldPwWebFocusNode!.addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'richTextOnPageLoadAnimation': AnimationInfo(
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

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
        body: Stack(
          children: [
            Container(
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
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Semantics(
                      label: 'Login Form',
                      child: Form(
                        key: _model.formKey1,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Semantics(
                                  label: 'Collapsing_Login_Header',
                                  child: custom_widgets.CollapsingLoginHeader(
                                    width: double.infinity,
                                    height: 372.0,
                                    isCollapsed: isWeb
                                        ? MediaQuery.viewInsetsOf(context)
                                                .bottom >
                                            0
                                        : _isKeyboardVisible,
                                    expandedHeight: 372.0,
                                    animationDuration: 300,
                                    animationCurve: 0,
                                    collapsedHeight: 210.0,
                                    headerContent: () => LoginHeaderWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Semantics(
                                    label: 'Login Form Container',
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            26.0, 0.0, 26.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Welcome Back!',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Semantics(
                                              label: 'login_username_field',
                                              child: Container(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldUsernameTextController,
                                                  focusNode: _model
                                                      .textFieldUsernameFocusNode,
                                                  autofocus: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'Username',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
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
                                                    alignLabelWithHint: false,
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color:
                                                              Color(0xFF72777A),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMediumIsCustom,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral10,
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
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
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .base0,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12.0,
                                                                17.0,
                                                                12.0,
                                                                17.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .formElementHover,
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
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .textFieldUsernameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Semantics(
                                                    label:
                                                        'login_password_field',
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: TextFormField(
                                                        controller: _model
                                                            .textFieldPwTextController,
                                                        focusNode: _model
                                                            .textFieldPwFocusNode,
                                                        autofocus: false,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        obscureText: !_model
                                                            .textFieldPwVisibility,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelText: 'Password',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelLargeFamily,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelLargeIsCustom,
                                                                  ),
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMediumFamily,
                                                                    color: Color(
                                                                        0xFF72777A),
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .labelMediumIsCustom,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: _model
                                                                          .isLoginValid ==
                                                                      true
                                                                  ? Colors.white
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: _model
                                                                          .isLoginValid ==
                                                                      true
                                                                  ? Colors.white
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: _model
                                                                          .isLoginValid ==
                                                                      true
                                                                  ? Colors.white
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          filled: true,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .base0,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      17.0,
                                                                      12.0,
                                                                      17.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .formElementHover,
                                                          suffixIcon: InkWell(
                                                            onTap: () async {
                                                              safeSetState(() =>
                                                                  _model.textFieldPwVisibility =
                                                                      !_model
                                                                          .textFieldPwVisibility);
                                                            },
                                                            focusNode: FocusNode(
                                                                skipTraversal:
                                                                    true),
                                                            child: Icon(
                                                              _model.textFieldPwVisibility
                                                                  ? Icons
                                                                      .visibility_outlined
                                                                  : Icons
                                                                      .visibility_off_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .skyDark,
                                                              size: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        enableInteractiveSelection:
                                                            true,
                                                        validator: _model
                                                            .textFieldPwTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (_model.isLoginValid ==
                                                    false)
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Semantics(
                                                        label: 'Error Text',
                                                        child: Text(
                                                          '*Invalid Password',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                fontSize: 12.0,
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
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 16.0),
                                                  child: Semantics(
                                                    label:
                                                        'forgot_password_link',
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
                                                        context.pushNamed(
                                                          RecoveryPasswordPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'purpose':
                                                                serializeParam(
                                                              VerificationType
                                                                  .recoverPassword,
                                                              ParamType.Enum,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Text(
                                                        'Forgot Password?',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLargeIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Builder(
                                              builder: (context) => Semantics(
                                                label: 'Login_Button',
                                                child: wrapWithModel(
                                                  model: _model
                                                      .primaryButtonComponentModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      PrimaryButtonComponentWidget(
                                                    buttonTitle: 'Login',
                                                    buttonWidth:
                                                        double.infinity,
                                                    buttonHeight: 48.0,
                                                    buttonColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    textColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    borderRadius: 16.0,
                                                    buttonDisabledOption: (_model.textFieldUsernameTextController
                                                                    .text ==
                                                                '') ||
                                                        (_model.textFieldPwTextController
                                                                    .text ==
                                                                ''),
                                                    callback: () async {
                                                      Function() _navigate =
                                                          () {};
                                                      _model.fcmTokenOutput =
                                                          await actions
                                                              .getFCMToken();
                                                      FFAppState()
                                                              .headerCollapsed =
                                                          false;
                                                      FFAppState()
                                                          .update(() {});
                                                      _model.getPaygilantSessionOutput2 =
                                                          await actions
                                                              .getPaygilantSession();
                                                      _model.retailLoginResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .retailLoginCall
                                                              .call(
                                                        username: _model
                                                            .textFieldUsernameTextController
                                                            .text,
                                                        password: _model
                                                            .textFieldPwTextController
                                                            .text,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        deviceName: FFAppState()
                                                            .DeviceDetails
                                                            .name,
                                                        pushToken: _model
                                                            .fcmTokenOutput,
                                                        pushPlatform:
                                                            FFAppState()
                                                                .DeviceDetails
                                                                .os,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        fmsSessionId: _model
                                                            .getPaygilantSessionOutput2,
                                                      );

                                                      if ((_model
                                                              .retailLoginResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.getProfileResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .retailSettingsProfileDetailsCall
                                                                .call(
                                                          accessToken:
                                                              WhitebankGroupAPIGroup
                                                                  .retailLoginCall
                                                                  .accessToken(
                                                            (_model.retailLoginResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                        );

                                                        if ((_model
                                                                .retailLoginResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          await action_blocks
                                                              .checkUsername(
                                                            context,
                                                            username: _model
                                                                .textFieldUsernameTextController
                                                                .text,
                                                          );
                                                          GoRouter.of(context)
                                                              .prepareAuthEvent();
                                                          await authManager
                                                              .signIn(
                                                            authenticationToken:
                                                                WhitebankGroupAPIGroup
                                                                    .retailLoginCall
                                                                    .accessToken(
                                                              (_model.retailLoginResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            refreshToken:
                                                                WhitebankGroupAPIGroup
                                                                    .retailLoginCall
                                                                    .refreshToken(
                                                              (_model.retailLoginResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            tokenExpiration: functions
                                                                .createTokenExpirationDateTime(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailLoginCall
                                                                        .expiresIn(
                                                              (_model.retailLoginResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!),
                                                            authUid:
                                                                WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .id(
                                                              (_model.getProfileResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            userData:
                                                                AuthenticatedUserStruct(
                                                              accessToken:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailLoginCall
                                                                      .accessToken(
                                                                (_model.retailLoginResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              refreshToken:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailLoginCall
                                                                      .refreshToken(
                                                                (_model.retailLoginResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              expiresIn:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailLoginCall
                                                                      .expiresIn(
                                                                (_model.retailLoginResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              user:
                                                                  UserV3Struct(
                                                                userName: _model
                                                                    .textFieldUsernameTextController
                                                                    .text,
                                                                firstName: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .firstName(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                lastName: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .lastName(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                id: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .id(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                email: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .email(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                mobileNumber:
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsProfileDetailsCall
                                                                        .phone(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                createdAt: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .createdAt(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                updatedAt: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .updatedAt(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                fullName:
                                                                    '${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.firstName(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )} ${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.lastName(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )}',
                                                                uid: WhitebankGroupAPIGroup
                                                                    .retailSettingsProfileDetailsCall
                                                                    .customerId(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                branchName:
                                                                    getJsonField(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.branchName''',
                                                                ).toString(),
                                                                branchCode:
                                                                    getJsonField(
                                                                  (_model.getProfileResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.branchCode''',
                                                                ).toString(),
                                                              ),
                                                              fmsSessionId: _model
                                                                  .getPaygilantSessionOutput2,
                                                            ),
                                                          );
                                                          _navigate = () =>
                                                              context.goNamedAuth(
                                                                  DashboardWidget
                                                                      .routeName,
                                                                  context
                                                                      .mounted);
                                                          FFAppState()
                                                                  .userName =
                                                              currentUserData!
                                                                  .user
                                                                  .firstName;
                                                          FFAppState()
                                                              .update(() {});
                                                          _model.isLoginValid =
                                                              true;
                                                          safeSetState(() {});
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
                                                                      message:
                                                                          valueOrDefault<
                                                                              String>(
                                                                        getJsonField(
                                                                          (_model.getProfileResponse?.jsonBody ??
                                                                              ''),
                                                                          r'''$.message''',
                                                                        )?.toString(),
                                                                        'Something went wrong.',
                                                                      ),
                                                                      primaryButtonTitle:
                                                                          'Dismiss',
                                                                      title: valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          (_model.getProfileResponse?.jsonBody ??
                                                                              ''),
                                                                          r'''$.title''',
                                                                        )?.toString(),
                                                                        'Oops!',
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
                                                      } else if (WhitebankGroupAPIGroup
                                                              .retailLoginCall
                                                              .error(
                                                            (_model.retailLoginResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ) ==
                                                          ResponseStatus
                                                              .ACCOUNT_LOCKED
                                                              .name) {
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
                                                                        valueOrDefault<
                                                                            String>(
                                                                      getJsonField(
                                                                        (_model.retailLoginResponse?.jsonBody ??
                                                                            ''),
                                                                        r'''$.message''',
                                                                      )?.toString(),
                                                                      'Something went wrong',
                                                                    ),
                                                                    primaryButtonTitle:
                                                                        'Dismiss',
                                                                    title: valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        (_model.retailLoginResponse?.jsonBody ??
                                                                            ''),
                                                                        r'''$.title''',
                                                                      )?.toString(),
                                                                      'Oops!',
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

                                                        _model.isLoginValid =
                                                            false;
                                                        safeSetState(() {});
                                                      } else if (WhitebankGroupAPIGroup
                                                                  .retailLoginCall
                                                                  .error(
                                                                (_model.retailLoginResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) !=
                                                              null &&
                                                          WhitebankGroupAPIGroup
                                                                  .retailLoginCall
                                                                  .error(
                                                                (_model.retailLoginResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ) !=
                                                              '') {
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
                                                                        valueOrDefault<
                                                                            String>(
                                                                      getJsonField(
                                                                        (_model.retailLoginResponse?.jsonBody ??
                                                                            ''),
                                                                        r'''$.message''',
                                                                      )?.toString(),
                                                                      'Something went wrong.',
                                                                    ),
                                                                    primaryButtonTitle:
                                                                        'Dismiss',
                                                                    title: valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        (_model.retailLoginResponse?.jsonBody ??
                                                                            ''),
                                                                        r'''$.title''',
                                                                      )?.toString(),
                                                                      'Oops!',
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

                                                        _model.isLoginValid =
                                                            false;
                                                        safeSetState(() {});
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
                                                                        valueOrDefault<
                                                                            String>(
                                                                      getJsonField(
                                                                        (_model.retailLoginResponse?.jsonBody ??
                                                                            ''),
                                                                        r'''$.message''',
                                                                      )?.toString(),
                                                                      'Something went wrong.',
                                                                    ),
                                                                    primaryButtonTitle:
                                                                        'Dismiss',
                                                                    title: valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        (_model.retailLoginResponse?.jsonBody ??
                                                                            ''),
                                                                        r'''$.title''',
                                                                      )?.toString(),
                                                                      'Oops!',
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

                                                        _model.isLoginValid =
                                                            false;
                                                        safeSetState(() {});
                                                      }

                                                      _navigate();

                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) => Semantics(
                                                label: 'Passkey_Login_Button',
                                                child: FFButtonWidget(
                                                  onPressed:
                                                      (_model.textFieldUsernameTextController
                                                                      .text ==
                                                                  '')
                                                          ? null
                                                          : () async {
                                                              Function()
                                                                  _navigate =
                                                                  () {};
                                                              _model.getPaygilantSessionPkOutput =
                                                                  await actions
                                                                      .getPaygilantSession();
                                                              _model.passkeyAuthVerifyPayload =
                                                                  await actions
                                                                      .passkeyAuthVerifyPayload(
                                                                _model
                                                                    .textFieldUsernameTextController
                                                                    .text,
                                                                '123',
                                                                FFAppState()
                                                                    .DeviceDetails
                                                                    .deviceId,
                                                              );
                                                              _model.passkeyAuthResponse =
                                                                  await WhitebankGroupAPIGroup
                                                                      .retailVerifyPasskeyAuthCall
                                                                      .call(
                                                                baseURL:
                                                                    FFDevEnvironmentValues()
                                                                        .WBPBASEURL,
                                                                deviceId:
                                                                    getJsonField(
                                                                  _model
                                                                      .passkeyAuthVerifyPayload,
                                                                  r'''$.deviceId''',
                                                                ).toString(),
                                                                id: getJsonField(
                                                                  _model
                                                                      .passkeyAuthVerifyPayload,
                                                                  r'''$.id''',
                                                                ).toString(),
                                                                rawId:
                                                                    getJsonField(
                                                                  _model
                                                                      .passkeyAuthVerifyPayload,
                                                                  r'''$.rawId''',
                                                                ).toString(),
                                                                type:
                                                                    getJsonField(
                                                                  _model
                                                                      .passkeyAuthVerifyPayload,
                                                                  r'''$.type''',
                                                                ).toString(),
                                                                responseJson:
                                                                    getJsonField(
                                                                  _model
                                                                      .passkeyAuthVerifyPayload,
                                                                  r'''$.response''',
                                                                ),
                                                                authenticatorAttachment:
                                                                    getJsonField(
                                                                  _model
                                                                      .passkeyAuthVerifyPayload,
                                                                  r'''$.authenticatorAttachment''',
                                                                ).toString(),
                                                                fmsSessionId: _model
                                                                    .getPaygilantSessionPkOutput,
                                                              );

                                                              if ((_model
                                                                      .passkeyAuthResponse
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                _model.pKGetProfileResponse =
                                                                    await WhitebankGroupAPIGroup
                                                                        .retailSettingsProfileDetailsCall
                                                                        .call(
                                                                  accessToken:
                                                                      getJsonField(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailVerifyPasskeyAuthCall
                                                                        .tokens(
                                                                      (_model.passkeyAuthResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    r'''$.accessToken''',
                                                                  ).toString(),
                                                                  baseURL:
                                                                      FFDevEnvironmentValues()
                                                                          .WBPBASEURL,
                                                                );

                                                                if ((_model
                                                                        .pKGetProfileResponse
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  GoRouter.of(
                                                                          context)
                                                                      .prepareAuthEvent();
                                                                  await authManager
                                                                      .signIn(
                                                                    authenticationToken:
                                                                        getJsonField(
                                                                      WhitebankGroupAPIGroup
                                                                          .retailVerifyPasskeyAuthCall
                                                                          .tokens(
                                                                        (_model.passkeyAuthResponse?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      r'''$.accessToken''',
                                                                    ).toString(),
                                                                    refreshToken:
                                                                        getJsonField(
                                                                      WhitebankGroupAPIGroup
                                                                          .retailVerifyPasskeyAuthCall
                                                                          .tokens(
                                                                        (_model.passkeyAuthResponse?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      r'''$.refreshToken''',
                                                                    ).toString(),
                                                                    tokenExpiration:
                                                                        functions
                                                                            .createTokenExpirationDateTime(getJsonField(
                                                                      WhitebankGroupAPIGroup
                                                                          .retailVerifyPasskeyAuthCall
                                                                          .tokens(
                                                                        (_model.passkeyAuthResponse?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      r'''$.expiresIn''',
                                                                    )),
                                                                    authUid:
                                                                        WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .id(
                                                                      (_model.pKGetProfileResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    userData:
                                                                        AuthenticatedUserStruct(
                                                                      accessToken:
                                                                          getJsonField(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailVerifyPasskeyAuthCall
                                                                            .tokens(
                                                                          (_model.passkeyAuthResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        r'''$.accessToken''',
                                                                      ).toString(),
                                                                      refreshToken:
                                                                          getJsonField(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailVerifyPasskeyAuthCall
                                                                            .tokens(
                                                                          (_model.passkeyAuthResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        r'''$.refreshToken''',
                                                                      ).toString(),
                                                                      expiresIn:
                                                                          getJsonField(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailVerifyPasskeyAuthCall
                                                                            .tokens(
                                                                          (_model.passkeyAuthResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        r'''$.expiresIn''',
                                                                      ),
                                                                      user:
                                                                          UserV3Struct(
                                                                        userName: _model
                                                                            .textFieldUsernameTextController
                                                                            .text,
                                                                        firstName: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .firstName(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        lastName: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .lastName(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        id: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .id(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        email: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .email(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        mobileNumber: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .phone(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        createdAt: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .createdAt(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        updatedAt: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .updatedAt(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        fullName:
                                                                            '${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.firstName(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        )} ${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.lastName(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        )}',
                                                                        uid: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .customerId(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        branchName:
                                                                            getJsonField(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                          r'''$.branchName''',
                                                                        ).toString(),
                                                                        branchCode:
                                                                            getJsonField(
                                                                          (_model.pKGetProfileResponse?.jsonBody ??
                                                                              ''),
                                                                          r'''$.branchCode''',
                                                                        ).toString(),
                                                                      ),
                                                                      fmsSessionId:
                                                                          _model
                                                                              .getPaygilantSessionPkOutput,
                                                                    ),
                                                                  );
                                                                  _navigate = () => context.goNamedAuth(
                                                                      DashboardWidget
                                                                          .routeName,
                                                                      context
                                                                          .mounted);
                                                                  FFAppState()
                                                                          .userName =
                                                                      currentUserData!
                                                                          .user
                                                                          .firstName;
                                                                  FFAppState()
                                                                      .update(
                                                                          () {});
                                                                  _model.isLoginValid =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
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
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                CustomInformationalDialogWidget(
                                                                              message: valueOrDefault<String>(
                                                                                WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.detail(
                                                                                  (_model.pKGetProfileResponse?.jsonBody ?? ''),
                                                                                ),
                                                                                'Something went wrong.',
                                                                              ),
                                                                              primaryButtonTitle: 'Dismiss',
                                                                              title: valueOrDefault<String>(
                                                                                WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.title(
                                                                                  (_model.pKGetProfileResponse?.jsonBody ?? ''),
                                                                                ),
                                                                                'Oops!',
                                                                              ),
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
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
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
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                valueOrDefault<String>(
                                                                              WhitebankGroupAPIGroup.retailVerifyPasskeyAuthCall.detail(
                                                                                (_model.passkeyAuthResponse?.jsonBody ?? ''),
                                                                              ),
                                                                              'The passkey could not be found.',
                                                                            ),
                                                                            primaryButtonTitle:
                                                                                'Dismiss',
                                                                            title:
                                                                                valueOrDefault<String>(
                                                                              WhitebankGroupAPIGroup.retailVerifyPasskeyAuthCall.title(
                                                                                (_model.passkeyAuthResponse?.jsonBody ?? ''),
                                                                              ),
                                                                              'Passkey Not Found',
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

                                                              _navigate();

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                  text: 'Login with Passkey',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLargeFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLargeIsCustom,
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
                                          ].divide(SizedBox(height: 18.0)),
                                        ),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                ),
                              ],
                            ),
                            if (FFAppState()
                                .FeatureFlagsAppstate
                                .retailSelfRegistration)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 18.0, 0.0, 70.0),
                                child: Semantics(
                                  label: 'Enroll Account Row',
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Semantics(
                                        label: 'register_link',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                AccountValidationPageWidget
                                                    .routeName);
                                          },
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'Don’t have an account yet?',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: ' Register',
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
                                                                .primary,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                )
                                              ],
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!),
                              ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Form(
                        key: _model.formKey2,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 40.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Container(
                                      width: 580.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Semantics(
                                            label: 'collapsing_header',
                                            child: Container(
                                              width: double.infinity,
                                              height: 250.0,
                                              child: custom_widgets
                                                  .CollapsingLoginHeader(
                                                width: double.infinity,
                                                height: 250.0,
                                                isCollapsed: false,
                                                expandedHeight: 372.0,
                                                animationDuration: 300,
                                                animationCurve: 0,
                                                collapsedHeight: 210.0,
                                                headerContent: () =>
                                                    LoginHeaderWidget(),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Semantics(
                                                  label: 'login_title_text',
                                                  child: Text(
                                                    'Log in to your account',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                Semantics(
                                                  label:
                                                      'TextField_Username_Web',
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textFieldUsernameWebTextController,
                                                      focusNode: _model
                                                          .textFieldUsernameWebFocusNode,
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText: 'Username',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLargeIsCustom,
                                                                ),
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
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral10,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .base0,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    17.0,
                                                                    12.0,
                                                                    17.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .formElementHover,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      enableInteractiveSelection:
                                                          true,
                                                      validator: _model
                                                          .textFieldUsernameWebTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Semantics(
                                                  label:
                                                      'TextField_Password_Web',
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textFieldPwWebTextController,
                                                      focusNode: _model
                                                          .textFieldPwWebFocusNode,
                                                      autofocus: false,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      obscureText: !_model
                                                          .textFieldPwWebVisibility,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLargeIsCustom,
                                                                ),
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
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMediumIsCustom,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral10,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .base0,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    17.0,
                                                                    12.0,
                                                                    17.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .formElementHover,
                                                        suffixIcon: InkWell(
                                                          onTap: () async {
                                                            safeSetState(() => _model
                                                                    .textFieldPwWebVisibility =
                                                                !_model
                                                                    .textFieldPwWebVisibility);
                                                          },
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            _model.textFieldPwWebVisibility
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .skyDark,
                                                            size: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      enableInteractiveSelection:
                                                          true,
                                                      validator: _model
                                                          .textFieldPwWebTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Semantics(
                                                  label: 'forgot_password_row',
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    15.0),
                                                        child: Semantics(
                                                          label:
                                                              'forgot_password_text',
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                RecoveryPasswordPageWidget
                                                                    .routeName,
                                                                queryParameters:
                                                                    {
                                                                  'purpose':
                                                                      serializeParam(
                                                                    VerificationType
                                                                        .recoverPassword,
                                                                    ParamType
                                                                        .Enum,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Text(
                                                              'Forgot Password?',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyLargeFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyLargeIsCustom,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) =>
                                                      Semantics(
                                                    label: 'Login_Button_Web',
                                                    child: FFButtonWidget(
                                                      onPressed: ((_model.textFieldUsernameWebTextController
                                                                          .text ==
                                                                      '') ||
                                                              (_model.textFieldPwWebTextController
                                                                          .text ==
                                                                      ''))
                                                          ? null
                                                          : () async {
                                                              Function()
                                                                  _navigate =
                                                                  () {};
                                                              _model.fcmTokenOutputCopy =
                                                                  await actions
                                                                      .getFCMToken();
                                                              FFAppState()
                                                                      .headerCollapsed =
                                                                  false;
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                              _model.getPaygilantSessionOutputWeb =
                                                                  await actions
                                                                      .getPaygilantSession();
                                                              _model.retailLoginResponseCopy =
                                                                  await WhitebankGroupAPIGroup
                                                                      .retailLoginCall
                                                                      .call(
                                                                username: _model
                                                                    .textFieldUsernameWebTextController
                                                                    .text,
                                                                password: _model
                                                                    .textFieldPwWebTextController
                                                                    .text,
                                                                deviceId: FFAppState()
                                                                    .DeviceDetails
                                                                    .deviceId,
                                                                deviceName:
                                                                    FFAppState()
                                                                        .DeviceDetails
                                                                        .name,
                                                                pushToken: _model
                                                                    .fcmTokenOutputCopy,
                                                                pushPlatform:
                                                                    FFAppState()
                                                                        .DeviceDetails
                                                                        .os,
                                                                baseURL:
                                                                    FFDevEnvironmentValues()
                                                                        .WBPBASEURL,
                                                                fmsSessionId: _model
                                                                    .getPaygilantSessionOutputWeb,
                                                              );

                                                              if ((_model
                                                                      .retailLoginResponseCopy
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                _model.getProfileResponseCopy =
                                                                    await WhitebankGroupAPIGroup
                                                                        .retailSettingsProfileDetailsCall
                                                                        .call(
                                                                  accessToken:
                                                                      WhitebankGroupAPIGroup
                                                                          .retailLoginCall
                                                                          .accessToken(
                                                                    (_model.retailLoginResponseCopy
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  baseURL:
                                                                      FFDevEnvironmentValues()
                                                                          .WBPBASEURL,
                                                                );

                                                                if ((_model
                                                                        .getProfileResponseCopy
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  await action_blocks
                                                                      .checkUsername(
                                                                    context,
                                                                    username: _model
                                                                        .textFieldUsernameWebTextController
                                                                        .text,
                                                                  );
                                                                  GoRouter.of(
                                                                          context)
                                                                      .prepareAuthEvent();
                                                                  await authManager
                                                                      .signIn(
                                                                    authenticationToken:
                                                                        WhitebankGroupAPIGroup
                                                                            .retailLoginCall
                                                                            .accessToken(
                                                                      (_model.retailLoginResponseCopy
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    refreshToken:
                                                                        WhitebankGroupAPIGroup
                                                                            .retailLoginCall
                                                                            .refreshToken(
                                                                      (_model.retailLoginResponseCopy
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    tokenExpiration:
                                                                        functions.createTokenExpirationDateTime(WhitebankGroupAPIGroup
                                                                            .retailLoginCall
                                                                            .expiresIn(
                                                                      (_model.retailLoginResponseCopy
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!),
                                                                    authUid:
                                                                        WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .id(
                                                                      (_model.getProfileResponseCopy
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    userData:
                                                                        AuthenticatedUserStruct(
                                                                      accessToken: WhitebankGroupAPIGroup
                                                                          .retailLoginCall
                                                                          .accessToken(
                                                                        (_model.retailLoginResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      refreshToken: WhitebankGroupAPIGroup
                                                                          .retailLoginCall
                                                                          .refreshToken(
                                                                        (_model.retailLoginResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      expiresIn: WhitebankGroupAPIGroup
                                                                          .retailLoginCall
                                                                          .expiresIn(
                                                                        (_model.retailLoginResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      user:
                                                                          UserV3Struct(
                                                                        userName: _model
                                                                            .textFieldUsernameWebTextController
                                                                            .text,
                                                                        firstName: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .firstName(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        lastName: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .lastName(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        id: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .id(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        email: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .email(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        mobileNumber: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .phone(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        createdAt: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .createdAt(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        updatedAt: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .updatedAt(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        fullName:
                                                                            '${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.firstName(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        )} ${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.lastName(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        )}',
                                                                        uid: WhitebankGroupAPIGroup
                                                                            .retailSettingsProfileDetailsCall
                                                                            .customerId(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        branchName:
                                                                            getJsonField(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                          r'''$.branchName''',
                                                                        ).toString(),
                                                                        branchCode:
                                                                            getJsonField(
                                                                          (_model.getProfileResponseCopy?.jsonBody ??
                                                                              ''),
                                                                          r'''$.branchCode''',
                                                                        ).toString(),
                                                                      ),
                                                                      fmsSessionId:
                                                                          _model
                                                                              .getPaygilantSessionOutputWeb,
                                                                    ),
                                                                  );
                                                                  _navigate = () => context.goNamedAuth(
                                                                      DashboardWidget
                                                                          .routeName,
                                                                      context
                                                                          .mounted);
                                                                  FFAppState()
                                                                          .userName =
                                                                      currentUserData!
                                                                          .user
                                                                          .firstName;
                                                                  FFAppState()
                                                                      .update(
                                                                          () {});
                                                                  _model.isLoginValid =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
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
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                CustomInformationalDialogWidget(
                                                                              message: valueOrDefault<String>(
                                                                                getJsonField(
                                                                                  (_model.getProfileResponseCopy?.jsonBody ?? ''),
                                                                                  r'''$.message''',
                                                                                )?.toString(),
                                                                                'Something went wrong.',
                                                                              ),
                                                                              primaryButtonTitle: 'Dismiss',
                                                                              title: valueOrDefault<String>(
                                                                                getJsonField(
                                                                                  (_model.getProfileResponseCopy?.jsonBody ?? ''),
                                                                                  r'''$.title''',
                                                                                )?.toString(),
                                                                                'Oops!',
                                                                              ),
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
                                                              } else if (WhitebankGroupAPIGroup
                                                                      .retailLoginCall
                                                                      .error(
                                                                    (_model.retailLoginResponseCopy
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) ==
                                                                  ResponseStatus
                                                                      .ACCOUNT_LOCKED
                                                                      .name) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
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
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                (_model.retailLoginResponseCopy?.jsonBody ?? ''),
                                                                                r'''$.message''',
                                                                              )?.toString(),
                                                                              'Your account is temporarily locked.',
                                                                            ),
                                                                            primaryButtonTitle:
                                                                                'Dismiss',
                                                                            title:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                (_model.retailLoginResponseCopy?.jsonBody ?? ''),
                                                                                r'''$.title''',
                                                                              )?.toString(),
                                                                              'Login failed!',
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

                                                                _model.isLoginValid =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              } else if (WhitebankGroupAPIGroup
                                                                          .retailLoginCall
                                                                          .error(
                                                                        (_model.retailLoginResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ) !=
                                                                      null &&
                                                                  WhitebankGroupAPIGroup
                                                                          .retailLoginCall
                                                                          .error(
                                                                        (_model.retailLoginResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ) !=
                                                                      '') {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
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
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                (_model.retailLoginResponseCopy?.jsonBody ?? ''),
                                                                                r'''$.message''',
                                                                              )?.toString(),
                                                                              'Something went wrong.',
                                                                            ),
                                                                            primaryButtonTitle:
                                                                                'Dismiss',
                                                                            title:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                (_model.retailLoginResponseCopy?.jsonBody ?? ''),
                                                                                r'''$.title''',
                                                                              )?.toString(),
                                                                              'Oops!',
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

                                                                _model.isLoginValid =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
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
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                (_model.retailLoginResponseCopy?.jsonBody ?? ''),
                                                                                r'''$.message''',
                                                                              )?.toString(),
                                                                              'Something went wrong.',
                                                                            ),
                                                                            primaryButtonTitle:
                                                                                'Dismiss',
                                                                            title:
                                                                                valueOrDefault<String>(
                                                                              getJsonField(
                                                                                (_model.retailLoginResponseCopy?.jsonBody ?? ''),
                                                                                r'''$.title''',
                                                                              )?.toString(),
                                                                              'Oops!',
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

                                                                _model.isLoginValid =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              _navigate();

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                      text: 'Login',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 40.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
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
                                                            BorderRadius
                                                                .circular(16.0),
                                                        disabledColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral9,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (isWeb)
                                                  Builder(
                                                    builder: (context) =>
                                                        Semantics(
                                                      label:
                                                          'Passkey_Login_Web',
                                                      child: FFButtonWidget(
                                                        onPressed: (_model.textFieldUsernameWebTextController
                                                                        .text ==
                                                                    '')
                                                            ? null
                                                            : () async {
                                                                Function()
                                                                    _navigate =
                                                                    () {};
                                                                _model.getPaygilantSessionPk2Output =
                                                                    await actions
                                                                        .getPaygilantSession();
                                                                _model.passkeyAuthVerifyPayloadCopy =
                                                                    await actions
                                                                        .passkeyAuthVerifyPayload(
                                                                  _model
                                                                      .textFieldUsernameWebTextController
                                                                      .text,
                                                                  '123',
                                                                  FFAppState()
                                                                      .DeviceDetails
                                                                      .deviceId,
                                                                );
                                                                _model.passkeyAuthResponseCopy =
                                                                    await WhitebankGroupAPIGroup
                                                                        .retailVerifyPasskeyAuthCall
                                                                        .call(
                                                                  baseURL:
                                                                      FFDevEnvironmentValues()
                                                                          .WBPBASEURL,
                                                                  deviceId:
                                                                      getJsonField(
                                                                    _model
                                                                        .passkeyAuthVerifyPayloadCopy,
                                                                    r'''$.deviceId''',
                                                                  ).toString(),
                                                                  id: getJsonField(
                                                                    _model
                                                                        .passkeyAuthVerifyPayloadCopy,
                                                                    r'''$.id''',
                                                                  ).toString(),
                                                                  rawId:
                                                                      getJsonField(
                                                                    _model
                                                                        .passkeyAuthVerifyPayloadCopy,
                                                                    r'''$.rawId''',
                                                                  ).toString(),
                                                                  type:
                                                                      getJsonField(
                                                                    _model
                                                                        .passkeyAuthVerifyPayloadCopy,
                                                                    r'''$.type''',
                                                                  ).toString(),
                                                                  responseJson:
                                                                      getJsonField(
                                                                    _model
                                                                        .passkeyAuthVerifyPayloadCopy,
                                                                    r'''$.response''',
                                                                  ),
                                                                  authenticatorAttachment:
                                                                      getJsonField(
                                                                    _model
                                                                        .passkeyAuthVerifyPayloadCopy,
                                                                    r'''$.authenticatorAttachment''',
                                                                  ).toString(),
                                                                  fmsSessionId:
                                                                      _model
                                                                          .getPaygilantSessionPk2Output,
                                                                );

                                                                if ((_model
                                                                        .passkeyAuthResponseCopy
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  _model.pKGetProfileResponseCopy =
                                                                      await WhitebankGroupAPIGroup
                                                                          .retailSettingsProfileDetailsCall
                                                                          .call(
                                                                    accessToken:
                                                                        getJsonField(
                                                                      WhitebankGroupAPIGroup
                                                                          .retailVerifyPasskeyAuthCall
                                                                          .tokens(
                                                                        (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      r'''$.accessToken''',
                                                                    ).toString(),
                                                                    baseURL:
                                                                        FFDevEnvironmentValues()
                                                                            .WBPBASEURL,
                                                                  );

                                                                  if ((_model
                                                                          .pKGetProfileResponseCopy
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    GoRouter.of(
                                                                            context)
                                                                        .prepareAuthEvent();
                                                                    await authManager
                                                                        .signIn(
                                                                      authenticationToken:
                                                                          getJsonField(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailVerifyPasskeyAuthCall
                                                                            .tokens(
                                                                          (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        r'''$.accessToken''',
                                                                      ).toString(),
                                                                      refreshToken:
                                                                          getJsonField(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailVerifyPasskeyAuthCall
                                                                            .tokens(
                                                                          (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        r'''$.refreshToken''',
                                                                      ).toString(),
                                                                      tokenExpiration:
                                                                          functions
                                                                              .createTokenExpirationDateTime(getJsonField(
                                                                        WhitebankGroupAPIGroup
                                                                            .retailVerifyPasskeyAuthCall
                                                                            .tokens(
                                                                          (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                              ''),
                                                                        ),
                                                                        r'''$.expiresIn''',
                                                                      )),
                                                                      authUid: WhitebankGroupAPIGroup
                                                                          .retailSettingsProfileDetailsCall
                                                                          .id(
                                                                        (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      userData:
                                                                          AuthenticatedUserStruct(
                                                                        accessToken:
                                                                            getJsonField(
                                                                          WhitebankGroupAPIGroup
                                                                              .retailVerifyPasskeyAuthCall
                                                                              .tokens(
                                                                            (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          r'''$.accessToken''',
                                                                        ).toString(),
                                                                        refreshToken:
                                                                            getJsonField(
                                                                          WhitebankGroupAPIGroup
                                                                              .retailVerifyPasskeyAuthCall
                                                                              .tokens(
                                                                            (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          r'''$.refreshToken''',
                                                                        ).toString(),
                                                                        expiresIn:
                                                                            getJsonField(
                                                                          WhitebankGroupAPIGroup
                                                                              .retailVerifyPasskeyAuthCall
                                                                              .tokens(
                                                                            (_model.passkeyAuthResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          r'''$.expiresIn''',
                                                                        ),
                                                                        user:
                                                                            UserV3Struct(
                                                                          userName: _model
                                                                              .textFieldUsernameWebTextController
                                                                              .text,
                                                                          firstName: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .firstName(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          lastName: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .lastName(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          id: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .id(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          email: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .email(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          mobileNumber: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .phone(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          createdAt: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .createdAt(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          updatedAt: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .updatedAt(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          fullName:
                                                                              '${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.firstName(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          )} ${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.lastName(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          )}',
                                                                          uid: WhitebankGroupAPIGroup
                                                                              .retailSettingsProfileDetailsCall
                                                                              .customerId(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          branchName:
                                                                              getJsonField(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                            r'''$.branchName''',
                                                                          ).toString(),
                                                                          branchCode:
                                                                              getJsonField(
                                                                            (_model.pKGetProfileResponseCopy?.jsonBody ??
                                                                                ''),
                                                                            r'''$.branchCode''',
                                                                          ).toString(),
                                                                        ),
                                                                        fmsSessionId:
                                                                            _model.getPaygilantSessionPk2Output,
                                                                      ),
                                                                    );
                                                                    _navigate = () => context.goNamedAuth(
                                                                        DashboardWidget
                                                                            .routeName,
                                                                        context
                                                                            .mounted);
                                                                    FFAppState()
                                                                            .userName =
                                                                        currentUserData!
                                                                            .user
                                                                            .firstName;
                                                                    FFAppState()
                                                                        .update(
                                                                            () {});
                                                                    _model.isLoginValid =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
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
                                                                                message: WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.detail(
                                                                                  (_model.pKGetProfileResponseCopy?.jsonBody ?? ''),
                                                                                )!,
                                                                                primaryButtonTitle: 'Dismiss',
                                                                                title: WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.title(
                                                                                  (_model.pKGetProfileResponseCopy?.jsonBody ?? ''),
                                                                                ),
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
                                                                            onTap:
                                                                                () {
                                                                              FocusScope.of(dialogContext).unfocus();
                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                            },
                                                                            child:
                                                                                CustomInformationalDialogWidget(
                                                                              message: WhitebankGroupAPIGroup.retailVerifyPasskeyAuthCall.detail(
                                                                                (_model.passkeyAuthResponseCopy?.jsonBody ?? ''),
                                                                              )!,
                                                                              primaryButtonTitle: 'Dismiss',
                                                                              title: WhitebankGroupAPIGroup.retailVerifyPasskeyAuthCall.title(
                                                                                (_model.passkeyAuthResponseCopy?.jsonBody ?? ''),
                                                                              ),
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

                                                                _navigate();

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                        text:
                                                            'Login with Passkey',
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              double.infinity,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .titleSmallIsCustom,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          disabledColor:
                                                              Color(0xFFC9C6C5),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation2']!),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Semantics(
                                  label: 'Enroll_Account_RichText',
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          AccountValidationPageWidget
                                              .routeName);
                                    },
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Don’t have an account yet?',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: ' Register',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily,
                                                  color: Color(0xFF00A8CF),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallIsCustom,
                                                ),
                                          )
                                        ],
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
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'richTextOnPageLoadAnimation']!),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
