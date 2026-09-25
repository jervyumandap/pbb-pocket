import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'biller_tile_component_model.dart';
export 'biller_tile_component_model.dart';

/// Biller list item
class BillerTileComponentWidget extends StatefulWidget {
  const BillerTileComponentWidget({
    super.key,
    required this.biller,
    this.image,
    this.tapAction,
    this.moreAction,
  });

  final WBSavedBillerStruct? biller;
  final String? image;
  final Future Function(WBSavedBillerStruct biller)? tapAction;
  final Future Function()? moreAction;

  @override
  State<BillerTileComponentWidget> createState() =>
      _BillerTileComponentWidgetState();
}

class _BillerTileComponentWidgetState extends State<BillerTileComponentWidget> {
  late BillerTileComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillerTileComponentModel());

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
      label: 'Biller-Item',
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.tapAction?.call(
            WBSavedBillerStruct(),
          );
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 43.0,
                    height: 43.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF1369A3),
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Semantics(
                        label: 'Initial-Text',
                        child: Text(
                          functions.extractInitials(widget.biller!.nickname),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        label: 'Biller-Name-Text',
                        child: Text(
                          valueOrDefault<String>(
                            widget.biller?.biller.name,
                            '-',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      if (valueOrDefault<String>(
                                widget.biller?.accountNumber,
                                '-',
                              ) !=
                              '')
                        Semantics(
                          label: 'Account-Number-Text',
                          child: Text(
                            '${valueOrDefault<String>(
                              widget.biller?.nickname,
                              '-',
                            )} - ${valueOrDefault<String>(
                              widget.biller?.accountNumber,
                              '-',
                            )}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Color(0xFF9F9F9F),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                        ),
                    ].divide(SizedBox(height: 5.0)),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
              Semantics(
                label: 'More-IconButton',
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: Colors.white,
                  icon: FaIcon(
                    FontAwesomeIcons.ellipsisV,
                    color: Color(0xFF027377),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await widget.moreAction?.call();
                  },
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
