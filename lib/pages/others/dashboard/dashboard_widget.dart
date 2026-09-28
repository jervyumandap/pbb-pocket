import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/full_view_mode_component/full_view_mode_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/mobile_slider/mobile_slider_widget.dart';
import '/components/mpin_biomentric_setup_component/mpin_biomentric_setup_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({
    super.key,
    this.username,
  });

  final String? username;

  static String routeName = 'Dashboard';
  static String routePath = '/dashboard';

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 300,
        ),
      );
      await actions.initSessionTimeout(
        context,
      );
      await action_blocks.refreshSessionActionBlock(context);
      await Future.wait([
        Future(() async {
          await action_blocks.getAccountsWithBalance(context);
          safeSetState(() {});
        }),
        Future(() async {
          // Check of Mpin And Biometrics is Set
          await Future.wait([
            Future(() async {
              _model.getMpinStatusResponse = await WhitebankGroupAPIGroup
                  .retailSettingsMpinStatusCall
                  .call(
                accessToken: currentAuthenticationToken,
                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                fmsSessionId: currentUserData?.fmsSessionId,
              );
            }),
            Future(() async {
              _model.getBiometricResponse =
                  await WhitebankGroupAPIGroup.retailSettingsBiometricCall.call(
                accessToken: currentAuthenticationToken,
                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                deviceId: FFAppState().DeviceDetails.deviceId,
                fmsSessionId: currentUserData?.fmsSessionId,
              );
            }),
            Future(() async {
              _model.getDeviceListResponse = await WhitebankGroupAPIGroup
                  .retailSettingsDevicesListCall
                  .call(
                accessToken: currentAuthenticationToken,
                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                fmsSessionId: currentUserData?.fmsSessionId,
              );
            }),
          ]);
          FFAppState().canMpinLogin =
              ((_model.getDeviceListResponse?.jsonBody ?? '')
                              .toList()
                              .map<TrustedDeviceStruct?>(
                                  TrustedDeviceStruct.maybeFromMap)
                              .toList() as Iterable<TrustedDeviceStruct?>)
                          .withoutNulls
                          .where((e) =>
                              e.deviceId == FFAppState().DeviceDetails.deviceId)
                          .toList()
                          .firstOrNull!
                          .enabled &&
                      ((_model.getDeviceListResponse?.jsonBody ?? '')
                              .toList()
                              .map<TrustedDeviceStruct?>(
                                  TrustedDeviceStruct.maybeFromMap)
                              .toList() as Iterable<TrustedDeviceStruct?>)
                          .withoutNulls
                          .where((e) =>
                              e.deviceId == FFAppState().DeviceDetails.deviceId)
                          .toList()
                          .firstOrNull!
                          .trusted &&
                      WhitebankGroupAPIGroup.retailSettingsMpinStatusCall.isSet(
                        (_model.getMpinStatusResponse?.jsonBody ?? ''),
                      )!
                  ? true
                  : false;
          FFAppState().canBiometricsLogin =
              ((_model.getDeviceListResponse?.jsonBody ?? '')
                              .toList()
                              .map<TrustedDeviceStruct?>(
                                  TrustedDeviceStruct.maybeFromMap)
                              .toList() as Iterable<TrustedDeviceStruct?>)
                          .withoutNulls
                          .where((e) =>
                              e.deviceId == FFAppState().DeviceDetails.deviceId)
                          .toList()
                          .firstOrNull!
                          .trusted &&
                      ((_model.getDeviceListResponse?.jsonBody ?? '')
                              .toList()
                              .map<TrustedDeviceStruct?>(
                                  TrustedDeviceStruct.maybeFromMap)
                              .toList() as Iterable<TrustedDeviceStruct?>)
                          .withoutNulls
                          .where((e) =>
                              e.deviceId == FFAppState().DeviceDetails.deviceId)
                          .toList()
                          .firstOrNull!
                          .hasBiometric
                  ? true
                  : false;
          FFAppState().isMpinSet =
              WhitebankGroupAPIGroup.retailSettingsMpinStatusCall.isSet(
            (_model.getMpinStatusResponse?.jsonBody ?? ''),
          )!;
          FFAppState().isBiometricsEnabled = ((_model.getDeviceListResponse?.jsonBody ?? '')
                          .toList()
                          .map<TrustedDeviceStruct?>(
                              TrustedDeviceStruct.maybeFromMap)
                          .toList() as Iterable<TrustedDeviceStruct?>)
                      .withoutNulls
                      .where((e) =>
                          e.deviceId == FFAppState().DeviceDetails.deviceId)
                      .toList()
                      .firstOrNull!
                      .trusted &&
                  ((_model.getDeviceListResponse?.jsonBody ?? '')
                          .toList()
                          .map<TrustedDeviceStruct?>(
                              TrustedDeviceStruct.maybeFromMap)
                          .toList() as Iterable<TrustedDeviceStruct?>)
                      .withoutNulls
                      .where((e) =>
                          e.deviceId == FFAppState().DeviceDetails.deviceId)
                      .toList()
                      .firstOrNull!
                      .hasBiometric &&
                  ((_model.getDeviceListResponse?.jsonBody ?? '')
                          .toList()
                          .map<TrustedDeviceStruct?>(TrustedDeviceStruct.maybeFromMap)
                          .toList() as Iterable<TrustedDeviceStruct?>)
                      .withoutNulls
                      .where((e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                      .toList()
                      .firstOrNull!
                      .enabled &&
                  (BiometricDetailsModelStruct.maybeFromMap((_model.getBiometricResponse?.jsonBody ?? ''))!.enabled && BiometricDetailsModelStruct.maybeFromMap((_model.getBiometricResponse?.jsonBody ?? ''))!.isRegistered && BiometricDetailsModelStruct.maybeFromMap((_model.getBiometricResponse?.jsonBody ?? ''))!.isBiometricEnrolled)
              ? true
              : false;
          FFAppState().updateCurrentDeviceDetailsAppStateStruct(
            (e) => e
              ..isMpinSet =
                  WhitebankGroupAPIGroup.retailSettingsMpinStatusCall.isSet(
                (_model.getMpinStatusResponse?.jsonBody ?? ''),
              )
              ..isMpinCanChange =
                  WhitebankGroupAPIGroup.retailSettingsMpinStatusCall.canChange(
                (_model.getMpinStatusResponse?.jsonBody ?? ''),
              )
              ..hasBiometric = WhitebankGroupAPIGroup
                  .retailSettingsBiometricCall
                  .isBiometricEnrolled(
                (_model.getBiometricResponse?.jsonBody ?? ''),
              )
              ..isBiometricEnabled =
                  WhitebankGroupAPIGroup.retailSettingsBiometricCall.isEnabled(
                (_model.getBiometricResponse?.jsonBody ?? ''),
              )
              ..hasDeviceKey = ((_model.getDeviceListResponse?.jsonBody ?? '')
                      .toList()
                      .map<TrustedDeviceStruct?>(
                          TrustedDeviceStruct.maybeFromMap)
                      .toList() as Iterable<TrustedDeviceStruct?>)
                  .withoutNulls
                  .where(
                      (e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                  .toList()
                  .firstOrNull
                  ?.hasDeviceKey
              ..enabled = ((_model.getDeviceListResponse?.jsonBody ?? '')
                      .toList()
                      .map<TrustedDeviceStruct?>(
                          TrustedDeviceStruct.maybeFromMap)
                      .toList() as Iterable<TrustedDeviceStruct?>)
                  .withoutNulls
                  .where(
                      (e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                  .toList()
                  .firstOrNull
                  ?.enabled
              ..trusted = ((_model.getDeviceListResponse?.jsonBody ?? '')
                      .toList()
                      .map<TrustedDeviceStruct?>(
                          TrustedDeviceStruct.maybeFromMap)
                      .toList() as Iterable<TrustedDeviceStruct?>)
                  .withoutNulls
                  .where(
                      (e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                  .toList()
                  .firstOrNull
                  ?.trusted
              ..id = ((_model.getDeviceListResponse?.jsonBody ?? '')
                      .toList()
                      .map<TrustedDeviceStruct?>(
                          TrustedDeviceStruct.maybeFromMap)
                      .toList() as Iterable<TrustedDeviceStruct?>)
                  .withoutNulls
                  .where(
                      (e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                  .toList()
                  .firstOrNull
                  ?.id,
          );
          safeSetState(() {});
          // if Mpin is Not Set or Biometrics is not enabled.
          if ((FFAppState().CurrentDeviceDetailsAppState.trusted == false) &&
              (isiOS || isAndroid) &&
              !FFAppState().isDeviceSetupDone) {
            await Future.delayed(
              Duration(
                milliseconds: 200,
              ),
            );
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
                        message:
                            'We noticed this is your first login on this device. For your security, please confirm if you trust this device to access your account.',
                        buttonTitle: 'Trust Device',
                        cancelButtonTitle: 'Not Now',
                        callback: () async {
                          _model.deviceKeypairOutput =
                              await actions.generatePcKeyPair();
                          if (_model.deviceKeypairOutput != null) {
                            _model.initTrustResponse =
                                await WhitebankGroupAPIGroup
                                    .retailSettingsDeviceTrustRequestCall
                                    .call(
                              deviceId:
                                  FFAppState().CurrentDeviceDetailsAppState.id,
                              devicePublicKey: getJsonField(
                                _model.deviceKeypairOutput,
                                r'''$.publicKeyPem''',
                              ).toString(),
                              baseURL: FFDevEnvironmentValues().WBPBASEURL,
                              accessToken: currentAuthenticationToken,
                            );

                            if ((_model.initTrustResponse?.succeeded ?? true)) {
                              Navigator.pop(context);
                              await Future.delayed(
                                Duration(
                                  milliseconds: 200,
                                ),
                              );
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child:
                                            CustomReusableBottomSheetV2Widget(
                                          title:
                                              'Your request has been sent successfully.',
                                          message: getJsonField(
                                            (_model.initTrustResponse
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.message''',
                                          ).toString(),
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
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: GestureDetector(
                                        onTap: () {
                                          FocusScope.of(dialogContext)
                                              .unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child: CustomInformationalDialogWidget(
                                          message: valueOrDefault<String>(
                                            WhitebankGroupAPIGroup
                                                .retailSettingsDeviceTrustRequestCall
                                                .message(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            'Failed to initiate trust device.',
                                          ),
                                          primaryButtonTitle: 'Dismiss',
                                          title: valueOrDefault<String>(
                                            WhitebankGroupAPIGroup
                                                .retailSettingsDeviceTrustRequestCall
                                                .title(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
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
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: CustomInformationalDialogWidget(
                                        message:
                                            'Failed to initiate trust device.',
                                        primaryButtonTitle: 'Dismiss',
                                        title: 'Oops!',
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
          } else if ((!FFAppState().CurrentDeviceDetailsAppState.hasBiometric ||
                  !FFAppState().CurrentDeviceDetailsAppState.isMpinSet) &&
              (isiOS || isAndroid) &&
              !FFAppState().isDeviceSetupDone) {
            await Future.delayed(
              Duration(
                milliseconds: 200,
              ),
            );
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
                      child: MpinBiomentricSetupComponentWidget(
                        createMpinCallback: () async {
                          context.pushNamed(
                            CreateMpinPageWidget.routeName,
                            queryParameters: {
                              'isUpdating': serializeParam(
                                false,
                                ParamType.bool,
                              ),
                            }.withoutNulls,
                          );
                        },
                        enableBiometricsCallback: () async {
                          _model.generateKeyPairOutput =
                              await actions.generateKeyPair();
                          _model.biometricRegisterResponse =
                              await WhitebankGroupAPIGroup
                                  .retailAuthBiometricRegisterCall
                                  .call(
                            deviceId: FFAppState().DeviceDetails.deviceId,
                            deviceName: FFAppState().DeviceDetails.name,
                            publicKey: getJsonField(
                              _model.generateKeyPairOutput,
                              r'''$.publicKey''',
                            ).toString(),
                            accessToken: currentAuthenticationToken,
                            baseURL: FFDevEnvironmentValues().WBPBASEURL,
                          );

                          if (WhitebankGroupAPIGroup
                                      .retailAuthBiometricRegisterCall
                                      .error(
                                    (_model.biometricRegisterResponse
                                            ?.jsonBody ??
                                        ''),
                                  ) ==
                                  null ||
                              WhitebankGroupAPIGroup
                                      .retailAuthBiometricRegisterCall
                                      .error(
                                    (_model.biometricRegisterResponse
                                            ?.jsonBody ??
                                        ''),
                                  ) ==
                                  '') {
                            FFAppState().isBiometricsEnabled = true;
                            Navigator.pop(context);
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: CustomReusableBottomSheetV2Widget(
                                        title:
                                            'Biometric authentication has been successfully set up.',
                                        message:
                                            'Your new biometrics has been set. You can now continue securely.',
                                        buttonTitle: 'Continue',
                                        callback: () async {
                                          context.pushNamed(
                                            DashboardWidget.routeName,
                                            extra: <String, dynamic>{
                                              '__transition_info__':
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        cancelCallback: () async {},
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          } else if (WhitebankGroupAPIGroup
                                  .retailAuthBiometricRegisterCall
                                  .message(
                                (_model.biometricRegisterResponse?.jsonBody ??
                                    ''),
                              ) ==
                              'MAX_DEVICES_REACHED') {
                            FFAppState().isBiometricsEnabled = false;
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
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: CustomInformationalDialogWidget(
                                        message: valueOrDefault<String>(
                                          functions.beautifyErrorMessage(
                                              WhitebankGroupAPIGroup
                                                  .retailAuthBiometricRegisterCall
                                                  .message(
                                            (_model.biometricRegisterResponse
                                                    ?.jsonBody ??
                                                ''),
                                          )!),
                                          'Maximum number of devices reached.',
                                        ),
                                        primaryButtonTitle: 'Dismiss',
                                        title: valueOrDefault<String>(
                                          WhitebankGroupAPIGroup
                                              .retailAuthBiometricRegisterCall
                                              .error(
                                            (_model.biometricRegisterResponse
                                                    ?.jsonBody ??
                                                ''),
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
                          } else {
                            FFAppState().isBiometricsEnabled = false;
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
                                        FocusManager.instance.primaryFocus
                                            ?.unfocus();
                                      },
                                      child: CustomInformationalDialogWidget(
                                        message:
                                            'Something went wrong, failed to register biometrics.',
                                        primaryButtonTitle: 'Dismiss',
                                        title: 'Opps!',
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

                          safeSetState(() {});
                        },
                        closeCallback: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));

            FFAppState().isDeviceSetupDone = true;
            safeSetState(() {});
          }
        }),
        Future(() async {
          _model.apiResultbgh = await WhitebankGroupAPIGroup
              .retailSettingsTransactionLimitsCall
              .call(
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            fmsSessionId: currentUserData?.fmsSessionId,
          );

          if ((_model.apiResultbgh?.succeeded ?? true)) {
            FFAppState().fetchedTransactionLimit =
                WBTransferLimitModelStruct.maybeFromMap(
                    (_model.apiResultbgh?.jsonBody ?? ''))!;
            safeSetState(() {});
          }
        }),
        Future(() async {
          _model.apiResultino =
              await WhitebankGroupAPIGroup.getBeneficiariesCall.call(
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            fmsSessionId: currentUserData?.fmsSessionId,
          );

          if ((_model.apiResultino?.succeeded ?? true)) {
            FFAppState().BeneficiaryListState =
                ((_model.apiResultino?.jsonBody ?? '')
                        .toList()
                        .map<BeneficiaryModelStruct?>(
                            BeneficiaryModelStruct.maybeFromMap)
                        .toList() as Iterable<BeneficiaryModelStruct?>)
                    .withoutNulls
                    .toList()
                    .cast<BeneficiaryModelStruct>();
            FFAppState().update(() {});
          }
        }),
        Future(() async {
          _model.sBillersResponse =
              await WhitebankGroupAPIGroup.retailSavedBillersListCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
            fmsSessionId: currentUserData?.fmsSessionId,
          );

          if ((_model.sBillersResponse?.succeeded ?? true)) {
            FFAppState().SavedBillersAppState = (getJsonField(
              (_model.sBillersResponse?.jsonBody ?? ''),
              r'''$.savedBillers''',
              true,
            )!
                    .toList()
                    .map<WBSavedBillerStruct?>(WBSavedBillerStruct.maybeFromMap)
                    .toList() as Iterable<WBSavedBillerStruct?>)
                .withoutNulls
                .sortedList(keyOf: (e) => e.createdAt, desc: false)
                .toList()
                .cast<WBSavedBillerStruct>();
            FFAppState().update(() {});
          }
        }),
        Future(() async {
          _model.apiResultr7b =
              await WhitebankGroupAPIGroup.retailKillSwitchStatusCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
            fmsSessionId: currentUserData?.fmsSessionId,
          );

          FFAppState().isKillSwitchActive = getJsonField(
            (_model.apiResultr7b?.jsonBody ?? ''),
            r'''$.isActive''',
          );
          safeSetState(() {});
          if (FFAppState().isKillSwitchActive) {
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
                      child: CustomInformationalDialogWidget(
                        message:
                            'All transactions are currently unavailable because the Kill Switch is active. Please contact your branch for assistance in deactivating it.',
                        primaryButtonTitle: 'Close',
                        title: 'Kill Switch is Active',
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
        }),
      ]);
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
          backgroundColor: Color(0xFFFFFAFA),
          body: Semantics(
            label: 'dashboard_stack',
            child: Stack(
              children: [
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Semantics(
                    label: 'dashboard_menu_slider',
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: custom_widgets.SlideMenuLayout(
                        width: double.infinity,
                        height: double.infinity,
                        menuBuilder: () => MobileSliderWidget(),
                        pageBuilder: () => FullViewModeComponentWidget(
                          contentWidth: 0.0,
                          dashboardAccount: FFAppState().AccountsState,
                          isWeb: false,
                        ),
                        loadingBuilder: () => LoadingStateComponentWidget(
                          isFinished: true,
                        ),
                      ),
                    ),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (true &&
                        responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                        ))
                      Semantics(
                        label: 'dashboard_bottom_navigation_bar',
                        child: wrapWithModel(
                          model: _model.mobileNavigationBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: MobileNavigationBarWidget(
                            pageIndex: 1,
                            shouldHideBottomNav: false,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Flexible(
                        child: Semantics(
                          label: 'dashboard_full_view_display',
                          child: wrapWithModel(
                            model: _model.fullViewModeComponentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: FullViewModeComponentWidget(
                              contentWidth: 0.0,
                              dashboardAccount: FFAppState().AccountsState,
                              isWeb: true,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
