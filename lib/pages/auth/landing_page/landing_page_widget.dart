import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/bank_advisory_component_new/bank_advisory_component_new_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pay_bills/p_b_components/feature_flag_bottom_sheet/feature_flag_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  static String routeName = 'LandingPage';
  static String routePath = '/landingPage';

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget>
    with TickerProviderStateMixin {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.getDeviceDetailsOuput = await actions.getDeviceDetails();
          if (_model.getDeviceDetailsOuput != null) {
            // Retrive Device id
            _model.storedDeviceIdOutput = await actions.retrieveStoredData(
              FFDevEnvironmentValues().DEVICEIDKEY,
            );
            if (_model.storedDeviceIdOutput != null &&
                _model.storedDeviceIdOutput != '') {
              FFAppState().DeviceDetails = DeviceDataStruct(
                deviceId: _model.storedDeviceIdOutput,
                model:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.model,
                os: DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                    ?.os,
                osVersion:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.osVersion,
                name:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.name,
                userAgent:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.userAgent,
              );
              return;
            } else {
              FFAppState().DeviceDetails = DeviceDataStruct(
                deviceId: functions.createUuid(),
                model:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.model,
                os: DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                    ?.os,
                osVersion:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.osVersion,
                name:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.name,
                userAgent:
                    DeviceDataStruct.maybeFromMap(_model.getDeviceDetailsOuput)
                        ?.userAgent,
              );
              // Storing device id
              await actions.storeDataLocally(
                FFDevEnvironmentValues().DEVICEIDKEY,
                FFAppState().DeviceDetails.deviceId,
              );
              return;
            }
          } else {
            return;
          }
        }),
        Future(() async {
          _model.mpinConfigResponse =
              await WhitebankGroupAPIGroup.retailConfigMpinCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          if (WhitebankGroupAPIGroup.retailConfigMpinCall.mpinLength(
                (_model.mpinConfigResponse?.jsonBody ?? ''),
              ) !=
              null) {
            FFAppState().mpinLengthConfig =
                WhitebankGroupAPIGroup.retailConfigMpinCall.mpinLength(
              (_model.mpinConfigResponse?.jsonBody ?? ''),
            )!;
            return;
          } else {
            return;
          }
        }),
        Future(() async {
          await action_blocks.getFeatureFlags(
            context,
            customerType: 'retail',
          );
        }),
        Future(() async {
          // Reseting this, so the trust device and mpin/biometric setup will appear again in dashboard if necesary.
          FFAppState().isDeviceSetupDone = false;
          safeSetState(() {});
        }),
        Future(() async {
          await actions.setupFirebaseMessaging();
        }),
        Future(() async {
          await actions.readUsernameSecurely();
        }),
        Future(() async {
          await actions.readBiometricPreferenceSecurely();
        }),
        Future(() async {
          _model.advisoriesResponse =
              await WhitebankGroupAPIGroup.retailBankAdvisoriesCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          await Future.delayed(
            Duration(
              milliseconds: 1000,
            ),
          );
          if (WhitebankGroupAPIGroup.retailBankAdvisoriesCall.advisories(
                    (_model.advisoriesResponse?.jsonBody ?? ''),
                  ) !=
                  null &&
              (WhitebankGroupAPIGroup.retailBankAdvisoriesCall.advisories(
                (_model.advisoriesResponse?.jsonBody ?? ''),
              ))!
                  .isNotEmpty) {
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
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(dialogContext).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: BankAdvisoryComponentNewWidget(
                        buttonTitle: 'I Understand',
                        advisories: (getJsonField(
                          (_model.advisoriesResponse?.jsonBody ?? ''),
                          r'''$.advisories''',
                          true,
                        )!
                                .toList()
                                .map<AdvisoryStruct?>(
                                    AdvisoryStruct.maybeFromMap)
                                .toList() as Iterable<AdvisoryStruct?>)
                            .withoutNulls,
                        buttonAction: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return;
          }
        }),
        Future(() async {
          _model.retrievedUsername = await actions.retrieveStoredData(
            FFAppConstants.WBUsernameKey,
          );
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
          // Get idle timer configuration set by the admin.
          _model.sessionConfigResponse =
              await WhitebankGroupAPIGroup.retailConfigSessionCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          FFAppState().WBTimerConfigAppState = WBTimerConfigStruct(
            sessionWarning: valueOrDefault<int>(
              WhitebankGroupAPIGroup.retailConfigSessionCall.sessionWarning(
                (_model.sessionConfigResponse?.jsonBody ?? ''),
              ),
              60,
            ),
            sessionAutoLogout: valueOrDefault<int>(
              WhitebankGroupAPIGroup.retailConfigSessionCall.sessionAutoLogout(
                (_model.sessionConfigResponse?.jsonBody ?? ''),
              ),
              180,
            ),
          );
        }),
      ]);
    });

    animationsMap.addAll({
      'rowOnPageLoadAnimation1': AnimationInfo(
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
      'rowOnPageLoadAnimation2': AnimationInfo(
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
      'rowOnPageLoadAnimation3': AnimationInfo(
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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).bgThemeColor,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      alignment: AlignmentDirectional(-0.02, 0.0),
                      image: Image.asset(
                        'assets/images/landing-bg-v2.jpg.png',
                      ).image,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).secondary,
                          Colors.black
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return double.infinity;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 450.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 450.0;
                      } else {
                        return 450.0;
                      }
                    }(),
                    height: double.infinity,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 160.0, 0.0, 0.0),
                              child: Hero(
                                tag: 'logoLoginAnimation',
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Updated_Logo.png',
                                    width: 75.0,
                                    height: 78.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/Isolation_Mode.png',
                                        width: 265.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation1']!),
                            ),
                          ],
                        ),
                        if (!_model.isMpinLogin)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                23.0, 0.0, 23.0, 90.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    // Go to Log in with Password
                                    Expanded(
                                      child: Semantics(
                                        label: 'login_with_password_button',
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                                LoginPageWidget.routeName);
                                          },
                                          text: 'Login with Password',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 56.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.transparent,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeIsCustom,
                                                ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                        ),
                                      ),
                                    ),

                                    // Log in with Biometrics
                                    if (!isWeb &&
                                        FFAppState()
                                            .CurrentDeviceDetailsAppState
                                            .trusted &&
                                        FFAppState()
                                            .CurrentDeviceDetailsAppState
                                            .hasBiometric &&
                                        FFAppState()
                                            .CurrentDeviceDetailsAppState
                                            .isBiometricEnabled)
                                      Builder(
                                        builder: (context) => Semantics(
                                          label: 'Log in with Biometrics',
                                          child: FlutterFlowIconButton(
                                            borderRadius: 16.0,
                                            buttonSize: 56.0,
                                            fillColor: valueOrDefault<Color>(
                                              !FFAppState()
                                                      .FeatureFlagsAppstate
                                                      .retailBiometricLogin
                                                  ? Color(0xFFDAE3E5)
                                                  : FlutterFlowTheme.of(context)
                                                      .secondaryButton,
                                              FlutterFlowTheme.of(context)
                                                  .secondaryButton,
                                            ),
                                            icon: Icon(
                                              Icons.fingerprint_rounded,
                                              color: valueOrDefault<Color>(
                                                !FFAppState()
                                                        .FeatureFlagsAppstate
                                                        .retailBiometricLogin
                                                    ? Color(0xFF939FA3)
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryButton,
                                                Color(0xFF00A8CF),
                                              ),
                                              size: 32.0,
                                            ),
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              Function() _navigate = () {};
                                              if (FFAppState()
                                                  .FeatureFlagsAppstate
                                                  .retailBiometricLogin) {
                                                _model.biometricChallengeResponse =
                                                    await WhitebankGroupAPIGroup
                                                        .retailAuthBiometricChallengeCall
                                                        .call(
                                                  deviceId: FFAppState()
                                                      .DeviceDetails
                                                      .deviceId,
                                                  baseURL:
                                                      FFDevEnvironmentValues()
                                                          .WBPBASEURL,
                                                );

                                                _shouldSetState = true;
                                                if (getJsonField(
                                                      (_model.biometricChallengeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.challenge''',
                                                    ) !=
                                                    null) {
                                                  _model.createSignatureOutput =
                                                      await actions
                                                          .createSignature(
                                                    getJsonField(
                                                      (_model.biometricChallengeResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.challenge''',
                                                    ).toString(),
                                                  );
                                                  _shouldSetState = true;
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
                                                                  (_model.biometricChallengeResponse
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
                                                                  (_model.biometricChallengeResponse
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

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }

                                                _model.getPaygilantSessionBiometricOutput =
                                                    await actions
                                                        .getPaygilantSession();
                                                _shouldSetState = true;
                                                _model.biometricLoginResponse =
                                                    await WhitebankGroupAPIGroup
                                                        .retailAuthBiometricLoginCall
                                                        .call(
                                                  deviceId: FFAppState()
                                                      .DeviceDetails
                                                      .deviceId,
                                                  signature: _model
                                                      .createSignatureOutput,
                                                  challenge: getJsonField(
                                                    (_model.biometricChallengeResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.challenge''',
                                                  ).toString(),
                                                  baseURL:
                                                      FFDevEnvironmentValues()
                                                          .WBPBASEURL,
                                                  fmsSessionId: _model
                                                      .getPaygilantSessionBiometricOutput,
                                                );

                                                _shouldSetState = true;
                                                if (getJsonField(
                                                      (_model.biometricLoginResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.accessToken''',
                                                    ) !=
                                                    null) {
                                                  _model.getProfileDetailsResponse =
                                                      await WhitebankGroupAPIGroup
                                                          .retailSettingsProfileDetailsCall
                                                          .call(
                                                    accessToken: getJsonField(
                                                      (_model.biometricLoginResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.accessToken''',
                                                    ).toString(),
                                                    baseURL:
                                                        FFDevEnvironmentValues()
                                                            .WBPBASEURL,
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .getProfileDetailsResponse
                                                          ?.succeeded ??
                                                      true)) {
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();
                                                    await authManager.signIn(
                                                      authenticationToken:
                                                          getJsonField(
                                                        (_model.biometricLoginResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.accessToken''',
                                                      ).toString(),
                                                      refreshToken:
                                                          getJsonField(
                                                        (_model.biometricLoginResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.refreshToken''',
                                                      ).toString(),
                                                      tokenExpiration: functions
                                                          .createTokenExpirationDateTime(
                                                              getJsonField(
                                                        (_model.biometricLoginResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.expiresIn''',
                                                      )),
                                                      authUid:
                                                          WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .id(
                                                        (_model.getProfileDetailsResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      userData:
                                                          AuthenticatedUserStruct(
                                                        accessToken:
                                                            getJsonField(
                                                          (_model.biometricLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.accessToken''',
                                                        ).toString(),
                                                        refreshToken:
                                                            getJsonField(
                                                          (_model.biometricLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.refreshToken''',
                                                        ).toString(),
                                                        expiresIn: getJsonField(
                                                          (_model.biometricLoginResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.expiresIn''',
                                                        ),
                                                        user: UserV3Struct(
                                                          firstName:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .firstName(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          lastName:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .lastName(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          id: WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .id(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          email: WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .email(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          mobileNumber:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .phone(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          createdAt:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .createdAt(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          updatedAt:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .updatedAt(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          fullName:
                                                              '${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.firstName(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )} ${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.lastName(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )}',
                                                          branchName:
                                                              getJsonField(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.branchName''',
                                                          ).toString(),
                                                          branchCode:
                                                              getJsonField(
                                                            (_model.getProfileDetailsResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.branchCode''',
                                                          ).toString(),
                                                        ),
                                                        fmsSessionId: _model
                                                            .getPaygilantSessionBiometricOutput,
                                                      ),
                                                    );
                                                    _navigate = () =>
                                                        context.goNamedAuth(
                                                            DashboardWidget
                                                                .routeName,
                                                            context.mounted);
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
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    (_model.getProfileDetailsResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.message''',
                                                                  )?.toString(),
                                                                  'Failed to get profile details.',
                                                                ),
                                                                primaryButtonTitle:
                                                                    'Dismiss',
                                                                title: 'Oops!',
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
                                                        .retailAuthBiometricLoginCall
                                                        .error(
                                                      (_model.biometricLoginResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    ResponseStatus
                                                        .ACCOUNT_LOCKED.name) {
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
                                                                  (_model.biometricLoginResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                  r'''$.message''',
                                                                )?.toString(),
                                                                'Account locked',
                                                              ),
                                                              primaryButtonTitle:
                                                                  'Dismiss',
                                                              title:
                                                                  valueOrDefault<
                                                                      String>(
                                                                getJsonField(
                                                                  (_model.biometricLoginResponse
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

                                                                context.pushNamed(
                                                                    LoginPageWidget
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
                                                        .retailAuthBiometricLoginCall
                                                        .error(
                                                      (_model.biometricLoginResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) ==
                                                    'BIOMETRIC_VERIFICATION_FAILED') {
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
                                                                  '\"Biometric verification failed. Please try again or use your PIN/Password.\"',
                                                              primaryButtonTitle:
                                                                  'Dismiss',
                                                              title:
                                                                  valueOrDefault<
                                                                      String>(
                                                                getJsonField(
                                                                  (_model.biometricLoginResponse
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
                                                                  (_model.biometricLoginResponse
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
                                                                  (_model.biometricLoginResponse
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

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
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
                                                              FeatureFlagBottomSheetWidget(
                                                            callBack: () async {
                                                              await action_blocks
                                                                  .getFeatureFlags(
                                                                context,
                                                                customerType:
                                                                    'retail',
                                                              );
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
                                              }

                                              _navigate();
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),

                                    // Log in with Mpin
                                    if (!isWeb &&
                                        FFAppState()
                                            .CurrentDeviceDetailsAppState
                                            .trusted &&
                                        FFAppState()
                                            .CurrentDeviceDetailsAppState
                                            .isMpinSet)
                                      Semantics(
                                        label: 'Log in with Mpin',
                                        child: FlutterFlowIconButton(
                                          borderRadius: 16.0,
                                          buttonSize: 56.0,
                                          fillColor: valueOrDefault<Color>(
                                            !FFAppState()
                                                    .FeatureFlagsAppstate
                                                    .retailMpinLogin
                                                ? Color(0xFFDAE3E5)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryButton,
                                            FlutterFlowTheme.of(context)
                                                .secondaryButton,
                                          ),
                                          icon: Icon(
                                            Icons.dialpad,
                                            color: valueOrDefault<Color>(
                                              !FFAppState()
                                                      .FeatureFlagsAppstate
                                                      .retailMpinLogin
                                                  ? Color(0xFF939FA3)
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryButton,
                                              Color(0xFF00A8CF),
                                            ),
                                            size: 32.0,
                                          ),
                                          onPressed: () async {
                                            if (FFAppState()
                                                .FeatureFlagsAppstate
                                                .retailMpinLogin) {
                                              context.pushNamed(
                                                MPINPageWidget.routeName,
                                                queryParameters: {
                                                  'usage': serializeParam(
                                                    MpinUsage.LOGIN,
                                                    ParamType.Enum,
                                                  ),
                                                  'mpinHash': serializeParam(
                                                    '',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              return;
                                            } else {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
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
                                                            FeatureFlagBottomSheetWidget(
                                                          callBack: () async {
                                                            await action_blocks
                                                                .getFeatureFlags(
                                                              context,
                                                              customerType:
                                                                  'retail',
                                                            );
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

                                              return;
                                            }
                                          },
                                        ),
                                      ),

                                    // Log in with Passkey
                                    if (FFAppState().hasPasskey &&
                                        (_model.retrievedUsername != null &&
                                            _model.retrievedUsername != ''))
                                      Builder(
                                        builder: (context) => Semantics(
                                          label: 'Log in with Passkey',
                                          child: FlutterFlowIconButton(
                                            borderRadius: 16.0,
                                            buttonSize: 56.0,
                                            fillColor: Color(0xFFEDFCFF),
                                            icon: Icon(
                                              Icons.key_rounded,
                                              color: valueOrDefault<Color>(
                                                !FFAppState()
                                                        .FeatureFlagsAppstate
                                                        .retailPasskeyLogin
                                                    ? Color(0xFF939FA3)
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryButton,
                                                Color(0xFF00A8CF),
                                              ),
                                              size: 32.0,
                                            ),
                                            onPressed: () async {
                                              Function() _navigate = () {};
                                              if (FFAppState()
                                                  .FeatureFlagsAppstate
                                                  .retailPasskeyLogin) {
                                                _model.getPaygilantSessionPkOutput =
                                                    await actions
                                                        .getPaygilantSession();
                                                _model.passkeyAuthVerifyPayload =
                                                    await actions
                                                        .passkeyAuthVerifyPayload(
                                                  _model.retrievedUsername!,
                                                  'token',
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
                                                  deviceId: getJsonField(
                                                    _model
                                                        .passkeyAuthVerifyPayload,
                                                    r'''$.deviceId''',
                                                  ).toString(),
                                                  id: getJsonField(
                                                    _model
                                                        .passkeyAuthVerifyPayload,
                                                    r'''$.id''',
                                                  ).toString(),
                                                  rawId: getJsonField(
                                                    _model
                                                        .passkeyAuthVerifyPayload,
                                                    r'''$.rawId''',
                                                  ).toString(),
                                                  type: getJsonField(
                                                    _model
                                                        .passkeyAuthVerifyPayload,
                                                    r'''$.type''',
                                                  ).toString(),
                                                  responseJson: getJsonField(
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

                                                if ((_model.passkeyAuthResponse
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.pKGetProfileResponse =
                                                      await WhitebankGroupAPIGroup
                                                          .retailSettingsProfileDetailsCall
                                                          .call(
                                                    accessToken: getJsonField(
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
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();
                                                    await authManager.signIn(
                                                      authenticationToken:
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
                                                      refreshToken:
                                                          getJsonField(
                                                        WhitebankGroupAPIGroup
                                                            .retailVerifyPasskeyAuthCall
                                                            .tokens(
                                                          (_model.passkeyAuthResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        r'''$.refreshToken''',
                                                      ).toString(),
                                                      tokenExpiration: functions
                                                          .createTokenExpirationDateTime(
                                                              getJsonField(
                                                        WhitebankGroupAPIGroup
                                                            .retailVerifyPasskeyAuthCall
                                                            .tokens(
                                                          (_model.passkeyAuthResponse
                                                                  ?.jsonBody ??
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
                                                            (_model.passkeyAuthResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          r'''$.accessToken''',
                                                        ).toString(),
                                                        refreshToken:
                                                            getJsonField(
                                                          WhitebankGroupAPIGroup
                                                              .retailVerifyPasskeyAuthCall
                                                              .tokens(
                                                            (_model.passkeyAuthResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          r'''$.refreshToken''',
                                                        ).toString(),
                                                        expiresIn: getJsonField(
                                                          WhitebankGroupAPIGroup
                                                              .retailVerifyPasskeyAuthCall
                                                              .tokens(
                                                            (_model.passkeyAuthResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          r'''$.expiresIn''',
                                                        ),
                                                        user: UserV3Struct(
                                                          userName: _model
                                                              .retrievedUsername,
                                                          firstName:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .firstName(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          lastName:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .lastName(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          id: WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .id(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          email: WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .email(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          mobileNumber:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .phone(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          createdAt:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .createdAt(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          updatedAt:
                                                              WhitebankGroupAPIGroup
                                                                  .retailSettingsProfileDetailsCall
                                                                  .updatedAt(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          fullName:
                                                              '${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.firstName(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )} ${WhitebankGroupAPIGroup.retailSettingsProfileDetailsCall.lastName(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )}',
                                                          uid: WhitebankGroupAPIGroup
                                                              .retailSettingsProfileDetailsCall
                                                              .customerId(
                                                            (_model.pKGetProfileResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          branchName:
                                                              getJsonField(
                                                            (_model.passkeyAuthResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.branchName''',
                                                          ).toString(),
                                                          branchCode:
                                                              getJsonField(
                                                            (_model.passkeyAuthResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.branchCode''',
                                                          ).toString(),
                                                        ),
                                                        fmsSessionId: _model
                                                            .getPaygilantSessionPkOutput,
                                                      ),
                                                    );
                                                    _navigate = () =>
                                                        context.goNamedAuth(
                                                            DashboardWidget
                                                                .routeName,
                                                            context.mounted);

                                                    safeSetState(() {});

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
                                                                      .retailSettingsProfileDetailsCall
                                                                      .detail(
                                                                    (_model.pKGetProfileResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  'Something went wrong.',
                                                                ),
                                                                primaryButtonTitle:
                                                                    'Dismiss',
                                                                title:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  WhitebankGroupAPIGroup
                                                                      .retailSettingsProfileDetailsCall
                                                                      .title(
                                                                    (_model.pKGetProfileResponse
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
                                                                    .retailVerifyPasskeyAuthCall
                                                                    .detail(
                                                                  (_model.passkeyAuthResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'The passkey could not be found.',
                                                              ),
                                                              primaryButtonTitle:
                                                                  'Dismiss',
                                                              title:
                                                                  valueOrDefault<
                                                                      String>(
                                                                WhitebankGroupAPIGroup
                                                                    .retailVerifyPasskeyAuthCall
                                                                    .title(
                                                                  (_model.passkeyAuthResponse
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                ),
                                                                'Passkey Not Found',
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
                                              } else {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
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
                                                              FeatureFlagBottomSheetWidget(
                                                            callBack: () async {
                                                              await action_blocks
                                                                  .getFeatureFlags(
                                                                context,
                                                                customerType:
                                                                    'retail',
                                                              );
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
                                              }

                                              _navigate();

                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 16.0)),
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation2']!),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    // Enroll your Account
                                    Expanded(
                                      child: Semantics(
                                        label: 'enroll_account_button',
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            if (FFAppState()
                                                .FeatureFlagsAppstate
                                                .retailSelfRegistration) {
                                              context.pushNamed(
                                                AccountValidationPageWidget
                                                    .routeName,
                                                queryParameters: {
                                                  'module': serializeParam(
                                                    'accountSetup',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );

                                              FFAppState().globalRoute =
                                                  'accountSetup';
                                              safeSetState(() {});
                                            } else {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
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
                                                            FeatureFlagBottomSheetWidget(
                                                          callBack: () async {
                                                            await action_blocks
                                                                .getFeatureFlags(
                                                              context,
                                                              customerType:
                                                                  'retail',
                                                            );
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

                                              return;
                                            }
                                          },
                                          text: 'Enroll your Account',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 56.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconAlignment: IconAlignment.end,
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: valueOrDefault<Color>(
                                              !FFAppState()
                                                      .FeatureFlagsAppstate
                                                      .retailSelfRegistration
                                                  ? Color(0xFFDAE3E5)
                                                  : FlutterFlowTheme.of(context)
                                                      .primary,
                                              Color(0xFF00727D),
                                            ),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        !FFAppState()
                                                                .FeatureFlagsAppstate
                                                                .retailSelfRegistration
                                                            ? Color(0xFF939FA3)
                                                            : Colors.white,
                                                        Colors.white,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallIsCustom,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation3']!),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.91),
                  child: Text(
                    'Version ${FFAppConstants.BuildVersionNumber} ${FFDevEnvironmentValues().EnvName}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).info,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
