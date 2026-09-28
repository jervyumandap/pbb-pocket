import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'account_empty_state_model.dart';
export 'account_empty_state_model.dart';

class AccountEmptyStateWidget extends StatefulWidget {
  const AccountEmptyStateWidget({super.key});

  @override
  State<AccountEmptyStateWidget> createState() =>
      _AccountEmptyStateWidgetState();
}

class _AccountEmptyStateWidgetState extends State<AccountEmptyStateWidget> {
  late AccountEmptyStateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountEmptyStateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World',
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            letterSpacing: 0.0,
            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
          ),
    );
  }
}
