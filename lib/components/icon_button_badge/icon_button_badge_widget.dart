import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'icon_button_badge_model.dart';
export 'icon_button_badge_model.dart';

/// Create a button icon with notification badge in top right corner
class IconButtonBadgeWidget extends StatefulWidget {
  const IconButtonBadgeWidget({
    super.key,
    required this.icon,
    int? badgeCount,
    double? buttonSize,
    this.callback,
    this.backgroundColor,
    double? borderRadius,
    this.hoverStyle,
    Color? badgeColor,
    double? borderWidth,
    Color? borderColor,
    this.title,
    Color? titleColor,
    bool? isLoadingShown,
  })  : this.badgeCount = badgeCount ?? 0,
        this.buttonSize = buttonSize ?? 56.0,
        this.borderRadius = borderRadius ?? 12.0,
        this.badgeColor = badgeColor ?? const Color(0xFF00AAA5),
        this.borderWidth = borderWidth ?? 0.0,
        this.borderColor = borderColor ?? Colors.transparent,
        this.titleColor = titleColor ?? const Color(0xFFFAFAFA),
        this.isLoadingShown = isLoadingShown ?? false;

  final Widget? icon;
  final int badgeCount;
  final double buttonSize;
  final Future Function()? callback;
  final Color? backgroundColor;
  final double borderRadius;
  final IconButtonBadgeHoverStyleStruct? hoverStyle;
  final Color badgeColor;
  final double borderWidth;
  final Color borderColor;

  /// Button title - used in bottom nav menu
  final String? title;

  final Color titleColor;
  final bool isLoadingShown;

  @override
  State<IconButtonBadgeWidget> createState() => _IconButtonBadgeWidgetState();
}

class _IconButtonBadgeWidgetState extends State<IconButtonBadgeWidget> {
  late IconButtonBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconButtonBadgeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: valueOrDefault<double>(
            widget.buttonSize,
            56.0,
          ),
          height: valueOrDefault<double>(
            widget.buttonSize,
            56.0,
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: valueOrDefault<Color>(
                    widget.borderColor,
                    Colors.transparent,
                  ),
                  borderRadius: valueOrDefault<double>(
                    widget.borderRadius,
                    100.0,
                  ),
                  borderWidth: valueOrDefault<double>(
                    widget.borderWidth,
                    0.0,
                  ),
                  buttonSize: valueOrDefault<double>(
                    widget.buttonSize,
                    44.0,
                  ),
                  fillColor: widget.backgroundColor,
                  hoverColor: valueOrDefault<Color>(
                    widget.hoverStyle?.hoverColor,
                    FlutterFlowTheme.of(context).menuHover,
                  ),
                  hoverIconColor: valueOrDefault<Color>(
                    widget.hoverStyle?.iconColor,
                    FlutterFlowTheme.of(context).secondary,
                  ),
                  icon: widget.icon!,
                  showLoadingIndicator: widget.isLoadingShown,
                  onPressed: () async {
                    await widget.callback?.call();
                  },
                ),
              ),
              if (widget.badgeCount >= 1)
                Align(
                  alignment: AlignmentDirectional(1.1, -1.1),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.badgeColor,
                        FlutterFlowTheme.of(context).secondary,
                      ),
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.badgeCount.toString(),
                        '1',
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodySmallFamily,
                            color: FlutterFlowTheme.of(context).whiteText,
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodySmallIsCustom,
                          ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (widget.title != null && widget.title != '')
          AutoSizeText(
            valueOrDefault<String>(
              widget.title,
              'Sample Label',
            ),
            textAlign: TextAlign.center,
            minFontSize: 7.0,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                  color: valueOrDefault<Color>(
                    widget.titleColor,
                    FlutterFlowTheme.of(context).neutral12,
                  ),
                  fontSize: 10.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodySmallIsCustom,
                ),
            overflow: TextOverflow.ellipsis,
          ),
      ],
    );
  }
}
