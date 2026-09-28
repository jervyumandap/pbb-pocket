import '/auth/biometric_option_component/biometric_option_component_widget.dart';
import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/image_component/image_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/m_pin/m_pinor_password_component/m_pinor_password_component_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'login_page_old_model.dart';
export 'login_page_old_model.dart';

class LoginPageOldWidget extends StatefulWidget {
  const LoginPageOldWidget({super.key});

  static String routeName = 'LoginPageOld';
  static String routePath = '/loginPageOld';

  @override
  State<LoginPageOldWidget> createState() => _LoginPageOldWidgetState();
}

class _LoginPageOldWidgetState extends State<LoginPageOldWidget>
    with TickerProviderStateMixin {
  late LoginPageOldModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageOldModel());

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
          _model.deviceDetails = await actions.getDeviceDetails();
        }),
        Future(() async {
          _model.biometricPreference =
              await actions.readBiometricPreferenceSecurely();
        }),
        Future(() async {
          _model.userID = await actions.readUserIDSecurely();
        }),
      ]);
      _model.loadingStatement = false;
      safeSetState(() {});
      if (_model.deviceDetails != null) {
        FFAppState().DeviceDetails =
            DeviceDataStruct.maybeFromMap(_model.deviceDetails!)!;
        safeSetState(() {});
      }
    });

    _model.textFieldUnWebTextController ??= TextEditingController(
        text: FFDevEnvironmentValues.currentEnvironment == 'Dev'
            ? 'kaylav3'
            : '');
    _model.textFieldUnWebFocusNode ??= FocusNode();

    _model.textFieldPwWebTextController ??= TextEditingController(
        text: FFDevEnvironmentValues.currentEnvironment == 'Dev'
            ? 'Password1234'
            : '');
    _model.textFieldPwWebFocusNode ??= FocusNode();

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
        body: Stack(
          children: [
            if (_model.loadingStatement == false)
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Home-_Wallet_(1).png',
                      ).image,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 670.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(35.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Hero(
                                                tag: 'logoLoginAnimation',
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pbb-logo.png',
                                                    width: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Experience a ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            fontSize: 26.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: 'better way',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            color: Color(
                                                                0xFF00807F),
                                                            fontSize: 26.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: ' of\n',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            fontSize: 26.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: 'online banking.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            fontSize: 26.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                    )
                                                  ],
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
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 0.0),
                                                child: Text(
                                                  'Log in to your account',
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
                                                ),
                                              ),
                                              Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldUnWebTextController,
                                                  focusNode: _model
                                                      .textFieldUnWebFocusNode,
                                                  autofocus: false,
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
                                                      .textFieldUnWebTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldPwWebTextController,
                                                  focusNode: _model
                                                      .textFieldPwWebFocusNode,
                                                  autofocus: false,
                                                  obscureText: !_model
                                                      .textFieldPwWebVisibility,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'Password',
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
                                                    suffixIcon: InkWell(
                                                      onTap: () async {
                                                        safeSetState(() => _model
                                                                .textFieldPwWebVisibility =
                                                            !_model
                                                                .textFieldPwWebVisibility);
                                                      },
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        _model.textFieldPwWebVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        size: 22,
                                                      ),
                                                    ),
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
                                                      .textFieldPwWebTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    AccountValidationPageWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'module': serializeParam(
                                                        '/forgotPasswordPage',
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Container(
                                                  width: 300.0,
                                                  decoration: BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  20.0),
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
                                                          FFAppState().module =
                                                              'password';
                                                          safeSetState(() {});

                                                          context.pushNamed(
                                                            AccountValidationPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'module':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .module,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          'Forgot Password?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) =>
                                                    FFButtonWidget(
                                                  onPressed: ((_model.textFieldUnWebTextController
                                                                      .text ==
                                                                  '') &&
                                                          (_model.textFieldUnWebTextController
                                                                      .text ==
                                                                  ''))
                                                      ? null
                                                      : () async {
                                                          var _shouldSetState =
                                                              false;
                                                          _model.loginResponse =
                                                              await SupabaseGroup
                                                                  .loginUsingUsernameCall
                                                                  .call(
                                                            username: _model
                                                                .textFieldUnWebTextController
                                                                .text,
                                                            password: _model
                                                                .textFieldPwWebTextController
                                                                .text,
                                                            accessToken:
                                                                FFDevEnvironmentValues()
                                                                    .ANONKEY,
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .loginResponse
                                                                  ?.succeeded ??
                                                              true)) {
                                                            GoRouter.of(context)
                                                                .prepareAuthEvent();
                                                            await authManager
                                                                .signIn(
                                                              authenticationToken:
                                                                  SupabaseGroup
                                                                      .loginUsingUsernameCall
                                                                      .accessToken(
                                                                (_model.loginResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              authUid: SupabaseGroup
                                                                  .loginUsingUsernameCall
                                                                  .id(
                                                                    (_model.loginResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                  ?.toString(),
                                                              userData:
                                                                  AuthenticatedUserStruct(
                                                                accessToken: LoginResponseStruct.maybeFromMap(
                                                                        (_model.loginResponse?.jsonBody ??
                                                                            ''))
                                                                    ?.accessToken,
                                                                refreshToken: LoginResponseStruct.maybeFromMap(
                                                                        (_model.loginResponse?.jsonBody ??
                                                                            ''))
                                                                    ?.refreshToken,
                                                                expiresIn: LoginResponseStruct.maybeFromMap(
                                                                        (_model.loginResponse?.jsonBody ??
                                                                            ''))
                                                                    ?.expiresIn,
                                                                user:
                                                                    UserV3Struct(
                                                                  userName: _model
                                                                      .textFieldUnWebTextController
                                                                      .text,
                                                                ),
                                                              ),
                                                            );
                                                            safeSetState(() {
                                                              _model
                                                                  .textFieldUnWebTextController
                                                                  ?.clear();
                                                              _model
                                                                  .textFieldPwWebTextController
                                                                  ?.clear();
                                                            });

                                                            context
                                                                .pushNamedAuth(
                                                              DashboardWidget
                                                                  .routeName,
                                                              context.mounted,
                                                              queryParameters: {
                                                                'username':
                                                                    serializeParam(
                                                                  _model
                                                                      .textFieldUnWebTextController
                                                                      .text,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          } else {
                                                            if (SupabaseGroup
                                                                    .loginUsingUsernameCall
                                                                    .isLocked(
                                                                  (_model.loginResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                true) {
                                                              context
                                                                  .pushNamedAuth(
                                                                AccountIsLockedPageWidget
                                                                    .routeName,
                                                                context.mounted,
                                                                queryParameters:
                                                                    {
                                                                  'lockedUntil':
                                                                      serializeParam(
                                                                    SupabaseGroup
                                                                        .loginUsingUsernameCall
                                                                        .lockedUntil(
                                                                      (_model.loginResponse
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
                                                                          FocusScope.of(dialogContext)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            CustomInformationalDialogWidget(
                                                                          message:
                                                                              'The username or password you entered is incorrect. Please try again or reset your password if you\'ve forgotten it.',
                                                                          primaryButtonTitle:
                                                                              'Try Again',
                                                                          title:
                                                                              'Login Failed',
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

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }

                                                          if (_shouldSetState)
                                                            safeSetState(() {});
                                                        },
                                                  text: 'Continue',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 40.0,
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
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmallIsCustom,
                                                        ),
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    disabledColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .neutral9,
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 15.0)),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.01, -1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Mask_group-2.png',
                                              width: 230.0,
                                              height: 250.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().module = 'accountSetup';
                                        safeSetState(() {});

                                        context.pushNamed(
                                          AccountValidationPageWidget.routeName,
                                          queryParameters: {
                                            'module': serializeParam(
                                              'accountSetup',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Don’t have an account yet?',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: FlutterFlowTheme
                                                            .of(context)
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                    ).animateOnPageLoad(animationsMap[
                                        'richTextOnPageLoadAnimation']!),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Home-_Wallet_(1).png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 26.0, 26.0, 26.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      StickyHeader(
                                        overlapHeaders: false,
                                        header: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: Hero(
                                            tag: 'logoLoginAnimation',
                                            transitionOnUserGestures: true,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/pbb-logo.png',
                                                width: 350.0,
                                                height: 60.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        content: ListView(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Container(
                                              height: 200.0,
                                              child: Visibility(
                                                visible: (FFAppState().username !=
                                                            '') &&
                                                    (isiOS || isAndroid),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .imageComponentModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ImageComponentWidget(
                                                    isWithUsername: FFAppState().username !=
                                                            '',
                                                    username:
                                                        FFAppState().username,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 200.0,
                                              child: wrapWithModel(
                                                model: _model
                                                    .mPinorPasswordComponentModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    MPinorPasswordComponentWidget(
                                                  username:
                                                      FFAppState().username,
                                                  loginWithPasswordAction:
                                                      () async {
                                                    context.pushNamed(
                                                      LogInWithPasswordPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'username':
                                                            serializeParam(
                                                          FFAppState().username,
                                                          ParamType.String,
                                                        ),
                                                        'deviceDetails':
                                                            serializeParam(
                                                          _model.deviceDetails,
                                                          ParamType.JSON,
                                                        ),
                                                        'outputToken':
                                                            serializeParam(
                                                          _model.outputToken,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  loginWithoutAccount:
                                                      () async {
                                                    context.pushNamed(
                                                      LogInWithPasswordPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'username':
                                                            serializeParam(
                                                          '',
                                                          ParamType.String,
                                                        ),
                                                        'deviceDetails':
                                                            serializeParam(
                                                          _model.deviceDetails,
                                                          ParamType.JSON,
                                                        ),
                                                        'outputToken':
                                                            serializeParam(
                                                          _model.outputToken,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  signUpAction: () async {
                                                    FFAppState().module =
                                                        'accountSetup';
                                                    safeSetState(() {});

                                                    context.pushNamed(
                                                      AccountValidationPageWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'module':
                                                            serializeParam(
                                                          'accountSetup',
                                                          ParamType.String,
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
                                                  },
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 200.0,
                                                decoration: BoxDecoration(),
                                                child: Visibility(
                                                  visible: ((isAndroid ==
                                                              true) ||
                                                          isiOS) &&
                                                      (_model.biometricPreference ==
                                                          true),
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
                                                                    12.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .biometricOptionComponentModel,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              BiometricOptionComponentWidget(
                                                            isBiometricsEnabled: !_model
                                                                        .biometricPreference! ||
                                                                    ((isiOS ==
                                                                            false) &&
                                                                        !isAndroid)
                                                                ? false
                                                                : true,
                                                            token: _model
                                                                .outputToken!,
                                                            biometricAction:
                                                                () async {
                                                              final _localAuth =
                                                                  LocalAuthentication();
                                                              bool
                                                                  _isBiometricSupported =
                                                                  await _localAuth
                                                                      .isDeviceSupported();
                                                              bool
                                                                  canCheckBiometrics =
                                                                  await _localAuth
                                                                      .canCheckBiometrics;
                                                              if (_isBiometricSupported &&
                                                                  canCheckBiometrics) {
                                                                try {
                                                                  _model.biometricOutput = await _localAuth.authenticate(
                                                                      localizedReason:
                                                                          '...',
                                                                      options: const AuthenticationOptions(
                                                                          biometricOnly:
                                                                              true));
                                                                } on PlatformException {
                                                                  _model.biometricOutput =
                                                                      false;
                                                                }
                                                                safeSetState(
                                                                    () {});
                                                              }

                                                              if (_model
                                                                      .biometricOutput ==
                                                                  true) {
                                                                _model.loadingStatement =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                _model.accessToken =
                                                                    await action_blocks
                                                                        .getUserDeviceDetails(
                                                                  context,
                                                                  username:
                                                                      FFAppState()
                                                                          .username,
                                                                  deviceDetails:
                                                                      DeviceDataStruct.maybeFromMap(
                                                                          _model
                                                                              .deviceDetails),
                                                                  token: _model
                                                                      .outputToken,
                                                                );

                                                                context.pushNamed(
                                                                    DashboardWidget
                                                                        .routeName);
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            actionUsePassword:
                                                                () async {
                                                              FFAppState()
                                                                      .usePassword =
                                                                  !(FFAppState()
                                                                          .usePassword ??
                                                                      true);
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.accessTokenv2 =
                                                                  await action_blocks
                                                                      .getUserDeviceDetails(
                                                                context,
                                                                username: _model
                                                                    .username,
                                                                deviceDetails:
                                                                    DeviceDataStruct
                                                                        .maybeFromMap(
                                                                            _model.deviceDetails),
                                                                token: _model
                                                                    .outputToken,
                                                              );
                                                              _model.apiResult0jr3 =
                                                                  await SupabaseGroup
                                                                      .getUserCredentialsByIDCall
                                                                      .call(
                                                                userId: _model
                                                                    .userID,
                                                                accessToken: _model
                                                                    .accessTokenv2,
                                                              );

                                                              if ((_model
                                                                      .apiResult0jr3
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                _model.loadingStatement =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                                if (SupabaseGroup
                                                                        .getUserCredentialsByIDCall
                                                                        .userID(
                                                                      (_model.apiResult0jr3
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) !=
                                                                    null) {
                                                                  if (SupabaseGroup
                                                                          .getUserCredentialsByIDCall
                                                                          .failedAttemps(
                                                                        (_model.apiResult0jr3?.jsonBody ??
                                                                            ''),
                                                                      ) ==
                                                                      3) {
                                                                    context
                                                                        .pushNamed(
                                                                      AccountIsLockedPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'lockedUntil':
                                                                            serializeParam(
                                                                          SupabaseGroup
                                                                              .getUserCredentialsByIDCall
                                                                              .lockedUntil(
                                                                            (_model.apiResult0jr3?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
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
                                                                              message: 'There is no MPin set for this account',
                                                                              primaryButtonTitle: 'Try Again',
                                                                              primaryButtonAction: () async {
                                                                                context.safePop();
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
                                                                                'Something went wrong',
                                                                            primaryButtonTitle:
                                                                                'Try Again',
                                                                            primaryButtonAction:
                                                                                () async {
                                                                              context.safePop();
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

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'mpin',
                                                            icon: Icon(
                                                              Icons
                                                                  .pin_outlined,
                                                              size: 28.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 60.0,
                                                              height: 45.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              iconAlignment:
                                                                  IconAlignment
                                                                      .start,
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
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).titleSmallIsCustom,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 28.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 20.0)),
                                  ),
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                    ],
                  ),
                ),
              ),
            if (_model.loadingStatement == true)
              wrapWithModel(
                model: _model.loadingStateComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
