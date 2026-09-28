import '/components/icon_button_badge/icon_button_badge_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'side_menu_item_widget_model.dart';
export 'side_menu_item_widget_model.dart';

/// Side drawer menu item
class SideMenuItemWidgetWidget extends StatefulWidget {
  const SideMenuItemWidgetWidget({
    super.key,
    required this.title,
    int? index,
    int? notifCount,
    bool? isSelected,
    required this.selectedIcon,
    this.callback,
    required this.defaultIcon,
    double? borderRadius,
  })  : this.index = index ?? 1,
        this.notifCount = notifCount ?? 0,
        this.isSelected = isSelected ?? false,
        this.borderRadius = borderRadius ?? 12.0;

  final String? title;
  final int index;
  final int notifCount;
  final bool isSelected;

  /// for selected / hovered
  final Widget? selectedIcon;

  /// Navigate to page, perform action, fetch api
  final Future Function()? callback;

  final Widget? defaultIcon;
  final double borderRadius;

  @override
  State<SideMenuItemWidgetWidget> createState() =>
      _SideMenuItemWidgetWidgetState();
}

class _SideMenuItemWidgetWidgetState extends State<SideMenuItemWidgetWidget> {
  late SideMenuItemWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideMenuItemWidgetModel());

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

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Stack(
        children: [
          if (FFAppState().isDrawerOpen)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await widget.callback?.call();
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear,
                  width: double.infinity,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.menuItemMouseRegionHovered || widget.isSelected
                          ? FlutterFlowTheme.of(context).menuHover
                          : FlutterFlowTheme.of(context).neutral12,
                      FlutterFlowTheme.of(context).neutral12,
                    ),
                    borderRadius: BorderRadius.circular(valueOrDefault<double>(
                      widget.borderRadius,
                      12.0,
                    )),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Builder(
                          builder: (context) {
                            if (_model.menuItemMouseRegionHovered ||
                                widget.isSelected) {
                              return Container(
                                key: ValueKey(widget.title!),
                                child: widget.selectedIcon!,
                              );
                            } else {
                              return Container(
                                key: ValueKey(widget.title!),
                                child: widget.defaultIcon!,
                              );
                            }
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 0.0, 0.0, 0.0),
                          child: AutoSizeText(
                            valueOrDefault<String>(
                              widget.title,
                              'Notification',
                            ),
                            minFontSize: 12.0,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  color: valueOrDefault<Color>(
                                    _model.menuItemMouseRegionHovered ||
                                            widget.isSelected
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryLabel
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    FlutterFlowTheme.of(context).primaryText,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        if (widget.notifCount >= 1)
                          Container(
                            height: 24.0,
                            constraints: BoxConstraints(
                              minWidth: 24.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(100.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 8.0, 4.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.notifCount.toString(),
                                    '1',
                                  ).maybeHandleOverflow(
                                    maxChars: 14,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .whiteText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
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
          if (!FFAppState().isDrawerOpen)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.iconButtonBadgeModel,
                updateCallback: () => safeSetState(() {}),
                child: IconButtonBadgeWidget(
                  icon: _model.menuItemMouseRegionHovered || widget.isSelected
                      ? widget.selectedIcon!
                      : widget.defaultIcon!,
                  badgeCount: valueOrDefault<int>(
                    widget.notifCount,
                    0,
                  ),
                  buttonSize: 44.0,
                  backgroundColor: valueOrDefault<Color>(
                    _model.menuItemMouseRegionHovered || widget.isSelected
                        ? FlutterFlowTheme.of(context).menuHover
                        : FlutterFlowTheme.of(context).neutral12,
                    FlutterFlowTheme.of(context).neutral12,
                  ),
                  borderRadius: valueOrDefault<double>(
                    widget.borderRadius,
                    12.0,
                  ),
                  callback: () async {
                    await widget.callback?.call();
                  },
                ),
              ),
            ),
        ],
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.menuItemMouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.menuItemMouseRegionHovered = false);
      }),
    );
  }
}
