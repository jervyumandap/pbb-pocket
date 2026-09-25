import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_date_label_picker_widget_model.dart';
export 'custom_date_label_picker_widget_model.dart';

class CustomDateLabelPickerWidgetWidget extends StatefulWidget {
  const CustomDateLabelPickerWidgetWidget({
    super.key,
    required this.label,
    this.callBack,
    bool? isDateSelected,
    this.hoverStyle,
    String? textfieldLabel,
  })  : this.isDateSelected = isDateSelected ?? false,
        this.textfieldLabel = textfieldLabel ?? 'Birthdate';

  /// Date label and format
  /// Date of Birth (MM/DD/YYYY)
  final String? label;

  final Future Function()? callBack;
  final bool isDateSelected;
  final IconButtonBadgeHoverStyleStruct? hoverStyle;

  /// Ex: Birthdate
  final String textfieldLabel;

  @override
  State<CustomDateLabelPickerWidgetWidget> createState() =>
      _CustomDateLabelPickerWidgetWidgetState();
}

class _CustomDateLabelPickerWidgetWidgetState
    extends State<CustomDateLabelPickerWidgetWidget> {
  late CustomDateLabelPickerWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDateLabelPickerWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Stack(
        children: [
          // In parent page/component:
          // 1. Create a page/ app state -ex: DobPickedValue
          // 2. Pass a conditional value
          //   if DobPickedValue is set, then pass the DobPickedValue else pass the label of the
          // date picker
          // 3. Set Actions - Date picker, set page and app state
          // 4. set DobPickedValue from Date picked.
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await widget.callBack?.call();
              },
              child: Container(
                width: double.infinity,
                height: 44.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered
                        ? FlutterFlowTheme.of(context).formElementHover
                        : FlutterFlowTheme.of(context).secondaryBackground,
                    FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).neutral10,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.label,
                          'Birthdate (YYYY/MM/DD)',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: valueOrDefault<Color>(
                                widget.isDateSelected
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                Color(0xFF72777A),
                              ),
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                    Container(
                      width: 44.0,
                      height: 42.0,
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          if (_model.mouseRegionHovered ?? false) {
                            return Icon(
                              Icons.date_range,
                              color: valueOrDefault<Color>(
                                widget.hoverStyle?.iconColor,
                                FlutterFlowTheme.of(context).primary,
                              ),
                              size: 20.0,
                            );
                          } else {
                            return Icon(
                              Icons.date_range,
                              color: valueOrDefault<Color>(
                                widget.hoverStyle?.defaultIconColor,
                                FlutterFlowTheme.of(context).skyDark,
                              ),
                              size: 20.0,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (widget.isDateSelected)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered
                        ? FlutterFlowTheme.of(context).formElementHover
                        : FlutterFlowTheme.of(context).secondaryBackground,
                    FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.textfieldLabel,
                      'Birthdate',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 11.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
              ),
            ),
        ],
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
