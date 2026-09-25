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
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_new_password_page_model.dart';
export 'create_new_password_page_model.dart';

class CreateNewPasswordPageWidget extends StatefulWidget {
  const CreateNewPasswordPageWidget({
    super.key,
    required this.purpose,
    this.resetToken,
  });

  final VerificationType? purpose;
  final String? resetToken;

  static String routeName = 'CreateNewPasswordPage';
  static String routePath = '/createNewPasswordPage';

  @override
  State<CreateNewPasswordPageWidget> createState() =>
      _CreateNewPasswordPageWidgetState();
}

class _CreateNewPasswordPageWidgetState
    extends State<CreateNewPasswordPageWidget> with TickerProviderStateMixin {
  late CreateNewPasswordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateNewPasswordPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
    });

    _model.currentPasswordTextFieldTextController ??= TextEditingController();
    _model.currentPasswordTextFieldFocusNode ??= FocusNode();

    _model.newPasswordTextFieldTextController ??= TextEditingController();
    _model.newPasswordTextFieldFocusNode ??= FocusNode();

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
                                          'Create New Password',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                color: Color(0xFF00727D),
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
                                              'Set a new password to securely access your account.',
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
                                                        color:
                                                            Color(0xFF444C66),
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
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((widget.purpose ==
                                                      VerificationType
                                                          .createNewPassword) ||
                                                  (widget.purpose ==
                                                      VerificationType
                                                          .changePassword))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Semantics(
                                                        label:
                                                            'Current_Password_TextField',
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .currentPasswordTextFieldTextController,
                                                            focusNode: _model
                                                                .currentPasswordTextFieldFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.currentPasswordTextFieldTextController',
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                              () =>
                                                                  safeSetState(
                                                                      () {}),
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: !_model
                                                                .currentPasswordTextFieldVisibility,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Current Password',
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
                                                                      _model.currentPasswordTextFieldVisibility =
                                                                          !_model
                                                                              .currentPasswordTextFieldVisibility);
                                                                },
                                                                focusNode: FocusNode(
                                                                    skipTraversal:
                                                                        true),
                                                                child: Icon(
                                                                  _model.currentPasswordTextFieldVisibility
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
                                                            maxLength: 40,
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
                                                                .currentPasswordTextFieldTextControllerValidator
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
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Semantics(
                                                      label:
                                                          'New_Password_TextField',
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .newPasswordTextFieldTextController,
                                                          focusNode: _model
                                                              .newPasswordTextFieldFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.newPasswordTextFieldTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    500),
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
                                                                    }(_model.newPasswordTextFieldTextController
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
                                                                    }(_model.newPasswordTextFieldTextController
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
                                                                    }(_model.newPasswordTextFieldTextController
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
                                                                    }(_model.newPasswordTextFieldTextController
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
                                                                    }(_model.newPasswordTextFieldTextController
                                                                            .text)
                                                                        ? true
                                                                        : false,
                                                                  );
                                                                }),
                                                              ]);
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                          onFieldSubmitted:
                                                              (_) async {
                                                            await Future.wait([
                                                              Future(() async {
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
                                                                  }(_model.newPasswordTextFieldTextController
                                                                          .text)
                                                                      ? true
                                                                      : false,
                                                                );
                                                              }),
                                                              Future(() async {
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
                                                                  }(_model.newPasswordTextFieldTextController
                                                                          .text)
                                                                      ? true
                                                                      : false,
                                                                );
                                                              }),
                                                              Future(() async {
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
                                                                  }(_model.newPasswordTextFieldTextController
                                                                          .text)
                                                                      ? true
                                                                      : false,
                                                                );
                                                              }),
                                                              Future(() async {
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
                                                                  }(_model.newPasswordTextFieldTextController
                                                                          .text)
                                                                      ? true
                                                                      : false,
                                                                );
                                                              }),
                                                              Future(() async {
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
                                                                  }(_model.newPasswordTextFieldTextController
                                                                          .text)
                                                                      ? true
                                                                      : false,
                                                                );
                                                              }),
                                                            ]);
                                                            safeSetState(() {});
                                                          },
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          obscureText: !_model
                                                              .newPasswordTextFieldVisibility,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelText:
                                                                'New Password',
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
                                                            suffixIcon: InkWell(
                                                              onTap: () async {
                                                                safeSetState(() =>
                                                                    _model.newPasswordTextFieldVisibility =
                                                                        !_model
                                                                            .newPasswordTextFieldVisibility);
                                                              },
                                                              focusNode: FocusNode(
                                                                  skipTraversal:
                                                                      true),
                                                              child: Icon(
                                                                _model.newPasswordTextFieldVisibility
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
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          maxLength: 40,
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
                                                              .newPasswordTextFieldTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 17.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Semantics(
                                                      label:
                                                          'Confirm_Password_TextField',
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
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
                                                                    500),
                                                            () async {
                                                              _model
                                                                  .isPasswordMatch = _model
                                                                      .newPasswordTextFieldTextController
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
                                                                    .newPasswordTextFieldTextController
                                                                    .text ==
                                                                _model
                                                                    .confirmPasswordTextFieldTextController
                                                                    .text;
                                                            safeSetState(() {});
                                                          },
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          obscureText: !_model
                                                              .confirmPasswordTextFieldVisibility,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelText:
                                                                'Confirm Password',
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
                                                            suffixIcon: InkWell(
                                                              onTap: () async {
                                                                safeSetState(() =>
                                                                    _model.confirmPasswordTextFieldVisibility =
                                                                        !_model
                                                                            .confirmPasswordTextFieldVisibility);
                                                              },
                                                              focusNode: FocusNode(
                                                                  skipTraversal:
                                                                      true),
                                                              child: Icon(
                                                                _model.confirmPasswordTextFieldVisibility
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
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          maxLength: 40,
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
                                                ].divide(SizedBox(width: 17.0)),
                                              ),
                                            ].divide(SizedBox(height: 18.0)),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation1']!),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 30.0, 10.0, 0.0),
                                      child: Semantics(
                                        label: 'Validator-Container',
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Semantics(
                                            label: 'validator_column',
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Your password must be',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF2D2D3D),
                                                          fontSize: 14.0,
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
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'Conditional Builder Validator 8 characters',
                                                          child: Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .pwValidator
                                                                      .elementAtOrNull(
                                                                          0) ??
                                                                  false) {
                                                                return Semantics(
                                                                  label:
                                                                      'Icon Validator Characters',
                                                                  child: Icon(
                                                                    Icons
                                                                        .check_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 20.0,
                                                                  ),
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
                                                    ),
                                                    Text(
                                                      'At least 8 characters',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'Conditional Builder Validator 1 Number',
                                                          child: Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .pwValidator
                                                                      .elementAtOrNull(
                                                                          1) ??
                                                                  false) {
                                                                return Semantics(
                                                                  label:
                                                                      'Icon Validator 1 Number',
                                                                  child: Icon(
                                                                    Icons
                                                                        .check_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 20.0,
                                                                  ),
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
                                                    ),
                                                    Text(
                                                      '1 number',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'Icon Validator 1 Lowercase',
                                                          child: Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .pwValidator
                                                                      .elementAtOrNull(
                                                                          4) ??
                                                                  false) {
                                                                return Icon(
                                                                  Icons
                                                                      .check_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                    ),
                                                    Text(
                                                      '1 lowercase',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'Conditional Builder Validator 1 Uppercase',
                                                          child: Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .pwValidator
                                                                      .elementAtOrNull(
                                                                          3) ??
                                                                  false) {
                                                                return Icon(
                                                                  Icons
                                                                      .check_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                    ),
                                                    Text(
                                                      '1 uppercase',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'Conditional Builder Validator 1 Special Character',
                                                          child: Builder(
                                                            builder: (context) {
                                                              if (_model
                                                                      .pwValidator
                                                                      .elementAtOrNull(
                                                                          2) ??
                                                                  false) {
                                                                return Icon(
                                                                  Icons
                                                                      .check_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                    ),
                                                    Text(
                                                      '1 special character',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation2']!),
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
                                    label: 'Reset Password Button',
                                    child: wrapWithModel(
                                      model: _model.primaryButtonComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryButtonComponentWidget(
                                        buttonTitle: 'Reset Password',
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
                                        buttonDisabledOption: !_model
                                                .isPasswordMatch ||
                                            (_model.pwValidator
                                                .where((e) => e == false)
                                                .toList()
                                                .isNotEmpty) ||
                                            (_model
                                                        .newPasswordTextFieldTextController
                                                        .text ==
                                                    '') ||
                                            (_model.currentPasswordTextFieldTextController
                                                    .text ==
                                                _model
                                                    .newPasswordTextFieldTextController
                                                    .text) ||
                                            (_model.newPasswordTextFieldTextController
                                                    .text !=
                                                _model
                                                    .confirmPasswordTextFieldTextController
                                                    .text),
                                        callback: () async {
                                          if (widget.purpose ==
                                              VerificationType
                                                  .createNewPassword) {
                                            _model.passwordChangeResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsPasswordChangeCall
                                                    .call(
                                              currentPassword: _model
                                                  .currentPasswordTextFieldTextController
                                                  .text,
                                              newPassword: _model
                                                  .newPasswordTextFieldTextController
                                                  .text,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            if (WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeCall
                                                        .error(
                                                      (_model.passwordChangeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    null ||
                                                WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeCall
                                                        .error(
                                                      (_model.passwordChangeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    '') {
                                              if (Navigator.of(context)
                                                  .canPop()) {
                                                context.pop();
                                              }
                                              context.pushNamed(
                                                AccountVerificationPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'sessionToken':
                                                      serializeParam(
                                                    WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeCall
                                                        .sessionId(
                                                      (_model.passwordChangeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                  'purpose': serializeParam(
                                                    VerificationType
                                                        .createNewPassword,
                                                    ParamType.Enum,
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
                                                          message:
                                                              valueOrDefault<
                                                                  String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeCall
                                                                .message(
                                                              (_model.passwordChangeResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'Something went wrong.',
                                                          ),
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: valueOrDefault<
                                                              String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeCall
                                                                .title(
                                                              (_model.passwordChangeResponse
                                                                      ?.jsonBody ??
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
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          } else if (widget.purpose ==
                                              VerificationType.changePassword) {
                                            _model.passwordChangeChallenge =
                                                await WhitebankGroupAPIGroup
                                                    .retailSettingsPasswordChangeChallengeCall
                                                    .call(
                                              currentPassword: _model
                                                  .currentPasswordTextFieldTextController
                                                  .text,
                                              newPassword: _model
                                                  .newPasswordTextFieldTextController
                                                  .text,
                                              deviceId: FFAppState()
                                                  .DeviceDetails
                                                  .deviceId,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                              accessToken:
                                                  currentAuthenticationToken,
                                            );

                                            if ((WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeChallengeCall
                                                        .preferredMethod(
                                                      (_model.passwordChangeChallenge
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    SigningAvailableMethods
                                                        .mpin.name) &&
                                                !isWeb) {
                                              FFAppState()
                                                  .updateChangePasswordStateStruct(
                                                (e) => e
                                                  ..currentPassword = _model
                                                      .currentPasswordTextFieldTextController
                                                      .text
                                                  ..newPassword = _model
                                                      .confirmPasswordTextFieldTextController
                                                      .text,
                                              );
                                              safeSetState(() {});

                                              context.pushNamed(
                                                MPINPageWidget.routeName,
                                                queryParameters: {
                                                  'usage': serializeParam(
                                                    MpinUsage.CHANGE_PASSWORD,
                                                    ParamType.Enum,
                                                  ),
                                                  'challenge': serializeParam(
                                                    WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeChallengeCall
                                                        .challenge(
                                                      (_model.passwordChangeChallenge
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            } else if (isWeb &&
                                                (SigningChallengeModelStruct
                                                            .maybeFromMap((_model
                                                                    .passwordChangeChallenge
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.availableMethods
                                                        .contains(
                                                            SigningAvailableMethods
                                                                .passkey
                                                                .name) ==
                                                    true)) {
                                              _model.fundTransferConfirmSigningPKPayload =
                                                  await action_blocks
                                                      .createConfirmSigningPKPayload(
                                                context,
                                                stepupOptionsPayload:
                                                    WBStepupAuthOptionsPayloadStruct(
                                                  transactionType:
                                                      PasskeyTransactionType
                                                          .password_change.name,
                                                  transactionId: currentUserData
                                                      ?.user.uid,
                                                ),
                                              );
                                              _model.passwordChangeConfirmResponsePasskey =
                                                  await WhitebankGroupAPIGroup
                                                      .retailSettingsPasswordChangeConfirmPasskeyCall
                                                      .call(
                                                method: SigningAvailableMethods
                                                    .passkey.name,
                                                transactionHash: _model
                                                    .fundTransferConfirmSigningPKPayload
                                                    ?.data
                                                    .transactionHash,
                                                stepupToken: _model
                                                    .fundTransferConfirmSigningPKPayload
                                                    ?.data
                                                    .stepupToken,
                                                baseURL:
                                                    FFDevEnvironmentValues()
                                                        .WBPBASEURL,
                                                accessToken:
                                                    currentAuthenticationToken,
                                                fmsSessionId: currentUserData
                                                    ?.fmsSessionId,
                                              );

                                              if ((_model
                                                      .passwordChangeConfirmResponsePasskey
                                                      ?.succeeded ??
                                                  true)) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              CustomReusableBottomSheetV2Widget(
                                                            title:
                                                                'Password change successfully!',
                                                            message:
                                                                'Your password has been updated. You can now log in using your new credentials.',
                                                            buttonTitle:
                                                                'Back to Login',
                                                            callback: () async {
                                                              context.goNamed(
                                                                LandingPageWidget
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
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
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
                                                                getJsonField(
                                                              (_model.passwordChangeConfirmResponsePasskey
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.message''',
                                                            ).toString(),
                                                            primaryButtonTitle:
                                                                'Dismiss',
                                                            title: getJsonField(
                                                              (_model.passwordChangeConfirmResponsePasskey
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.title''',
                                                            ).toString(),
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
                                                    .retailSettingsPasswordChangeChallengeCall
                                                    .preferredMethod(
                                                  (_model.passwordChangeChallenge
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                SigningAvailableMethods
                                                    .biometric.name) {
                                              _model.createSignatureOutput =
                                                  await actions.createSignature(
                                                WhitebankGroupAPIGroup
                                                    .retailSettingsPasswordChangeChallengeCall
                                                    .challenge(
                                                  (_model.passwordChangeChallenge
                                                          ?.jsonBody ??
                                                      ''),
                                                )!,
                                              );
                                              _model.passwordChangeConfirmResponse =
                                                  await WhitebankGroupAPIGroup
                                                      .retailSettingsPasswordChangeConfirmChallengeCall
                                                      .call(
                                                method: SigningAvailableMethods
                                                    .biometric.name,
                                                deviceId: FFAppState()
                                                    .DeviceDetails
                                                    .deviceId,
                                                challenge: WhitebankGroupAPIGroup
                                                    .retailSettingsPasswordChangeChallengeCall
                                                    .challenge(
                                                  (_model.passwordChangeChallenge
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                signature: _model
                                                    .createSignatureOutput,
                                                baseURL:
                                                    FFDevEnvironmentValues()
                                                        .WBPBASEURL,
                                                accessToken:
                                                    currentAuthenticationToken,
                                                fmsSessionId: currentUserData
                                                    ?.fmsSessionId,
                                              );

                                              if ((_model
                                                      .passwordChangeConfirmResponse
                                                      ?.succeeded ??
                                                  true)) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              CustomReusableBottomSheetV2Widget(
                                                            title:
                                                                'Password change successfully!',
                                                            message:
                                                                'Your password has been updated. You can now log in using your new credentials.',
                                                            buttonTitle:
                                                                'Back to Login',
                                                            callback: () async {
                                                              context.goNamed(
                                                                LandingPageWidget
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
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
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
                                                              getJsonField(
                                                                (_model.passwordChangeConfirmResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.message''',
                                                              )?.toString(),
                                                              'Something went wrong.',
                                                            ),
                                                            primaryButtonTitle:
                                                                'Dismiss',
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsPasswordChangeConfirmChallengeCall
                                                                  .title(
                                                                (_model.passwordChangeConfirmResponse
                                                                        ?.jsonBody ??
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
                                                      ),
                                                    );
                                                  },
                                                );
                                              }
                                            } else if (WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeChallengeCall
                                                        .error(
                                                      (_model.passwordChangeChallenge
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    null ||
                                                WhitebankGroupAPIGroup
                                                        .retailSettingsPasswordChangeChallengeCall
                                                        .error(
                                                      (_model.passwordChangeChallenge
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    '') {
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
                                                          message:
                                                              valueOrDefault<
                                                                  String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeChallengeCall
                                                                .message(
                                                              (_model.passwordChangeChallenge
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            'Something went wrong.',
                                                          ),
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: valueOrDefault<
                                                              String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeChallengeCall
                                                                .title(
                                                              (_model.passwordChangeChallenge
                                                                      ?.jsonBody ??
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
                                                          message:
                                                              valueOrDefault<
                                                                  String>(
                                                            getJsonField(
                                                              (_model.passwordChangeChallenge
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.message''',
                                                            )?.toString(),
                                                            'Something went wrong.',
                                                          ),
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          title: valueOrDefault<
                                                              String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeChallengeCall
                                                                .title(
                                                              (_model.passwordChangeChallenge
                                                                      ?.jsonBody ??
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
                                                    ),
                                                  );
                                                },
                                              );
                                            }
                                          } else if (widget.purpose ==
                                              VerificationType
                                                  .recoverPassword) {
                                            _model.passwordResetResponse =
                                                await WhitebankGroupAPIGroup
                                                    .retailAuthPasswordRecoveryResetCall
                                                    .call(
                                              resetToken: widget.resetToken,
                                              newPassword: _model
                                                  .newPasswordTextFieldTextController
                                                  .text,
                                              confirmPassword: _model
                                                  .confirmPasswordTextFieldTextController
                                                  .text,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                              fmsSessionId:
                                                  currentUserData?.fmsSessionId,
                                            );

                                            if (WhitebankGroupAPIGroup
                                                .retailAuthPasswordRecoveryResetCall
                                                .success(
                                              (_model.passwordResetResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            )!) {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            CustomReusableBottomSheetV2Widget(
                                                          title:
                                                              'Password Recovery Successful',
                                                          message:
                                                              'Your password has been reset. You can now log in using your new credentials.',
                                                          buttonTitle:
                                                              'Back to Login',
                                                          callback: () async {
                                                            context.goNamed(
                                                              LandingPageWidget
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
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
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
                                                          message:
                                                              valueOrDefault<
                                                                  String>(
                                                            WhitebankGroupAPIGroup
                                                                .retailAuthPasswordRecoveryResetCall
                                                                .message(
                                                              (_model.passwordResetResponse
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
                                                                .retailAuthPasswordRecoveryResetCall
                                                                .title(
                                                              (_model.passwordResetResponse
                                                                      ?.jsonBody ??
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
                                                    ),
                                                  );
                                                },
                                              );
                                            }
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
                    Semantics(
                      label: 'CreateNewPassword_CustomMobileAppBar',
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
      ),
    );
  }
}
