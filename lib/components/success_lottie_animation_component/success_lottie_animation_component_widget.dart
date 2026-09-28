import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'success_lottie_animation_component_model.dart';
export 'success_lottie_animation_component_model.dart';

class SuccessLottieAnimationComponentWidget extends StatefulWidget {
  const SuccessLottieAnimationComponentWidget({super.key});

  @override
  State<SuccessLottieAnimationComponentWidget> createState() =>
      _SuccessLottieAnimationComponentWidgetState();
}

class _SuccessLottieAnimationComponentWidgetState
    extends State<SuccessLottieAnimationComponentWidget> {
  late SuccessLottieAnimationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessLottieAnimationComponentModel());

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
      child: Lottie.asset(
        'assets/jsons/Payment_Successful.json',
        width: 400.0,
        height: 400.0,
        fit: BoxFit.contain,
        animate: true,
      ),
    );
  }
}
