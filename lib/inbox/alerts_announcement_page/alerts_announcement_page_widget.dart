import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/filter_tags_component_widget.dart';
import '/components/inbox_item_component/inbox_item_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'alerts_announcement_page_model.dart';
export 'alerts_announcement_page_model.dart';

class AlertsAnnouncementPageWidget extends StatefulWidget {
  const AlertsAnnouncementPageWidget({super.key});

  static String routeName = 'AlertsAnnouncementPage';
  static String routePath = '/alertsAnnouncementPage';

  @override
  State<AlertsAnnouncementPageWidget> createState() =>
      _AlertsAnnouncementPageWidgetState();
}

class _AlertsAnnouncementPageWidgetState
    extends State<AlertsAnnouncementPageWidget> with TickerProviderStateMixin {
  late AlertsAnnouncementPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertsAnnouncementPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/bg-vector-1.png',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -4.17),
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
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Alerts & Announcements',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .neutral3,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Semantics(
                                          label: 'FilterTagsComponent All',
                                          child: wrapWithModel(
                                            model: _model
                                                .filterTagsComponentModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterTagsComponentWidget(
                                              label: 'All',
                                              hideCloseButton: true,
                                              isActive: _model.filters
                                                          .firstOrNull ==
                                                      null ||
                                                  _model.filters.firstOrNull ==
                                                      '',
                                              callback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => '',
                                                );
                                                safeSetState(() {});
                                              },
                                              closeCallback: () async {},
                                            ),
                                          ),
                                        ),
                                        Semantics(
                                          label: 'FilterTagsComponent Alerts',
                                          child: wrapWithModel(
                                            model: _model
                                                .filterTagsComponentModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterTagsComponentWidget(
                                              label: 'Alerts',
                                              hideCloseButton:
                                                  _model.filters.firstOrNull !=
                                                      InboxKind.ALERT.name,
                                              isActive:
                                                  _model.filters.firstOrNull ==
                                                      InboxKind.ALERT.name,
                                              callback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => InboxKind.ALERT.name,
                                                );
                                                safeSetState(() {});
                                              },
                                              closeCallback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => '',
                                                );
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'FilterTagsComponent Announcement',
                                          child: wrapWithModel(
                                            model: _model
                                                .filterTagsComponentModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterTagsComponentWidget(
                                              label: 'Announcements',
                                              hideCloseButton: _model
                                                      .filters.firstOrNull !=
                                                  InboxKind.ANNOUNCEMENT.name,
                                              isActive: _model
                                                      .filters.firstOrNull ==
                                                  InboxKind.ANNOUNCEMENT.name,
                                              callback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => InboxKind
                                                      .ANNOUNCEMENT.name,
                                                );
                                                safeSetState(() {});
                                              },
                                              closeCallback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => '',
                                                );
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'FilterTagsComponent Transactional',
                                          child: wrapWithModel(
                                            model: _model
                                                .filterTagsComponentModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterTagsComponentWidget(
                                              label: 'Transactional',
                                              hideCloseButton: _model
                                                      .filters.firstOrNull !=
                                                  InboxKind.TRANSACTIONAL.name,
                                              isActive: _model
                                                      .filters.firstOrNull ==
                                                  InboxKind.TRANSACTIONAL.name,
                                              callback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => InboxKind
                                                      .TRANSACTIONAL.name,
                                                );
                                                safeSetState(() {});
                                              },
                                              closeCallback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => '',
                                                );
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ),
                                        Semantics(
                                          label: 'FilterTagsComponent System',
                                          child: wrapWithModel(
                                            model: _model
                                                .filterTagsComponentModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FilterTagsComponentWidget(
                                              label: 'System',
                                              hideCloseButton:
                                                  _model.filters.firstOrNull !=
                                                      InboxKind.SYSTEM.name,
                                              isActive:
                                                  _model.filters.firstOrNull ==
                                                      InboxKind.SYSTEM.name,
                                              callback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => InboxKind.SYSTEM.name,
                                                );
                                                safeSetState(() {});
                                              },
                                              closeCallback: () async {
                                                _model.updateFiltersAtIndex(
                                                  0,
                                                  (_) => '',
                                                );
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Semantics(
                                      label: 'List-Container',
                                      child: Container(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return FFAppConstants
                                                .ContentMaxWidth;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return FFAppConstants
                                                .ContentMaxWidth;
                                          } else {
                                            return FFAppConstants
                                                .ContentMaxWidth;
                                          }
                                        }(),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 135.0),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future: _model
                                                      .retailInboxNotificationsQuery(
                                                    uniqueQueryKey:
                                                        '${valueOrDefault<String>(
                                                      currentUserData
                                                          ?.user.fullName,
                                                      'full_name',
                                                    )}_${'pbbpocket://pbbpocket.com${GoRouterState.of(context).uri.toString()}'}',
                                                    overrideCache: false,
                                                    requestFn: () =>
                                                        WhitebankGroupAPIGroup
                                                            .retailInboxNotificationsCall
                                                            .call(
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      order:
                                                          OrderType.DESC.name,
                                                      unreadOnly: true,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                    ),
                                                  )
                                                      .then((result) {
                                                    try {
                                                      _model.apiRequestCompleted =
                                                          true;
                                                      _model.apiRequestLastUniqueKey =
                                                          '${valueOrDefault<String>(
                                                        currentUserData
                                                            ?.user.fullName,
                                                        'full_name',
                                                      )}_${'pbbpocket://pbbpocket.com${GoRouterState.of(context).uri.toString()}'}';
                                                    } finally {}
                                                    return result;
                                                  }),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          child:
                                                              LoadingStateComponentWidget(
                                                            isFinished: true,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final inboxListViewRetailInboxNotificationsResponse =
                                                        snapshot.data!;

                                                    return Builder(
                                                      builder: (context) {
                                                        final items = (_model.filters.firstOrNull !=
                                                                            null &&
                                                                        _model.filters.firstOrNull !=
                                                                            ''
                                                                    ? (getJsonField(
                                                                        inboxListViewRetailInboxNotificationsResponse
                                                                            .jsonBody,
                                                                        r'''$.data''',
                                                                        true,
                                                                      )?.toList().map<InboxNotificationStruct?>(InboxNotificationStruct.maybeFromMap).toList()
                                                                            as Iterable<
                                                                                InboxNotificationStruct?>)
                                                                        .withoutNulls
                                                                        .where((e) =>
                                                                            e.kind ==
                                                                            _model
                                                                                .filters.firstOrNull)
                                                                        .toList()
                                                                    : (getJsonField(
                                                                        inboxListViewRetailInboxNotificationsResponse
                                                                            .jsonBody,
                                                                        r'''$.data''',
                                                                        true,
                                                                      )?.toList().map<InboxNotificationStruct?>(InboxNotificationStruct.maybeFromMap).toList()
                                                                            as Iterable<InboxNotificationStruct?>)
                                                                        .withoutNulls)
                                                                .toList() ??
                                                            [];

                                                        return Semantics(
                                                          label:
                                                              'Inbox-ListView',
                                                          child:
                                                              RefreshIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            onRefresh:
                                                                () async {
                                                              safeSetState(() {
                                                                _model.clearRetailInboxNotificationsQueryCacheKey(
                                                                    _model
                                                                        .apiRequestLastUniqueKey);
                                                                _model.apiRequestCompleted =
                                                                    false;
                                                              });
                                                              await _model
                                                                  .waitForApiRequestCompleted();
                                                            },
                                                            child: ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  items.length,
                                                              itemBuilder:
                                                                  (context,
                                                                      itemsIndex) {
                                                                final itemsItem =
                                                                    items[
                                                                        itemsIndex];
                                                                return Semantics(
                                                                  label:
                                                                      'InboxItemComponent',
                                                                  child:
                                                                      InboxItemComponentWidget(
                                                                    key: Key(
                                                                        'Key40m_${itemsIndex}_of_${items.length}'),
                                                                    details:
                                                                        itemsItem,
                                                                    callback:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        InboxDetailsPageWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'details':
                                                                              serializeParam(
                                                                            itemsItem,
                                                                            ParamType.DataStruct,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!),
                                  ),
                                ].divide(SizedBox(height: 14.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
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
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Semantics(
                        label: 'MobileNavigationBar',
                        child: wrapWithModel(
                          model: _model.mobileNavigationBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: MobileNavigationBarWidget(
                            pageIndex: 3,
                            shouldHideBottomNav: false,
                          ),
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
