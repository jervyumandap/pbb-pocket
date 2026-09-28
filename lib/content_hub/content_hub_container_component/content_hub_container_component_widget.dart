import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'content_hub_container_component_model.dart';
export 'content_hub_container_component_model.dart';

class ContentHubContainerComponentWidget extends StatefulWidget {
  const ContentHubContainerComponentWidget({
    super.key,
    this.title,
    this.category,
    this.noOfArticles,
  });

  final String? title;
  final String? category;
  final int? noOfArticles;

  @override
  State<ContentHubContainerComponentWidget> createState() =>
      _ContentHubContainerComponentWidgetState();
}

class _ContentHubContainerComponentWidgetState
    extends State<ContentHubContainerComponentWidget> {
  late ContentHubContainerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentHubContainerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Color(0xFFDAE3E5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Color(0xFFE6F7FB),
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0xFFE6F7FB),
                  width: 2.0,
                ),
              ),
              child: Icon(
                Icons.shield_outlined,
                color: Color(0xFF006B84),
                size: 22.0,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.title,
                'Protecting your account',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                '${widget.noOfArticles.toString()} articles',
                '4 articles',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
