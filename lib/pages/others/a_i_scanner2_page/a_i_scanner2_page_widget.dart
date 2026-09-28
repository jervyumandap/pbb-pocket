import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'a_i_scanner2_page_model.dart';
export 'a_i_scanner2_page_model.dart';

class AIScanner2PageWidget extends StatefulWidget {
  const AIScanner2PageWidget({super.key});

  static String routeName = 'AIScanner2Page';
  static String routePath = '/aIScanner2Page';

  @override
  State<AIScanner2PageWidget> createState() => _AIScanner2PageWidgetState();
}

class _AIScanner2PageWidgetState extends State<AIScanner2PageWidget> {
  late AIScanner2PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIScanner2PageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Semantics(
          label: 'AIScannerWidget',
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.AIScannerWidget(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
