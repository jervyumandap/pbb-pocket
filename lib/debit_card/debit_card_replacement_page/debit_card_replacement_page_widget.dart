import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/cheque/service_requesy_account_selection/service_requesy_account_selection_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'debit_card_replacement_page_model.dart';
export 'debit_card_replacement_page_model.dart';

/// Money Transfer Form
class DebitCardReplacementPageWidget extends StatefulWidget {
  const DebitCardReplacementPageWidget({super.key});

  static String routeName = 'DebitCardReplacementPage';
  static String routePath = '/debitCardReplacementPage';

  @override
  State<DebitCardReplacementPageWidget> createState() =>
      _DebitCardReplacementPageWidgetState();
}

class _DebitCardReplacementPageWidgetState
    extends State<DebitCardReplacementPageWidget> {
  late DebitCardReplacementPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DebitCardReplacementPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = false;
      safeSetState(() {});
      await action_blocks.refreshSessionActionBlock(context);
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(() => safeSetState(() {}));
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(() => safeSetState(() {}));
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
                  isTitleLeftAlign: false,
                  titleLeftAlign: '',
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
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
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
                    29.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Text(
                            'Debit Card Replacement',
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Text(
                            'Submit your request for debit card replacement and collect your card once ready. ',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.5,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          height: 81.0,
                          constraints: BoxConstraints(
                            maxHeight: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFE6F4F4),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFFE6F4F4),
                              width: 2.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Text(
                                'Note: Replacement debit card are for pickup at your Home Branch only. Please allow 3–7 banking days for processing.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      color: Color(0xFF667085),
                                      fontSize: 12.5,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyLargeIsCustom,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
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
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
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
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                  FFAppState().selectedAccount.accountNumber !=
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
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF002C75),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController1,
                            focusNode: _model.textFieldFocusNode1,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController1',
                              Duration(milliseconds: 200),
                              () => safeSetState(() {}),
                            ),
                            autofocus: false,
                            enabled: true,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: false,
                              labelText: 'Card Number *',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              hintText: 'Card Number *',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .bgThemeColor,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              errorStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Color(0xFFB3261E),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFB3B3B3),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF676666),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFB3261E),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFB3261E),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: null,
                            maxLength: 16,
                            buildCounter: (context,
                                    {required currentLength,
                                    required isFocused,
                                    maxLength}) =>
                                null,
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model.textController1Validator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('^[0-9.]+\$'))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: wrapWithModel(
                          model: _model.accountNameTextfieldModel,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryTextFieldComponentWidget(
                            textfieldTitle: 'Card Holder Name*',
                            maxLines: 1,
                            lineHeight: 1,
                            maxLength: 28,
                            initialValue: '',
                            hintText: 'Card Holder Name*',
                            isReadOnly: false,
                            action: () async {},
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Text(
                            'Reason for Replacement*',
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
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Builder(
                          builder: (context) {
                            final reasonForReplacementListview =
                                _model.reasonForReplacementList.toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: reasonForReplacementListview.length,
                              itemBuilder:
                                  (context, reasonForReplacementListviewIndex) {
                                final reasonForReplacementListviewItem =
                                    reasonForReplacementListview[
                                        reasonForReplacementListviewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.selectedReasonIndex != null) {
                                        _model.selectedReasonIndex = 0;
                                        _model.replacementReason = null;
                                        safeSetState(() {});
                                        _model.selectedReasonIndex =
                                            reasonForReplacementListviewIndex;
                                        _model.replacementReason =
                                            reasonForReplacementListviewItem;
                                        safeSetState(() {});
                                      } else {
                                        _model.selectedReasonIndex =
                                            reasonForReplacementListviewIndex;
                                        _model.replacementReason =
                                            reasonForReplacementListviewItem;
                                        safeSetState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      constraints: BoxConstraints(
                                        maxHeight: 500.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            reasonForReplacementListviewIndex ==
                                                    _model.selectedReasonIndex
                                                ? Color(0xFFE6F4F4)
                                                : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color:
                                              reasonForReplacementListviewIndex ==
                                                      _model.selectedReasonIndex
                                                  ? Color(0xFF0E8C8C)
                                                  : Color(0xFFE4E8EE),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            14.0, 12.0, 0.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 24.0,
                                              height: 24.0,
                                              child: custom_widgets
                                                  .CustomRadioButtonOnly(
                                                width: 24.0,
                                                height: 24.0,
                                                isSelected:
                                                    reasonForReplacementListviewIndex ==
                                                        _model
                                                            .selectedReasonIndex,
                                                size: 24.0,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                onTap: () async {
                                                  if (_model
                                                          .selectedReasonIndex !=
                                                      null) {
                                                    _model.selectedReasonIndex =
                                                        0;
                                                    _model.replacementReason =
                                                        null;
                                                    safeSetState(() {});
                                                    _model.selectedReasonIndex =
                                                        reasonForReplacementListviewIndex;
                                                    _model.replacementReason =
                                                        reasonForReplacementListviewItem;
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.selectedReasonIndex =
                                                        reasonForReplacementListviewIndex;
                                                    _model.replacementReason =
                                                        reasonForReplacementListviewItem;
                                                    safeSetState(() {});
                                                  }
                                                },
                                              ),
                                            ),
                                            Text(
                                              reasonForReplacementListviewItem,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: Color(0xFF1A2433),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ].divide(SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Text(
                            'Delivery Option',
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
                      Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller: _model.textController2,
                          focusNode: _model.textFieldFocusNode2,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController2',
                            Duration(milliseconds: 200),
                            () => safeSetState(() {}),
                          ),
                          autofocus: false,
                          enabled: true,
                          textInputAction: TextInputAction.next,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                  lineHeight: 1.0,
                                ),
                            hintText: '${valueOrDefault<String>(
                              currentUserData?.user.branchName,
                              '-',
                            )} (Fixed)',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).bgThemeColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                            errorStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Color(0xFFB3261E),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF676666),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF676666),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFB3261E),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFB3261E),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                          maxLines: null,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          validator: _model.textController2Validator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('^[0-9.]+\$'))
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 0.0, 40.0),
                          child: Text(
                            'Delivery is locked to Home Branch per client spec, not user-editable.',
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyLargeFamily,
                                  color: Color(0xFF667085),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyLargeIsCustom,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              _model.validateForm = true;
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                safeSetState(() => _model.validateForm = false);
                                return;
                              }
                              if (_model.validateForm!) {
                                _model.apiResultk9m =
                                    await WhitebankGroupAPIGroup
                                        .retailCardReplacementRequestsCall
                                        .call(
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
                                  cardNumber: _model.textController1.text,
                                  replacementReason:
                                      _model.replacementReason != null &&
                                              _model.replacementReason != ''
                                          ? _model.replacementReason
                                          : valueOrDefault<String>(
                                              _model.reasonForReplacementList
                                                  .firstOrNull,
                                              '-',
                                            ),
                                  cardHolderName: _model
                                      .accountNameTextfieldModel
                                      .textController
                                      .text,
                                  idempotencyKey: functions.createUuid(),
                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                  accessToken: currentAuthenticationToken,
                                  refreshToken: currentAuthRefreshToken,
                                );

                                if ((_model.apiResultk9m?.succeeded ?? true)) {
                                  context.pushNamed(
                                    DebitCardReplacementSuccessPageWidget
                                        .routeName,
                                    queryParameters: {
                                      'debitCardReplacement': serializeParam(
                                        DebitCardReplacementSuccessModelStruct
                                            .maybeFromMap((_model
                                                    .apiResultk9m?.jsonBody ??
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child: GestureDetector(
                                            onTap: () {
                                              FocusScope.of(dialogContext)
                                                  .unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child:
                                                CustomInformationalDialogWidget(
                                              message: WhitebankGroupAPIGroup
                                                  .retailCardReplacementRequestsCall
                                                  .message(
                                                (_model.apiResultk9m
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              primaryButtonTitle: 'Close',
                                              title: WhitebankGroupAPIGroup
                                                  .retailCardReplacementRequestsCall
                                                  .title(
                                                (_model.apiResultk9m
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
                            text: 'Submit Request',
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
                    ],
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
                    pageIndex: 6,
                    shouldHideBottomNav: true,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
