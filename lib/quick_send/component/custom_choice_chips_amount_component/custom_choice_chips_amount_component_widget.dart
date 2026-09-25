import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'custom_choice_chips_amount_component_model.dart';
export 'custom_choice_chips_amount_component_model.dart';

class CustomChoiceChipsAmountComponentWidget extends StatefulWidget {
  const CustomChoiceChipsAmountComponentWidget({super.key});

  @override
  State<CustomChoiceChipsAmountComponentWidget> createState() =>
      _CustomChoiceChipsAmountComponentWidgetState();
}

class _CustomChoiceChipsAmountComponentWidgetState
    extends State<CustomChoiceChipsAmountComponentWidget> {
  late CustomChoiceChipsAmountComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CustomChoiceChipsAmountComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowChoiceChips(
      options: [
        ChipData('100'),
        ChipData('500'),
        ChipData('1,000'),
        ChipData('1,500'),
        ChipData('2,000')
      ],
      onChanged: (val) async {
        safeSetState(() => _model.choiceChipsValue = val?.firstOrNull);
        FFAppState().selectedAmount = _model.choiceChipsValue!;
        FFAppState().update(() {});
      },
      selectedChipStyle: ChipStyle(
        backgroundColor: Color(0xFFFB9934),
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: FlutterFlowTheme.of(context).info,
              fontSize: 18.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
            ),
        iconColor: FlutterFlowTheme.of(context).info,
        iconSize: 16.0,
        labelPadding: EdgeInsets.all(8.0),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(24.0),
      ),
      unselectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: FlutterFlowTheme.of(context).primary,
              fontSize: 18.0,
              letterSpacing: 0.0,
              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
            ),
        iconColor: FlutterFlowTheme.of(context).primary,
        iconSize: 16.0,
        labelPadding: EdgeInsets.all(8.0),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(24.0),
      ),
      chipSpacing: 7.0,
      rowSpacing: 7.0,
      multiselect: false,
      initialized: _model.choiceChipsValue != null,
      alignment: WrapAlignment.center,
      controller: _model.choiceChipsValueController ??=
          FormFieldController<List<String>>(
        ['100'],
      ),
      wrapped: true,
    );
  }
}
