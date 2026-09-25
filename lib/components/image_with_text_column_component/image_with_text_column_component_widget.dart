import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_with_text_column_component_model.dart';
export 'image_with_text_column_component_model.dart';

class ImageWithTextColumnComponentWidget extends StatefulWidget {
  const ImageWithTextColumnComponentWidget({super.key});

  @override
  State<ImageWithTextColumnComponentWidget> createState() =>
      _ImageWithTextColumnComponentWidgetState();
}

class _ImageWithTextColumnComponentWidgetState
    extends State<ImageWithTextColumnComponentWidget> {
  late ImageWithTextColumnComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageWithTextColumnComponentModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.0,
            height: 50.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/images-removebg-preview.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'MERALCO',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
