import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'security_and_credentials_page_model.dart';
export 'security_and_credentials_page_model.dart';

class SecurityAndCredentialsPageWidget extends StatefulWidget {
  const SecurityAndCredentialsPageWidget({super.key});

  static String routeName = 'SecurityAndCredentialsPage';
  static String routePath = '/securityAndCredentialsPage';

  @override
  State<SecurityAndCredentialsPageWidget> createState() =>
      _SecurityAndCredentialsPageWidgetState();
}

class _SecurityAndCredentialsPageWidgetState
    extends State<SecurityAndCredentialsPageWidget> {
  late SecurityAndCredentialsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityAndCredentialsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      safeSetState(() {});
      await action_blocks.refreshSessionActionBlock(context);
      safeSetState(() {});
      await Future.wait([
        Future(() async {
          _model.deviceDetailsResponse =
              await WhitebankGroupAPIGroup.retailSettingsDeviceDetailsCall.call(
            id: FFAppState().CurrentDeviceDetailsAppState.id,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          );
        }),
        Future(() async {
          _model.biometricSettingsResponse =
              await WhitebankGroupAPIGroup.retailSettingsBiometricCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
            deviceId: FFAppState().DeviceDetails.deviceId,
          );

          if (!(_model.biometricSettingsResponse?.succeeded ?? true)) {
            FFAppState().isBiometricsEnabled = false;
            FFAppState().update(() {});
            return;
          }
        }),
        Future(() async {
          // Biometric Devices
          _model.biometricDevicesResponse =
              await WhitebankGroupAPIGroup.retailAuthBiometricDevicesCall.call(
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );
        }),
      ]);
      _model.biometricState = BiometricDetailsModelStruct.maybeFromMap(
          (_model.biometricSettingsResponse?.jsonBody ?? ''));
      safeSetState(() {});
      FFAppState().updateCurrentDeviceDetailsAppStateStruct(
        (e) => e
          ..isBiometricEnabled =
              WhitebankGroupAPIGroup.retailSettingsBiometricCall.isEnabled(
            (_model.biometricSettingsResponse?.jsonBody ?? ''),
          )
          ..hasBiometric = WhitebankGroupAPIGroup
              .retailSettingsDeviceDetailsCall
              .hasBiometric(
            (_model.deviceDetailsResponse?.jsonBody ?? ''),
          )
          ..hasDeviceKey = getJsonField(
            (_model.deviceDetailsResponse?.jsonBody ?? ''),
            r'''$.hasDeviceKey''',
          )
          ..trusted =
              WhitebankGroupAPIGroup.retailSettingsDeviceDetailsCall.trusted(
            (_model.deviceDetailsResponse?.jsonBody ?? ''),
          )
          ..enabled =
              WhitebankGroupAPIGroup.retailSettingsDeviceDetailsCall.enabled(
            (_model.deviceDetailsResponse?.jsonBody ?? ''),
          ),
      );
      FFAppState().isBiometricsEnabled = _model.biometricState!.enabled &&
          _model.biometricState!.isRegistered &&
          _model.biometricState!.isBiometricEnrolled;
      FFAppState().update(() {});
      _model.isLoading = false;
      safeSetState(() {});
    });

    _model.biometricSwitchValue =
        FFAppState().CurrentDeviceDetailsAppState.isBiometricEnabled;
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
        body: Stack(
          children: [
            if (!_model.isLoading)
              Row(
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 0.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 0.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return (FFAppState().isDrawerOpen
                                      ? valueOrDefault<double>(
                                          FFAppConstants.maxDrawerWidth,
                                          260.0,
                                        )
                                      : FFAppConstants.minDrawerWidth);
                                } else {
                                  return (FFAppState().isDrawerOpen
                                      ? valueOrDefault<double>(
                                          FFAppConstants.maxDrawerWidth,
                                          260.0,
                                        )
                                      : FFAppConstants.minDrawerWidth);
                                }
                              }(),
                              270.0,
                            ),
                            0.0,
                            0.0,
                            0.0),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0,
                                  valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return FFAppConstants
                                            .MobileAppBarHeight;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return FFAppConstants
                                            .MobileAppBarHeight;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return FFAppConstants.WebAppBarHeight;
                                      } else {
                                        return FFAppConstants.WebAppBarHeight;
                                      }
                                    }(),
                                    72.0,
                                  ),
                                  16.0,
                                  0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (!isWeb)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 34.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Preferences',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: Color(0xFF6A7282),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 1.0,
                                                    color: Color(0x0A000000),
                                                    offset: Offset(
                                                      0.0,
                                                      2.0,
                                                    ),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                border: Border.all(
                                                  color: Color(0xFFEEEEEE),
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 45.0,
                                                          height: 45.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFD1EFF2),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Icon(
                                                            Icons
                                                                .fingerprint_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Face ID/Touch ID',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'Login faster with biometrics',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF252525),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Semantics(
                                                              label:
                                                                  'Biometric_Switch',
                                                              child: Switch
                                                                  .adaptive(
                                                                value: _model
                                                                    .biometricSwitchValue!,
                                                                onChanged: !FFAppState()
                                                                        .CurrentDeviceDetailsAppState
                                                                        .hasBiometric
                                                                    ? null
                                                                    : (newValue) async {
                                                                        safeSetState(() =>
                                                                            _model.biometricSwitchValue =
                                                                                newValue);
                                                                        if (newValue) {
                                                                          _model.biometricToggleResponse = await WhitebankGroupAPIGroup
                                                                              .retailSettingsBiometricToggleCall
                                                                              .call(
                                                                            enabled:
                                                                                true,
                                                                            accessToken:
                                                                                currentAuthenticationToken,
                                                                            baseURL:
                                                                                FFDevEnvironmentValues().WBPBASEURL,
                                                                            deviceId:
                                                                                FFAppState().DeviceDetails.deviceId,
                                                                          );

                                                                          if ((_model.biometricToggleResponse?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().isBiometricsEnabled =
                                                                                true;
                                                                            FFAppState().updateCurrentDeviceDetailsAppStateStruct(
                                                                              (e) => e..isBiometricEnabled = true,
                                                                            );
                                                                            FFAppState().update(() {});
                                                                          } else {
                                                                            if (WhitebankGroupAPIGroup.retailSettingsBiometricToggleCall.message(
                                                                                  (_model.biometricToggleResponse?.jsonBody ?? ''),
                                                                                ) ==
                                                                                'BIOMETRIC_NOT_ENROLLED') {
                                                                              _model.generateKeyPairOutput = await actions.generateKeyPair();
                                                                              _model.biometricRegisterResponse = await WhitebankGroupAPIGroup.retailAuthBiometricRegisterCall.call(
                                                                                deviceId: FFAppState().DeviceDetails.deviceId,
                                                                                deviceName: FFAppState().DeviceDetails.name,
                                                                                publicKey: getJsonField(
                                                                                  _model.generateKeyPairOutput,
                                                                                  r'''$.publicKey''',
                                                                                ).toString(),
                                                                                accessToken: currentAuthenticationToken,
                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                              );

                                                                              if ((_model.biometricRegisterResponse?.succeeded ?? true)) {
                                                                                FFAppState().isBiometricsEnabled = true;
                                                                                FFAppState().canBiometricsLogin = true;
                                                                                FFAppState().updateCurrentDeviceDetailsAppStateStruct(
                                                                                  (e) => e..hasBiometric = true,
                                                                                );
                                                                                FFAppState().update(() {});
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(context).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: Padding(
                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                          child: CustomReusableBottomSheetV2Widget(
                                                                                            title: 'Biometric authentication has been successfully set up.',
                                                                                            message: 'Your new biometrics has been set. You can now continue securely.',
                                                                                            buttonTitle: 'Continue',
                                                                                            callback: () async {
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                            cancelCallback: () async {},
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => safeSetState(() {}));
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: WebViewAware(
                                                                                        child: GestureDetector(
                                                                                          onTap: () {
                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                          },
                                                                                          child: CustomInformationalDialogWidget(
                                                                                            message: valueOrDefault<String>(
                                                                                              WhitebankGroupAPIGroup.retailAuthBiometricRegisterCall.message(
                                                                                                (_model.biometricRegisterResponse?.jsonBody ?? ''),
                                                                                              ),
                                                                                              'Something went wrong, failed to register biometrics.',
                                                                                            ),
                                                                                            primaryButtonTitle: 'Dismiss',
                                                                                            title: valueOrDefault<String>(
                                                                                              WhitebankGroupAPIGroup.retailAuthBiometricRegisterCall.title(
                                                                                                (_model.biometricRegisterResponse?.jsonBody ?? ''),
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

                                                                                FFAppState().isBiometricsEnabled = false;
                                                                              }
                                                                            } else if (WhitebankGroupAPIGroup.retailSettingsBiometricToggleCall.message(
                                                                                  (_model.biometricToggleResponse?.jsonBody ?? ''),
                                                                                ) ==
                                                                                'DEVICE_NOT_REGISTERED') {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(context).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: Padding(
                                                                                        padding: MediaQuery.viewInsetsOf(context),
                                                                                        child: CustomReusableBottomSheetV2Widget(
                                                                                          title: 'Trust This Device?',
                                                                                          message: 'We noticed this is your first login on this device. For your security, please confirm if you trust this device to access your account.',
                                                                                          buttonTitle: 'Trust Device',
                                                                                          cancelButtonTitle: 'Not Now',
                                                                                          callback: () async {
                                                                                            var _shouldSetState = false;
                                                                                            _model.devicesResponse = await WhitebankGroupAPIGroup.retailSettingsDevicesListCall.call(
                                                                                              accessToken: currentAuthenticationToken,
                                                                                              baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                            );

                                                                                            _shouldSetState = true;
                                                                                            if (((_model.devicesResponse?.jsonBody ?? '').toList().map<TrustedDeviceStruct?>(TrustedDeviceStruct.maybeFromMap).toList() as Iterable<TrustedDeviceStruct?>).withoutNulls.isNotEmpty) {
                                                                                              _model.initTrustResponse = await WhitebankGroupAPIGroup.retailSettingsDeviceInitiateTrustCall.call(
                                                                                                deviceId: ((_model.devicesResponse?.jsonBody ?? '').toList().map<TrustedDeviceStruct?>(TrustedDeviceStruct.maybeFromMap).toList() as Iterable<TrustedDeviceStruct?>).withoutNulls.where((e) => e.deviceId == FFAppState().DeviceDetails.deviceId).toList().firstOrNull?.id,
                                                                                                accessToken: currentAuthenticationToken,
                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                              );

                                                                                              _shouldSetState = true;
                                                                                              if ((_model.initTrustResponse?.succeeded ?? true)) {
                                                                                                context.pushNamed(
                                                                                                  AccountVerificationPageWidget.routeName,
                                                                                                  queryParameters: {
                                                                                                    'sessionToken': serializeParam(
                                                                                                      WhitebankGroupAPIGroup.retailSettingsDeviceInitiateTrustCall.sessionId(
                                                                                                        (_model.initTrustResponse?.jsonBody ?? ''),
                                                                                                      ),
                                                                                                      ParamType.String,
                                                                                                    ),
                                                                                                    'purpose': serializeParam(
                                                                                                      VerificationType.trustDevice,
                                                                                                      ParamType.Enum,
                                                                                                    ),
                                                                                                    'deviceId': serializeParam(
                                                                                                      ((_model.devicesResponse?.jsonBody ?? '').toList().map<TrustedDeviceStruct?>(TrustedDeviceStruct.maybeFromMap).toList() as Iterable<TrustedDeviceStruct?>).withoutNulls.where((e) => e.deviceId == FFAppState().DeviceDetails.deviceId).toList().firstOrNull?.id,
                                                                                                      ParamType.String,
                                                                                                    ),
                                                                                                  }.withoutNulls,
                                                                                                );
                                                                                              } else if (WhitebankGroupAPIGroup.retailSettingsDeviceInitiateTrustCall.error(
                                                                                                    (_model.initTrustResponse?.jsonBody ?? ''),
                                                                                                  ) ==
                                                                                                  ResponseStatus.MAX_TRUSTED_DEVICES_REACHED.name) {
                                                                                                await showDialog(
                                                                                                  context: context,
                                                                                                  builder: (dialogContext) {
                                                                                                    return Dialog(
                                                                                                      elevation: 0,
                                                                                                      insetPadding: EdgeInsets.zero,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      child: WebViewAware(
                                                                                                        child: GestureDetector(
                                                                                                          onTap: () {
                                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                          },
                                                                                                          child: CustomInformationalDialogWidget(
                                                                                                            message: valueOrDefault<String>(
                                                                                                              getJsonField(
                                                                                                                (_model.initTrustResponse?.jsonBody ?? ''),
                                                                                                                r'''$.message''',
                                                                                                              )?.toString(),
                                                                                                              'Maximum number of trusted devices reached.',
                                                                                                            ),
                                                                                                            primaryButtonTitle: 'Dismiss',
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
                                                                                              } else {
                                                                                                await showDialog(
                                                                                                  context: context,
                                                                                                  builder: (dialogContext) {
                                                                                                    return Dialog(
                                                                                                      elevation: 0,
                                                                                                      insetPadding: EdgeInsets.zero,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      child: WebViewAware(
                                                                                                        child: GestureDetector(
                                                                                                          onTap: () {
                                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                          },
                                                                                                          child: CustomInformationalDialogWidget(
                                                                                                            message: 'Failed to initiate trust device.',
                                                                                                            primaryButtonTitle: 'Dismiss',
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

                                                                                              return;
                                                                                            } else {
                                                                                              await showDialog(
                                                                                                context: context,
                                                                                                builder: (dialogContext) {
                                                                                                  return Dialog(
                                                                                                    elevation: 0,
                                                                                                    insetPadding: EdgeInsets.zero,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                    child: WebViewAware(
                                                                                                      child: GestureDetector(
                                                                                                        onTap: () {
                                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                                        },
                                                                                                        child: CustomInformationalDialogWidget(
                                                                                                          message: 'There are no registered devices yet.',
                                                                                                          primaryButtonTitle: 'Dismiss',
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

                                                                                              return;
                                                                                            }
                                                                                          },
                                                                                          cancelCallback: () async {
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => safeSetState(() {}));
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: WebViewAware(
                                                                                      child: GestureDetector(
                                                                                        onTap: () {
                                                                                          FocusScope.of(dialogContext).unfocus();
                                                                                          FocusManager.instance.primaryFocus?.unfocus();
                                                                                        },
                                                                                        child: CustomInformationalDialogWidget(
                                                                                          message: valueOrDefault<String>(
                                                                                            WhitebankGroupAPIGroup.retailSettingsBiometricToggleCall.message(
                                                                                              (_model.biometricToggleResponse?.jsonBody ?? ''),
                                                                                            ),
                                                                                            'Something went wrong',
                                                                                          ),
                                                                                          primaryButtonTitle: 'Dismiss',
                                                                                          title: valueOrDefault<String>(
                                                                                            WhitebankGroupAPIGroup.retailSettingsBiometricToggleCall.title(
                                                                                              (_model.biometricToggleResponse?.jsonBody ?? ''),
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
                                                                          }

                                                                          safeSetState(
                                                                              () {});

                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          _model.biometricToggleResponse2 = await WhitebankGroupAPIGroup
                                                                              .retailSettingsBiometricToggleCall
                                                                              .call(
                                                                            enabled:
                                                                                false,
                                                                            accessToken:
                                                                                currentAuthenticationToken,
                                                                            baseURL:
                                                                                FFDevEnvironmentValues().WBPBASEURL,
                                                                            deviceId:
                                                                                FFAppState().DeviceDetails.deviceId,
                                                                          );

                                                                          if ((_model.biometricToggleResponse2?.succeeded ??
                                                                              true)) {
                                                                            FFAppState().isBiometricsEnabled =
                                                                                false;
                                                                            FFAppState().canBiometricsLogin =
                                                                                false;
                                                                            FFAppState().updateCurrentDeviceDetailsAppStateStruct(
                                                                              (e) => e..isBiometricEnabled = false,
                                                                            );
                                                                            safeSetState(() {});
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: WebViewAware(
                                                                                    child: GestureDetector(
                                                                                      onTap: () {
                                                                                        FocusScope.of(dialogContext).unfocus();
                                                                                        FocusManager.instance.primaryFocus?.unfocus();
                                                                                      },
                                                                                      child: CustomInformationalDialogWidget(
                                                                                        message: valueOrDefault<String>(
                                                                                          getJsonField(
                                                                                            (_model.biometricToggleResponse2?.jsonBody ?? ''),
                                                                                            r'''$.message''',
                                                                                          )?.toString(),
                                                                                          'Something went wrong.',
                                                                                        ),
                                                                                        primaryButtonTitle: 'Dismiss',
                                                                                        title: valueOrDefault<String>(
                                                                                          getJsonField(
                                                                                            (_model.biometricToggleResponse2?.jsonBody ?? ''),
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

                                                                          safeSetState(
                                                                              () {});

                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                activeColor: !FFAppState()
                                                                        .CurrentDeviceDetailsAppState
                                                                        .hasBiometric
                                                                    ? Color(
                                                                        0xFFDAE3E5)
                                                                    : Color(
                                                                        0xFF027377),
                                                                activeTrackColor: !FFAppState()
                                                                        .CurrentDeviceDetailsAppState
                                                                        .hasBiometric
                                                                    ? Color(
                                                                        0xFFDAE3E5)
                                                                    : Color(
                                                                        0xFF027377),
                                                                inactiveTrackColor: !FFAppState()
                                                                        .CurrentDeviceDetailsAppState
                                                                        .hasBiometric
                                                                    ? Color(
                                                                        0xFFDAE3E5)
                                                                    : Color(
                                                                        0xFFDAE3E5),
                                                                inactiveThumbColor: !FFAppState()
                                                                        .CurrentDeviceDetailsAppState
                                                                        .hasBiometric
                                                                    ? Color(
                                                                        0xFF939FA3)
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 16.0)),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Security',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF6A7282),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 1.0,
                                                color: Color(0x0A000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: Color(0xFFEEEEEE),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Semantics(
                                                  label: 'Change_Password_Row',
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
                                                        CreateNewPasswordPageWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'purpose':
                                                              serializeParam(
                                                            VerificationType
                                                                .changePassword,
                                                            ParamType.Enum,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 45.0,
                                                          height: 45.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFD1EFF2),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Icon(
                                                            Icons.lock_outline,
                                                            color: Color(
                                                                0xFF00727D),
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Change Password',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'Update your password',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF252525),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                                if (isAndroid || isiOS)
                                                  Divider(
                                                    thickness: 1.0,
                                                    color: Color(0x1A00727D),
                                                  ),
                                                if (isAndroid || isiOS)
                                                  Semantics(
                                                    label: 'Change_Mpin_Row',
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
                                                        if (FFAppState()
                                                            .CurrentDeviceDetailsAppState
                                                            .isMpinSet) {
                                                          context.goNamed(
                                                            MPINPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'usage':
                                                                  serializeParam(
                                                                MpinUsage
                                                                    .CHANGE_MPIN,
                                                                ParamType.Enum,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          context.pushNamed(
                                                            CreateMpinPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'isUpdating':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 45.0,
                                                            height: 45.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFD1EFF2),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: Icon(
                                                              Icons
                                                                  .pin_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    FFAppState()
                                                                            .CurrentDeviceDetailsAppState
                                                                            .isMpinSet
                                                                        ? 'Change Mpin'
                                                                        : 'Setup Mpin',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    FFAppState()
                                                                            .CurrentDeviceDetailsAppState
                                                                            .isMpinSet
                                                                        ? 'Update you 4-digit mobile PIN'
                                                                        : 'Set up your MPIN for faster login',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.manrope(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Color(0xFF252525),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 16.0)),
                                                      ),
                                                    ),
                                                  ),
                                                Divider(
                                                  thickness: 1.0,
                                                  color: Color(0x1A00727D),
                                                ),
                                                Semantics(
                                                  label: 'Passkey_Row',
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
                                                          PasskeyCredentialsPageWidget
                                                              .routeName);
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 45.0,
                                                          height: 45.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFD1EFF2),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Icon(
                                                            Icons.key,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Passkeys',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  'Set up your Passkey for faster login',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .manrope(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF252525),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            if (_model.isLoading)
              Semantics(
                label: 'LoadingStateComponent',
                child: wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: true,
                  ),
                ),
              ),
            if (true &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                ))
              Semantics(
                label: 'MobileNavigationBar',
                child: wrapWithModel(
                  model: _model.mobileNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MobileNavigationBarWidget(
                    pageIndex: 12,
                    shouldHideBottomNav: true,
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
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
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
                  backgroudColor: Color(0x00000000),
                  titleColor: Colors.white,
                  buttonColor: Colors.transparent,
                  buttonWithoutBackground: false,
                  btnWOBgIcon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  isTitleLeftAlign: true,
                  titleLeftAlign: 'Security & Credentials',
                  textLeftAlignColor: Color(0xFF444C66),
                  rightButtonAction: () async {},
                  leftButtonAction: () async {
                    context.goNamed(UserProfilePageWidget.routeName);

                    safeSetState(() {});
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
