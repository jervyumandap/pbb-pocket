import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'quick_send_loading_component_model.dart';
export 'quick_send_loading_component_model.dart';

class QuickSendLoadingComponentWidget extends StatefulWidget {
  const QuickSendLoadingComponentWidget({super.key});

  @override
  State<QuickSendLoadingComponentWidget> createState() =>
      _QuickSendLoadingComponentWidgetState();
}

class _QuickSendLoadingComponentWidgetState
    extends State<QuickSendLoadingComponentWidget> {
  late QuickSendLoadingComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuickSendLoadingComponentModel());

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
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                child: Container(
                  width: 167.38,
                  height: 167.38,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2F1F5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: AlignmentDirectional(1.0, 1.0),
                      image: Image.asset(
                        'assets/images/8m1544.png',
                      ).image,
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Lottie.asset(
          'assets/jsons/Up_Arrow.json',
          width: 109.3,
          height: 65.0,
          fit: BoxFit.contain,
          animate: true,
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            shape: BoxShape.circle,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              '',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 24.0)),
    );
  }
}
