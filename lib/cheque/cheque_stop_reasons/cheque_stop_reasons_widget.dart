import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cheque_stop_reasons_model.dart';
export 'cheque_stop_reasons_model.dart';

class ChequeStopReasonsWidget extends StatefulWidget {
  const ChequeStopReasonsWidget({
    super.key,
    required this.stopReasons,
    required this.selectReason,
  });

  final List<StopChequeReasonsStruct>? stopReasons;
  final Future Function(String? selectedReason)? selectReason;

  @override
  State<ChequeStopReasonsWidget> createState() =>
      _ChequeStopReasonsWidgetState();
}

class _ChequeStopReasonsWidgetState extends State<ChequeStopReasonsWidget> {
  late ChequeStopReasonsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChequeStopReasonsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      thickness: 5.0,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  Text(
                    'Select Reason',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  Builder(
                    builder: (context) {
                      final selectionItemList = widget.stopReasons!.toList();

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(selectionItemList.length,
                            (selectionItemListIndex) {
                          final selectionItemListItem =
                              selectionItemList[selectionItemListIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await widget.selectReason?.call(
                                selectionItemListItem.reason,
                              );
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 55.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Color(0xFF77BBBD),
                                  width: 1.0,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    selectionItemListItem.reason,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF027377),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).divide(SizedBox(height: 10.0)),
                      );
                    },
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Align(
            alignment: AlignmentDirectional(1.0, 1.0),
            child: Container(
              width: 398.0,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 30.0,
                      child: Divider(
                        thickness: 5.0,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    Text(
                      'Select Reason',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                    Builder(
                      builder: (context) {
                        final selectionItemList = widget.stopReasons!.toList();

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(selectionItemList.length,
                              (selectionItemListIndex) {
                            final selectionItemListItem =
                                selectionItemList[selectionItemListIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await widget.selectReason?.call(
                                  selectionItemListItem.reason,
                                );
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: Color(0xFF77BBBD),
                                    width: 1.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      selectionItemListItem.reason,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFF027377),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).divide(SizedBox(height: 10.0)),
                        );
                      },
                    ),
                  ].divide(SizedBox(height: 20.0)),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
