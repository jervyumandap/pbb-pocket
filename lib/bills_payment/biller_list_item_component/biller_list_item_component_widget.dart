import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'biller_list_item_component_model.dart';
export 'biller_list_item_component_model.dart';

class BillerListItemComponentWidget extends StatefulWidget {
  const BillerListItemComponentWidget({
    super.key,
    required this.billerInfo,
    this.callback,
  });

  final BillerInfoStruct? billerInfo;
  final Future Function()? callback;

  @override
  State<BillerListItemComponentWidget> createState() =>
      _BillerListItemComponentWidgetState();
}

class _BillerListItemComponentWidgetState
    extends State<BillerListItemComponentWidget> {
  late BillerListItemComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillerListItemComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await widget.callback?.call();
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: valueOrDefault<Color>(
                _model.mouseRegionHovered
                    ? FlutterFlowTheme.of(context).menuHover
                    : FlutterFlowTheme.of(context).secondaryBackground,
                Colors.white,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 12.0, 8.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.billerInfo?.billerName,
                          'ASCGEN',
                        ),
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .titleSmallIsCustom,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.billerInfo?.billerCode,
                          'AMAIA SCAPES GENTRI HOAI',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodySmallIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(height: 5.0)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
