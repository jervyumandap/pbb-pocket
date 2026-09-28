import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'add_beneficiary_component_model.dart';
export 'add_beneficiary_component_model.dart';

/// New Component Gen
class AddBeneficiaryComponentWidget extends StatefulWidget {
  const AddBeneficiaryComponentWidget({super.key});

  @override
  State<AddBeneficiaryComponentWidget> createState() =>
      _AddBeneficiaryComponentWidgetState();
}

class _AddBeneficiaryComponentWidgetState
    extends State<AddBeneficiaryComponentWidget> {
  late AddBeneficiaryComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddBeneficiaryComponentModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1. You can add up to 10 new beneficiaries in a day',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Container(
                  width: double.infinity,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color(0xFFCCC9C9),
                      width: 0.3,
                    ),
                  ),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: [
                      'Philippine Business Bank',
                      'UnionBank of The Philippines',
                      'Gcash / G-Exchange'
                    ],
                    onChanged: (val) =>
                        safeSetState(() => _model.dropDownValue = val),
                    width: 200.0,
                    height: 40.0,
                    searchHintTextStyle: FlutterFlowTheme.of(context)
                        .labelMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).labelMediumFamily,
                          color: Color(0xFF72777A),
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).labelMediumIsCustom,
                        ),
                    searchTextStyle: FlutterFlowTheme.of(context)
                        .bodyMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF72777A),
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                    hintText: 'Transfer Type',
                    searchHintText: 'Search...',
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xFF131214),
                      size: 24.0,
                    ),
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 0.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    hidesUnderline: true,
                    isOverButton: false,
                    isSearchable: true,
                    isMultiSelect: false,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.accountNameTextfieldModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: PrimaryTextFieldComponentWidget(
                      textfieldTitle: 'Enter Account Name',
                      maxLines: 1,
                      lineHeight: 1,
                      action: () async {},
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.accountNameTextfieldModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: PrimaryTextFieldComponentWidget(
                    textfieldTitle: 'Enter Account Number',
                    maxLines: 1,
                    lineHeight: 1,
                    action: () async {},
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Create Beneficiary',
              options: FFButtonOptions(
                width: double.infinity,
                height: 50.0,
                padding: EdgeInsets.all(8.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      color: Colors.white,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleMediumIsCustom,
                    ),
                elevation: 0.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
