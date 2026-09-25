import '/backend/schema/structs/index.dart';
import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/components/side_menu_item_widget/side_menu_item_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'mobile_navigation_bar_n_o_q_r_model.dart';
export 'mobile_navigation_bar_n_o_q_r_model.dart';

class MobileNavigationBarNOQRWidget extends StatefulWidget {
  const MobileNavigationBarNOQRWidget({
    super.key,
    required this.pageIndex,
  });

  final int? pageIndex;

  @override
  State<MobileNavigationBarNOQRWidget> createState() =>
      _MobileNavigationBarNOQRWidgetState();
}

class _MobileNavigationBarNOQRWidgetState
    extends State<MobileNavigationBarNOQRWidget> {
  late MobileNavigationBarNOQRModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileNavigationBarNOQRModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          AnimatedContainer(
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
                  blurRadius: 20.0,
                  color: Color(0x26000000),
                  offset: Offset(
                    0.0,
                    4.0,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Stack(
                            children: [
                              if (!FFAppState().isDrawerOpen)
                                Hero(
                                  tag: 'minimizeLogo',
                                  transitionOnUserGestures: true,
                                  child: Image.asset(
                                    'assets/images/fuueei.png',
                                    width: 56.0,
                                    height: 37.0,
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment(-1.0, 0.0),
                                  ),
                                ),
                              if (FFAppState().isDrawerOpen)
                                Hero(
                                  tag: 'minimizeLogo',
                                  transitionOnUserGestures: true,
                                  child: Image.asset(
                                    'assets/images/fuueei.png',
                                    height: 60.0,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                            ],
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
                          wrapWithModel(
                            model: _model.sideMenuItemWidgetModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: SideMenuItemWidgetWidget(
                              title: 'Home',
                              index: 1,
                              isSelected: widget.pageIndex == 1,
                              selectedIcon: Icon(
                                Icons.home_rounded,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              defaultIcon: Icon(
                                Icons.home_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
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
                          wrapWithModel(
                            model: _model.sideMenuItemWidgetModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: SideMenuItemWidgetWidget(
                              title: 'E-Billing',
                              index: 4,
                              isSelected: widget.pageIndex == 4,
                              selectedIcon: Icon(
                                FFIcons.kqrCodeScanner,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              defaultIcon: Icon(
                                FFIcons.kqrCodeScanner,
                                color: FlutterFlowTheme.of(context).primaryText,
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
                              isSelected: widget.pageIndex == 5,
                              selectedIcon: Icon(
                                Icons.people_outline_sharp,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              defaultIcon: Icon(
                                Icons.people_outline_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
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
                              isSelected: widget.pageIndex == 6,
                              selectedIcon: Icon(
                                Icons.receipt_sharp,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              defaultIcon: Icon(
                                Icons.receipt_sharp,
                                color: FlutterFlowTheme.of(context).primaryText,
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
                              isSelected: widget.pageIndex == 7,
                              selectedIcon: FaIcon(
                                FontAwesomeIcons.solidPaperPlane,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              defaultIcon: FaIcon(
                                FontAwesomeIcons.solidPaperPlane,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              callback: () async {
                                context.goNamed(
                                  BlankPageCWidget.routeName,
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
                            model: _model.sideMenuItemWidgetModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: SideMenuItemWidgetWidget(
                              title: 'Announcements',
                              index: 8,
                              notifCount: 9,
                              isSelected: widget.pageIndex == 8,
                              selectedIcon: Icon(
                                Icons.notifications_rounded,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                              defaultIcon: Icon(
                                Icons.notifications_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              borderRadius: 100.0,
                              callback: () async {
                                context.goNamed(
                                  BlankPageDWidget.routeName,
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
                          isSelected: widget.pageIndex == 2,
                          selectedIcon: Icon(
                            Icons.person_outline_rounded,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 20.0,
                          ),
                          defaultIcon: Icon(
                            Icons.person_outline_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          borderRadius: 0.0,
                          callback: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.sideMenuItemWidgetModel8,
                        updateCallback: () => safeSetState(() {}),
                        child: SideMenuItemWidgetWidget(
                          title: 'Settings',
                          index: 3,
                          isSelected: widget.pageIndex == 3,
                          selectedIcon: Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 20.0,
                          ),
                          defaultIcon: Icon(
                            Icons.settings_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          borderRadius: 8.0,
                          callback: () async {},
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 12.0))
                        .around(SizedBox(height: 12.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 16.0, 16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().isDrawerOpen =
                            !(FFAppState().isDrawerOpen ?? true);
                        _model.updatePage(() {});
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bars,
                            color: Color(0xFF606A85),
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Expanded(
            child: Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                      color: Color(0x26000000),
                      offset: Offset(
                        0.0,
                        -4.0,
                      ),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      wrapWithModel(
                        model: _model.iconButtonBadgeHomeModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconButtonBadgeWidget(
                          icon: Icon(
                            Icons.home_rounded,
                            color: valueOrDefault<Color>(
                              widget.pageIndex == 1
                                  ? FlutterFlowTheme.of(context).info
                                  : FlutterFlowTheme.of(context).bgThemeColor,
                              FlutterFlowTheme.of(context).bgThemeColor,
                            ),
                            size: 24.0,
                          ),
                          buttonSize: 44.0,
                          backgroundColor: valueOrDefault<Color>(
                            widget.pageIndex == 1
                                ? FlutterFlowTheme.of(context).primaryButton
                                : Color(0x00000000),
                            FlutterFlowTheme.of(context).primaryButton,
                          ),
                          borderRadius: 100.0,
                          hoverStyle: IconButtonBadgeHoverStyleStruct(
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryButton,
                            iconColor: Colors.white,
                          ),
                          badgeColor: FlutterFlowTheme.of(context).error2,
                          title: 'Home',
                          titleColor: valueOrDefault<Color>(
                            widget.pageIndex == 1
                                ? FlutterFlowTheme.of(context).primaryButton
                                : FlutterFlowTheme.of(context).bgThemeColor,
                            FlutterFlowTheme.of(context).primaryButton,
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
                      wrapWithModel(
                        model: _model.iconButtonBadgePayBillsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconButtonBadgeWidget(
                          icon: Icon(
                            Icons.receipt_long,
                            color: widget.pageIndex == 6
                                ? Colors.white
                                : FlutterFlowTheme.of(context).bgThemeColor,
                            size: 24.0,
                          ),
                          buttonSize: 44.0,
                          backgroundColor: widget.pageIndex == 6
                              ? FlutterFlowTheme.of(context).primaryButton
                              : Color(0x00000000),
                          borderRadius: 100.0,
                          hoverStyle: IconButtonBadgeHoverStyleStruct(
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryButton,
                            iconColor: Colors.white,
                          ),
                          badgeColor: FlutterFlowTheme.of(context).error2,
                          title: 'Pay Bills',
                          titleColor: valueOrDefault<Color>(
                            widget.pageIndex == 6
                                ? FlutterFlowTheme.of(context).primaryButton
                                : FlutterFlowTheme.of(context).bgThemeColor,
                            FlutterFlowTheme.of(context).bgThemeColor,
                          ),
                          callback: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.iconButtonBadgeEBillingModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconButtonBadgeWidget(
                          icon: Icon(
                            Icons.qr_code_scanner_rounded,
                            color: valueOrDefault<Color>(
                              widget.pageIndex == 4
                                  ? FlutterFlowTheme.of(context).info
                                  : FlutterFlowTheme.of(context).bgThemeColor,
                              FlutterFlowTheme.of(context).bgThemeColor,
                            ),
                            size: 24.0,
                          ),
                          buttonSize: 44.0,
                          backgroundColor: widget.pageIndex == 4
                              ? FlutterFlowTheme.of(context).primaryButton
                              : Color(0x00000000),
                          borderRadius: 100.0,
                          hoverStyle: IconButtonBadgeHoverStyleStruct(
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryButton,
                            iconColor: Colors.white,
                          ),
                          badgeColor: FlutterFlowTheme.of(context).error2,
                          title: 'QR',
                          titleColor: valueOrDefault<Color>(
                            widget.pageIndex == 4
                                ? FlutterFlowTheme.of(context).primaryButton
                                : FlutterFlowTheme.of(context).bgThemeColor,
                            FlutterFlowTheme.of(context).bgThemeColor,
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
                        model: _model.iconButtonBadgeRecipientsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconButtonBadgeWidget(
                          icon: Icon(
                            Icons.people_outline_sharp,
                            color: valueOrDefault<Color>(
                              widget.pageIndex == 5
                                  ? FlutterFlowTheme.of(context).info
                                  : FlutterFlowTheme.of(context).bgThemeColor,
                              FlutterFlowTheme.of(context).bgThemeColor,
                            ),
                            size: 24.0,
                          ),
                          badgeCount: 99,
                          buttonSize: 44.0,
                          backgroundColor: widget.pageIndex == 5
                              ? FlutterFlowTheme.of(context).primaryButton
                              : Color(0x00000000),
                          borderRadius: 100.0,
                          hoverStyle: IconButtonBadgeHoverStyleStruct(
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryButton,
                            iconColor: Colors.white,
                          ),
                          badgeColor: FlutterFlowTheme.of(context).error2,
                          title: 'Recipients',
                          titleColor: valueOrDefault<Color>(
                            widget.pageIndex == 5
                                ? FlutterFlowTheme.of(context).primaryButton
                                : FlutterFlowTheme.of(context).bgThemeColor,
                            FlutterFlowTheme.of(context).bgThemeColor,
                          ),
                          callback: () async {},
                        ),
                      ),
                      wrapWithModel(
                        model: _model.iconButtonBadgeProfileModel,
                        updateCallback: () => safeSetState(() {}),
                        child: IconButtonBadgeWidget(
                          icon: Icon(
                            FFIcons.kaccountCircle,
                            color: valueOrDefault<Color>(
                              widget.pageIndex == 7
                                  ? FlutterFlowTheme.of(context).info
                                  : FlutterFlowTheme.of(context).bgThemeColor,
                              FlutterFlowTheme.of(context).bgThemeColor,
                            ),
                            size: 24.0,
                          ),
                          buttonSize: 44.0,
                          backgroundColor: widget.pageIndex == 7
                              ? FlutterFlowTheme.of(context).primaryButton
                              : Color(0x00000000),
                          borderRadius: 100.0,
                          hoverStyle: IconButtonBadgeHoverStyleStruct(
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryButton,
                            iconColor: Colors.white,
                          ),
                          badgeColor: FlutterFlowTheme.of(context).error2,
                          title: 'Account',
                          titleColor: valueOrDefault<Color>(
                            widget.pageIndex == 7
                                ? FlutterFlowTheme.of(context).primaryButton
                                : FlutterFlowTheme.of(context).bgThemeColor,
                            FlutterFlowTheme.of(context).bgThemeColor,
                          ),
                          callback: () async {
                            context.goNamed(
                              BlankPageCWidget.routeName,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
