import '/components/provider_tile_billers_component/provider_tile_billers_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'group_section_billers_component_model.dart';
export 'group_section_billers_component_model.dart';

class GroupSectionBillersComponentWidget extends StatefulWidget {
  const GroupSectionBillersComponentWidget({super.key});

  @override
  State<GroupSectionBillersComponentWidget> createState() =>
      _GroupSectionBillersComponentWidgetState();
}

class _GroupSectionBillersComponentWidgetState
    extends State<GroupSectionBillersComponentWidget> {
  late GroupSectionBillersComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroupSectionBillersComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 8.0),
            child: Text(
              'M',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ),
        ),
        ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            wrapWithModel(
              model: _model.providerTileBillersComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: ProviderTileBillersComponentWidget(),
            ),
          ],
        ),
      ],
    );
  }
}
