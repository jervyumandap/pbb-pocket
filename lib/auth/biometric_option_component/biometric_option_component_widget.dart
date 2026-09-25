import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'biometric_option_component_model.dart';
export 'biometric_option_component_model.dart';

class BiometricOptionComponentWidget extends StatefulWidget {
  const BiometricOptionComponentWidget({
    super.key,
    required this.biometricAction,
    bool? isBiometricsEnabled,
    this.actionUsePassword,
    required this.token,
  }) : this.isBiometricsEnabled = isBiometricsEnabled ?? false;

  final Future Function()? biometricAction;
  final bool isBiometricsEnabled;
  final Future Function()? actionUsePassword;
  final String? token;

  @override
  State<BiometricOptionComponentWidget> createState() =>
      _BiometricOptionComponentWidgetState();
}

class _BiometricOptionComponentWidgetState
    extends State<BiometricOptionComponentWidget> {
  late BiometricOptionComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BiometricOptionComponentModel());

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
          if (valueOrDefault<bool>(
            widget.isBiometricsEnabled,
            false,
          ))
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await widget.biometricAction?.call();
              },
              child: Icon(
                Icons.fingerprint_outlined,
                color: FlutterFlowTheme.of(context).primary,
                size: 55.0,
              ),
            ),
          if (false)
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/segmentIcon.png',
                width: 1.0,
                height: 1.0,
                fit: BoxFit.cover,
              ),
            ),
        ].divide(SizedBox(height: 20.0)),
      ),
    );
  }
}
