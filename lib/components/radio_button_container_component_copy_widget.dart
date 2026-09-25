import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'radio_button_container_component_copy_model.dart';
export 'radio_button_container_component_copy_model.dart';

class RadioButtonContainerComponentCopyWidget extends StatefulWidget {
  const RadioButtonContainerComponentCopyWidget({
    super.key,
    bool? isSelected,
    this.text,
    this.callback,
  }) : this.isSelected = isSelected ?? false;

  final bool isSelected;
  final String? text;
  final Future Function()? callback;

  @override
  State<RadioButtonContainerComponentCopyWidget> createState() =>
      _RadioButtonContainerComponentCopyWidgetState();
}

class _RadioButtonContainerComponentCopyWidgetState
    extends State<RadioButtonContainerComponentCopyWidget> {
  late RadioButtonContainerComponentCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => RadioButtonContainerComponentCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.callback?.call();
        },
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxHeight: 500.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Color(0xFFE4E8EE),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(14.0, 8.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 22.0,
                  height: 22.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 3.0,
                    ),
                  ),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      color: widget.isSelected
                          ? FlutterFlowTheme.of(context).primary
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    minWidth: 100.0,
                    maxWidth: 300.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(),
                  ),
                  child: Text(
                    valueOrDefault<String>(
                      widget.text,
                      'Lost',
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF1A2433),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
              ].divide(SizedBox(width: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
