import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/settings/notification_event_types/notification_event_types_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'notification_settings_model.dart';
export 'notification_settings_model.dart';

/// Money Transfer Form
class NotificationSettingsWidget extends StatefulWidget {
  const NotificationSettingsWidget({super.key});

  static String routeName = 'NotificationSettings';
  static String routePath = '/notificationSettings';

  @override
  State<NotificationSettingsWidget> createState() =>
      _NotificationSettingsWidgetState();
}

class _NotificationSettingsWidgetState
    extends State<NotificationSettingsWidget> {
  late NotificationSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationSettingsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.getNotificationSettings(context);
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
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
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
                            isWeb ? 20.0 : 0.0,
                            0.0,
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
                                wrapWithModel(
                                  model: _model.customMobileAppBarModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CustomMobileAppBarWidget(
                                    pageTitle: '',
                                    rightButtonIcon: null,
                                    leftButtonIcon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                                    titleLeftAlign: 'Notifications',
                                    textLeftAlignColor: Color(0xFF444C66),
                                    rightButtonAction: () async {},
                                    leftButtonAction: () async {
                                      context.safePop();
                                    },
                                    midRightButtonAction: () async {},
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Builder(
                                    builder: (context) {
                                      final notifacationSettingsList = _model
                                          .listOfNotification
                                          .toList()
                                          .take(3)
                                          .toList();

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            notifacationSettingsList.length,
                                            (notifacationSettingsListIndex) {
                                          final notifacationSettingsListItem =
                                              notifacationSettingsList[
                                                  notifacationSettingsListIndex];
                                          return Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(22.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF9FAFB),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(22.0),
                                                      topRight:
                                                          Radius.circular(22.0),
                                                    ),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(14.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Icon(
                                                            Icons.credit_card,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 30.0,
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              notifacationSettingsListItem
                                                                  .name,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineLargeFamily,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .headlineLargeIsCustom,
                                                                  ),
                                                            ),
                                                            Text(
                                                              '${notifacationSettingsListItem.alertCount.toString()} alerts',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final eventTypesList =
                                                        notifacationSettingsListItem
                                                            .eventTypes
                                                            .toList();

                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          eventTypesList.length,
                                                          (eventTypesListIndex) {
                                                        final eventTypesListItem =
                                                            eventTypesList[
                                                                eventTypesListIndex];
                                                        return Builder(
                                                          builder: (context) =>
                                                              NotificationEventTypesWidget(
                                                            key: Key(
                                                                'Keydcf_${eventTypesListIndex}_of_${eventTypesList.length}'),
                                                            notificationEvents:
                                                                eventTypesListItem,
                                                            eventToggle:
                                                                (eventToggle) async {
                                                              _model.apiResultm5d =
                                                                  await WhitebankGroupAPIGroup
                                                                      .retailSettingsNotificationPreferencesUpdateCall
                                                                      .call(
                                                                eventType:
                                                                    eventTypesListItem
                                                                        .key,
                                                                enabled:
                                                                    eventToggle,
                                                                smsEnabled:
                                                                    eventTypesListItem
                                                                        .sms
                                                                        .enabled,
                                                                emailEnabled:
                                                                    true,
                                                                pushEnabled:
                                                                    eventTypesListItem
                                                                        .push
                                                                        .enabled,
                                                                accessToken:
                                                                    currentAuthenticationToken,
                                                                baseURL:
                                                                    FFDevEnvironmentValues()
                                                                        .WBPBASEURL,
                                                              );

                                                              if ((_model
                                                                      .apiResultm5d
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
                                                                                'Notification modification successful!',
                                                                            primaryButtonTitle:
                                                                                'Confirm',
                                                                            title:
                                                                                'Edit Notification',
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

                                                                await _model
                                                                    .getNotificationSettings(
                                                                        context);
                                                              }

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          );
                                        }).divide(SizedBox(height: 10.0)),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
