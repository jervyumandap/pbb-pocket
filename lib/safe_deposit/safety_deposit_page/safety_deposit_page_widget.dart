import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/cheque/service_requesy_account_selection/service_requesy_account_selection_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/deposit_box_branch_component_copy_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/safety_deposit_box_sizes_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'safety_deposit_page_model.dart';
export 'safety_deposit_page_model.dart';

/// Money Transfer Form
class SafetyDepositPageWidget extends StatefulWidget {
  const SafetyDepositPageWidget({super.key});

  static String routeName = 'SafetyDepositPage';
  static String routePath = '/safeDepositBoxPage';

  @override
  State<SafetyDepositPageWidget> createState() =>
      _SafetyDepositPageWidgetState();
}

class _SafetyDepositPageWidgetState extends State<SafetyDepositPageWidget> {
  late SafetyDepositPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SafetyDepositPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      _model.isLoading = false;
      safeSetState(() {});
      _model.apiResult81m = await WhitebankGroupAPIGroup
          .retailSafetyDepositBoxRequestsBranchesCall
          .call(
        accessToken: currentAuthenticationToken,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
      );

      if ((_model.apiResult81m?.succeeded ?? true)) {
        _model.safetyBoxBranches =
            SafetyDepositBoxBranchModelStruct.maybeFromMap(
                (_model.apiResult81m?.jsonBody ?? ''));
        safeSetState(() {});
      }
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
            if (_model.isLoading)
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: _model.isLoading,
                  ),
                ),
              ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: wrapWithModel(
                      model: _model.mobileNavigationBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileNavigationBarWidget(
                        pageIndex: 1,
                        shouldHideBottomNav: false,
                      ),
                    ),
                  ),
              ],
            ),
            Builder(
              builder: (context) => wrapWithModel(
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
                  btnWOBgIcon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF444C66),
                  ),
                  btnWOBgColor: Color(0xFF444C66),
                  btnWOBgIconSize: 24.0,
                  isTitleLeftAlign: true,
                  titleLeftAlign: 'Safety Deposit Box',
                  textLeftAlignColor: Color(0xFF444C66),
                  rightButtonAction: () async {
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
                                cancelButtonTitle: 'Not now',
                                callback: () async {
                                  var _shouldSetState = false;
                                  _model.devicesResponse =
                                      await WhitebankGroupAPIGroup
                                          .retailSettingsDevicesListCall
                                          .call(
                                    accessToken: currentAuthenticationToken,
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                  );

                                  _shouldSetState = true;
                                  if (((_model.devicesResponse?.jsonBody ?? '')
                                              .toList()
                                              .map<TrustedDeviceStruct?>(
                                                  TrustedDeviceStruct.maybeFromMap)
                                              .toList()
                                          as Iterable<TrustedDeviceStruct?>)
                                      .withoutNulls
                                      .where((e) =>
                                          e.deviceId ==
                                          FFAppState().DeviceDetails.deviceId)
                                      .toList()
                                      .isNotEmpty) {
                                    _model.initTrustResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailSettingsDeviceInitiateTrustCall
                                            .call(
                                      deviceId: ((_model.devicesResponse
                                                          ?.jsonBody ??
                                                      '')
                                                  .toList()
                                                  .map<TrustedDeviceStruct?>(
                                                      TrustedDeviceStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<TrustedDeviceStruct?>)
                                          .withoutNulls
                                          .where((e) =>
                                              e.deviceId ==
                                              FFAppState()
                                                  .DeviceDetails
                                                  .deviceId)
                                          .toList()
                                          .firstOrNull
                                          ?.id,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                    );

                                    _shouldSetState = true;
                                    if (WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .error(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            null ||
                                        WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .error(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            '') {
                                      context.pushNamed(
                                        AccountVerificationPageWidget.routeName,
                                        queryParameters: {
                                          'sessionToken': serializeParam(
                                            WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .sessionId(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            ParamType.String,
                                          ),
                                          'purpose': serializeParam(
                                            VerificationType.trustDevice,
                                            ParamType.Enum,
                                          ),
                                          'deviceId': serializeParam(
                                            ((_model.devicesResponse
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<TrustedDeviceStruct?>(
                                                            TrustedDeviceStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        TrustedDeviceStruct?>)
                                                .withoutNulls
                                                .where((e) =>
                                                    e.deviceId ==
                                                    FFAppState()
                                                        .DeviceDetails
                                                        .deviceId)
                                                .toList()
                                                .firstOrNull
                                                ?.id,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else if (WhitebankGroupAPIGroup
                                            .retailSettingsDeviceInitiateTrustCall
                                            .error(
                                          (_model.initTrustResponse?.jsonBody ??
                                              ''),
                                        ) ==
                                        ResponseStatus
                                            .MAX_TRUSTED_DEVICES_REACHED.name) {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    CustomInformationalDialogWidget(
                                                  message:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    )?.toString(),
                                                    'Maximum number of trusted devices (3) reached',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
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
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    CustomInformationalDialogWidget(
                                                  message:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    )?.toString(),
                                                    'Failed to initiate trust device.',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
                                                  title: valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.error''',
                                                    )?.toString(),
                                                    'Device already trusted.',
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

                                    return;
                                  } else {
                                    _model.fcmTokenOutput =
                                        await actions.getFCMToken();
                                    _shouldSetState = true;
                                    _model.registerDeviceResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailSettingsDeviceRegisterCall
                                            .call(
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      deviceName:
                                          FFAppState().DeviceDetails.name,
                                      pushToken: _model.fcmTokenOutput,
                                      pushPlatform:
                                          FFAppState().DeviceDetails.os,
                                      deviceType: FFAppState().DeviceDetails.os,
                                      osVersion:
                                          FFAppState().DeviceDetails.osVersion,
                                      appVersion:
                                          FFAppConstants.BuildVersionNumber,
                                    );

                                    _shouldSetState = true;
                                    // If newly registered device is not trusted, then initiate trust
                                    if (WhitebankGroupAPIGroup
                                            .retailSettingsDeviceRegisterCall
                                            .trusted(
                                          (_model.registerDeviceResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ) ==
                                        false) {
                                      _model.initTrustResponseCopy =
                                          await WhitebankGroupAPIGroup
                                              .retailSettingsDeviceInitiateTrustCall
                                              .call(
                                        deviceId: ((_model.devicesResponse
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<TrustedDeviceStruct?>(
                                                        TrustedDeviceStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    TrustedDeviceStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.deviceId ==
                                                FFAppState()
                                                    .DeviceDetails
                                                    .deviceId)
                                            .toList()
                                            .firstOrNull
                                            ?.id,
                                        accessToken: currentAuthenticationToken,
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                      );

                                      _shouldSetState = true;
                                      if (WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .error(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              null ||
                                          WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .error(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '') {
                                        context.pushNamed(
                                          AccountVerificationPageWidget
                                              .routeName,
                                          queryParameters: {
                                            'sessionToken': serializeParam(
                                              WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .sessionId(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                            'purpose': serializeParam(
                                              VerificationType.trustDevice,
                                              ParamType.Enum,
                                            ),
                                            'deviceId': serializeParam(
                                              WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceRegisterCall
                                                  .id(
                                                (_model.registerDeviceResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else if (WhitebankGroupAPIGroup
                                              .retailSettingsDeviceInitiateTrustCall
                                              .error(
                                            (_model.initTrustResponseCopy
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          ResponseStatus
                                              .MAX_TRUSTED_DEVICES_REACHED
                                              .name) {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      CustomInformationalDialogWidget(
                                                    message:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initTrustResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Maximum number of trusted devices (3) reached',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
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
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      CustomInformationalDialogWidget(
                                                    message:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initTrustResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Failed to initiate trust device.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
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

                                      return;
                                    } else {
                                      Navigator.pop(context);
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        isDismissible: false,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child:
                                                    CustomReusableBottomSheetV2Widget(
                                                  title:
                                                      'You have successfullly trusted this device.',
                                                  message:
                                                      'Device trusted successfully',
                                                  buttonTitle:
                                                      'Go to Dashboard',
                                                  callback: () async {
                                                    context.goNamed(
                                                      DashboardWidget.routeName,
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
                                                  cancelCallback: () async {},
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }

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

                    safeSetState(() {});
                  },
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midRightButtonAction: () async {},
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 16.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 16.0;
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
                    valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 100.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 100.0;
                        } else if (MediaQuery.sizeOf(context).width <
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
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Apply Safety Deposit Box',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Secure what matters most, choose your preferred branch and box dimension.',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.5,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
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
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child:
                                          ServiceRequesyAccountSelectionWidget(),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Color(0xFFCCE3E4),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Container(
                                          width: 42.0,
                                          height: 42.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE3F4F4),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: Icon(
                                            Icons.wallet_sharp,
                                            color: Color(0xFF027377),
                                            size: 16.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                              .selectedAccount
                                                              .accountNumber !=
                                                          ''
                                                  ? FFAppState()
                                                      .selectedAccount
                                                      .accountNumber
                                                  : FFAppState()
                                                      .AccountsState
                                                      .firstOrNull
                                                      ?.accountNumber,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF002C75),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Container(
                                          width: 28.0,
                                          height: 28.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE3F4F4),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Icon(
                                            Icons.arrow_forward_ios_sharp,
                                            color: Color(0xFF027377),
                                            size: 14.0,
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Preferred Branch*',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelLargeFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelLargeIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
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
                                            DepositBoxBranchComponentCopyWidget(
                                          branchName: '-',
                                          branchCode: '-',
                                          safetyDepositBoxList:
                                              _model.safetyBoxBranches,
                                          callback: () async {},
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));

                              _model.selectedIndex = null;
                              safeSetState(() {});
                            },
                            child: Container(
                              width: double.infinity,
                              height: 56.0,
                              constraints: BoxConstraints(
                                maxHeight: 56.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Color(0xFFD4D4D4),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFAppState()
                                                      .safetyDepositBoxSelectedBranch !=
                                                  ''
                                          ? FFAppState().safetyDepositBranchName
                                          : 'Select preferred branch',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: Color(0xFF027377),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          if (_model.isInvalidRequestMessage != null &&
                              _model.isInvalidRequestMessage != '')
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    _model.isInvalidRequestMessage,
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyLargeIsCustom,
                                      ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            'Preferred Box Size — inches (W×H×D)',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelLargeFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelLargeIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: Color(0xFFE4E8EE),
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 0.0, 8.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Available at ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 11.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text: FFAppState()
                                                            .safetyDepositBoxSelectedBranch !=
                                                        ''
                                                ? FFAppState()
                                                    .safetyDepositBranchName
                                                : '-',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 11.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          TextSpan(
                                            text:
                                                '· greyed sizes are unavailable here',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 11.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 11.5,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: Color(0xFFE4E8EE),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Builder(
                                            builder: (context) {
                                              final listOfBoxesList = _model
                                                  .listOfBoxSizes
                                                  .toList();

                                              return GridView.builder(
                                                padding: EdgeInsets.fromLTRB(
                                                  0,
                                                  7.0,
                                                  0,
                                                  7.0,
                                                ),
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3,
                                                  crossAxisSpacing: 8.0,
                                                  mainAxisSpacing: 10.0,
                                                  childAspectRatio: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 1.5;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 1.5;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 5.0;
                                                    } else {
                                                      return 5.0;
                                                    }
                                                  }(),
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listOfBoxesList.length,
                                                itemBuilder: (context,
                                                    listOfBoxesListIndex) {
                                                  final listOfBoxesListItem =
                                                      listOfBoxesList[
                                                          listOfBoxesListIndex];
                                                  return SafetyDepositBoxSizesWidget(
                                                    key: Key(
                                                        'Keyz95_${listOfBoxesListIndex}_of_${listOfBoxesList.length}'),
                                                    containerColor: () {
                                                      if (_model
                                                              .selectedIndex ==
                                                          listOfBoxesListIndex) {
                                                        return Color(
                                                            0xFFE6F4F4);
                                                      } else if (FFAppState()
                                                              .SelectedDepositBankList
                                                              .contains(
                                                                  listOfBoxesListItem) ==
                                                          true) {
                                                        return Colors.white;
                                                      } else {
                                                        return Color(
                                                            0xFFF7F8FA);
                                                      }
                                                    }(),
                                                    borderColor: () {
                                                      if (_model
                                                              .selectedIndex ==
                                                          listOfBoxesListIndex) {
                                                        return Color(
                                                            0xFF0E8C8C);
                                                      } else if (FFAppState()
                                                              .SelectedDepositBankList
                                                              .contains(
                                                                  listOfBoxesListItem) ==
                                                          true) {
                                                        return Color(
                                                            0xFFE4E8EE);
                                                      } else {
                                                        return Color(
                                                            0xFFE4E8EE);
                                                      }
                                                    }(),
                                                    textColor: () {
                                                      if (_model
                                                              .selectedIndex ==
                                                          listOfBoxesListIndex) {
                                                        return Color(
                                                            0xFF0E8C8C);
                                                      } else if (FFAppState()
                                                              .SelectedDepositBankList
                                                              .contains(
                                                                  listOfBoxesListItem) ==
                                                          true) {
                                                        return Color(
                                                            0xFF1A2433);
                                                      } else {
                                                        return Color(
                                                            0xFFB6BEC9);
                                                      }
                                                    }(),
                                                    title:
                                                        valueOrDefault<String>(
                                                      listOfBoxesListItem,
                                                      '3×5×20',
                                                    ),
                                                    subtitle: FFAppState()
                                                                .SelectedDepositBankList
                                                                .contains(
                                                                    listOfBoxesListItem) ==
                                                            true
                                                        ? 'Available'
                                                        : '—',
                                                    action: () async {
                                                      if (FFAppState()
                                                              .SelectedDepositBankList
                                                              .contains(
                                                                  listOfBoxesListItem) !=
                                                          false) {
                                                        _model.selectedIndex =
                                                            listOfBoxesListIndex;
                                                        _model.selectedBoxSize =
                                                            listOfBoxesListItem;
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_model.isInvalidRequestMessage2 != null &&
                                _model.isInvalidRequestMessage2 != '')
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.isInvalidRequestMessage2,
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 60.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if ((_model.selectedBoxSize == null ||
                                        _model.selectedBoxSize == '') ||
                                    (FFAppState()
                                                .safetyDepositBoxSelectedBranch ==
                                            '')) {
                                  _model.isInvalidRequest = true;
                                  safeSetState(() {});
                                  if ((_model.selectedBoxSize == null ||
                                          _model.selectedBoxSize == '') &&
                                      (FFAppState()
                                                  .safetyDepositBoxSelectedBranch ==
                                              '')) {
                                    _model.isInvalidRequestMessage =
                                        'Please select your preferred branch';
                                    _model.isInvalidRequestMessage2 =
                                        'Please select your preferred box size';
                                    safeSetState(() {});
                                  } else if ((FFAppState()
                                                  .safetyDepositBoxSelectedBranch ==
                                              '') &&
                                      (_model.selectedBoxSize != null &&
                                          _model.selectedBoxSize != '')) {
                                    _model.isInvalidRequestMessage =
                                        'Please select your preferred branch';
                                    safeSetState(() {});
                                  } else {
                                    _model.isInvalidRequestMessage2 =
                                        'Please select your preferred box size';
                                    safeSetState(() {});
                                  }
                                } else {
                                  _model.isInvalidRequest = false;
                                  _model.isInvalidRequestMessage = null;
                                  _model.isInvalidRequestMessage2 = null;
                                  safeSetState(() {});
                                  _model.apiResult444 =
                                      await WhitebankGroupAPIGroup
                                          .retailSafetyDepositBoxRequestsCall
                                          .call(
                                    idempotencyKey: functions.createUuid(),
                                    accountNumber: FFAppState()
                                                    .selectedAccount
                                                    .accountNumber !=
                                                ''
                                        ? FFAppState()
                                            .selectedAccount
                                            .fullAccountNumber
                                        : FFAppState()
                                            .AccountsState
                                            .firstOrNull
                                            ?.fullAccountNumber,
                                    branchId: FFAppState()
                                        .safetyDepositBoxSelectedBranch,
                                    boxSize: _model.selectedBoxSize,
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                    accessToken: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResult444?.succeeded ??
                                      true)) {
                                    context.pushNamed(
                                      SafetyDepositSuccessPageWidget.routeName,
                                      queryParameters: {
                                        'safetyDepositBoxModel': serializeParam(
                                          SafetyDepositBoxSuccessModelStruct
                                              .maybeFromMap((_model
                                                      .apiResult444?.jsonBody ??
                                                  '')),
                                          ParamType.DataStruct,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(dialogContext)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child:
                                                  CustomInformationalDialogWidget(
                                                message: WhitebankGroupAPIGroup
                                                    .retailSafetyDepositBoxRequestsCall
                                                    .detail(
                                                  (_model.apiResult444
                                                          ?.jsonBody ??
                                                      ''),
                                                )!,
                                                primaryButtonTitle: 'Close',
                                                title: WhitebankGroupAPIGroup
                                                    .retailSafetyDepositBoxRequestsCall
                                                    .title(
                                                  (_model.apiResult444
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                primaryButtonAction: () async {
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
                                }

                                safeSetState(() {});
                              },
                              text: 'Continue',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 56.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconAlignment: IconAlignment.end,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 10.0)),
                  ),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.customWebAppBarModel,
              updateCallback: () => safeSetState(() {}),
              child: CustomWebAppBarWidget(
                pageTitle: '',
                leftButtonIcon: null,
                leftButtonAction: () async {
                  context.safePop();
                },
                midButtonAction: () async {},
                rightButtonAction: () async {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
