import '/backend/schema/structs/index.dart';
import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_web_app_bar_model.dart';
export 'custom_web_app_bar_model.dart';

class CustomWebAppBarWidget extends StatefulWidget {
  const CustomWebAppBarWidget({
    super.key,
    String? pageTitle,
    this.leftButtonIcon,
    this.leftButtonAction,
    this.midButtonIcon,
    this.midButtonAction,
    this.rightButtonIcon,
    this.rightButtonAction,
  }) : this.pageTitle = pageTitle ?? 'Page Title';

  final String pageTitle;
  final Widget? leftButtonIcon;
  final Future Function()? leftButtonAction;
  final Widget? midButtonIcon;
  final Future Function()? midButtonAction;
  final Widget? rightButtonIcon;
  final Future Function()? rightButtonAction;

  @override
  State<CustomWebAppBarWidget> createState() => _CustomWebAppBarWidgetState();
}

class _CustomWebAppBarWidgetState extends State<CustomWebAppBarWidget> {
  late CustomWebAppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomWebAppBarModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
        child: Semantics(
          label: 'AppBar Container',
          child: Container(
            width: double.infinity,
            height: FFAppConstants.WebAppBarHeight,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Semantics(
                      label: 'Back Button',
                      child: wrapWithModel(
                        model: _model.iconButtonBadgeAModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: IconButtonBadgeWidget(
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          buttonSize: 40.0,
                          backgroundColor: Colors.transparent,
                          borderRadius: 100.0,
                          hoverStyle: IconButtonBadgeHoverStyleStruct(
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryButton,
                            iconColor: Colors.white,
                          ),
                          badgeColor: FlutterFlowTheme.of(context).error2,
                          isLoadingShown: false,
                          callback: () async {
                            context.safePop();
                          },
                        ),
                      ),
                    ),
                    Text(
                      widget.pageTitle,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .titleLargeIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(width: 16.0)).around(SizedBox(width: 16.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (widget.leftButtonIcon != null)
                      Semantics(
                        label: 'IconButtonBadge-A',
                        child: wrapWithModel(
                          model: _model.iconButtonBadgeAModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: IconButtonBadgeWidget(
                            icon: widget.leftButtonIcon!,
                            buttonSize: 40.0,
                            backgroundColor: Color(0xFFF5F5F5),
                            borderRadius: 100.0,
                            hoverStyle: IconButtonBadgeHoverStyleStruct(
                              hoverColor:
                                  FlutterFlowTheme.of(context).primaryButton,
                              iconColor: Colors.white,
                            ),
                            badgeColor: FlutterFlowTheme.of(context).error2,
                            borderWidth: 1.0,
                            borderColor: Color(0xFFD9D9D9),
                            isLoadingShown: false,
                            callback: () async {
                              await widget.leftButtonAction?.call();
                            },
                          ),
                        ),
                      ),
                    if (widget.midButtonIcon != null)
                      Semantics(
                        label: 'IconButtonBadge-B',
                        child: wrapWithModel(
                          model: _model.iconButtonBadgeBModel,
                          updateCallback: () => safeSetState(() {}),
                          child: IconButtonBadgeWidget(
                            icon: widget.midButtonIcon!,
                            buttonSize: 40.0,
                            backgroundColor: Color(0xFFF5F5F5),
                            borderRadius: 100.0,
                            hoverStyle: IconButtonBadgeHoverStyleStruct(
                              hoverColor:
                                  FlutterFlowTheme.of(context).primaryButton,
                              iconColor: Colors.white,
                            ),
                            badgeColor: FlutterFlowTheme.of(context).error2,
                            borderWidth: 1.0,
                            borderColor: Color(0xFFD9D9D9),
                            callback: () async {
                              await widget.midButtonAction?.call();
                            },
                          ),
                        ),
                      ),
                    if (widget.rightButtonIcon != null)
                      Semantics(
                        label: 'IconButtonBadge-C',
                        child: wrapWithModel(
                          model: _model.iconButtonBadgeCModel,
                          updateCallback: () => safeSetState(() {}),
                          child: IconButtonBadgeWidget(
                            icon: widget.rightButtonIcon!,
                            buttonSize: 40.0,
                            backgroundColor: Color(0xFFF5F5F5),
                            borderRadius: 100.0,
                            hoverStyle: IconButtonBadgeHoverStyleStruct(
                              hoverColor:
                                  FlutterFlowTheme.of(context).primaryButton,
                              iconColor: Colors.white,
                            ),
                            badgeColor: FlutterFlowTheme.of(context).error2,
                            borderWidth: 1.0,
                            borderColor: Color(0xFFD9D9D9),
                            callback: () async {
                              await widget.rightButtonAction?.call();
                            },
                          ),
                        ),
                      ),
                  ].divide(SizedBox(width: 16.0)).around(SizedBox(width: 16.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
