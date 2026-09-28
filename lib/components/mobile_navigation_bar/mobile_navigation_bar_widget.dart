import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/components/quick_action_options_main_widget.dart';
import '/components/side_menu_item_widget/side_menu_item_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pay_bills/p_b_components/feature_flag_bottom_sheet/feature_flag_bottom_sheet_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'mobile_navigation_bar_model.dart';
export 'mobile_navigation_bar_model.dart';

class MobileNavigationBarWidget extends StatefulWidget {
  const MobileNavigationBarWidget({
    super.key,
    required this.pageIndex,
    bool? shouldHideBottomNav,
  }) : this.shouldHideBottomNav = shouldHideBottomNav ?? false;

  final int? pageIndex;
  final bool shouldHideBottomNav;

  @override
  State<MobileNavigationBarWidget> createState() =>
      _MobileNavigationBarWidgetState();
}

class _MobileNavigationBarWidgetState extends State<MobileNavigationBarWidget>
    with TickerProviderStateMixin {
  late MobileNavigationBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileNavigationBarModel());

    animationsMap.addAll({
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1360.0.ms,
            hz: 7,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 790.0.ms,
            color: Colors.white,
            angle: 0.524,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
          Semantics(
            label: 'Side-Nav Container',
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
              width: valueOrDefault<double>(
                FFAppState().isDrawerOpen
                    ? FFAppConstants.maxDrawerWidth
                    : FFAppConstants.minDrawerWidth,
                196.0,
              ),
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).neutral12,
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
                          Expanded(
                            child: Stack(
                              children: [
                                if (!FFAppState().isDrawerOpen)
                                  Semantics(
                                    label: 'Logo Image Min',
                                    child: Image.asset(
                                      'assets/images/fuueei.png',
                                      width: 56.0,
                                      height: 37.0,
                                      fit: BoxFit.fitHeight,
                                      alignment: Alignment(-1.0, 0.0),
                                    ),
                                  ),
                                if (FFAppState().isDrawerOpen)
                                  Semantics(
                                    label: 'Logo Image Max',
                                    child: Image.asset(
                                      'assets/images/fuueei.png',
                                      width: 172.0,
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
                            Semantics(
                              label: 'SideMenuItemWidget Dashboard',
                              child: wrapWithModel(
                                model: _model.sideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Dashboard',
                                  index: 1,
                                  isSelected: widget.pageIndex == 1,
                                  selectedIcon: Icon(
                                    Icons.home,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.home_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.goNamed(
                                      DashboardWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Dashboard',
                              child: wrapWithModel(
                                model: _model
                                    .manageAccountsSideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Accounts',
                                  index: 17,
                                  isSelected: widget.pageIndex == 17,
                                  selectedIcon: Icon(
                                    Icons.savings,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.savings_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.goNamed(
                                      ManageAccountPageWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Transfer',
                              child: wrapWithModel(
                                model: _model.sideMenuItemWidgetInboxModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Transfer',
                                  index: 5,
                                  isSelected: widget.pageIndex == 5,
                                  selectedIcon: Icon(
                                    Icons.send,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.send_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.goNamed(
                                      FundTransferOptionsPageWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Paybills',
                              child: wrapWithModel(
                                model: _model.bPSideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Pay Bill',
                                  index: 6,
                                  isSelected: widget.pageIndex == 6,
                                  selectedIcon: Icon(
                                    Icons.receipt_long,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.receipt_long_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.pushNamed(
                                      PayBillsPageWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Qr Payment',
                              child: wrapWithModel(
                                model: _model.qRSideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'QR Payment',
                                  index: 4,
                                  isSelected: widget.pageIndex == 4,
                                  selectedIcon: Icon(
                                    Icons.qr_code_rounded,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.qr_code_rounded,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    if (FFAppState()
                                        .FeatureFlagsAppstate
                                        .retailQrPayments) {
                                      context.pushNamed(
                                        QRScannerPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  FeatureFlagBottomSheetWidget(
                                                callBack: () async {},
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget History',
                              child: wrapWithModel(
                                model: _model.historySideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'History',
                                  index: 10,
                                  isSelected: widget.pageIndex == 10,
                                  selectedIcon: Icon(
                                    Icons.history,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.history,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.pushNamed(
                                      TransactionHistoryV2Widget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Manage Loans',
                              child: wrapWithModel(
                                model: _model.loansSideMenuItemWidgetModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Manage Loans',
                                  index: 11,
                                  isSelected: widget.pageIndex == 11,
                                  selectedIcon: Icon(
                                    Icons.fact_check,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.fact_check_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    if (FFAppState()
                                        .FeatureFlagsAppstate
                                        .retailLoans) {
                                      context.pushNamed(
                                        ManageLoansPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  FeatureFlagBottomSheetWidget(
                                                callBack: () async {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Settings',
                              child: wrapWithModel(
                                model: _model.settingsSideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Settings',
                                  index: 12,
                                  isSelected: widget.pageIndex == 12,
                                  selectedIcon: Icon(
                                    Icons.settings,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.settings_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.pushNamed(
                                      UserProfilePageWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Settings',
                              child: wrapWithModel(
                                model:
                                    _model.investmentsSideMenuItemWidgetModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Investments',
                                  index: 17,
                                  isSelected: widget.pageIndex == 17,
                                  selectedIcon: Icon(
                                    Icons.bar_chart,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    FFIcons.kbarChart,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    if (FFAppState()
                                        .FeatureFlagsAppstate
                                        .retailInvestments) {
                                      context.pushNamed(
                                        InvestmentSummaryPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  FeatureFlagBottomSheetWidget(
                                                callBack: () async {},
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Time Deposits',
                              child: wrapWithModel(
                                model: _model.loansSideMenuItemWidgetModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Time Deposit',
                                  index: 13,
                                  isSelected: widget.pageIndex == 13,
                                  selectedIcon: Icon(
                                    Icons.access_time,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.timer_rounded,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.pushNamed(
                                      ManageTermDepositPageWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Cheque Book',
                              child: wrapWithModel(
                                model: _model.loansSideMenuItemWidgetModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Chequebook',
                                  index: 14,
                                  isSelected: widget.pageIndex == 14,
                                  selectedIcon: Icon(
                                    Icons.newspaper_sharp,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.newspaper_sharp,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    context.pushNamed(
                                      ChequeDepositPageWidget.routeName,
                                      extra: <String, dynamic>{
                                        '__transition_info__': TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Cheque Book',
                              child: wrapWithModel(
                                model: _model.loansSideMenuItemWidgetModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Report Problem',
                                  index: 15,
                                  isSelected: widget.pageIndex == 15,
                                  selectedIcon: Icon(
                                    Icons.report_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.report_rounded,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    if (FFAppState()
                                        .FeatureFlagsAppstate
                                        .retailSuspiciousActivityReports) {
                                      context.pushNamed(
                                        ReportProblemsPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  FeatureFlagBottomSheetWidget(
                                                callBack: () async {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }
                                  },
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'SideMenuItemWidget Cheque Book',
                              child: wrapWithModel(
                                model: _model.loansSideMenuItemWidgetModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: SideMenuItemWidgetWidget(
                                  title: 'Trust Product',
                                  index: 16,
                                  isSelected: widget.pageIndex == 16,
                                  selectedIcon: Icon(
                                    Icons.work_history_outlined,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  defaultIcon: Icon(
                                    Icons.work_history_rounded,
                                    color: Color(0xFF6A7072),
                                    size: 20.0,
                                  ),
                                  callback: () async {
                                    if (FFAppState()
                                        .FeatureFlagsAppstate
                                        .retailTrustProductRequests) {
                                      context.pushNamed(
                                        ApplyTrustProductPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    } else {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  FeatureFlagBottomSheetWidget(
                                                callBack: () async {
                                                  Navigator.pop(context);
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }
                                  },
                                ),
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(29.0, 0.0, 16.0, 16.0),
                      child: Semantics(
                        label: 'Side Drawer Toggle Button',
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().isDrawerOpen =
                                !(FFAppState().isDrawerOpen ?? true);
                            FFAppState().update(() {});
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Semantics(
                                  label: 'toggle_drawer_Icon',
                                  child: FaIcon(
                                    FontAwesomeIcons.bars,
                                    color: Color(0xFF606A85),
                                    size: 20.0,
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
            ),
          ),
        if (!widget.shouldHideBottomNav &&
            responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Semantics(
              label: 'Mobile Navigation Bar Stack',
              child: Container(
                height: 125.0,
                child: Stack(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Semantics(
                          label: 'Mobile-Nav Container',
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: FFAppConstants.MobileNavBarHeight,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 25.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Semantics(
                                    label: 'IconButtonBadge-Home',
                                    child: wrapWithModel(
                                      model: _model.iconButtonBadgeHomeModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: IconButtonBadgeWidget(
                                        icon: Icon(
                                          Icons.home_rounded,
                                          color: valueOrDefault<Color>(
                                            widget.pageIndex == 1
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .bgThemeColor,
                                            FlutterFlowTheme.of(context)
                                                .primaryButton,
                                          ),
                                          size: 24.0,
                                        ),
                                        buttonSize: 44.0,
                                        borderRadius: 100.0,
                                        badgeColor:
                                            FlutterFlowTheme.of(context).error2,
                                        title: 'Home',
                                        titleColor: valueOrDefault<Color>(
                                          widget.pageIndex == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .bgThemeColor,
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                        isLoadingShown: false,
                                        callback: () async {
                                          context.goNamed(
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
                                      ),
                                    ),
                                  ),
                                  Semantics(
                                    label: 'IconButtonBadge-Loans',
                                    child: wrapWithModel(
                                      model: _model.iconButtonBadgeInboxModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: IconButtonBadgeWidget(
                                        icon: Icon(
                                          Icons.receipt_long,
                                          color: valueOrDefault<Color>(
                                            widget.pageIndex == 11
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .bgThemeColor,
                                            Color(0xFFE3E3F5),
                                          ),
                                          size: 24.0,
                                        ),
                                        buttonSize: 44.0,
                                        backgroundColor: Color(0x00000000),
                                        borderRadius: 100.0,
                                        badgeColor:
                                            FlutterFlowTheme.of(context).error2,
                                        title: 'Loans',
                                        titleColor: valueOrDefault<Color>(
                                          widget.pageIndex == 11
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .bgThemeColor,
                                          FlutterFlowTheme.of(context)
                                              .bgThemeColor,
                                        ),
                                        isLoadingShown: false,
                                        callback: () async {
                                          if (FFAppState()
                                              .FeatureFlagsAppstate
                                              .retailLoans) {
                                            context.pushNamed(
                                                ManageLoansPageWidget
                                                    .routeName);
                                          } else {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        FeatureFlagBottomSheetWidget(
                                                      callBack: () async {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 44.0,
                                      height: 56.0,
                                      decoration: BoxDecoration(),
                                    ),
                                  ),
                                  Semantics(
                                    label: 'IconButtonBadge-Notifications',
                                    child: wrapWithModel(
                                      model:
                                          _model.iconButtonBadgeRecipientsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: IconButtonBadgeWidget(
                                        icon: Icon(
                                          Icons.notifications_sharp,
                                          color: widget.pageIndex == 3
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .bgThemeColor,
                                          size: 24.0,
                                        ),
                                        buttonSize: 44.0,
                                        backgroundColor: Color(0x00000000),
                                        borderRadius: 100.0,
                                        badgeColor:
                                            FlutterFlowTheme.of(context).error2,
                                        title: 'Notifications',
                                        titleColor: valueOrDefault<Color>(
                                          widget.pageIndex == 3
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .bgThemeColor,
                                          FlutterFlowTheme.of(context)
                                              .bgThemeColor,
                                        ),
                                        isLoadingShown: true,
                                        callback: () async {
                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            AlertsAnnouncementPageWidget
                                                .routeName,
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
                                      ),
                                    ),
                                  ),
                                  Semantics(
                                    label: 'IconButtonBadge-Profile',
                                    child: wrapWithModel(
                                      model: _model.iconButtonBadgeProfileModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: IconButtonBadgeWidget(
                                        icon: Icon(
                                          FFIcons.kaccountCircle,
                                          color: widget.pageIndex == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .bgThemeColor,
                                          size: 24.0,
                                        ),
                                        buttonSize: 44.0,
                                        backgroundColor: Color(0x00000000),
                                        borderRadius: 100.0,
                                        badgeColor:
                                            FlutterFlowTheme.of(context).error2,
                                        title: 'Profile',
                                        titleColor: valueOrDefault<Color>(
                                          widget.pageIndex == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .bgThemeColor,
                                          FlutterFlowTheme.of(context)
                                              .bgThemeColor,
                                        ),
                                        isLoadingShown: false,
                                        callback: () async {
                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            UserProfilePageWidget.routeName,
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
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => Semantics(
                          label: 'Quick Action Button Stack',
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showDialog(
                                barrierColor: Color(0xD0282727),
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: WebViewAware(
                                      child: QuickActionOptionsMainWidget(),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.09, -1.12),
                                  child: Builder(
                                    builder: (context) => Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 22.5, 0.0, 0.0),
                                      child: Semantics(
                                        label: 'Quick Action Button Image',
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showDialog(
                                              barrierColor: Color(0xD0282727),
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
                                                    child:
                                                        QuickActionOptionsMainWidget(),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Rectangle_9260_(3)_1_(1).png',
                                              width: 80.0,
                                              height: 60.0,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.71),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 50.0),
                          child: Semantics(
                            label: 'Quick Action Button Outer Image',
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (animationsMap[
                                        'imageOnActionTriggerAnimation'] !=
                                    null) {
                                  animationsMap[
                                          'imageOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                await showDialog(
                                  barrierColor: Color(0xD0282727),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: QuickActionOptionsMainWidget(),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Group_427318350_(2).png',
                                  width: 68.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['imageOnActionTriggerAnimation']!,
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
    );
  }
}
