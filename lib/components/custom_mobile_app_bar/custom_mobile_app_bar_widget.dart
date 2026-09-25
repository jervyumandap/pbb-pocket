import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_mobile_app_bar_model.dart';
export 'custom_mobile_app_bar_model.dart';

class CustomMobileAppBarWidget extends StatefulWidget {
  const CustomMobileAppBarWidget({
    super.key,
    this.pageTitle,
    this.rightButtonIcon,
    this.rightButtonAction,
    this.leftButtonIcon,
    this.leftButtonAction,
    this.midRightButtonIcon,
    this.midRightButtonAction,
    this.backgroudColor,
    Color? titleColor,
    Color? buttonColor,
    bool? buttonWithoutBackground,
    this.btnWOBgIcon,
    this.btnWOBgColor,
    this.btnWOBgIconSize,
    bool? isTitleLeftAlign,
    this.titleLeftAlign,
    Color? textLeftAlignColor,
  })  : this.titleColor = titleColor ?? const Color(0xFF1E1E1E),
        this.buttonColor = buttonColor ?? const Color(0xFF00A8CF),
        this.buttonWithoutBackground = buttonWithoutBackground ?? false,
        this.isTitleLeftAlign = isTitleLeftAlign ?? false,
        this.textLeftAlignColor = textLeftAlignColor ?? const Color(0xFF364153);

  final String? pageTitle;
  final Widget? rightButtonIcon;
  final Future Function()? rightButtonAction;
  final Widget? leftButtonIcon;
  final Future Function()? leftButtonAction;
  final Widget? midRightButtonIcon;
  final Future Function()? midRightButtonAction;
  final Color? backgroudColor;
  final Color titleColor;
  final Color buttonColor;
  final bool buttonWithoutBackground;
  final Widget? btnWOBgIcon;
  final Color? btnWOBgColor;
  final double? btnWOBgIconSize;
  final bool isTitleLeftAlign;
  final String? titleLeftAlign;
  final Color textLeftAlignColor;

  @override
  State<CustomMobileAppBarWidget> createState() =>
      _CustomMobileAppBarWidgetState();
}

class _CustomMobileAppBarWidgetState extends State<CustomMobileAppBarWidget> {
  late CustomMobileAppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomMobileAppBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        height: valueOrDefault<double>(
          FFAppConstants.MobileAppBarHeight,
          95.0,
        ),
        decoration: BoxDecoration(
          color: widget.backgroudColor,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 40.0, 16.0, 0.0),
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (widget.pageTitle != null && widget.pageTitle != '')
                    Text(
                      valueOrDefault<String>(
                        widget.pageTitle,
                        'Page Title',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: widget.titleColor,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                    ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // this row can have 1 more button
                  Semantics(
                    label: 'Left Aligned Row',
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (widget.buttonWithoutBackground)
                          Semantics(
                            label: 'Back Button',
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await widget.leftButtonAction?.call();
                              },
                              child: widget.btnWOBgIcon!,
                            ),
                          ),
                        if ((widget.leftButtonIcon != null) &&
                            !widget.buttonWithoutBackground)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                1.0, 0.0, 0.0, 0.0),
                            child: Semantics(
                              label: 'back_button',
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(),
                                child: Semantics(
                                  label: 'second_back_button',
                                  child: FlutterFlowIconButton(
                                    borderRadius: 100.0,
                                    buttonSize: double.infinity,
                                    fillColor: valueOrDefault<Color>(
                                      widget.buttonColor,
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                    icon: widget.leftButtonIcon!,
                                    onPressed: () async {
                                      await widget.leftButtonAction?.call();
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (widget.isTitleLeftAlign)
                          Semantics(
                            label: 'Left Aligned Page Title Text',
                            child: Text(
                              valueOrDefault<String>(
                                widget.titleLeftAlign,
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: widget.textLeftAlignColor,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                            ),
                          ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // this row can have 1 more button
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget.midRightButtonIcon != null)
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Semantics(
                                label: 'MidRightIconButton',
                                child: FlutterFlowIconButton(
                                  borderRadius: 100.0,
                                  buttonSize: double.infinity,
                                  fillColor: valueOrDefault<Color>(
                                    widget.buttonColor,
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                  icon: widget.midRightButtonIcon!,
                                  onPressed: () async {
                                    await widget.midRightButtonAction?.call();
                                  },
                                ),
                              ),
                            ),
                        ].divide(SizedBox(width: 15.0)),
                      ),

                      // this row can have 1 more button
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (widget.rightButtonIcon != null)
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Semantics(
                                label: 'RightIconButton',
                                child: FlutterFlowIconButton(
                                  borderRadius: 100.0,
                                  buttonSize: double.infinity,
                                  fillColor: valueOrDefault<Color>(
                                    widget.buttonColor,
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                  icon: widget.rightButtonIcon!,
                                  onPressed: () async {
                                    await widget.rightButtonAction?.call();
                                  },
                                ),
                              ),
                            ),
                        ].divide(SizedBox(width: 15.0)),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
