import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'uper_right_image_model.dart';
export 'uper_right_image_model.dart';

class UperRightImageWidget extends StatefulWidget {
  const UperRightImageWidget({super.key});

  @override
  State<UperRightImageWidget> createState() => _UperRightImageWidgetState();
}

class _UperRightImageWidgetState extends State<UperRightImageWidget> {
  late UperRightImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UperRightImageModel());

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
      alignment: AlignmentDirectional(3.0, -1.3),
      child: Container(
        width: 320.0,
        height: 320.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: AlignmentDirectional(0.5, 0.0),
            image: Image.asset(
              'assets/images/mkbws7.png',
            ).image,
          ),
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0x3F00727D),
            width: 6.0,
          ),
        ),
      ),
    );
  }
}
