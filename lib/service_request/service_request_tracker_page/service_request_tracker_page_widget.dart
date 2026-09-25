import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/investment_empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/service_request_component_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'service_request_tracker_page_model.dart';
export 'service_request_tracker_page_model.dart';

class ServiceRequestTrackerPageWidget extends StatefulWidget {
  const ServiceRequestTrackerPageWidget({super.key});

  static String routeName = 'ServiceRequestTrackerPage';
  static String routePath = '/serviceRequestTrackerPage';

  @override
  State<ServiceRequestTrackerPageWidget> createState() =>
      _ServiceRequestTrackerPageWidgetState();
}

class _ServiceRequestTrackerPageWidgetState
    extends State<ServiceRequestTrackerPageWidget> {
  late ServiceRequestTrackerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceRequestTrackerPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      _model.apiResultw3r =
          await WhitebankGroupAPIGroup.retailServiceRequestTrackerCall.call(
        statusCategory: _model.statusCategory,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        accessToken: currentAuthenticationToken,
      );

      if ((_model.apiResultw3r?.succeeded ?? true)) {
        _model.serviceRequestTrackerState = (getJsonField(
          (_model.apiResultw3r?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
                .toList()
                .map<DataStruct?>(DataStruct.maybeFromMap)
                .toList() as Iterable<DataStruct?>)
            .withoutNulls
            .toList()
            .cast<DataStruct>();
        _model.isLoading = false;
        safeSetState(() {});
      } else {
        _model.isLoading = false;
        safeSetState(() {});
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
                    message: WhitebankGroupAPIGroup
                        .retailServiceRequestTrackerCall
                        .message(
                      (_model.apiResultw3r?.jsonBody ?? ''),
                    )!,
                    primaryButtonTitle: WhitebankGroupAPIGroup
                        .retailServiceRequestTrackerCall
                        .title(
                      (_model.apiResultw3r?.jsonBody ?? ''),
                    )!,
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Stack(
            children: [
              if (!_model.isLoading)
                Padding(
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
                      0.0,
                      0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 100.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 100.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 140.0;
                                    } else {
                                      return 140.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                0.0,
                                0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.serviceRequestTrackerState
                                            .firstOrNull?.id ==
                                        null ||
                                    _model.serviceRequestTrackerState
                                            .firstOrNull?.id ==
                                        '')
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 180.0, 16.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model
                                            .investmentEmptyListComponentModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child:
                                            InvestmentEmptyListComponentWidget(
                                          title: 'No requests yet',
                                          body:
                                              'When you submit a service request,you\'ll be able to track its status here.',
                                        ),
                                      ),
                                    ),
                                  ),
                                Builder(
                                  builder: (context) {
                                    final serviceRequestData = _model
                                        .serviceRequestTrackerState
                                        .toList();

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: serviceRequestData.length,
                                      itemBuilder:
                                          (context, serviceRequestDataIndex) {
                                        final serviceRequestDataItem =
                                            serviceRequestData[
                                                serviceRequestDataIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: ServiceRequestComponentWidget(
                                            key: Key(
                                                'Keydvy_${serviceRequestDataIndex}_of_${serviceRequestData.length}'),
                                            data: serviceRequestDataItem,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (_model.isLoading)
                wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: !_model.isLoading,
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
              wrapWithModel(
                model: _model.customWebAppBarModel1,
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
              Padding(
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
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Service Request Tracker',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineSmallIsCustom,
                                ),
                          ),
                        ),
                        Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 0.0, 0.0),
                            child: FlutterFlowChoiceChips(
                              options: [
                                ChipData('All'),
                                ChipData('Open'),
                                ChipData('In Progress'),
                                ChipData('Active'),
                                ChipData('Completed')
                              ],
                              onChanged: (val) async {
                                safeSetState(() =>
                                    _model.choiceChipsValue = val?.firstOrNull);
                                _model.statusCategory =
                                    _model.choiceChipsValue != 'All'
                                        ? functions.formatStatus(
                                            _model.choiceChipsValue!)
                                        : '';
                                safeSetState(() {});
                                _model.apiResultww3r =
                                    await WhitebankGroupAPIGroup
                                        .retailServiceRequestTrackerCall
                                        .call(
                                  statusCategory: _model.statusCategory,
                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                  accessToken: currentAuthenticationToken,
                                );

                                if ((_model.apiResultww3r?.succeeded ?? true)) {
                                  _model.serviceRequestTrackerState =
                                      (getJsonField(
                                    (_model.apiResultww3r?.jsonBody ?? ''),
                                    r'''$.data''',
                                    true,
                                  )!
                                                  .toList()
                                                  .map<DataStruct?>(
                                                      DataStruct.maybeFromMap)
                                                  .toList()
                                              as Iterable<DataStruct?>)
                                          .withoutNulls
                                          .toList()
                                          .cast<DataStruct>();
                                  safeSetState(() {});
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
                                                  .retailServiceRequestTrackerCall
                                                  .message(
                                                (_model.apiResultw3r
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              primaryButtonTitle:
                                                  WhitebankGroupAPIGroup
                                                      .retailServiceRequestTrackerCall
                                                      .title(
                                                (_model.apiResultw3r
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
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

                                safeSetState(() {});
                              },
                              selectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFF0D9488),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                iconColor: FlutterFlowTheme.of(context).info,
                                iconSize: 12.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    14.0, 4.0, 14.0, 4.0),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFFF1F4F7),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                iconSize: 12.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 8.0, 4.0),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              chipSpacing: 16.0,
                              rowSpacing: 8.0,
                              multiselect: false,
                              initialized: _model.choiceChipsValue != null,
                              alignment: WrapAlignment.start,
                              controller: _model.choiceChipsValueController ??=
                                  FormFieldController<List<String>>(
                                ['All'],
                              ),
                              wrapped: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              wrapWithModel(
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
                  buttonWithoutBackground: true,
                  btnWOBgIcon: Icon(
                    Icons.arrow_back,
                  ),
                  btnWOBgColor: FlutterFlowTheme.of(context).primaryText,
                  btnWOBgIconSize: 24.0,
                  isTitleLeftAlign: false,
                  titleLeftAlign: '',
                  rightButtonAction: () async {},
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midRightButtonAction: () async {},
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.customWebAppBarModel2,
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
    );
  }
}
