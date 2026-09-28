import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'account_credentials_page_model.dart';
export 'account_credentials_page_model.dart';

class AccountCredentialsPageWidget extends StatefulWidget {
  const AccountCredentialsPageWidget({
    super.key,
    required this.sessionToken,
  });

  final String? sessionToken;

  static String routeName = 'AccountCredentialsPage';
  static String routePath = '/accountCredentialsPage';

  @override
  State<AccountCredentialsPageWidget> createState() =>
      _AccountCredentialsPageWidgetState();
}

class _AccountCredentialsPageWidgetState
    extends State<AccountCredentialsPageWidget> with TickerProviderStateMixin {
  late AccountCredentialsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountCredentialsPageModel());

    _model.usernameTextFieldTextController ??= TextEditingController();
    _model.usernameTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController(
        text: FFAppState().EnrollingUserAppstate.user.email);
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

    _model.confirmPasswordTextFieldTextController ??= TextEditingController();
    _model.confirmPasswordTextFieldFocusNode ??= FocusNode();

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
                                          'Create Login Credentials',
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 60.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'Set up your login credentials for your online banking access',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: Semantics(
                                        label: 'Filelds-Container',
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Form(
                                            key: _model.formKey,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Builder(
                                                        builder: (context) =>
                                                            Semantics(
                                                          label:
                                                              'Username_TextField',
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .usernameTextFieldTextController,
                                                              focusNode: _model
                                                                  .usernameTextFieldFocusNode,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                '_model.usernameTextFieldTextController',
                                                                Duration(
                                                                    milliseconds:
                                                                        2000),
                                                                () async {
                                                                  _model.validateUsernameResponse2 =
                                                                      await WhitebankGroupAPIGroup
                                                                          .registrationValidateUsernameCall
                                                                          .call(
                                                                    username: _model
                                                                        .usernameTextFieldTextController
                                                                        .text,
                                                                    accessToken:
                                                                        currentAuthenticationToken,
                                                                    baseURL:
                                                                        FFDevEnvironmentValues()
                                                                            .WBPBASEURL,
                                                                  );

                                                                  if (!(_model
                                                                          .validateUsernameResponse2
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
                                                                                CustomInformationalDialogWidget(
                                                                              message: WhitebankGroupAPIGroup.registrationValidateUsernameCall.detail(
                                                                                (_model.validateUsernameResponse2?.jsonBody ?? ''),
                                                                              )!,
                                                                              primaryButtonTitle: 'Okay',
                                                                              title: WhitebankGroupAPIGroup.registrationValidateUsernameCall.title(
                                                                                (_model.validateUsernameResponse2?.jsonBody ?? ''),
                                                                              ),
                                                                              primaryButtonAction: () async {
                                                                                safeSetState(() {
                                                                                  _model.usernameTextFieldTextController?.clear();
                                                                                });
                                                                                Navigator.pop(context);
                                                                              },
                                                                              secondaryButtonAction: () async {},
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  } else if (WhitebankGroupAPIGroup
                                                                      .registrationValidateUsernameCall
                                                                      .isAvailable(
                                                                    (_model.validateUsernameResponse2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!) {
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
                                                                                CustomInformationalDialogWidget(
                                                                              message: functions
                                                                                  .mapError(WhitebankGroupAPIGroup.registrationValidateUsernameCall.reason(
                                                                                    (_model.validateUsernameResponse2?.jsonBody ?? ''),
                                                                                  )!)
                                                                                  .message,
                                                                              primaryButtonTitle: 'Okay',
                                                                              title: functions
                                                                                  .mapError(WhitebankGroupAPIGroup.registrationValidateUsernameCall.reason(
                                                                                    (_model.validateUsernameResponse2?.jsonBody ?? ''),
                                                                                  )!)
                                                                                  .title,
                                                                              primaryButtonAction: () async {
                                                                                safeSetState(() {
                                                                                  _model.usernameTextFieldTextController?.clear();
                                                                                });
                                                                                Navigator.pop(context);
                                                                              },
                                                                              secondaryButtonAction: () async {},
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  _model.isUsernameAvailable =
                                                                      WhitebankGroupAPIGroup
                                                                          .registrationValidateUsernameCall
                                                                          .isAvailable(
                                                                    (_model.validateUsernameResponse2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  );
                                                                  _model
                                                                      .isUnpwMatch = _model
                                                                          .usernameTextFieldTextController
                                                                          .text ==
                                                                      _model
                                                                          .passwordTextFieldTextController
                                                                          .text;
                                                                  safeSetState(
                                                                      () {});

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                              onFieldSubmitted:
                                                                  (_) async {
                                                                _model.validateUsernameResponse =
                                                                    await WhitebankGroupAPIGroup
                                                                        .registrationValidateUsernameCall
                                                                        .call(
                                                                  username: _model
                                                                      .usernameTextFieldTextController
                                                                      .text,
                                                                  accessToken:
                                                                      currentAuthenticationToken,
                                                                  baseURL:
                                                                      FFDevEnvironmentValues()
                                                                          .WBPBASEURL,
                                                                );

                                                                if (!(_model
                                                                        .validateUsernameResponse
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
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                WhitebankGroupAPIGroup.registrationValidateUsernameCall.detail(
                                                                              (_model.validateUsernameResponse?.jsonBody ?? ''),
                                                                            )!,
                                                                            primaryButtonTitle:
                                                                                'Okay',
                                                                            title:
                                                                                WhitebankGroupAPIGroup.registrationValidateUsernameCall.title(
                                                                              (_model.validateUsernameResponse?.jsonBody ?? ''),
                                                                            ),
                                                                            primaryButtonAction:
                                                                                () async {
                                                                              safeSetState(() {
                                                                                _model.usernameTextFieldTextController?.clear();
                                                                              });
                                                                              Navigator.pop(context);
                                                                            },
                                                                            secondaryButtonAction:
                                                                                () async {},
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                } else if (WhitebankGroupAPIGroup
                                                                    .registrationValidateUsernameCall
                                                                    .isAvailable(
                                                                  (_model.validateUsernameResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!) {
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
                                                                              CustomInformationalDialogWidget(
                                                                            message: functions
                                                                                .mapError(WhitebankGroupAPIGroup.registrationValidateUsernameCall.reason(
                                                                                  (_model.validateUsernameResponse?.jsonBody ?? ''),
                                                                                )!)
                                                                                .message,
                                                                            primaryButtonTitle:
                                                                                'Okay',
                                                                            title: functions
                                                                                .mapError(WhitebankGroupAPIGroup.registrationValidateUsernameCall.reason(
                                                                                  (_model.validateUsernameResponse?.jsonBody ?? ''),
                                                                                )!)
                                                                                .title,
                                                                            primaryButtonAction:
                                                                                () async {
                                                                              safeSetState(() {
                                                                                _model.usernameTextFieldTextController?.clear();
                                                                              });
                                                                              Navigator.pop(context);
                                                                            },
                                                                            secondaryButtonAction:
                                                                                () async {},
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }

                                                                _model.isUsernameAvailable =
                                                                    WhitebankGroupAPIGroup
                                                                        .registrationValidateUsernameCall
                                                                        .isAvailable(
                                                                  (_model.validateUsernameResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                );
                                                                safeSetState(
                                                                    () {});

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              autofocus: false,
                                                              enabled: true,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .next,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                labelText:
                                                                    'Username',
                                                                labelStyle: FlutterFlowTheme.of(
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
                                                                hintStyle: FlutterFlowTheme.of(
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
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
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
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
                                                                    color: FlutterFlowTheme.of(
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
                                                                    color: FlutterFlowTheme.of(
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
                                                                            16.0,
                                                                            17.0,
                                                                            16.0,
                                                                            17.0),
                                                                hoverColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .formElementHover,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                              maxLength: 50,
                                                              maxLengthEnforcement:
                                                                  MaxLengthEnforcement
                                                                      .enforced,
                                                              buildCounter: (context,
                                                                      {required currentLength,
                                                                      required isFocused,
                                                                      maxLength}) =>
                                                                  null,
                                                              cursorColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              enableInteractiveSelection:
                                                                  true,
                                                              validator: _model
                                                                  .usernameTextFieldTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 17.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Semantics(
                                                        label:
                                                            'Email_TextField',
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .emailTextFieldTextController,
                                                            focusNode: _model
                                                                .emailTextFieldFocusNode,
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            readOnly: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Email',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                  color: FlutterFlowTheme.of(
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
                                                                  color: FlutterFlowTheme.of(
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
                                                                          16.0,
                                                                          17.0,
                                                                          16.0,
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
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF8A8A8A),
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            maxLines: null,
                                                            maxLength: 50,
                                                            maxLengthEnforcement:
                                                                MaxLengthEnforcement
                                                                    .enforced,
                                                            buildCounter: (context,
                                                                    {required currentLength,
                                                                    required isFocused,
                                                                    maxLength}) =>
                                                                null,
                                                            keyboardType:
                                                                TextInputType
                                                                    .emailAddress,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            enableInteractiveSelection:
                                                                false,
                                                            validator: _model
                                                                .emailTextFieldTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 17.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Semantics(
                                                        label:
                                                            'Password_TextField',
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .passwordTextFieldTextController,
                                                            focusNode: _model
                                                                .passwordTextFieldFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.passwordTextFieldTextController',
                                                              Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                await Future
                                                                    .wait([
                                                                  Future(
                                                                      () async {
                                                                    // 8 characters check
                                                                    _model
                                                                        .updatePwValidatorAtIndex(
                                                                      0,
                                                                      (_) => (String?
                                                                              password) {
                                                                        return password !=
                                                                                null &&
                                                                            password.length >=
                                                                                8;
                                                                      }(_model.passwordTextFieldTextController
                                                                              .text)
                                                                          ? true
                                                                          : false,
                                                                    );
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    // 1 number check
                                                                    _model
                                                                        .updatePwValidatorAtIndex(
                                                                      1,
                                                                      (_) => (String?
                                                                              password) {
                                                                        return password !=
                                                                                null &&
                                                                            RegExp(r'\d').hasMatch(password);
                                                                      }(_model.passwordTextFieldTextController
                                                                              .text)
                                                                          ? true
                                                                          : false,
                                                                    );
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    // 1 special character check
                                                                    _model
                                                                        .updatePwValidatorAtIndex(
                                                                      2,
                                                                      (_) => (String?
                                                                              password) {
                                                                        return password !=
                                                                                null &&
                                                                            RegExp(r'[^a-zA-Z0-9]').hasMatch(password);
                                                                      }(_model.passwordTextFieldTextController
                                                                              .text)
                                                                          ? true
                                                                          : false,
                                                                    );
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    // 1 uppercase check
                                                                    _model
                                                                        .updatePwValidatorAtIndex(
                                                                      3,
                                                                      (_) => (String?
                                                                              password) {
                                                                        return password !=
                                                                                null &&
                                                                            RegExp(r'[A-Z]').hasMatch(password);
                                                                      }(_model.passwordTextFieldTextController
                                                                              .text)
                                                                          ? true
                                                                          : false,
                                                                    );
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    // 1 lowercase check
                                                                    _model
                                                                        .updatePwValidatorAtIndex(
                                                                      4,
                                                                      (_) => (String?
                                                                              password) {
                                                                        return password !=
                                                                                null &&
                                                                            RegExp(r'[a-z]').hasMatch(password);
                                                                      }(_model.passwordTextFieldTextController
                                                                              .text)
                                                                          ? true
                                                                          : false,
                                                                    );
                                                                  }),
                                                                ]);
                                                                safeSetState(
                                                                    () {});
                                                                _model
                                                                    .isPasswordMatch = _model
                                                                        .passwordTextFieldTextController
                                                                        .text ==
                                                                    _model
                                                                        .confirmPasswordTextFieldTextController
                                                                        .text;
                                                                _model
                                                                    .isUnpwMatch = _model
                                                                        .usernameTextFieldTextController
                                                                        .text ==
                                                                    _model
                                                                        .passwordTextFieldTextController
                                                                        .text;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                            onFieldSubmitted:
                                                                (_) async {
                                                              await Future
                                                                  .wait([
                                                                Future(
                                                                    () async {
                                                                  // 8 characters check
                                                                  _model
                                                                      .updatePwValidatorAtIndex(
                                                                    0,
                                                                    (_) => (String?
                                                                            password) {
                                                                      return password !=
                                                                              null &&
                                                                          password.length >=
                                                                              8;
                                                                    }(_model.passwordTextFieldTextController
                                                                            .text)
                                                                        ? true
                                                                        : false,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  // 1 number check
                                                                  _model
                                                                      .updatePwValidatorAtIndex(
                                                                    1,
                                                                    (_) => (String?
                                                                            password) {
                                                                      return password !=
                                                                              null &&
                                                                          RegExp(r'\d')
                                                                              .hasMatch(password);
                                                                    }(_model.passwordTextFieldTextController
                                                                            .text)
                                                                        ? true
                                                                        : false,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  // 1 special character check
                                                                  _model
                                                                      .updatePwValidatorAtIndex(
                                                                    2,
                                                                    (_) => (String?
                                                                            password) {
                                                                      return password !=
                                                                              null &&
                                                                          RegExp(r'[^a-zA-Z0-9]')
                                                                              .hasMatch(password);
                                                                    }(_model.passwordTextFieldTextController
                                                                            .text)
                                                                        ? true
                                                                        : false,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  // 1 uppercase check
                                                                  _model
                                                                      .updatePwValidatorAtIndex(
                                                                    3,
                                                                    (_) => (String?
                                                                            password) {
                                                                      return password !=
                                                                              null &&
                                                                          RegExp(r'[A-Z]')
                                                                              .hasMatch(password);
                                                                    }(_model.passwordTextFieldTextController
                                                                            .text)
                                                                        ? true
                                                                        : false,
                                                                  );
                                                                }),
                                                                Future(
                                                                    () async {
                                                                  // 1 lowercase check
                                                                  _model
                                                                      .updatePwValidatorAtIndex(
                                                                    4,
                                                                    (_) => (String?
                                                                            password) {
                                                                      return password !=
                                                                              null &&
                                                                          RegExp(r'[a-z]')
                                                                              .hasMatch(password);
                                                                    }(_model.passwordTextFieldTextController
                                                                            .text)
                                                                        ? true
                                                                        : false,
                                                                  );
                                                                }),
                                                              ]);
                                                              safeSetState(
                                                                  () {});
                                                              _model
                                                                  .isPasswordMatch = _model
                                                                      .passwordTextFieldTextController
                                                                      .text ==
                                                                  _model
                                                                      .confirmPasswordTextFieldTextController
                                                                      .text;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: !_model
                                                                .passwordTextFieldVisibility,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Password',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                  color: FlutterFlowTheme.of(
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
                                                                  color: FlutterFlowTheme.of(
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
                                                                          16.0,
                                                                          17.0,
                                                                          16.0,
                                                                          17.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .formElementHover,
                                                              suffixIcon:
                                                                  InkWell(
                                                                onTap:
                                                                    () async {
                                                                  safeSetState(() =>
                                                                      _model.passwordTextFieldVisibility =
                                                                          !_model
                                                                              .passwordTextFieldVisibility);
                                                                },
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.passwordTextFieldVisibility
                                                                      ? Icons
                                                                          .visibility_outlined
                                                                      : Icons
                                                                          .visibility_off_outlined,
                                                                  size: 22,
                                                                ),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                            maxLength: 50,
                                                            maxLengthEnforcement:
                                                                MaxLengthEnforcement
                                                                    .enforced,
                                                            buildCounter: (context,
                                                                    {required currentLength,
                                                                    required isFocused,
                                                                    maxLength}) =>
                                                                null,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            enableInteractiveSelection:
                                                                true,
                                                            validator: _model
                                                                .passwordTextFieldTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 17.0)),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Semantics(
                                                              label:
                                                                  'Confirm_Password_TextField',
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .confirmPasswordTextFieldTextController,
                                                                  focusNode: _model
                                                                      .confirmPasswordTextFieldFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.confirmPasswordTextFieldTextController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      _model
                                                                          .isPasswordMatch = _model
                                                                              .passwordTextFieldTextController
                                                                              .text ==
                                                                          _model
                                                                              .confirmPasswordTextFieldTextController
                                                                              .text;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                  onFieldSubmitted:
                                                                      (_) async {
                                                                    _model
                                                                        .isPasswordMatch = _model
                                                                            .passwordTextFieldTextController
                                                                            .text ==
                                                                        _model
                                                                            .confirmPasswordTextFieldTextController
                                                                            .text;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  autofocus:
                                                                      false,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  obscureText:
                                                                      !_model
                                                                          .confirmPasswordTextFieldVisibility,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelText:
                                                                        'Confirm Password',
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
                                                                          color:
                                                                              Color(0xFF72777A),
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
                                                                        color: !_model.isPasswordMatch &&
                                                                                !((_model.passwordTextFieldTextController.text == '') || (_model.confirmPasswordTextFieldTextController.text == ''))
                                                                            ? FlutterFlowTheme.of(context).error
                                                                            : FlutterFlowTheme.of(context).neutral10,
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
                                                                        color: !_model.isPasswordMatch &&
                                                                                !((_model.passwordTextFieldTextController.text == '') || (_model.confirmPasswordTextFieldTextController.text == ''))
                                                                            ? FlutterFlowTheme.of(context).error
                                                                            : FlutterFlowTheme.of(context).primary,
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .base0,
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            17.0,
                                                                            16.0,
                                                                            17.0),
                                                                    hoverColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .formElementHover,
                                                                    suffixIcon:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        safeSetState(() =>
                                                                            _model.confirmPasswordTextFieldVisibility =
                                                                                !_model.confirmPasswordTextFieldVisibility);
                                                                      },
                                                                      focusNode:
                                                                          FocusNode(
                                                                              skipTraversal: true),
                                                                      child:
                                                                          Icon(
                                                                        _model.confirmPasswordTextFieldVisibility
                                                                            ? Icons.visibility_outlined
                                                                            : Icons.visibility_off_outlined,
                                                                        size:
                                                                            22,
                                                                      ),
                                                                    ),
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
                                                                  maxLength: 50,
                                                                  maxLengthEnforcement:
                                                                      MaxLengthEnforcement
                                                                          .enforced,
                                                                  buildCounter: (context,
                                                                          {required currentLength,
                                                                          required isFocused,
                                                                          maxLength}) =>
                                                                      null,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  enableInteractiveSelection:
                                                                      true,
                                                                  validator: _model
                                                                      .confirmPasswordTextFieldTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 17.0)),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Visibility(
                                                            visible: !_model
                                                                    .isPasswordMatch &&
                                                                !((_model.passwordTextFieldTextController
                                                                            .text ==
                                                                        '') ||
                                                                    (_model.confirmPasswordTextFieldTextController
                                                                            .text ==
                                                                        '')),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Semantics(
                                                                label:
                                                                    'password_error_text',
                                                                child: Text(
                                                                  '*Password does not match',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 18.0)),
                                            ),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation1']!),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 30.0, 10.0, 0.0),
                                      child: Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return FFAppConstants
                                                .ContentMaxWidth;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return FFAppConstants
                                                .ContentMaxWidth;
                                          } else {
                                            return FFAppConstants
                                                .ContentMaxWidth;
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Semantics(
                                          label: 'Validator_Column',
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.pwValidator
                                                                  .elementAtOrNull(
                                                                      0) ??
                                                              false) {
                                                            return Icon(
                                                              Icons
                                                                  .check_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 20.0,
                                                            );
                                                          } else {
                                                            return Icon(
                                                              Icons.circle,
                                                              color: Color(
                                                                  0xFFB1B1B1),
                                                              size: 6.0,
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'At least 8 characters',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                  .pwValidator
                                                                  .elementAtOrNull(
                                                                      0)!
                                                              ? Color(
                                                                  0xFF444C66)
                                                              : Color(
                                                                  0xFFB1B1B1),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.pwValidator
                                                                  .elementAtOrNull(
                                                                      1) ??
                                                              false) {
                                                            return Icon(
                                                              Icons
                                                                  .check_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 20.0,
                                                            );
                                                          } else {
                                                            return Icon(
                                                              Icons.circle,
                                                              color: Color(
                                                                  0xFFB1B1B1),
                                                              size: 6.0,
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '1 number',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                  .pwValidator
                                                                  .elementAtOrNull(
                                                                      1)!
                                                              ? Color(
                                                                  0xFF444C66)
                                                              : Color(
                                                                  0xFFB1B1B1),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.pwValidator
                                                                  .elementAtOrNull(
                                                                      4) ??
                                                              false) {
                                                            return Icon(
                                                              Icons
                                                                  .check_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 20.0,
                                                            );
                                                          } else {
                                                            return Icon(
                                                              Icons.circle,
                                                              color: Color(
                                                                  0xFFB1B1B1),
                                                              size: 6.0,
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '1 lowercase',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                  .pwValidator
                                                                  .elementAtOrNull(
                                                                      4)!
                                                              ? Color(
                                                                  0xFF444C66)
                                                              : Color(
                                                                  0xFFB1B1B1),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.pwValidator
                                                                  .elementAtOrNull(
                                                                      3) ??
                                                              false) {
                                                            return Icon(
                                                              Icons
                                                                  .check_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 20.0,
                                                            );
                                                          } else {
                                                            return Icon(
                                                              Icons.circle,
                                                              color: Color(
                                                                  0xFFB1B1B1),
                                                              size: 6.0,
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '1 uppercase',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                  .pwValidator
                                                                  .elementAtOrNull(
                                                                      3)!
                                                              ? Color(
                                                                  0xFF444C66)
                                                              : Color(
                                                                  0xFFB1B1B1),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          if (_model.pwValidator
                                                                  .elementAtOrNull(
                                                                      2) ??
                                                              false) {
                                                            return Icon(
                                                              Icons
                                                                  .check_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 20.0,
                                                            );
                                                          } else {
                                                            return Icon(
                                                              Icons.circle,
                                                              color: Color(
                                                                  0xFFB1B1B1),
                                                              size: 6.0,
                                                            );
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '1 special character',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: _model
                                                                  .pwValidator
                                                                  .elementAtOrNull(
                                                                      2)!
                                                              ? Color(
                                                                  0xFF444C66)
                                                              : Color(
                                                                  0xFFB1B1B1),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                              if (_model.isUnpwMatch)
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Icon(
                                                        Icons
                                                            .warning_amber_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error2,
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        'Your password must not match your username',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFF444C66),
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
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation2']!),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: Semantics(
                                        label: 'Policy-Container',
                                        child: Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return double.infinity;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return FFAppConstants
                                                  .ContentMaxWidth;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return FFAppConstants
                                                  .ContentMaxWidth;
                                            } else {
                                              return FFAppConstants
                                                  .ContentMaxWidth;
                                            }
                                          }(),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Semantics(
                                                  label: 'Agreement_Checkbox',
                                                  child: Theme(
                                                    data: ThemeData(
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
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                      ),
                                                      unselectedWidgetColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryButton,
                                                    ),
                                                    child: Checkbox(
                                                      value: _model
                                                              .policyCheckboxValue ??=
                                                          false,
                                                      onChanged:
                                                          (newValue) async {
                                                        safeSetState(() => _model
                                                                .policyCheckboxValue =
                                                            newValue!);
                                                      },
                                                      side: (FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryButton !=
                                                              null)
                                                          ? BorderSide(
                                                              width: 2,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryButton,
                                                            )
                                                          : null,
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryButton,
                                                      checkColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Semantics(
                                                  label: 'Aggrement_Note_Text',
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'By logging in or registering, you agree to our ',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral7,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              'Terms of Service',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF00AAA5),
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  context.pushNamed(
                                                                      TermsAndConditionPageWidget
                                                                          .routeName);
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text: ', ',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral7,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              'Privacy Policy ',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryLabel,
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  if (!isWeb) {
                                                                    context
                                                                        .pushNamed(
                                                                      WebViewPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'url':
                                                                            serializeParam(
                                                                          'https://pbb.com.ph/data-privacy',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );

                                                                    return;
                                                                  } else {
                                                                    await launchURL(
                                                                        FFAppConstants
                                                                            .dataPrivacyPolicyUrl);
                                                                    return;
                                                                  }
                                                                },
                                                        ),
                                                        TextSpan(
                                                          text: 'and ',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .neutral7,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              'Personal Data Protection Policy',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryLabel,
                                                          ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  if (!isWeb) {
                                                                    context
                                                                        .pushNamed(
                                                                      WebViewPageWidget
                                                                          .routeName,
                                                                      queryParameters:
                                                                          {
                                                                        'url':
                                                                            serializeParam(
                                                                          'https://pbb.com.ph/data-privacy',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );

                                                                    return;
                                                                  } else {
                                                                    await launchURL(
                                                                        FFAppConstants
                                                                            .dataPrivacyPolicyUrl);
                                                                    return;
                                                                  }
                                                                },
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                            lineHeight: 1.5,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation3']!),
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
                                    label: 'Continue_Create_Credentials_Button',
                                    child: wrapWithModel(
                                      model: _model.primaryButtonComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryButtonComponentWidget(
                                        buttonTitle: 'Continue',
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
                                            !_model.policyCheckboxValue! ||
                                                (_model.pwValidator
                                                    .where((e) => e == false)
                                                    .toList()
                                                    .isNotEmpty) ||
                                                !_model.isPasswordMatch,
                                        callback: () async {
                                          _model.deviceKeypairOutput =
                                              await actions.generatePcKeyPair();
                                          _model.fcmTokenOutput =
                                              await actions.getFCMToken();
                                          _model.getPaygilantSessionOutput =
                                              await actions
                                                  .getPaygilantSession();
                                          _model.createCredentialsResponse =
                                              await WhitebankGroupAPIGroup
                                                  .registrationCreateCredentialsCall
                                                  .call(
                                            sessionToken: widget.sessionToken,
                                            username: _model
                                                .usernameTextFieldTextController
                                                .text,
                                            password: _model
                                                .passwordTextFieldTextController
                                                .text,
                                            confirmPassword: _model
                                                .confirmPasswordTextFieldTextController
                                                .text,
                                            deviceId: FFAppState()
                                                .DeviceDetails
                                                .deviceId,
                                            deviceName:
                                                FFAppState().DeviceDetails.name,
                                            pushToken: _model.fcmTokenOutput,
                                            pushPlatform:
                                                FFAppState().DeviceDetails.os,
                                            deviceType:
                                                FFAppState().DeviceDetails.os,
                                            osVersion: FFAppState()
                                                .DeviceDetails
                                                .osVersion,
                                            appVersion: FFAppConstants
                                                .BuildVersionNumber,
                                            devicePublicKey: getJsonField(
                                              _model.deviceKeypairOutput,
                                              r'''$.publicKeyPem''',
                                            ).toString(),
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                            fmsSessionId: _model
                                                .getPaygilantSessionOutput,
                                          );

                                          // if Success or With no error
                                          if ((_model.createCredentialsResponse
                                                  ?.succeeded ??
                                              true)) {
                                            // Update CurrentDeviceDetailsAppState - trusted from create credentials response.
                                            FFAppState()
                                                .updateCurrentDeviceDetailsAppStateStruct(
                                              (e) => e
                                                ..trusted = WhitebankGroupAPIGroup
                                                    .registrationCreateCredentialsCall
                                                    .deviceTrusted(
                                                  (_model.createCredentialsResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                            );
                                            // Store username for future passkey login.
                                            await actions.storeDataLocally(
                                              FFAppConstants.WBUsernameKey,
                                              _model
                                                  .usernameTextFieldTextController
                                                  .text,
                                            );
                                            _model.getProfileResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsProfileDetailsCall
                                                    .call(
                                              accessToken: WhitebankGroupAPIGroup
                                                  .registrationCreateCredentialsCall
                                                  .accessToken(
                                                    (_model.createCredentialsResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString(),
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            if ((_model.getProfileResponse
                                                    ?.succeeded ??
                                                true)) {
                                              if (isWeb) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
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
                                                              'Register Passkey',
                                                          message:
                                                              'Would you like to register a passkey for faster and more secure sign-ins on this device?',
                                                          buttonTitle:
                                                              'Register',
                                                          cancelButtonTitle:
                                                              'Not now',
                                                          callback: () async {
                                                            _model.pKRegistrationVerifyPayload2 =
                                                                await actions
                                                                    .passkeyRegistrationVerifyPayload(
                                                              _model
                                                                  .usernameTextFieldTextController
                                                                  .text,
                                                              WhitebankGroupAPIGroup
                                                                  .registrationCreateCredentialsCall
                                                                  .accessToken(
                                                                    (_model.createCredentialsResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                  .toString(),
                                                              getJsonField(
                                                                _model
                                                                    .deviceKeypairOutput,
                                                                r'''$.publicKeyPem''',
                                                              ).toString(),
                                                            );
                                                            _model.pKVerifyRegistrationResponse2 =
                                                                await WhitebankGroupAPIGroup
                                                                    .retailVerifyPasskeyRegistrationCall
                                                                    .call(
                                                              passkeyName:
                                                                  getJsonField(
                                                                _model
                                                                    .pKRegistrationVerifyPayload2,
                                                                r'''$.passkeyName''',
                                                              ).toString(),
                                                              id: getJsonField(
                                                                _model
                                                                    .pKRegistrationVerifyPayload2,
                                                                r'''$.id''',
                                                              ).toString(),
                                                              rawId:
                                                                  getJsonField(
                                                                _model
                                                                    .pKRegistrationVerifyPayload2,
                                                                r'''$.rawId''',
                                                              ).toString(),
                                                              type:
                                                                  getJsonField(
                                                                _model
                                                                    .pKRegistrationVerifyPayload2,
                                                                r'''$.type''',
                                                              ).toString(),
                                                              responseJson:
                                                                  getJsonField(
                                                                _model
                                                                    .pKRegistrationVerifyPayload2,
                                                                r'''$.response''',
                                                              ),
                                                              authenticatorAttachment:
                                                                  getJsonField(
                                                                _model
                                                                    .pKRegistrationVerifyPayload2,
                                                                r'''$.authenticatorAttachment''',
                                                              ).toString(),
                                                              baseURL:
                                                                  FFDevEnvironmentValues()
                                                                      .WBPBASEURL,
                                                              accessToken:
                                                                  WhitebankGroupAPIGroup
                                                                      .registrationCreateCredentialsCall
                                                                      .accessToken(
                                                                        (_model.createCredentialsResponse?.jsonBody ??
                                                                            ''),
                                                                      )
                                                                      .toString(),
                                                            );

                                                            if ((_model
                                                                    .pKVerifyRegistrationResponse2
                                                                    ?.succeeded ??
                                                                true)) {
                                                              FFAppState()
                                                                      .hasPasskey =
                                                                  true;
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
                                                                          CustomInformationalDialogWidget(
                                                                        message:
                                                                            valueOrDefault<String>(
                                                                          WhitebankGroupAPIGroup
                                                                              .retailVerifyPasskeyRegistrationCall
                                                                              .detail(
                                                                            (_model.pKVerifyRegistrationResponse2?.jsonBody ??
                                                                                ''),
                                                                          ),
                                                                          'Something went wrong.',
                                                                        ),
                                                                        primaryButtonTitle:
                                                                            'Continue',
                                                                        title: valueOrDefault<
                                                                            String>(
                                                                          WhitebankGroupAPIGroup
                                                                              .retailVerifyPasskeyRegistrationCall
                                                                              .title(
                                                                            (_model.pKVerifyRegistrationResponse2?.jsonBody ??
                                                                                ''),
                                                                          ),
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
                                                                  );
                                                                },
                                                              );
                                                            }

                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          cancelCallback:
                                                              () async {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();
                                              await authManager.signIn(
                                                authenticationToken:
                                                    WhitebankGroupAPIGroup
                                                        .registrationCreateCredentialsCall
                                                        .accessToken(
                                                          (_model.createCredentialsResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        .toString(),
                                                refreshToken: WhitebankGroupAPIGroup
                                                    .registrationCreateCredentialsCall
                                                    .refreshToken(
                                                      (_model.createCredentialsResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    .toString(),
                                                tokenExpiration: functions
                                                    .createTokenExpirationDateTime(
                                                        WhitebankGroupAPIGroup
                                                            .registrationCreateCredentialsCall
                                                            .expiresIn(
                                                  (_model.createCredentialsResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                )!),
                                                authUid: WhitebankGroupAPIGroup
                                                    .registrationCreateCredentialsCall
                                                    .customerId(
                                                  (_model.createCredentialsResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                userData:
                                                    AuthenticatedUserStruct(
                                                  accessToken:
                                                      WhitebankGroupAPIGroup
                                                          .registrationCreateCredentialsCall
                                                          .accessToken(
                                                            (_model.createCredentialsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          .toString(),
                                                  refreshToken:
                                                      WhitebankGroupAPIGroup
                                                          .registrationCreateCredentialsCall
                                                          .refreshToken(
                                                            (_model.createCredentialsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          .toString(),
                                                  expiresIn: WhitebankGroupAPIGroup
                                                      .registrationCreateCredentialsCall
                                                      .expiresIn(
                                                    (_model.createCredentialsResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  user: UserV3Struct(
                                                    id: WhitebankGroupAPIGroup
                                                        .retailSettingsProfileDetailsCall
                                                        .id(
                                                      (_model.getProfileResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    userName: _model
                                                        .usernameTextFieldTextController
                                                        .text,
                                                    email: WhitebankGroupAPIGroup
                                                        .retailSettingsProfileDetailsCall
                                                        .email(
                                                      (_model.getProfileResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    firstName:
                                                        WhitebankGroupAPIGroup
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
                                                    mobileNumber:
                                                        WhitebankGroupAPIGroup
                                                            .retailSettingsProfileDetailsCall
                                                            .phone(
                                                      (_model.getProfileResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    createdAt:
                                                        WhitebankGroupAPIGroup
                                                            .retailSettingsProfileDetailsCall
                                                            .createdAt(
                                                      (_model.getProfileResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    updatedAt:
                                                        WhitebankGroupAPIGroup
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
                                                  ),
                                                  fmsSessionId: _model
                                                      .getPaygilantSessionOutput,
                                                ),
                                              );

                                              context.pushNamedAuth(
                                                CreateMpinPageWidget.routeName,
                                                context.mounted,
                                                queryParameters: {
                                                  'isUpdating': serializeParam(
                                                    false,
                                                    ParamType.bool,
                                                  ),
                                                }.withoutNulls,
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
                                                          getJsonField(
                                                            (_model.getProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.detail''',
                                                          )?.toString(),
                                                          'Failed to get profile details.',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            (_model.getProfileResponse
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
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          } else if (!(_model
                                                  .createCredentialsResponse
                                                  ?.succeeded ??
                                              true)) {
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
                                                          WhitebankGroupAPIGroup
                                                              .registrationCreateCredentialsCall
                                                              .detail(
                                                        (_model.createCredentialsResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!,
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      title: WhitebankGroupAPIGroup
                                                          .registrationCreateCredentialsCall
                                                          .title(
                                                        (_model.createCredentialsResponse
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
                                                );
                                              },
                                            );
                                          } else if (WhitebankGroupAPIGroup
                                                  .registrationCreateCredentialsCall
                                                  .error(
                                                (_model.createCredentialsResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              ResponseStatus
                                                  .USERNAME_TAKEN.name) {
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
                                                          WhitebankGroupAPIGroup
                                                              .registrationCreateCredentialsCall
                                                              .message(
                                                        (_model.createCredentialsResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!,
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      title: WhitebankGroupAPIGroup
                                                          .registrationCreateCredentialsCall
                                                          .error(
                                                        (_model.createCredentialsResponse
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
                                                      message: valueOrDefault<
                                                          String>(
                                                        getJsonField(
                                                          (_model.createCredentialsResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.detail''',
                                                        )?.toString(),
                                                        'Something went wrong.',
                                                      ),
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      title: valueOrDefault<
                                                          String>(
                                                        getJsonField(
                                                          (_model.createCredentialsResponse
                                                                  ?.jsonBody ??
                                                              ''),
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
                                                );
                                              },
                                            );
                                          }

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
