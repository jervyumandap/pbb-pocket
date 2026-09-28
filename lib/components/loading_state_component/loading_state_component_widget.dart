import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'loading_state_component_model.dart';
export 'loading_state_component_model.dart';

class LoadingStateComponentWidget extends StatefulWidget {
  const LoadingStateComponentWidget({
    super.key,
    bool? isFinished,
  }) : this.isFinished = isFinished ?? false;

  final bool isFinished;

  @override
  State<LoadingStateComponentWidget> createState() =>
      _LoadingStateComponentWidgetState();
}

class _LoadingStateComponentWidgetState
    extends State<LoadingStateComponentWidget> {
  late LoadingStateComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingStateComponentModel());

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
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(),
        child: Container(
          width: 0.0,
          height: 20.0,
          decoration: BoxDecoration(),
          child: Lottie.asset(
            'assets/jsons/Loading_Lottie_animation.json',
            width: 0.0,
            height: 0.0,
            fit: BoxFit.contain,
            animate: true,
          ),
        ),
      ),
    );
  }
}
