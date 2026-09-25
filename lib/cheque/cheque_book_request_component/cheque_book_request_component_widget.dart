import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cheque_book_request_component_model.dart';
export 'cheque_book_request_component_model.dart';

class ChequeBookRequestComponentWidget extends StatefulWidget {
  const ChequeBookRequestComponentWidget({
    super.key,
    bool? isRequestLimitReached,
  }) : this.isRequestLimitReached = isRequestLimitReached ?? false;

  final bool isRequestLimitReached;

  @override
  State<ChequeBookRequestComponentWidget> createState() =>
      _ChequeBookRequestComponentWidgetState();
}

class _ChequeBookRequestComponentWidgetState
    extends State<ChequeBookRequestComponentWidget> {
  late ChequeBookRequestComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChequeBookRequestComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: widget.isRequestLimitReached
                ? Color(0xFFF9F9F9)
                : Color(0xFFF0F7F7),
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: widget.isRequestLimitReached
                  ? Color(0xFFC4C4C4)
                  : FlutterFlowTheme.of(context).primary,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Request Cheque book',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: widget.isRequestLimitReached
                                    ? Color(0xFF252525)
                                    : Color(0xFF002C75),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                        Text(
                          'Order a new cheque book linked to \nyour account',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF939FA3),
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFF027377),
                      size: 16.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
