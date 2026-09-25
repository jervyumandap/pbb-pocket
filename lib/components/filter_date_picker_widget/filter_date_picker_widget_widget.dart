import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'filter_date_picker_widget_model.dart';
export 'filter_date_picker_widget_model.dart';

class FilterDatePickerWidgetWidget extends StatefulWidget {
  const FilterDatePickerWidgetWidget({
    super.key,
    required this.label,
    this.callBack,
    required this.dateValue,
  });

  /// Date label and format
  /// Date of Birth (MM/DD/YYYY)
  final String? label;

  final Future Function()? callBack;
  final String? dateValue;

  @override
  State<FilterDatePickerWidgetWidget> createState() =>
      _FilterDatePickerWidgetWidgetState();
}

class _FilterDatePickerWidgetWidgetState
    extends State<FilterDatePickerWidgetWidget> {
  late FilterDatePickerWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterDatePickerWidgetModel());

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
      child:
          // In parent page/component:
          // 1. Create a page/ app state -ex: DobPickedValue
          // 2. Pass a conditional value
          //   if DobPickedValue is set, then pass the DobPickedValue else pass the label of the
          // date picker
          // 3. Set Actions - Date picker, set page and app state
          // 4. set DobPickedValue from Date picked.
          InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.callBack?.call();
        },
        child: Container(
          width: double.infinity,
          height: 57.0,
          decoration: BoxDecoration(
            color: _model.mouseRegionHovered
                ? FlutterFlowTheme.of(context).formElementHover
                : Color(0x00000000),
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).neutral10,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.label,
                    'Start Date',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).neutral3,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Color(0xFF027377),
                      size: 16.0,
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.dateValue,
                        'March 26, 2026',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: Color(0xFF027377),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ],
            ),
          ),
        ),
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
