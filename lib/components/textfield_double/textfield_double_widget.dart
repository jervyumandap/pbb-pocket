import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'textfield_double_model.dart';
export 'textfield_double_model.dart';

class TextfieldDoubleWidget extends StatefulWidget {
  const TextfieldDoubleWidget({
    super.key,
    this.minLength,
    this.maxLength,
    this.title,
    required this.callback,
    bool? isAmount,
    this.initialValue,
    this.hintText,
    bool? isReadOnly,
    this.lineHeight,
  })  : this.isAmount = isAmount ?? false,
        this.isReadOnly = isReadOnly ?? false;

  final int? minLength;
  final int? maxLength;
  final String? title;
  final Future Function()? callback;
  final bool isAmount;
  final String? initialValue;
  final String? hintText;
  final bool isReadOnly;
  final double? lineHeight;

  @override
  State<TextfieldDoubleWidget> createState() => _TextfieldDoubleWidgetState();
}

class _TextfieldDoubleWidgetState extends State<TextfieldDoubleWidget> {
  late TextfieldDoubleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextfieldDoubleModel());

    _model.textController ??= TextEditingController(
        text: widget.initialValue != null && widget.initialValue != ''
            ? widget.initialValue
            : '');
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        await widget.callback?.call();
      },
    );
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
      alignment: AlignmentDirectional(0.0, -1.0),
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
          textInputAction: TextInputAction.next,
          readOnly: widget.isReadOnly,
          obscureText: false,
          decoration: InputDecoration(
            isDense: false,
            labelText: widget.title,
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  lineHeight: 1.0,
                ),
            hintText: widget.hintText,
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).bgThemeColor,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
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
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
          maxLines: null,
          maxLength: widget.maxLength,
          buildCounter: (context,
                  {required currentLength, required isFocused, maxLength}) =>
              null,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          validator: _model.textControllerValidator.asValidator(context),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('^[0-9.]+\$'))
          ],
        ),
      ),
    );
  }
}
