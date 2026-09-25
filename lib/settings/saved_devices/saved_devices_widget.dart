import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'saved_devices_model.dart';
export 'saved_devices_model.dart';

/// Money Transfer Form
class SavedDevicesWidget extends StatefulWidget {
  const SavedDevicesWidget({super.key});

  static String routeName = 'SavedDevices';
  static String routePath = '/savedDevices';

  @override
  State<SavedDevicesWidget> createState() => _SavedDevicesWidgetState();
}

class _SavedDevicesWidgetState extends State<SavedDevicesWidget> {
  late SavedDevicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedDevicesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      await _model.getDevices(context);
      _model.isLoading = false;
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
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
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
                              return 36.0;
                            } else {
                              return 36.0;
                            }
                          }(),
                          0.0,
                        ),
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
                              return 36.0;
                            } else {
                              return 36.0;
                            }
                          }(),
                          0.0,
                        ),
                        0.0),
                    child: Container(
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
                      child: Visibility(
                        visible: _model.isLoading == false,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Trust Devices',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Review devices that currently gave access to your account',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Device',
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLargeFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelLargeIsCustom,
                                            ),
                                      ),
                                    ),
                                    Semantics(
                                      label: 'Trusted Devices Container',
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxHeight: 500.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Builder(
                                          builder: (context) {
                                            final deviceList = _model
                                                .trustedDeviceList
                                                .toList();

                                            return Semantics(
                                              label: 'Trusted_Devices_Column',
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: List.generate(
                                                    deviceList.length,
                                                    (deviceListIndex) {
                                                  final deviceListItem =
                                                      deviceList[
                                                          deviceListIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Semantics(
                                                      label: 'trusted_device',
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Builder(
                                                            builder: (context) {
                                                              if (deviceListItem
                                                                  .enabled) {
                                                                return Container(
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Icon(
                                                                    Icons
                                                                        .phone_iphone,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                );
                                                              } else {
                                                                return Container(
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Icon(
                                                                    Icons
                                                                        .devices_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Semantics(
                                                                      label:
                                                                          'Trusted Device Name Text',
                                                                      child:
                                                                          Text(
                                                                        deviceListItem
                                                                            .deviceName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Semantics(
                                                                        label:
                                                                            'Trusted Device Last Active Text',
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            functions.getDateandTimeForDevices(deviceListItem.lastUsedAt),
                                                                            'Last Active: 2 days ago',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodySmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              if (deviceListItem
                                                                      .deviceId ==
                                                                  FFAppState()
                                                                      .DeviceDetails
                                                                      .deviceId) {
                                                                return Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            8.0),
                                                                    child: Text(
                                                                      'Current',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                );
                                                              } else {
                                                                return Builder(
                                                                  builder:
                                                                      (context) =>
                                                                          FlutterFlowIconButton(
                                                                    borderRadius:
                                                                        8.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .delete_forever_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      if ((_model
                                                                              .trustedDeviceList
                                                                              .where((e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                                                                              .toList()
                                                                              .isNotEmpty) ==
                                                                          true) {
                                                                        for (int loop1Index =
                                                                                0;
                                                                            loop1Index <
                                                                                _model.trustedDeviceList.where((e) => e.deviceId == FFAppState().DeviceDetails.deviceId).toList().length;
                                                                            loop1Index++) {
                                                                          final currentLoop1Item = _model
                                                                              .trustedDeviceList
                                                                              .where((e) => e.deviceId == FFAppState().DeviceDetails.deviceId)
                                                                              .toList()[loop1Index];
                                                                          _model.isTrusted =
                                                                              currentLoop1Item.trusted;
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                        if (_model
                                                                            .isTrusted!) {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
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
                                                                                      message: 'Are you sure you want to delete this device?',
                                                                                      primaryButtonTitle: 'Delete',
                                                                                      title: 'Remove Device',
                                                                                      secondaryButtonTitle: 'Cancel',
                                                                                      primaryButtonAction: () async {
                                                                                        context.pushNamed(
                                                                                          MPINVerifyDeviceDeleteWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'id': serializeParam(
                                                                                              deviceListItem.id,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'deviceName': serializeParam(
                                                                                              deviceListItem.deviceName,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      },
                                                                                      secondaryButtonAction: () async {
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
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
                                                                                      message: 'Sorry your current device is not allowed to delete devices',
                                                                                      primaryButtonTitle: 'Cancel',
                                                                                      title: 'Invalid',
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
                                                                                    message: 'Sorry your current device is not allowed to delete devices',
                                                                                    primaryButtonTitle: 'Cancel',
                                                                                    title: 'Invalid',
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
                                                                  ),
                                                                );
                                                              }
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                }),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 16.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: WhitebankGroupAPIGroup
                                      .retailSettingsListPendingDeviceTrustRequestsCall
                                      .call(
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                    accessToken: currentAuthenticationToken,
                                    deviceId:
                                        FFAppState().DeviceDetails.deviceId,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final pendingsColumnRetailSettingsListPendingDeviceTrustRequestsResponse =
                                        snapshot.data!;

                                    return Semantics(
                                      label: 'Pendings_Column',
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (pendingsColumnRetailSettingsListPendingDeviceTrustRequestsResponse
                                                  .succeeded &&
                                              ((getJsonField(
                                                pendingsColumnRetailSettingsListPendingDeviceTrustRequestsResponse
                                                    .jsonBody,
                                                r'''$.requests''',
                                              )
                                                          .toList()
                                                          .map<WBPendingDeviceTrustRequestStruct?>(
                                                              WBPendingDeviceTrustRequestStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          WBPendingDeviceTrustRequestStruct?>)
                                                  .withoutNulls
                                                  .isNotEmpty))
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Pending Requests',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                          if (pendingsColumnRetailSettingsListPendingDeviceTrustRequestsResponse
                                                  .succeeded &&
                                              ((getJsonField(
                                                pendingsColumnRetailSettingsListPendingDeviceTrustRequestsResponse
                                                    .jsonBody,
                                                r'''$.requests''',
                                              )
                                                          .toList()
                                                          .map<WBPendingDeviceTrustRequestStruct?>(
                                                              WBPendingDeviceTrustRequestStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          WBPendingDeviceTrustRequestStruct?>)
                                                  .withoutNulls
                                                  .isNotEmpty))
                                            Semantics(
                                              label:
                                                  'Pending-Request-Container',
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxHeight: 500.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    final pendingRequests =
                                                        (getJsonField(
                                                              pendingsColumnRetailSettingsListPendingDeviceTrustRequestsResponse
                                                                  .jsonBody,
                                                              r'''$.requests''',
                                                              true,
                                                            )
                                                                        ?.toList()
                                                                        .map<WBPendingDeviceTrustRequestStruct?>(WBPendingDeviceTrustRequestStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        WBPendingDeviceTrustRequestStruct?>)
                                                                .withoutNulls
                                                                .toList() ??
                                                            [];

                                                    return Semantics(
                                                      label:
                                                          'Pending-Request-Column',
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: List.generate(
                                                            pendingRequests
                                                                .length,
                                                            (pendingRequestsIndex) {
                                                          final pendingRequestsItem =
                                                              pendingRequests[
                                                                  pendingRequestsIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10.0),
                                                            child: Semantics(
                                                              label:
                                                                  'pending_device',
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if (true) {
                                                                        return Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone_iphone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        );
                                                                      } else {
                                                                        return Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.devices_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Semantics(
                                                                              label: 'Pending Device Name Text',
                                                                              child: Text(
                                                                                pendingRequestsItem.requestingDevice.deviceName,
                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Semantics(
                                                                                label: 'Pending Device Requested At Text',
                                                                                child: Text(
                                                                                  'Requested ${dateTimeFormat(
                                                                                    "relative",
                                                                                    functions.stringToDateTimeWithFormat(pendingRequestsItem.requestingDevice.createdAt),
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  )}',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          8.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .phonelink_setup,
                                                                        color: Color(
                                                                            0xFF00727D),
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
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
                                                                                    message: 'By approving this request, this device will be added as a trusted device for your account. Do you want to continue?',
                                                                                    primaryButtonTitle: 'Continue',
                                                                                    title: 'Approve Trusted Device Request',
                                                                                    secondaryButtonTitle: 'Cancel',
                                                                                    primaryButtonAction: () async {
                                                                                      Navigator.pop(context);
                                                                                      await Future.delayed(
                                                                                        Duration(
                                                                                          milliseconds: 100,
                                                                                        ),
                                                                                      );
                                                                                      _model.getSigningChallengeResponse = await WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.call(
                                                                                        id: pendingRequestsItem.id,
                                                                                        deviceId: FFAppState().DeviceDetails.deviceId,
                                                                                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                        accessToken: currentAuthenticationToken,
                                                                                      );

                                                                                      if (WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.preferredMethod(
                                                                                            (_model.getSigningChallengeResponse?.jsonBody ?? ''),
                                                                                          ) ==
                                                                                          SigningAvailableMethods.mpin.name) {
                                                                                        context.pushNamed(
                                                                                          MPINPageWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'usage': serializeParam(
                                                                                              MpinUsage.DEVICE_TRUST_APPROVAL,
                                                                                              ParamType.Enum,
                                                                                            ),
                                                                                            'bpId': serializeParam(
                                                                                              pendingRequestsItem.id,
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'challenge': serializeParam(
                                                                                              WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.challenge(
                                                                                                (_model.getSigningChallengeResponse?.jsonBody ?? ''),
                                                                                              ),
                                                                                              ParamType.String,
                                                                                            ),
                                                                                            'mpinHash': serializeParam(
                                                                                              '',
                                                                                              ParamType.String,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      } else if (WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.preferredMethod(
                                                                                            (_model.getSigningChallengeResponse?.jsonBody ?? ''),
                                                                                          ) ==
                                                                                          SigningAvailableMethods.biometric.name) {
                                                                                        _model.createBioSignatureOutput = await actions.createSignature(
                                                                                          WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.challenge(
                                                                                            (_model.getSigningChallengeResponse?.jsonBody ?? ''),
                                                                                          )!,
                                                                                        );
                                                                                        _model.confirmSigningBioResponse = await WhitebankGroupAPIGroup.retailSettingsDeviceTrustConfirmSigningCall.call(
                                                                                          id: pendingRequestsItem.id,
                                                                                          method: SigningAvailableMethods.biometric.name,
                                                                                          deviceId: FFAppState().DeviceDetails.deviceId,
                                                                                          challenge: WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.challenge(
                                                                                            (_model.getSigningChallengeResponse?.jsonBody ?? ''),
                                                                                          ),
                                                                                          signature: _model.createBioSignatureOutput,
                                                                                          baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                          accessToken: currentAuthenticationToken,
                                                                                        );

                                                                                        if ((_model.confirmSigningBioResponse?.succeeded ?? true)) {
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
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: CustomReusableBottomSheetV2Widget(
                                                                                                      title: valueOrDefault<String>(
                                                                                                        WhitebankGroupAPIGroup.retailSettingsDeviceTrustConfirmSigningCall.title(
                                                                                                          (_model.confirmSigningBioResponse?.jsonBody ?? ''),
                                                                                                        ),
                                                                                                        'Approval successful',
                                                                                                      ),
                                                                                                      message: valueOrDefault<String>(
                                                                                                        WhitebankGroupAPIGroup.retailSettingsDeviceTrustConfirmSigningCall.message(
                                                                                                          (_model.confirmSigningBioResponse?.jsonBody ?? ''),
                                                                                                        ),
                                                                                                        'Successful approval of device.',
                                                                                                      ),
                                                                                                      buttonTitle: 'Go to Dashboard',
                                                                                                      callback: () async {
                                                                                                        Navigator.pop(context);

                                                                                                        context.goNamed(DashboardWidget.routeName);
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
                                                                                                        WhitebankGroupAPIGroup.retailSettingsDeviceTrustConfirmSigningCall.detail(
                                                                                                          (_model.confirmSigningBioResponse?.jsonBody ?? ''),
                                                                                                        ),
                                                                                                        'Something went wrong.',
                                                                                                      ),
                                                                                                      primaryButtonTitle: 'Dismiss',
                                                                                                      title: valueOrDefault<String>(
                                                                                                        WhitebankGroupAPIGroup.retailSettingsDeviceTrustConfirmSigningCall.title(
                                                                                                          (_model.confirmSigningBioResponse?.jsonBody ?? ''),
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
                                                                                      } else if (WhitebankGroupAPIGroup.retailSettingsSigningChallengeForDeviceTrustApprovalCall.preferredMethod(
                                                                                            (_model.getSigningChallengeResponse?.jsonBody ?? ''),
                                                                                          ) ==
                                                                                          SigningAvailableMethods.passkey.name) {}
                                                                                    },
                                                                                    secondaryButtonAction: () async {
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 70.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: WhitebankGroupAPIGroup
                                      .retailSettingsDevicesListCall
                                      .call(
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                    accessToken: currentAuthenticationToken,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final browsersColumnRetailSettingsDevicesListResponse =
                                        snapshot.data!;

                                    return Semantics(
                                      label: 'Browsers_Column',
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (((browsersColumnRetailSettingsDevicesListResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<TrustedDeviceStruct?>(
                                                              TrustedDeviceStruct
                                                                  .maybeFromMap)
                                                          .toList() as Iterable<TrustedDeviceStruct?>)
                                                      .withoutNulls
                                                      .where((e) => (e.pushPlatform == 'web') || (e.deviceType == 'web'))
                                                      .toList())
                                                  .isNotEmpty)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Browsers',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLargeFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLargeIsCustom,
                                                        ),
                                              ),
                                            ),
                                          if (((browsersColumnRetailSettingsDevicesListResponse
                                                          .jsonBody
                                                          .toList()
                                                          .map<TrustedDeviceStruct?>(
                                                              TrustedDeviceStruct
                                                                  .maybeFromMap)
                                                          .toList() as Iterable<TrustedDeviceStruct?>)
                                                      .withoutNulls
                                                      .where((e) => (e.pushPlatform == 'web') || (e.deviceType == 'web'))
                                                      .toList())
                                                  .isNotEmpty)
                                            Semantics(
                                              label: 'Browsers-Container',
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxHeight: 500.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    final browsers = (browsersColumnRetailSettingsDevicesListResponse
                                                                    .jsonBody
                                                                    .toList()
                                                                    .map<TrustedDeviceStruct?>(
                                                                        TrustedDeviceStruct
                                                                            .maybeFromMap)
                                                                    .toList()
                                                                as Iterable<
                                                                    TrustedDeviceStruct?>)
                                                            .withoutNulls
                                                            .where((e) =>
                                                                (e.pushPlatform ==
                                                                    'web') ||
                                                                (e.deviceType ==
                                                                    'web'))
                                                            .toList()
                                                            .toList() ??
                                                        [];

                                                    return Semantics(
                                                      label: 'Browsers-Column',
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: List.generate(
                                                            browsers.length,
                                                            (browsersIndex) {
                                                          final browsersItem =
                                                              browsers[
                                                                  browsersIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10.0),
                                                            child: Semantics(
                                                              label:
                                                                  'used_browsers',
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if (true) {
                                                                        return Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.devices_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        );
                                                                      } else {
                                                                        return Container(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.devices_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Semantics(
                                                                              label: 'Browser Device Name Text',
                                                                              child: Text(
                                                                                browsersItem.deviceName,
                                                                                style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Semantics(
                                                                                label: 'Broswer Device Last Online At Text',
                                                                                child: Text(
                                                                                  'Last online ${dateTimeFormat(
                                                                                    "relative",
                                                                                    functions.stringToDateTimeWithFormat(browsersItem.lastUsedAt),
                                                                                    locale: FFLocalizations.of(context).languageCode,
                                                                                  )}',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                      ),
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
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (_model.isLoading)
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Semantics(
                  label: 'LoadingStateComponent',
                  child: wrapWithModel(
                    model: _model.loadingStateComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: LoadingStateComponentWidget(
                      isFinished: _model.isLoading,
                    ),
                  ),
                ),
              ),
            Builder(
              builder: (context) => Semantics(
                label: 'CustomMobileAppBar',
                child: wrapWithModel(
                  model: _model.customMobileAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomMobileAppBarWidget(
                    pageTitle: '',
                    rightButtonIcon: Icon(
                      Icons.phonelink_setup_outlined,
                      color: Color(0xFF444C66),
                      size: 24.0,
                    ),
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
                    titleLeftAlign: 'Save Devices',
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
                                    if (((_model.devicesResponse?.jsonBody ??
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
                                            FFAppState().DeviceDetails.deviceId)
                                        .toList()
                                        .isNotEmpty) {
                                      _model.deviceKeypairOutput =
                                          await actions.generatePcKeyPair();
                                      _shouldSetState = true;
                                      if (_model.deviceKeypairOutput != null) {
                                        _model.initTrustResponse =
                                            await WhitebankGroupAPIGroup
                                                .retailSettingsDeviceTrustRequestCall
                                                .call(
                                          deviceId: FFAppState()
                                              .CurrentDeviceDetailsAppState
                                              .id,
                                          devicePublicKey: getJsonField(
                                            _model.deviceKeypairOutput,
                                            r'''$.publicKeyPem''',
                                          ).toString(),
                                          baseURL: FFDevEnvironmentValues()
                                              .WBPBASEURL,
                                          accessToken:
                                              currentAuthenticationToken,
                                        );

                                        _shouldSetState = true;
                                        if ((_model
                                                .initTrustResponse?.succeeded ??
                                            true)) {
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
                                                      cancelCallback:
                                                          () async {},
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        CustomInformationalDialogWidget(
                                                      message: valueOrDefault<
                                                          String>(
                                                        getJsonField(
                                                          (_model.initTrustResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.message''',
                                                        )?.toString(),
                                                        'Failed to initiate trust device.',
                                                      ),
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      title: valueOrDefault<
                                                          String>(
                                                        getJsonField(
                                                          (_model.initTrustResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.title''',
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
                                                        'Failed to initiate request to trust device.',
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title: 'Oops!',
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

                                        return;
                                      }
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
                                        deviceType:
                                            FFAppState().DeviceDetails.os,
                                        osVersion: FFAppState()
                                            .DeviceDetails
                                            .osVersion,
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
                                        _model.deviceKeypairOutput2 =
                                            await actions.generatePcKeyPair();
                                        _shouldSetState = true;
                                        if (_model.deviceKeypairOutput2 !=
                                            null) {
                                          _model.initTrustResponse2 =
                                              await WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceTrustRequestCall
                                                  .call(
                                            deviceId: FFAppState()
                                                .CurrentDeviceDetailsAppState
                                                .id,
                                            devicePublicKey: getJsonField(
                                              _model.deviceKeypairOutput2,
                                              r'''$.publicKeyPem''',
                                            ).toString(),
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                            accessToken:
                                                currentAuthenticationToken,
                                          );

                                          _shouldSetState = true;
                                          if ((_model.initTrustResponse2
                                                  ?.succeeded ??
                                              true)) {
                                            Navigator.pop(context);
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 200,
                                              ),
                                            );
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
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
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CustomReusableBottomSheetV2Widget(
                                                        title:
                                                            'Your request has been sent successfully.',
                                                        message: getJsonField(
                                                          (_model.initTrustResponse2
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.message''',
                                                        ).toString(),
                                                        buttonTitle: 'Continue',
                                                        callback: () async {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        cancelCallback:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
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
                                                        message: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            (_model.initTrustResponse2
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.message''',
                                                          )?.toString(),
                                                          'Failed to initiate request to trust device.',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .retailSettingsDeviceTrustRequestCall
                                                              .title(
                                                            (_model.initTrustResponse2
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

                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      FocusScope.of(
                                                              dialogContext)
                                                          .unfocus();
                                                      FocusManager
                                                          .instance.primaryFocus
                                                          ?.unfocus();
                                                    },
                                                    child:
                                                        CustomInformationalDialogWidget(
                                                      message:
                                                          'Failed to initiate request to trust device.',
                                                      primaryButtonTitle:
                                                          'Dismiss',
                                                      title: 'Oops!',
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

                                          return;
                                        }
                                      } else if (WhitebankGroupAPIGroup
                                              .retailSettingsDeviceRegisterCall
                                              .trusted(
                                            (_model.registerDeviceResponse
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          true) {
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
                                                        DashboardWidget
                                                            .routeName,
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
                                                    },
                                                    cancelCallback: () async {},
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else if (WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceRegisterCall
                                                  .type(
                                                (_model.registerDeviceResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              null &&
                                          WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceRegisterCall
                                                  .type(
                                                (_model.registerDeviceResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              '') {
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
                                                      WhitebankGroupAPIGroup
                                                          .retailSettingsDeviceRegisterCall
                                                          .detail(
                                                        (_model.registerDeviceResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Maximum number of 5 devices reached.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailSettingsDeviceRegisterCall
                                                          .title(
                                                        (_model.registerDeviceResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
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
                                      } else if (WhitebankGroupAPIGroup
                                              .retailSettingsDeviceRegisterCall
                                              .error(
                                            (_model.registerDeviceResponse
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          'MAX_DEVICES_REACHED') {
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
                                                        (_model.registerDeviceResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Maximum number of 5 devices reached.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailSettingsDeviceRegisterCall
                                                          .title(
                                                        (_model.registerDeviceResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
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
                                                      WhitebankGroupAPIGroup
                                                          .retailSettingsDeviceRegisterCall
                                                          .detail(
                                                        (_model.registerDeviceResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Something went wrong.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailSettingsDeviceRegisterCall
                                                          .title(
                                                        (_model.registerDeviceResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
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
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Semantics(
                  label: 'MobileNavigationBar',
                  child: wrapWithModel(
                    model: _model.mobileNavigationBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MobileNavigationBarWidget(
                      pageIndex: 1,
                      shouldHideBottomNav: false,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
