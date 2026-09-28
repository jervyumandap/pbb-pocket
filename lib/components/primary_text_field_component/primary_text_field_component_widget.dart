import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'primary_text_field_component_model.dart';
export 'primary_text_field_component_model.dart';

class PrimaryTextFieldComponentWidget extends StatefulWidget {
  const PrimaryTextFieldComponentWidget({
    super.key,
    required this.textfieldTitle,
    this.minLines,
    this.maxLines,
    this.lineHeight,
    this.maxLength,
    this.action,
    this.initialValue,
    this.hintText,
    bool? isReadOnly,
    this.minLength,
    Color? fontColor,
    Color? borderColor,
  })  : this.isReadOnly = isReadOnly ?? false,
        this.fontColor = fontColor ?? const Color(0xFF020000),
        this.borderColor = borderColor ?? const Color(0xFF676666);

  final String? textfieldTitle;
  final int? minLines;
  final int? maxLines;
  final int? lineHeight;
  final int? maxLength;
  final Future Function()? action;
  final String? initialValue;
  final String? hintText;
  final bool isReadOnly;
  final double? minLength;
  final Color fontColor;
  final Color borderColor;

  @override
  State<PrimaryTextFieldComponentWidget> createState() =>
      _PrimaryTextFieldComponentWidgetState();
}

class _PrimaryTextFieldComponentWidgetState
    extends State<PrimaryTextFieldComponentWidget> {
  late PrimaryTextFieldComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryTextFieldComponentModel());

    _model.textController ??= TextEditingController(text: widget.initialValue);
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
      decoration: BoxDecoration(),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          onChanged: (_) => EasyDebounce.debounce(
            '_model.textController',
            Duration(milliseconds: 200),
            () => safeSetState(() {}),
          ),
          autofocus: false,
          enabled: !widget.isReadOnly,
          textInputAction: TextInputAction.done,
          readOnly: widget.isReadOnly,
          obscureText: false,
          decoration: InputDecoration(
            labelText: widget.textfieldTitle,
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                  color: widget.fontColor,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  lineHeight: double.infinity,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelMediumIsCustom,
                ),
            hintText: widget.hintText,
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: widget.lineHeight?.toDouble(),
                ),
            errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: Color(0xFFB3261E),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFB3B3B3),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF676666),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFB3261E),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFB3261E),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            hoverColor: FlutterFlowTheme.of(context).tertiary,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: widget.fontColor,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
          maxLines: null,
          maxLength: widget.maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          buildCounter: (context,
                  {required currentLength, required isFocused, maxLength}) =>
              null,
          cursorColor: FlutterFlowTheme.of(context).primary,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
