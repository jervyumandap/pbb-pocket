import '/components/send_money_via_component/send_money_via_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'send_money_via_enrolled_list_component_model.dart';
export 'send_money_via_enrolled_list_component_model.dart';

class SendMoneyViaEnrolledListComponentWidget extends StatefulWidget {
  const SendMoneyViaEnrolledListComponentWidget({super.key});

  @override
  State<SendMoneyViaEnrolledListComponentWidget> createState() =>
      _SendMoneyViaEnrolledListComponentWidgetState();
}

class _SendMoneyViaEnrolledListComponentWidgetState
    extends State<SendMoneyViaEnrolledListComponentWidget> {
  late SendMoneyViaEnrolledListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => SendMoneyViaEnrolledListComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).whiteText,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color(0xFFF0F0F0),
                width: 1.0,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFB2E6E6),
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color(0xFFF0F0F0),
                width: 1.0,
              ),
            ),
          ),
          wrapWithModel(
            model: _model.sendMoneyViaComponentModel,
            updateCallback: () => safeSetState(() {}),
            child: SendMoneyViaComponentWidget(),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).whiteText,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color(0xFFF0F0F0),
                width: 1.0,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).whiteText,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Color(0xFFF0F0F0),
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Lucy See',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).appBarTitle,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 12.0,
                    buttonSize: 24.0,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: FlutterFlowTheme.of(context).appBarTitle,
                      size: 16.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
