import '/components/side_menu_item_widget/side_menu_item_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_navigator_model.dart';
export 'side_navigator_model.dart';

class SideNavigatorWidget extends StatefulWidget {
  const SideNavigatorWidget({
    super.key,
    int? navSelected,
    int? notificationCount,
  })  : this.navSelected = navSelected ?? 1,
        this.notificationCount = notificationCount ?? 1;

  final int navSelected;
  final int notificationCount;

  @override
  State<SideNavigatorWidget> createState() => _SideNavigatorWidgetState();
}

class _SideNavigatorWidgetState extends State<SideNavigatorWidget> {
  late SideNavigatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideNavigatorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: valueOrDefault<double>(
        FFAppState().isDrawerOpen
            ? FFAppConstants.maxDrawerWidth
            : FFAppConstants.minDrawerWidth,
        270.0,
      ),
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).neutral12,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).neutral10,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 16.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.add_task_rounded,
                    color: Color(0xFF6F61EF),
                    size: 32.0,
                  ),
                  if (FFAppState().isDrawerOpen)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'check.io',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF15161E),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                ],
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 2.0,
              color: Color(0xFFE5E7EB),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (FFAppState().isDrawerOpen)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Platform Navigation',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF606A85),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    wrapWithModel(
                      model: _model.sideMenuItemWidgetModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: SideMenuItemWidgetWidget(
                        title: 'Home',
                        index: 1,
                        isSelected: true,
                        selectedIcon: FaIcon(
                          FontAwesomeIcons.home,
                          size: 20.0,
                        ),
                        defaultIcon: Icon(
                          Icons.home,
                          size: 20.0,
                        ),
                        callback: () async {
                          context.goNamed(
                            DashboardWidget.routeName,
                            extra: <String, dynamic>{
                              '__transition_info__': TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    if (FFAppState().isDrawerOpen)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Settings',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF606A85),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    wrapWithModel(
                      model: _model.sideMenuItemWidgetModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: SideMenuItemWidgetWidget(
                        title: 'E-Billing',
                        index: 4,
                        isSelected: true,
                        selectedIcon: Icon(
                          Icons.qr_code_rounded,
                          size: 20.0,
                        ),
                        defaultIcon: Icon(
                          Icons.qr_code_rounded,
                          size: 20.0,
                        ),
                        callback: () async {
                          context.goNamed(
                            EBillingPageWidget.routeName,
                            extra: <String, dynamic>{
                              '__transition_info__': TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.sideMenuItemWidgetModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: SideMenuItemWidgetWidget(
                        title: 'Recipients',
                        index: 5,
                        isSelected: true,
                        selectedIcon: Icon(
                          Icons.people_outline_sharp,
                          size: 20.0,
                        ),
                        defaultIcon: Icon(
                          Icons.people_outline_sharp,
                          size: 20.0,
                        ),
                        callback: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.sideMenuItemWidgetModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: SideMenuItemWidgetWidget(
                        title: 'Pay Bills',
                        index: 6,
                        isSelected: true,
                        selectedIcon: Icon(
                          Icons.receipt_sharp,
                          size: 20.0,
                        ),
                        defaultIcon: Icon(
                          Icons.receipt_sharp,
                          size: 20.0,
                        ),
                        callback: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.sideMenuItemWidgetModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: SideMenuItemWidgetWidget(
                        title: 'Fund Transfer',
                        index: 7,
                        isSelected: true,
                        selectedIcon: FaIcon(
                          FontAwesomeIcons.solidPaperPlane,
                          size: 18.0,
                        ),
                        defaultIcon: FaIcon(
                          FontAwesomeIcons.solidPaperPlane,
                          size: 18.0,
                        ),
                        callback: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.sideMenuItemWidgetModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: SideMenuItemWidgetWidget(
                        title: 'Announcements',
                        index: 8,
                        notifCount: 9,
                        isSelected: true,
                        selectedIcon: Icon(
                          Icons.notifications_none,
                          size: 20.0,
                        ),
                        defaultIcon: Icon(
                          Icons.notifications_none,
                          size: 20.0,
                        ),
                        callback: () async {},
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 12.0))
                      .around(SizedBox(height: 12.0)),
                ),
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 2.0,
              color: Color(0xFFE5E7EB),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.sideMenuItemWidgetModel7,
                  updateCallback: () => safeSetState(() {}),
                  child: SideMenuItemWidgetWidget(
                    title: 'Profile',
                    index: 2,
                    isSelected: true,
                    selectedIcon: Icon(
                      Icons.person_outline_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    defaultIcon: Icon(
                      Icons.person_outline_rounded,
                      size: 20.0,
                    ),
                    callback: () async {},
                  ),
                ),
                wrapWithModel(
                  model: _model.sideMenuItemWidgetModel8,
                  updateCallback: () => safeSetState(() {}),
                  child: SideMenuItemWidgetWidget(
                    title: 'Settings',
                    index: 3,
                    isSelected: true,
                    selectedIcon: Icon(
                      Icons.settings_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    defaultIcon: Icon(
                      Icons.settings_outlined,
                      size: 20.0,
                    ),
                    callback: () async {},
                  ),
                ),
              ].divide(SizedBox(height: 12.0)).around(SizedBox(height: 12.0)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().isDrawerOpen =
                      !(FFAppState().isDrawerOpen ?? true);
                  safeSetState(() {});
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          0.0,
                          valueOrDefault<double>(
                            !FFAppState().isDrawerOpen ? 14.0 : 0.0,
                            0.0,
                          ),
                          0.0),
                      child: FaIcon(
                        FontAwesomeIcons.bars,
                        color: Color(0xFF606A85),
                        size: 20.0,
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
