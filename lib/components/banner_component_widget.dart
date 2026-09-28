import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'banner_component_model.dart';
export 'banner_component_model.dart';

class BannerComponentWidget extends StatefulWidget {
  const BannerComponentWidget({super.key});

  @override
  State<BannerComponentWidget> createState() => _BannerComponentWidgetState();
}

class _BannerComponentWidgetState extends State<BannerComponentWidget> {
  late BannerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BannerComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Stack',
      child: Stack(
        children: [
          Semantics(
            label: 'Image Container',
            child: Container(
              width: double.infinity,
              height: 143.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Group_427318339.png',
                  ).image,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
