import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'image_component_model.dart';
export 'image_component_model.dart';

class ImageComponentWidget extends StatefulWidget {
  const ImageComponentWidget({
    super.key,
    bool? isWithUsername,
    required this.username,
  }) : this.isWithUsername = isWithUsername ?? true;

  final bool isWithUsername;
  final String? username;

  @override
  State<ImageComponentWidget> createState() => _ImageComponentWidgetState();
}

class _ImageComponentWidgetState extends State<ImageComponentWidget> {
  late ImageComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageComponentModel());

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
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/image_(2).png',
              fit: BoxFit.cover,
            ),
          ),
          if (widget.isWithUsername)
            Text(
              functions.maskLastThreeLetters(widget.username!),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
        ].divide(SizedBox(height: 16.0)),
      ),
    );
  }
}
