import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pin_component_model.dart';
export 'pin_component_model.dart';

class PinComponentWidget extends StatefulWidget {
  const PinComponentWidget({
    super.key,
    required this.callback,
  });

  final Future Function()? callback;

  @override
  State<PinComponentWidget> createState() => _PinComponentWidgetState();
}

class _PinComponentWidgetState extends State<PinComponentWidget> {
  late PinComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PinComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Semantics(
                label: 'Entered Pin Container',
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: (String pinLength) {
                      return pinLength.length >= 1;
                    }(FFAppState().pinInput)
                        ? Color(0xFF5C6466)
                        : Color(0xFFDAE3E5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Semantics(
                label: 'Entered Pin Container 2',
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: (String pinLength) {
                      return pinLength.length >= 2;
                    }(FFAppState().pinInput)
                        ? Color(0xFF5C6466)
                        : Color(0xFFDAE3E5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Semantics(
                label: 'Entered Pin Container 3',
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: (String pinLength) {
                      return pinLength.length >= 3;
                    }(FFAppState().pinInput)
                        ? Color(0xFF5C6466)
                        : Color(0xFFDAE3E5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Semantics(
                label: 'Entered Pin Container 4',
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  decoration: BoxDecoration(
                    color: (String pinLength) {
                      return pinLength.length >= 4;
                    }(FFAppState().pinInput)
                        ? Color(0xFF5C6466)
                        : Color(0xFFDAE3E5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ].divide(SizedBox(width: 18.0)),
          ),
          if (FFAppState().pinIsIncorrect)
            Text(
              'Pin is incorrect',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).error2,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 36.5, 0.0, 0.0),
              child: Builder(
                builder: (context) {
                  final numberList = _model.keyNumbers.toList();

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 24.0,
                      childAspectRatio: 1.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: numberList.length,
                    itemBuilder: (context, numberListIndex) {
                      final numberListItem = numberList[numberListIndex];
                      return Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Semantics(
                          label: 'Pin Stack',
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Semantics(
                                label: 'Button Pin',
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if ((numberListItem != 'back') &&
                                        (numberListItem != 'C')) {
                                      FFAppState().pinInput =
                                          '${FFAppState().pinInput}${numberListItem}';
                                      safeSetState(() {});
                                    } else if (numberListItem == 'C') {
                                      FFAppState().pinInput = '';
                                      safeSetState(() {});
                                    } else {
                                      FFAppState().pinInput = (String input) {
                                        return input.isNotEmpty
                                            ? input.substring(
                                                0, input.length - 1)
                                            : "";
                                      }(FFAppState().pinInput);
                                      FFAppState().update(() {});
                                    }

                                    if (FFAppState().pinInput.length == 4) {
                                      await widget.callback?.call();
                                    }
                                    safeSetState(() {});
                                  },
                                  text: numberListItem != 'back'
                                      ? valueOrDefault<String>(
                                          numberListItem,
                                          '1',
                                        )
                                      : '',
                                  options: FFButtonOptions(
                                    width: 72.0,
                                    height: 72.0,
                                    padding: EdgeInsets.all(0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: valueOrDefault<Color>(
                                      numberListItem == 'back'
                                          ? Colors.transparent
                                          : Color(0x0000727D),
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Color(0xFFDAE3E5),
                                      width: 0.84,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              if (numberListItem == 'back')
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Semantics(
                                    label: 'Pin Image',
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().pinInput = (String input) {
                                          return input.isNotEmpty
                                              ? input.substring(
                                                  0, input.length - 1)
                                              : "";
                                        }(FFAppState().pinInput);
                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Keyboard.png',
                                          width: 22.0,
                                          height: 22.0,
                                          fit: BoxFit.cover,
                                          alignment: Alignment(0.0, 0.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
