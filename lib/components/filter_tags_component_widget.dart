import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'filter_tags_component_model.dart';
export 'filter_tags_component_model.dart';

class FilterTagsComponentWidget extends StatefulWidget {
  const FilterTagsComponentWidget({
    super.key,
    String? label,
    this.callback,
    bool? hideCloseButton,
    this.closeCallback,
    bool? isActive,
  })  : this.label = label ?? 'Send Money',
        this.hideCloseButton = hideCloseButton ?? false,
        this.isActive = isActive ?? false;

  final String label;
  final Future Function()? callback;

  /// Whether the filter options can be removed.
  final bool hideCloseButton;

  final Future Function()? closeCallback;
  final bool isActive;

  @override
  State<FilterTagsComponentWidget> createState() =>
      _FilterTagsComponentWidgetState();
}

class _FilterTagsComponentWidgetState extends State<FilterTagsComponentWidget>
    with TickerProviderStateMixin {
  late FilterTagsComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterTagsComponentModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.callback?.call();
      },
      child: Container(
        height: 32.0,
        decoration: BoxDecoration(
          color: widget.isActive
              ? Color(0xFFE8FBFF)
              : FlutterFlowTheme.of(context).neutral10,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Semantics(
                  label: 'filter_text_name',
                  child: Text(
                    widget.label,
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelSmallFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelSmallIsCustom,
                        ),
                  ),
                ),
              ),
              if (!widget.hideCloseButton)
                Semantics(
                  label: 'filter_icon_i',
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await widget.closeCallback?.call();
                    },
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 14.0,
                    ),
                  ),
                ),
            ].divide(SizedBox(width: 5.0)),
          ),
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
