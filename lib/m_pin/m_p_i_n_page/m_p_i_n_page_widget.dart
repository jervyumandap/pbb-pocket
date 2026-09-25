import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_mobile_bottom_sheet_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/m_pin/pin_component/pin_component_widget.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'm_p_i_n_page_model.dart';
export 'm_p_i_n_page_model.dart';

class MPINPageWidget extends StatefulWidget {
  const MPINPageWidget({
    super.key,
    this.mpinHash,
    this.trustedDevice,
    this.loggedInDevice,
    this.trustedDeviceID,
    this.loggedInDeviceID,
    bool? forAuth,
    this.transferType,
    this.usage,
    this.challenge,
    this.bpId,
    this.updateLimits,
    this.biller,
  }) : this.forAuth = forAuth ?? true;

  final String? mpinHash;
  final DeviceDataStruct? trustedDevice;
  final DeviceDataStruct? loggedInDevice;
  final String? trustedDeviceID;
  final String? loggedInDeviceID;
  final bool forAuth;
  final String? transferType;
  final MpinUsage? usage;
  final String? challenge;

  /// Initiated billspayment response -> id
  final String? bpId;

  final List<dynamic>? updateLimits;
  final WBBillerStruct? biller;

  static String routeName = 'MPINPage';
  static String routePath = '/mPINPage';

  @override
  State<MPINPageWidget> createState() => _MPINPageWidgetState();
}

class _MPINPageWidgetState extends State<MPINPageWidget> {
  late MPINPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MPINPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().pinInput = '';
      _model.challenge = widget.challenge;
      _model.isInvalidMPin = false;
      safeSetState(() {});
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: _model
                      .mpinChallengeQuery(
                    uniqueQueryKey: '_MpinPage',
                    overrideCache: false,
                    requestFn: () =>
                        WhitebankGroupAPIGroup.retailAuthMpinChallengeCall.call(
                      baseURL: FFDevEnvironmentValues().WBPBASEURL,
                      deviceId: FFAppState().DeviceDetails.deviceId,
                    ),
                  )
                      .then((result) {
                    try {
                      _model.apiRequestCompleted = true;
                      _model.apiRequestLastUniqueKey = '_MpinPage';
                    } finally {}
                    return result;
                  }),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: LoadingStateComponentWidget(
                          isFinished: false,
                        ),
                      );
                    }
                    final pageColumnRetailAuthMpinChallengeResponse =
                        snapshot.data!;

                    return Semantics(
                      label: 'Page-Column',
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Semantics(
                                  label: 'Logo Image',
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/fuueei.png',
                                      width: 120.0,
                                      height: 27.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (widget.usage == MpinUsage.LOGIN)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Semantics(
                                          label: 'Greetings-Text',
                                          child: Text(
                                            'Welcome, ${FFAppState().userName}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Semantics(
                                        label: 'Enter your MPIN Text',
                                        child: Text(
                                          'Enter your MPIN',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF5C6466),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 62.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (_model.isInvalidMPin)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 24.0),
                                          child: Semantics(
                                            label: 'Error-Text',
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.errorMessage,
                                                'Invalid MPin',
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error2,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Builder(
                                          builder: (context) => Semantics(
                                            label: 'PinComponent',
                                            child: wrapWithModel(
                                              model: _model.pinComponentModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              updateOnChange: true,
                                              child: PinComponentWidget(
                                                callback: () async {
                                                  var _shouldSetState = false;
                                                  if (widget.usage ==
                                                      MpinUsage.LOGIN) {
                                                    _model.getPaygilantSessionMpinOutput =
                                                        await actions
                                                            .getPaygilantSession();
                                                    _shouldSetState = true;
                                                    _model.deviceSignatureOutput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge: getJsonField(
                                                          pageColumnRetailAuthMpinChallengeResponse
                                                              .jsonBody,
                                                          r'''$.challenge''',
                                                        ).toString(),
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.mpinLoginResponse =
                                                        await WhitebankGroupAPIGroup
                                                            .retailAuthMpinLoginCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      challenge: getJsonField(
                                                        pageColumnRetailAuthMpinChallengeResponse
                                                            .jsonBody,
                                                        r'''$.challenge''',
                                                      ).toString(),
                                                      signature: getJsonField(
                                                        _model
                                                            .deviceSignatureOutput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      fmsSessionId: _model
                                                          .getPaygilantSessionMpinOutput,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .mpinLoginResponse
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});
                                                      _model.getProfileResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .call(
                                                        accessToken:
                                                            WhitebankGroupAPIGroup
                                                                .retailAuthMpinLoginCall
                                                                .accessToken(
                                                          (_model.mpinLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .getProfileResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        GoRouter.of(context)
                                                            .prepareAuthEvent();
                                                        await authManager
                                                            .signIn(
                                                          authenticationToken:
                                                              WhitebankGroupAPIGroup
                                                                  .retailAuthMpinLoginCall
                                                                  .accessToken(
                                                            (_model.mpinLoginResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          refreshToken:
                                                              WhitebankGroupAPIGroup
                                                                  .retailAuthMpinLoginCall
                                                                  .refreshToken(
                                                            (_model.mpinLoginResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          tokenExpiration: functions
                                                              .createTokenExpirationDateTime(
                                                                  WhitebankGroupAPIGroup
                                                                      .retailAuthMpinLoginCall
                                                                      .expiresIn(
                                                            (_model.mpinLoginResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!),
                                                          authUid:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .customerId(
                                                            (_model.getProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          userData:
                                                              AuthenticatedUserStruct(
                                                            accessToken:
                                                                WhitebankGroupAPIGroup
                                                                    .retailAuthMpinLoginCall
                                                                    .accessToken(
                                                              (_model.mpinLoginResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            refreshToken:
                                                                WhitebankGroupAPIGroup
                                                                    .retailAuthMpinLoginCall
                                                                    .refreshToken(
                                                              (_model.mpinLoginResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            expiresIn:
                                                                WhitebankGroupAPIGroup
                                                                    .retailAuthMpinLoginCall
                                                                    .expiresIn(
                                                              (_model.mpinLoginResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            user: UserV3Struct(
                                                              userName: '',
                                                              firstName:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailSettingsProfileDetailsCall
                                                                      .firstName(
                                                                (_model.getProfileResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              lastName:
                                                                  WhitebankGroupAPIGroup
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
                                                                .getPaygilantSessionMpinOutput,
                                                          ),
                                                        );

                                                        context.goNamedAuth(
                                                            DashboardWidget
                                                                .routeName,
                                                            context.mounted);

                                                        FFAppState().pinInput =
                                                            '';
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
                                                                      WhitebankGroupAPIGroup
                                                                          .retailSettingsProfileDetailsCall
                                                                          .message(
                                                                        (_model.getProfileResponse?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'Something went wrong',
                                                                    ),
                                                                    primaryButtonTitle:
                                                                        'Dismiss',
                                                                    title: valueOrDefault<
                                                                        String>(
                                                                      WhitebankGroupAPIGroup
                                                                          .retailSettingsProfileDetailsCall
                                                                          .title(
                                                                        (_model.getProfileResponse?.jsonBody ??
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

                                                        _model.isInvalidMPin =
                                                            true;
                                                        safeSetState(() {});
                                                        FFAppState().pinInput =
                                                            '';
                                                      }
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailAuthMpinLoginCall
                                                            .error(
                                                          (_model.mpinLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'ACCOUNT_LOCKED') {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
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
                                                                  message: WhitebankGroupAPIGroup
                                                                      .retailAuthMpinLoginCall
                                                                      .title(
                                                                    (_model.mpinLoginResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!,
                                                                  primaryButtonTitle:
                                                                      'Dismiss',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      (_model.mpinLoginResponse
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
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      FFAppState().pinInput =
                                                          '';
                                                      if (Navigator.of(context)
                                                          .canPop()) {
                                                        context.pop();
                                                      }
                                                      context.pushNamedAuth(
                                                          LoginPageWidget
                                                              .routeName,
                                                          context.mounted);
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailAuthMpinLoginCall
                                                            .error(
                                                          (_model.mpinLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'INVALID_MPIN') {
                                                      safeSetState(() {
                                                        _model.clearMpinChallengeQueryCacheKey(
                                                            _model
                                                                .apiRequestLastUniqueKey);
                                                        _model.apiRequestCompleted =
                                                            false;
                                                      });
                                                      await _model
                                                          .waitForApiRequestCompleted();
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinLoginCall
                                                              .title(
                                                        (_model.mpinLoginResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      );
                                                      safeSetState(() {});
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailAuthMpinLoginCall
                                                            .error(
                                                          (_model.mpinLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'INVALID_CHALLENGE') {
                                                      safeSetState(() {
                                                        _model.clearMpinChallengeQueryCacheKey(
                                                            _model
                                                                .apiRequestLastUniqueKey);
                                                        _model.apiRequestCompleted =
                                                            false;
                                                      });
                                                      await _model
                                                          .waitForApiRequestCompleted();
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinLoginCall
                                                              .title(
                                                        (_model.mpinLoginResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      );
                                                      safeSetState(() {});
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
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
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      (_model.mpinLoginResponse
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
                                                                    getJsonField(
                                                                      (_model.mpinLoginResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.title''',
                                                                    )?.toString(),
                                                                    'Oops!',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.clearMpinChallengeQueryCacheKey(
                                                                          _model
                                                                              .apiRequestLastUniqueKey);
                                                                      _model.apiRequestCompleted =
                                                                          false;
                                                                    });
                                                                    await _model.waitForApiRequestCompleted(
                                                                        minWait:
                                                                            200,
                                                                        maxWait:
                                                                            5000);
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

                                                      FFAppState().pinInput =
                                                          '';
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          WhitebankGroupAPIGroup
                                                              .retailAuthMpinLoginCall
                                                              .title(
                                                        (_model.mpinLoginResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      );
                                                      safeSetState(() {});
                                                    }
                                                  } else if (widget.usage ==
                                                      MpinUsage.BILLS_PAYMENT) {
                                                    _model.bpSignatureOuput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.bpConfirmSigningBlockOutput =
                                                        await action_blocks
                                                            .bpConfirmSigningBlock(
                                                      context,
                                                      signingPayload:
                                                          DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                      signature: getJsonField(
                                                        _model.bpSignatureOuput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      bpId: widget.bpId,
                                                      usage: MpinUsage
                                                          .BILLS_PAYMENT,
                                                    );
                                                    _shouldSetState = true;
                                                    if (_model
                                                            .bpConfirmSigningBlockOutput
                                                            ?.status ==
                                                        'COMPLETED') {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});

                                                      context.goNamedAuth(
                                                        PayBillsSuccessPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            _model
                                                                .bpConfirmSigningBlockOutput,
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'biller':
                                                              serializeParam(
                                                            widget.biller,
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    } else if ((_model
                                                                .bpConfirmSigningBlockOutput
                                                                ?.errorMessage ==
                                                            'INVALID_MPIN') ||
                                                        (_model.bpConfirmSigningBlockOutput
                                                                ?.errorMessage ==
                                                            'INVALID_CHALLENGE')) {
                                                      _model.challenge = _model
                                                          .bpConfirmSigningBlockOutput
                                                          ?.status;
                                                      _model.errorMessage = _model
                                                          .bpConfirmSigningBlockOutput
                                                          ?.remarks;
                                                      _model.isInvalidMPin =
                                                          true;
                                                      safeSetState(() {});
                                                      FFAppState().pinInput =
                                                          '';
                                                    } else if (_model
                                                                .bpConfirmSigningBlockOutput
                                                                ?.status ==
                                                            null ||
                                                        _model.bpConfirmSigningBlockOutput
                                                                ?.status ==
                                                            '') {
                                                      context.goNamedAuth(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              errorMessage:
                                                                  'Sorry, something went wrong. Please try reloading the page or come back in a few minutes.',
                                                              status:
                                                                  'Something Went Wrong',
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      context.goNamedAuth(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              processedAt: _model
                                                                  .bpConfirmSigningBlockOutput
                                                                  ?.processedAt,
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            _model.bpConfirmSigningBlockOutput
                                                                    ?.errorMessage ==
                                                                'MPIN_LOCKED',
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage
                                                          .SCHEDULED_BILLS_PAYMENT) {
                                                    _model.schedBpSignatureOuput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.scheduledBPCreateResponse =
                                                        await WhitebankGroupAPIGroup
                                                            .retailScheduledBPCreateCall
                                                            .call(
                                                      method: 'mpin',
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .schedBpSignatureOuput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
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
                                                    if (WhitebankGroupAPIGroup
                                                            .retailScheduledBPCreateCall
                                                            .status(
                                                          (_model.scheduledBPCreateResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'ACTIVE') {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});

                                                      context.goNamedAuth(
                                                        PayBillsSuccessPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              id: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .id(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              status: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .id(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              referenceNumber:
                                                                  getJsonField(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.referenceNumber''',
                                                              ).toString(),
                                                              biller:
                                                                  WBBillerStruct(
                                                                name: WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .billerName(
                                                                  (_model.scheduledBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                              ),
                                                              accountNumber:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .accountNumberMasked(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              accountHolderName:
                                                                  FFAppState()
                                                                      .PaybillsInitiateModelAppState
                                                                      .accountHolderName,
                                                              amount: WhitebankGroupAPIGroup
                                                                  .retailScheduledBPCreateCall
                                                                  .amount(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              totalAmount:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .amount(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              currency:
                                                                  WhitebankGroupAPIGroup
                                                                      .retailScheduledBPCreateCall
                                                                      .currency(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              remarks: FFAppState()
                                                                  .PaybillsInitiateModelAppState
                                                                  .remarks,
                                                              sourceAccount:
                                                                  AccountsStruct(
                                                                accountNumber:
                                                                    FFAppState()
                                                                        .PaybillsInitiateModelAppState
                                                                        .sourceAccountNumber,
                                                                accountName:
                                                                    FFAppState()
                                                                        .PaybillsInitiateModelAppState
                                                                        .accountHolderName,
                                                              ),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'biller':
                                                              serializeParam(
                                                            widget.biller,
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'title':
                                                              serializeParam(
                                                            'Bill Payment Scheduled',
                                                            ParamType.String,
                                                          ),
                                                          'message':
                                                              serializeParam(
                                                            'Will be paid on the scheduled date.',
                                                            ParamType.String,
                                                          ),
                                                          'isScheculed':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                          'scheduleDate':
                                                              serializeParam(
                                                            WhitebankGroupAPIGroup
                                                                .retailScheduledBPCreateCall
                                                                .nextRunAt(
                                                              (_model.scheduledBPCreateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    } else if ((WhitebankGroupAPIGroup
                                                                .retailScheduledBPCreateCall
                                                                .error(
                                                              (_model.scheduledBPCreateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'INVALID_MPIN') ||
                                                        (WhitebankGroupAPIGroup
                                                                .retailScheduledBPCreateCall
                                                                .error(
                                                              (_model.scheduledBPCreateResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'INVALID_CHALLENGE')) {
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          'Incorrect PIN. Remaining attempts: ${getJsonField(
                                                        (_model.scheduledBPCreateResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.remainingAttempts''',
                                                      ).toString()}';
                                                      safeSetState(() {});
                                                      _model.schedBPChallengeResponse =
                                                          await WhitebankGroupAPIGroup
                                                              .retailScheduledBPSigningChallengeCall
                                                              .call(
                                                        requestBodyJson:
                                                            FFAppState()
                                                                .PayBillsRequestBody,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .schedBPChallengeResponse
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.challenge =
                                                            WhitebankGroupAPIGroup
                                                                .retailScheduledBPSigningChallengeCall
                                                                .challenge(
                                                          (_model.schedBPChallengeResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                        safeSetState(() {});
                                                        FFAppState().pinInput =
                                                            '';
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      } else {
                                                        context.goNamedAuth(
                                                          PayBillsFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'paymentResponse':
                                                                serializeParam(
                                                              WBConfirmBillPaymentResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .scheduledBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      '')),
                                                              ParamType
                                                                  .DataStruct,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else {
                                                      context.goNamedAuth(
                                                        PayBillsFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'paymentResponse':
                                                              serializeParam(
                                                            WBConfirmBillPaymentResponseStruct(
                                                              processedAt:
                                                                  getJsonField(
                                                                (_model.scheduledBPCreateResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.lockedUntil''',
                                                              ).toString(),
                                                            ),
                                                            ParamType
                                                                .DataStruct,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            WhitebankGroupAPIGroup
                                                                    .retailScheduledBPCreateCall
                                                                    .error(
                                                                  (_model.scheduledBPCreateResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ) ==
                                                                'MPIN_LOCKED',
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                    FFAppState()
                                                            .PayBillsRequestBody =
                                                        null;
                                                  } else if (widget.usage ==
                                                      MpinUsage
                                                          .CHANGE_PASSWORD) {
                                                    _model.changePwSignatureOuput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.pWChangeConfirmResponse =
                                                        await WhitebankGroupAPIGroup
                                                            .retailSettingsPasswordChangeConfirmChallengeCall
                                                            .call(
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin.name,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .changePwSignatureOuput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      fmsSessionId:
                                                          currentUserData
                                                              ?.fmsSessionId,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .pWChangeConfirmResponse
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
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
                                                                      'Password change successful.',
                                                                  message:
                                                                      'Your password has been updated.',
                                                                  buttonTitle:
                                                                      'Continue',
                                                                  callback:
                                                                      () async {
                                                                    context.goNamed(
                                                                        DashboardWidget
                                                                            .routeName);
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
                                                    } else if ((WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeConfirmChallengeCall
                                                                .error(
                                                              (_model.pWChangeConfirmResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'INVALID_MPIN') ||
                                                        (WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeConfirmChallengeCall
                                                                .error(
                                                              (_model.pWChangeConfirmResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'INVALID_CHALLENGE')) {
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          '${valueOrDefault<String>(
                                                        WhitebankGroupAPIGroup
                                                            .retailSettingsPasswordChangeConfirmChallengeCall
                                                            .title(
                                                          (_model.pWChangeConfirmResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        'Something went wrong.',
                                                      )}. ${getJsonField(
                                                                (_model.pWChangeConfirmResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.remainingAttempts''',
                                                              ) != null ? 'Remaining attempts: ' : ''}${getJsonField(
                                                                (_model.pWChangeConfirmResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.remainingAttempts''',
                                                              ) != null ? valueOrDefault<String>(
                                                              getJsonField(
                                                                (_model.pWChangeConfirmResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.remainingAttempts''',
                                                              )?.toString(),
                                                              'Something went wrong.',
                                                            ) : ''}';
                                                      safeSetState(() {});
                                                      _model.passwordChangeChallenge =
                                                          await WhitebankGroupAPIGroup
                                                              .retailSettingsPasswordChangeChallengeCall
                                                              .call(
                                                        currentPassword: FFAppState()
                                                            .changePasswordState
                                                            .currentPassword,
                                                        newPassword: FFAppState()
                                                            .changePasswordState
                                                            .newPassword,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .passwordChangeChallenge
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.challenge =
                                                            WhitebankGroupAPIGroup
                                                                .retailSettingsPasswordChangeChallengeCall
                                                                .challenge(
                                                          (_model.passwordChangeChallenge
                                                                  ?.jsonBody ??
                                                              ''),
                                                        );
                                                        safeSetState(() {});
                                                        FFAppState().pinInput =
                                                            '';
                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
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
                                                                      WhitebankGroupAPIGroup
                                                                          .retailSettingsPasswordChangeChallengeCall
                                                                          .message(
                                                                        (_model.passwordChangeChallenge?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'Something went wrong.',
                                                                    ),
                                                                    primaryButtonTitle:
                                                                        'Back',
                                                                    title: valueOrDefault<
                                                                        String>(
                                                                      WhitebankGroupAPIGroup
                                                                          .retailSettingsPasswordChangeChallengeCall
                                                                          .title(
                                                                        (_model.passwordChangeChallenge?.jsonBody ??
                                                                            ''),
                                                                      ),
                                                                      'Oops!',
                                                                    ),
                                                                    primaryButtonAction:
                                                                        () async {
                                                                      context.goNamed(
                                                                          SecurityAndCredentialsPageWidget
                                                                              .routeName);
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
                                                            .retailSettingsPasswordChangeConfirmChallengeCall
                                                            .error(
                                                          (_model.pWChangeConfirmResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'MPIN_LOCKED') {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
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
                                                          'lockedUntil':
                                                              serializeParam(
                                                            getJsonField(
                                                              (_model.pWChangeConfirmResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.lockedUntil''',
                                                            ).toString(),
                                                            ParamType.String,
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
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsPasswordChangeConfirmChallengeCall
                                                                        .message(
                                                                      (_model.pWChangeConfirmResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Something went wrong.',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Back',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsPasswordChangeConfirmChallengeCall
                                                                        .title(
                                                                      (_model.pWChangeConfirmResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Oops!',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    context.goNamed(
                                                                        SecurityAndCredentialsPageWidget
                                                                            .routeName);
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

                                                    FFAppState().pinInput = '';
                                                    FFAppState()
                                                            .changePasswordState =
                                                        ChangePasswordModelStruct();
                                                  } else if (widget.usage ==
                                                      MpinUsage
                                                          .SETTING_LIMITS) {
                                                    _model.deviceSignatureOutputV3 =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.limitsConfirm =
                                                        await WhitebankGroupAPIGroup
                                                            .limitsChallengeConfirmCall
                                                            .call(
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin.name,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .deviceSignatureOutputV3,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      fmsSessionId:
                                                          currentUserData
                                                              ?.fmsSessionId,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.limitsConfirm
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    CustomMobileBottomSheetWidget(
                                                                  textTitle:
                                                                      'Daily limit updated successfully',
                                                                  btnText:
                                                                      'Okay',
                                                                  textBody: '',
                                                                  btnCallback:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));

                                                      FFAppState()
                                                              .shouldRefreshTransactions =
                                                          true;
                                                      safeSetState(() {});

                                                      context.goNamedAuth(
                                                          TransactionLimitsPageWidget
                                                              .routeName,
                                                          context.mounted);
                                                    } else if ((WhitebankGroupAPIGroup
                                                                .limitsChallengeConfirmCall
                                                                .error(
                                                              (_model.limitsConfirm
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'INVALID_MPIN') ||
                                                        (WhitebankGroupAPIGroup
                                                                .limitsChallengeConfirmCall
                                                                .error(
                                                              (_model.limitsConfirm
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'INVALID_CHALLENGE')) {
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          '${valueOrDefault<String>(
                                                        WhitebankGroupAPIGroup
                                                            .limitsChallengeConfirmCall
                                                            .title(
                                                          (_model.limitsConfirm
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        'Something went wrong',
                                                      )}. ${getJsonField(
                                                                (_model.limitsConfirm
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.remainingAttempts''',
                                                              ) != null ? 'Remaining attempts: ' : ''}${getJsonField(
                                                                (_model.limitsConfirm
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.remainingAttempts''',
                                                              ) != null ? valueOrDefault<String>(
                                                              getJsonField(
                                                                (_model.limitsConfirm
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.remainingAttempts''',
                                                              )?.toString(),
                                                              'Something went wrong',
                                                            ) : ''}';
                                                      safeSetState(() {});
                                                      _model.apiResultyq5 =
                                                          await WhitebankGroupAPIGroup
                                                              .limitsChallengeCall
                                                              .call(
                                                        updatesJson: widget
                                                            .updateLimits,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model.apiResultyq5
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.challenge =
                                                            getJsonField(
                                                          (_model.apiResultyq5
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.challenge''',
                                                        ).toString();
                                                        safeSetState(() {});
                                                      } else {
                                                        context.safePop();

                                                        context.goNamedAuth(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'route':
                                                                serializeParam(
                                                              'limits',
                                                              ParamType.String,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (WhitebankGroupAPIGroup
                                                            .limitsChallengeConfirmCall
                                                            .error(
                                                          (_model.limitsConfirm
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'MPIN_LOCKED') {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
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
                                                          'lockedUntil':
                                                              serializeParam(
                                                            getJsonField(
                                                              (_model.limitsConfirm
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.lockedUntil''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'limits',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage
                                                          .SCHEDULED_FUND_TRANSFER) {
                                                    _model.deviceSignatureOutpuTSchedTransfer =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.schedFTConfirmBlock =
                                                        await action_blocks
                                                            .fTScheduleConfirmBlock(
                                                      context,
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      signature: getJsonField(
                                                        _model
                                                            .deviceSignatureOutpuTSchedTransfer,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      challenge:
                                                          _model.challenge,
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin,
                                                    );
                                                    _shouldSetState = true;
                                                    if (_model
                                                            .schedFTConfirmBlock
                                                            ?.isSuccess ==
                                                        true) {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});

                                                      context.goNamedAuth(
                                                          TransferMoneySuccessfulWidget
                                                              .routeName,
                                                          context.mounted);

                                                      FFAppState()
                                                              .shouldRefreshTransactions =
                                                          true;
                                                      safeSetState(() {});
                                                    } else if (_model
                                                            .schedFTConfirmBlock
                                                            ?.isLocked ==
                                                        true) {
                                                      context.pushNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                          'lockedUntil':
                                                              serializeParam(
                                                            _model
                                                                .schedFTConfirmBlock
                                                                ?.lockedUntil,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if (_model
                                                                .schedFTConfirmBlock
                                                                ?.challenge !=
                                                            null &&
                                                        _model.schedFTConfirmBlock
                                                                ?.challenge !=
                                                            '') {
                                                      _model.challenge = _model
                                                          .schedFTConfirmBlock
                                                          ?.challenge;
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage = _model
                                                          .schedFTConfirmBlock
                                                          ?.errorMessage;
                                                      safeSetState(() {});
                                                    } else {
                                                      context.pushNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage.QR_PAYMENT) {
                                                    _model.qrpdeviceSignatureOutput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.qrConfirmSigningBlockOutput =
                                                        await action_blocks
                                                            .qrConfirmSigningBlock(
                                                      context,
                                                      signingPayload:
                                                          DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                      signature: getJsonField(
                                                        _model
                                                            .qrpdeviceSignatureOutput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      transacitonId:
                                                          widget.bpId,
                                                      usage:
                                                          MpinUsage.QR_PAYMENT,
                                                    );
                                                    _shouldSetState = true;
                                                    if (_model
                                                            .qrConfirmSigningBlockOutput
                                                            ?.isSuccess ==
                                                        true) {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});

                                                      context.goNamedAuth(
                                                        TransferMoneySuccessfulWidget
                                                            .routeName,
                                                        context.mounted,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    } else if (_model
                                                            .qrConfirmSigningBlockOutput
                                                            ?.isLocked ==
                                                        true) {
                                                      context.pushNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                          'lockedUntil':
                                                              serializeParam(
                                                            _model
                                                                .qrConfirmSigningBlockOutput
                                                                ?.lockedUntil,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if (_model
                                                                .qrConfirmSigningBlockOutput
                                                                ?.challenge !=
                                                            null &&
                                                        _model.qrConfirmSigningBlockOutput
                                                                ?.challenge !=
                                                            '') {
                                                      _model.challenge = _model
                                                          .qrConfirmSigningBlockOutput
                                                          ?.challenge;
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          'Incorrect PIN. ${_model.qrConfirmSigningBlockOutput?.errorMessage}';
                                                      safeSetState(() {});
                                                    } else {
                                                      context.pushNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage.CHANGE_MPIN) {
                                                    _model.mpinChangeChallenge =
                                                        await WhitebankGroupAPIGroup
                                                            .mpinChangeChallengeCall
                                                            .call(
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
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
                                                            .mpinChangeChallenge
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.mpinChangeChallengeSignature =
                                                          await actions
                                                              .createPcSignature(
                                                        DeviceSignaturePayloadModelStruct(
                                                          mpin: FFAppState()
                                                              .pinInput,
                                                          challenge: NewMpinChangeChallengeResponseStruct
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
                                                        challenge: NewMpinChangeChallengeResponseStruct
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
                                                            FFAppState()
                                                                .pinInput,
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
                                                              .mpinChangeVerify
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                            .updateMpinChangeVerifyStruct(
                                                          (e) => e
                                                            ..changeToken = MpinChangeVerifyStruct
                                                                    .maybeFromMap(
                                                                        (_model.mpinChangeVerify?.jsonBody ??
                                                                            ''))
                                                                ?.changeToken,
                                                        );
                                                        FFAppState()
                                                                .mpinVerify =
                                                            FFAppState()
                                                                .pinInput;
                                                        safeSetState(() {});
                                                        if (Navigator.of(
                                                                context)
                                                            .canPop()) {
                                                          context.pop();
                                                        }
                                                        context.pushNamedAuth(
                                                          ChangeMPinPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'isUpdating':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                            'mpin':
                                                                serializeParam(
                                                              FFAppState()
                                                                  .pinInput,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
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
                                                      } else if (MpinVerifyErrorStruct
                                                                  .maybeFromMap((_model
                                                                          .mpinChangeVerify
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.error ==
                                                          'INVALID_CURRENT_MPIN') {
                                                        FFAppState().pinInput =
                                                            '';
                                                        _model.isInvalidMPin =
                                                            true;
                                                        safeSetState(() {});
                                                      } else if (MpinVerifyErrorStruct
                                                                  .maybeFromMap((_model
                                                                          .mpinChangeVerify
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.error ==
                                                          'MPIN_LOCKED') {
                                                        FFAppState().pinInput =
                                                            '';

                                                        context.pushNamedAuth(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
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
                                                      } else {
                                                        context.pushNamedAuth(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'route':
                                                                serializeParam(
                                                              'limits',
                                                              ParamType.String,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    }
                                                  } else if (widget.usage ==
                                                      MpinUsage.TIME_DEPOSIT) {
                                                    _model.deviceSignatureOutputTD =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.tDConfirmOutput =
                                                        await WhitebankGroupAPIGroup
                                                            .retailTimeDepositsConfirmCall
                                                            .call(
                                                      openingId: FFAppState()
                                                          .openTimeDepositState
                                                          .openingID,
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin.name,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .deviceSignatureOutputTD,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      fmsSessionId:
                                                          currentUserData
                                                              ?.fmsSessionId,
                                                    );

                                                    _shouldSetState = true;
                                                    FFAppState()
                                                            .TimeDepositSuccessOutputState =
                                                        TimeDepositSuccessOutputStruct
                                                            .maybeFromMap((_model
                                                                    .tDConfirmOutput
                                                                    ?.jsonBody ??
                                                                ''))!;
                                                    FFAppState().update(() {});
                                                    if ((_model.tDConfirmOutput
                                                                ?.succeeded ??
                                                            true) !=
                                                        false) {
                                                      context.goNamedAuth(
                                                        TimeDepositSuccessPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      _model.challenge = null;
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});
                                                      FFAppState()
                                                              .shouldRefreshTransactions =
                                                          true;
                                                      safeSetState(() {});
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailTimeDepositsConfirmCall
                                                            .error(
                                                          (_model.tDConfirmOutput
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'INVALID_MPIN') {
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          'Invalid MPin.  Remaining Attempts: ${getJsonField(
                                                        (_model.tDConfirmOutput
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.remainingAttempts''',
                                                      ).toString()}';
                                                      safeSetState(() {});
                                                      _model.apiResulthdh =
                                                          await WhitebankGroupAPIGroup
                                                              .retailTimeDepositsChallengeCall
                                                              .call(
                                                        productCode: FFAppState()
                                                            .openTimeDepositState
                                                            .productCode,
                                                        amount: FFAppState()
                                                            .openTimeDepositState
                                                            .principal,
                                                        termDays: functions
                                                            .stringToInt((String
                                                                value) {
                                                          return value
                                                              .replaceAll(
                                                                  RegExp(
                                                                      r'[^0-9]'),
                                                                  '');
                                                        }(FFAppState()
                                                                .openTimeDepositState
                                                                .displayTerm)),
                                                        sourceAccountNumber:
                                                            FFAppState()
                                                                .selectedAccount
                                                                .fullAccountNumber,
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        idempotencyKey:
                                                            functions
                                                                .createUuid(),
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model.apiResulthdh
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.isInvalidMPin =
                                                            true;
                                                        _model.errorMessage =
                                                            'Invalid MPin.  Remaining Attempts: ${getJsonField(
                                                          (_model.apiResulthdh
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.remainingAttempts''',
                                                        ).toString()}';
                                                        _model.challenge =
                                                            TimeDepositChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResulthdh?.jsonBody ??
                                                                            ''))
                                                                ?.challenge;
                                                        safeSetState(() {});
                                                        FFAppState()
                                                            .updateOpenTimeDepositStateStruct(
                                                          (e) => e
                                                            ..openingID = TimeDepositChallengeResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResulthdh?.jsonBody ??
                                                                            ''))
                                                                ?.openingId,
                                                        );
                                                        safeSetState(() {});
                                                      } else {
                                                        context.goNamedAuth(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'route':
                                                                serializeParam(
                                                              'transfer',
                                                              ParamType.String,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailTimeDepositsConfirmCall
                                                            .error(
                                                          (_model.tDConfirmOutput
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'MPIN_LOCKED') {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
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
                                                          'lockedUntil':
                                                              serializeParam(
                                                            getJsonField(
                                                              (_model.tDConfirmOutput
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.lockedUntil''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage.LOAN_PAYMENT) {
                                                    _model.loanDeviceSignature =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge: FFAppState()
                                                            .GlobalLoanInitialPaymentDetails
                                                            .challengeID,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.loanConfirmationAPIResponseSuccess =
                                                        await WhitebankGroupAPIGroup
                                                            .retailLoanConfirmPaymentCall
                                                            .call(
                                                      method: 'mpin',
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge: FFAppState()
                                                          .GlobalLoanInitialPaymentDetails
                                                          .challengeID,
                                                      signature: getJsonField(
                                                        _model
                                                            .loanDeviceSignature,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      loanAccountNumber: FFAppState()
                                                          .GlobalLoanInitialPaymentDetails
                                                          .loanAccountNumber,
                                                      paymentId: FFAppState()
                                                          .GlobalLoanInitialPaymentDetails
                                                          .paymentID,
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
                                                            .loanConfirmationAPIResponseSuccess
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .GlobalLoanPaymentConfirmation =
                                                          LoanPaymentConfirmationResponseStruct
                                                              .maybeFromMap((_model
                                                                      .loanConfirmationAPIResponseSuccess
                                                                      ?.jsonBody ??
                                                                  ''))!;
                                                      safeSetState(() {});

                                                      context.pushNamedAuth(
                                                          PayLoanSuccessPageWidget
                                                              .routeName,
                                                          context.mounted);
                                                    } else {
                                                      if (LoanConfirmingSigningErrorStruct
                                                                  .maybeFromMap((_model
                                                                          .loanConfirmationAPIResponseSuccess
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.error ==
                                                          'INVALID_MPIN') {
                                                        _model.loanSigningChallengeResponse =
                                                            await WhitebankGroupAPIGroup
                                                                .retailLoanPaymentSigningChallengeCall
                                                                .call(
                                                          deviceId: FFAppState()
                                                              .DeviceDetails
                                                              .deviceId,
                                                          loanAccountNumber:
                                                              FFAppState()
                                                                  .GlobalLoanInitialPaymentDetails
                                                                  .loanAccountNumber,
                                                          paymentId: FFAppState()
                                                              .GlobalLoanInitialPaymentDetails
                                                              .paymentID,
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .loanSigningChallengeResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          FFAppState()
                                                              .updateGlobalLoanInitialPaymentDetailsStruct(
                                                            (e) => e
                                                              ..challengeID =
                                                                  LoanPaymentSigningChallengeResponseStruct.maybeFromMap(
                                                                          (_model.loanSigningChallengeResponse?.jsonBody ??
                                                                              ''))
                                                                      ?.challenge,
                                                          );
                                                          safeSetState(() {});
                                                        }
                                                        _model.isInvalidMPin =
                                                            true;
                                                        safeSetState(() {});
                                                      } else {
                                                        _model.apiResults66 =
                                                            await WhitebankGroupAPIGroup
                                                                .retailLoanPaymentCancelCall
                                                                .call(
                                                          loanAccountNumber:
                                                              FFAppState()
                                                                  .GlobalLoanInitialPaymentDetails
                                                                  .loanAccountNumber,
                                                          paymentId: FFAppState()
                                                              .GlobalLoanInitialPaymentDetails
                                                              .paymentID,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                        );

                                                        _shouldSetState = true;

                                                        context.pushNamedAuth(
                                                          LoanFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage.KILL_SWITCH) {
                                                    _model.killSwitchOutput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.apiResult85a =
                                                        await WhitebankGroupAPIGroup
                                                            .retailKillSwitchActivateConfirmCall
                                                            .call(
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin.name,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model.killSwitchOutput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResult85a
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
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
                                                                      'Your account has been secured. App access has been disabled. You can restore access later by following the recovery process or contacting customer support if needed.',
                                                                  primaryButtonTitle:
                                                                      'Done',
                                                                  title:
                                                                      'Kill Switch Activated',
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    context.goNamed(
                                                                        UserProfilePageWidget
                                                                            .routeName);
                                                                  },
                                                                  secondaryButtonAction:
                                                                      () async {},
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else if (WhitebankGroupAPIGroup
                                                            .retailKillSwitchActivateConfirmCall
                                                            .error(
                                                          (_model.apiResult85a
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'INVALID_MPIN') {
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          '${WhitebankGroupAPIGroup.retailKillSwitchActivateConfirmCall.message(
                                                        (_model.apiResult85a
                                                                ?.jsonBody ??
                                                            ''),
                                                      )} Remaining attempts: ${getJsonField(
                                                        (_model.apiResult85a
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.remainingAttempts''',
                                                      ).toString()}';
                                                      safeSetState(() {});
                                                      _model.apiResultvwh =
                                                          await WhitebankGroupAPIGroup
                                                              .retailKillSwitchActivateChallengeCall
                                                              .call(
                                                        deviceId: FFAppState()
                                                            .DeviceDetails
                                                            .deviceId,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model.apiResultvwh
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.challenge =
                                                            SigningChallengeModelStruct
                                                                    .maybeFromMap(
                                                                        (_model.apiResultvwh?.jsonBody ??
                                                                            ''))
                                                                ?.challenge;
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
                                                                    message: WhitebankGroupAPIGroup
                                                                        .retailKillSwitchActivateChallengeCall
                                                                        .message(
                                                                      (_model.apiResultvwh
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!,
                                                                    primaryButtonTitle:
                                                                        'Done',
                                                                    title: WhitebankGroupAPIGroup
                                                                        .retailKillSwitchActivateChallengeCall
                                                                        .title(
                                                                      (_model.apiResultvwh
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    primaryButtonAction:
                                                                        () async {
                                                                      context.goNamed(
                                                                          UserProfilePageWidget
                                                                              .routeName);
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
                                                            .retailKillSwitchActivateConfirmCall
                                                            .error(
                                                          (_model.apiResult85a
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ) ==
                                                        'MPIN_LOCKED') {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                          'lockedUntil':
                                                              serializeParam(
                                                            getJsonField(
                                                              (_model.apiResult85a
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.lockedUntil''',
                                                            ).toString(),
                                                            ParamType.String,
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
                                                                  message: WhitebankGroupAPIGroup
                                                                      .retailKillSwitchActivateConfirmCall
                                                                      .message(
                                                                    (_model.apiResult85a
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!,
                                                                  primaryButtonTitle:
                                                                      'Done',
                                                                  title: WhitebankGroupAPIGroup
                                                                      .retailKillSwitchActivateConfirmCall
                                                                      .title(
                                                                    (_model.apiResult85a
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    context.goNamed(
                                                                        UserProfilePageWidget
                                                                            .routeName);
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

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage
                                                          .DEVICE_TRUST_APPROVAL) {
                                                    _model.trustApprovalSignatureOutput =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.confirmSigningResponse =
                                                        await WhitebankGroupAPIGroup
                                                            .retailSettingsDeviceTrustConfirmSigningCall
                                                            .call(
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin.name,
                                                      id: widget.bpId,
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .trustApprovalSignatureOutput,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .confirmSigningResponse
                                                            ?.succeeded ??
                                                        true)) {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
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
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsDeviceTrustConfirmSigningCall
                                                                        .title(
                                                                      (_model.confirmSigningResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Approval successful',
                                                                  ),
                                                                  message:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsDeviceTrustConfirmSigningCall
                                                                        .message(
                                                                      (_model.confirmSigningResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Successful approval of device.',
                                                                  ),
                                                                  buttonTitle:
                                                                      'Go to Dashboard',
                                                                  callback:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);

                                                                    context.goNamed(
                                                                        DashboardWidget
                                                                            .routeName);
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
                                                        builder:
                                                            (dialogContext) {
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
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsDeviceTrustConfirmSigningCall
                                                                        .message(
                                                                      (_model.confirmSigningResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'The MPIN you entered is incorrect. Approval of the trusted device request could not be completed.',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Okay',
                                                                  title:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    WhitebankGroupAPIGroup
                                                                        .retailSettingsDeviceTrustConfirmSigningCall
                                                                        .title(
                                                                      (_model.confirmSigningResponse
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    'Approval Failed',
                                                                  ),
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
                                                                    await Future
                                                                        .delayed(
                                                                      Duration(
                                                                        milliseconds:
                                                                            200,
                                                                      ),
                                                                    );
                                                                    context
                                                                        .safePop();
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
                                                  } else if (widget.usage ==
                                                      MpinUsage
                                                          .REPORT_DISPUTE) {
                                                    _model.reportDeviceSignature =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge: FFAppState()
                                                            .reportDisputeRequestDetails
                                                            .challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.apiResultg65 =
                                                        await WhitebankGroupAPIGroup
                                                            .retailReportDisputeChallengeSigningCall
                                                            .call(
                                                      method: 'mpin',
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge: FFAppState()
                                                          .reportDisputeRequestDetails
                                                          .challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .reportDeviceSignature,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResultg65
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                          .updateReportRefNumStruct(
                                                        (e) => e
                                                          ..referenceNumber = ReportDisputeSuccesssStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResultg65
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.referenceNumber,
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamedAuth(
                                                          ReportSuccessPageWidget
                                                              .routeName,
                                                          context.mounted);
                                                    } else {
                                                      if (ReportDisputeSigningErrorResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResultg65
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.error ==
                                                          'INVALID_MPIN') {
                                                        if (FFAppState()
                                                                .reportDisputeRequestDetails
                                                                .transactionType ==
                                                            'other') {
                                                          _model.reportDisputeChallenge =
                                                              await WhitebankGroupAPIGroup
                                                                  .retailReportDisputesChallengeCall
                                                                  .call(
                                                            deviceId: FFAppState()
                                                                .DeviceDetails
                                                                .deviceId,
                                                            transactionType:
                                                                FFAppState()
                                                                    .reportDisputeRequestDetails
                                                                    .transactionType,
                                                            transactionReference:
                                                                FFAppState()
                                                                    .reportDisputeRequestDetails
                                                                    .transactionReference,
                                                            category: FFAppState()
                                                                .reportDisputeRequestDetails
                                                                .category,
                                                            description: FFAppState()
                                                                .reportDisputeRequestDetails
                                                                .description,
                                                            evidenceUrlsJson: functions
                                                                .reportStringToJson(
                                                                    'google.com',
                                                                    FFAppState()
                                                                        .reportDisputeRequestDetails
                                                                        .transactionType),
                                                            idempotencyKey:
                                                                functions
                                                                    .createUuid(),
                                                            baseURL:
                                                                FFDevEnvironmentValues()
                                                                    .WBPBASEURL,
                                                            accessToken:
                                                                currentAuthenticationToken,
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .reportDisputeChallenge
                                                                  ?.succeeded ??
                                                              true)) {
                                                            FFAppState()
                                                                .updateReportDisputeRequestDetailsStruct(
                                                              (e) => e
                                                                ..challenge = ReportDisputeChallengeResponseStruct.maybeFromMap(
                                                                        (_model.reportDisputeChallenge?.jsonBody ??
                                                                            ''))
                                                                    ?.challenge,
                                                            );
                                                            safeSetState(() {});
                                                          } else {
                                                            context
                                                                .pushNamedAuth(
                                                              ReportDisputeFailedPageWidget
                                                                  .routeName,
                                                              context.mounted,
                                                              queryParameters: {
                                                                'isLocked':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        } else {
                                                          _model.reportDisputeChallengeId =
                                                              await WhitebankGroupAPIGroup
                                                                  .retailReportDisputesChallengeWithTransactionIDCall
                                                                  .call(
                                                            deviceId: FFAppState()
                                                                .DeviceDetails
                                                                .deviceId,
                                                            transactionType:
                                                                FFAppState()
                                                                    .reportDisputeRequestDetails
                                                                    .transactionType,
                                                            transactionReference:
                                                                FFAppState()
                                                                    .reportDisputeRequestDetails
                                                                    .transactionReference,
                                                            category: FFAppState()
                                                                .reportDisputeRequestDetails
                                                                .category,
                                                            description: FFAppState()
                                                                .reportDisputeRequestDetails
                                                                .description,
                                                            evidenceUrlsJson: functions
                                                                .reportStringToJson(
                                                                    'google.com',
                                                                    FFAppState()
                                                                        .reportDisputeRequestDetails
                                                                        .description),
                                                            idempotencyKey:
                                                                functions
                                                                    .createUuid(),
                                                            transactionId: FFAppState()
                                                                .reportDisputeRequestDetails
                                                                .transactionId,
                                                            baseURL:
                                                                FFDevEnvironmentValues()
                                                                    .WBPBASEURL,
                                                            accessToken:
                                                                currentAuthenticationToken,
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .reportDisputeChallengeId
                                                                  ?.succeeded ??
                                                              true)) {
                                                            FFAppState()
                                                                .updateReportDisputeRequestDetailsStruct(
                                                              (e) => e
                                                                ..challenge = ReportDisputeChallengeResponseStruct.maybeFromMap(
                                                                        (_model.reportDisputeChallengeId?.jsonBody ??
                                                                            ''))
                                                                    ?.challenge,
                                                            );
                                                            safeSetState(() {});
                                                          } else {
                                                            context
                                                                .pushNamedAuth(
                                                              ReportDisputeFailedPageWidget
                                                                  .routeName,
                                                              context.mounted,
                                                              queryParameters: {
                                                                'isLocked':
                                                                    serializeParam(
                                                                  false,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        }

                                                        _model.isInvalidMPin =
                                                            true;
                                                        safeSetState(() {});
                                                      } else {
                                                        context.pushNamedAuth(
                                                          ReportDisputeFailedPageWidget
                                                              .routeName,
                                                          context.mounted,
                                                          queryParameters: {
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else if (widget.usage ==
                                                      MpinUsage.STOP_CHEQUE) {
                                                    _model.stopChequeSignature =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge: FFAppState()
                                                            .StopChequeModel
                                                            .challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.apiResult0oj =
                                                        await WhitebankGroupAPIGroup
                                                            .retailStopChequeConfirmSigningCall
                                                            .call(
                                                      method: 'mpin',
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge: FFAppState()
                                                          .StopChequeModel
                                                          .challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .stopChequeSignature,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                      id: FFAppState()
                                                          .StopChequeModel
                                                          .chequeId,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResult0oj
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                          .updateChequeSuccessStruct(
                                                        (e) => e
                                                          ..chequeNumber =
                                                              ChequeConfirmSigningResponseStruct
                                                                      .maybeFromMap(
                                                                          (_model.apiResult0oj?.jsonBody ??
                                                                              ''))
                                                                  ?.chequeNumber
                                                          ..dateAndTime = ChequeConfirmSigningResponseStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResult0oj
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.confirmedAt,
                                                      );
                                                      safeSetState(() {});

                                                      context.pushNamedAuth(
                                                          ChequeStopSuccessPageWidget
                                                              .routeName,
                                                          context.mounted);
                                                    } else {
                                                      if (ChequeStopFailedStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResult0oj
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.error ==
                                                          'INVALID_MPIN') {
                                                        _model.apiResult8lp =
                                                            await WhitebankGroupAPIGroup
                                                                .retailStopChequeSigningChallengeCall
                                                                .call(
                                                          deviceId: FFAppState()
                                                              .DeviceDetails
                                                              .deviceId,
                                                          id: FFAppState()
                                                              .StopChequeModel
                                                              .chequeId,
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model.apiResult8lp
                                                                ?.succeeded ??
                                                            true)) {
                                                          FFAppState()
                                                              .updateStopChequeModelStruct(
                                                            (e) => e
                                                              ..challenge = RetailStopChequeChallengeResponseStruct
                                                                      .maybeFromMap(
                                                                          (_model.apiResult8lp?.jsonBody ??
                                                                              ''))
                                                                  ?.challenge,
                                                          );
                                                          safeSetState(() {});
                                                        } else {
                                                          context.pushNamedAuth(
                                                            StopChequeFailedPageWidget
                                                                .routeName,
                                                            context.mounted,
                                                            queryParameters: {
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }

                                                        _model.isInvalidMPin =
                                                            true;
                                                        safeSetState(() {});
                                                      } else {
                                                        if ((ChequeStopFailedStruct.maybeFromMap(
                                                                        (_model.apiResult0oj?.jsonBody ??
                                                                            ''))
                                                                    ?.error ==
                                                                'STOP_CHEQUE_CUTOFF') ||
                                                            (ChequeStopFailedStruct.maybeFromMap(
                                                                        (_model.apiResult0oj?.jsonBody ??
                                                                            ''))
                                                                    ?.error ==
                                                                'STOP_CHEQUE_DAILY_LIMIT')) {
                                                          FFAppState()
                                                                  .StopChequeModel =
                                                              ChequeStopModelStruct();
                                                          safeSetState(() {});
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
                                                                      message: ChequeStopFailedStruct.maybeFromMap((_model.apiResult0oj?.jsonBody ??
                                                                              ''))!
                                                                          .message,
                                                                      primaryButtonTitle:
                                                                          'Dismiss',
                                                                      primaryButtonAction:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            DashboardWidget.routeName);
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
                                                          context.pushNamedAuth(
                                                            StopChequeFailedPageWidget
                                                                .routeName,
                                                            context.mounted,
                                                            queryParameters: {
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      }
                                                    }

                                                    FFAppState().pinInput = '';
                                                  } else {
                                                    _model.deviceSignatureOutputV2 =
                                                        await actions
                                                            .createPcSignature(
                                                      DeviceSignaturePayloadModelStruct(
                                                        mpin: FFAppState()
                                                            .pinInput,
                                                        challenge:
                                                            _model.challenge,
                                                      ),
                                                    );
                                                    _shouldSetState = true;
                                                    _model.confirmBlock =
                                                        await action_blocks
                                                            .signingConfirmBlock(
                                                      context,
                                                      method:
                                                          SigningAvailableMethods
                                                              .mpin.name,
                                                      deviceID: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      challenge:
                                                          _model.challenge,
                                                      signature: getJsonField(
                                                        _model
                                                            .deviceSignatureOutputV2,
                                                        r'''$.signatureBase64''',
                                                      ).toString(),
                                                      mpin:
                                                          FFAppState().pinInput,
                                                    );
                                                    _shouldSetState = true;
                                                    if (_model.confirmBlock!
                                                        .isSuccess) {
                                                      _model.challenge = null;
                                                      _model.isInvalidMPin =
                                                          false;
                                                      safeSetState(() {});
                                                      if (Navigator.of(context)
                                                          .canPop()) {
                                                        context.pop();
                                                      }
                                                      context.pushNamedAuth(
                                                        TransferMoneySuccessfulWidget
                                                            .routeName,
                                                        context.mounted,
                                                        extra: <String,
                                                            dynamic>{
                                                          '__transition_info__':
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      FFAppState()
                                                              .shouldRefreshTransactions =
                                                          true;
                                                      safeSetState(() {});
                                                    } else if (_model
                                                            .confirmBlock
                                                            ?.isLocked ==
                                                        true) {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            true,
                                                            ParamType.bool,
                                                          ),
                                                          'lockedUntil':
                                                              serializeParam(
                                                            _model.confirmBlock
                                                                ?.lockedUntil,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else if ((_model
                                                                    .confirmBlock
                                                                    ?.challenge !=
                                                                null &&
                                                            _model.confirmBlock
                                                                    ?.challenge !=
                                                                '') &&
                                                        (_model.confirmBlock
                                                                    ?.errorMessage !=
                                                                null &&
                                                            _model.confirmBlock
                                                                    ?.errorMessage !=
                                                                '')) {
                                                      safeSetState(() {});
                                                      _model.challenge = _model
                                                          .confirmBlock
                                                          ?.challenge;
                                                      _model.isInvalidMPin =
                                                          true;
                                                      _model.errorMessage =
                                                          valueOrDefault<
                                                              String>(
                                                        _model.confirmBlock
                                                            ?.errorMessage,
                                                        'Something went wrong',
                                                      );
                                                      safeSetState(() {});
                                                    } else {
                                                      context.goNamedAuth(
                                                        PayTransferFailedPageWidget
                                                            .routeName,
                                                        context.mounted,
                                                        queryParameters: {
                                                          'route':
                                                              serializeParam(
                                                            'transfer',
                                                            ParamType.String,
                                                          ),
                                                          'isLocked':
                                                              serializeParam(
                                                            false,
                                                            ParamType.bool,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }

                                                    FFAppState().pinInput = '';
                                                  }

                                                  // Clear pinInput App state
                                                  FFAppState().pinInput = '';
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                              ),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 64.0),
                            child: Semantics(
                              label: 'Forgot Mpin Text',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      RecoveryMpinPageWidget.routeName);
                                },
                                child: Text(
                                  'Forgot MPIN?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
                  buttonWithoutBackground: false,
                  isTitleLeftAlign: false,
                  rightButtonAction: () async {},
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midRightButtonAction: () async {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
