import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'transaction_limit_item_component_model.dart';
export 'transaction_limit_item_component_model.dart';

class TransactionLimitItemComponentWidget extends StatefulWidget {
  const TransactionLimitItemComponentWidget({
    super.key,
    this.transactionLimit,
    this.callback,
    this.textfieldTitle,
    required this.callback2,
    required this.amountLimitPerTransaction,
    required this.amountLimitDaily,
    required this.callback3,
    required this.currentLimit,
  });

  final LimitsStruct? transactionLimit;
  final Future Function(bool dailyInvalid)? callback;
  final String? textfieldTitle;
  final Future Function(bool maxedInvalid)? callback2;
  final double? amountLimitPerTransaction;
  final double? amountLimitDaily;
  final Future Function()? callback3;
  final double? currentLimit;

  @override
  State<TransactionLimitItemComponentWidget> createState() =>
      _TransactionLimitItemComponentWidgetState();
}

class _TransactionLimitItemComponentWidgetState
    extends State<TransactionLimitItemComponentWidget> {
  late TransactionLimitItemComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionLimitItemComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.amountLimitPerTransaction = widget.amountLimitPerTransaction!;
      _model.amountLimitDaily = widget.amountLimitDaily;
      _model.isTransacLimit = false;
      _model.isDailyLimit = false;
      safeSetState(() {});
      safeSetState(() {
        _model.textFieldUpdatedAmountTextController?.text = formatNumber(
          _model.amountLimitPerTransaction,
          formatType: FormatType.decimal,
          decimalType: DecimalType.periodDecimal,
        );
      });
      safeSetState(() {
        _model.textFieldUpdatedAmount2ndTextController?.text = formatNumber(
          _model.amountLimitDaily,
          formatType: FormatType.decimal,
          decimalType: DecimalType.periodDecimal,
        );
      });
    });

    _model.textFieldUpdatedAmount2ndTextController ??= TextEditingController(
        text: formatNumber(
      _model.amountLimitDaily,
      formatType: FormatType.decimal,
      decimalType: DecimalType.periodDecimal,
    ));
    _model.textFieldUpdatedAmount2ndFocusNode ??= FocusNode();
    _model.textFieldUpdatedAmount2ndFocusNode!.addListener(
      () async {
        await widget.callback3?.call();
      },
    );
    _model.textFieldUpdatedAmountTextController ??= TextEditingController(
        text: formatNumber(
      _model.amountLimitPerTransaction,
      formatType: FormatType.decimal,
      decimalType: DecimalType.periodDecimal,
    ));
    _model.textFieldUpdatedAmountFocusNode ??= FocusNode();
    _model.textFieldUpdatedAmountFocusNode!.addListener(
      () async {
        await widget.callback3?.call();
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.transactionLimit?.displayName,
                    'Own account',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Color(0xFF012D72),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFCCE3E4),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          'Max Limit: ${formatNumber(
                            widget.transactionLimit?.bankLimits.maxAmount,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                          )}',
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Color(0xFF027377),
                                fontSize: 14.0,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              'Current: ${formatNumber(
                                widget.currentLimit,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              )}',
                              '-',
                            ),
                            maxLines: 2,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Color(0xFF027377),
                                  fontSize: 14.0,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ),
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: TextFormField(
                        controller:
                            _model.textFieldUpdatedAmount2ndTextController,
                        focusNode: _model.textFieldUpdatedAmount2ndFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textFieldUpdatedAmount2ndTextController',
                          Duration(milliseconds: 200),
                          () async {
                            _model.amountLimitDaily = functions.stringToDouble(
                                functions.formatAmountDisplay(_model
                                    .textFieldUpdatedAmount2ndTextController
                                    .text));
                            _model.updatePage(() {});
                            safeSetState(() {
                              _model.textFieldUpdatedAmount2ndTextController
                                  ?.text = formatNumber(
                                _model.amountLimitDaily,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              );
                            });
                            _model.isDailyLimit = functions.isMaxLimitExceeded(
                                formatNumber(
                                  widget.currentLimit,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                ),
                                _model.textFieldUpdatedAmount2ndTextController
                                    .text)!;
                            safeSetState(() {});
                            await widget.callback2?.call(
                              functions.isMaxLimitExceeded(
                                  formatNumber(
                                    widget.currentLimit,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                  ),
                                  _model.textFieldUpdatedAmount2ndTextController
                                      .text)!,
                            );
                          },
                        ),
                        autofocus: false,
                        enabled: true,
                        textInputAction: TextInputAction.done,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Daily Transfer Limit',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelLargeIsCustom,
                              ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                color: Color(0xFF72777A),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _model.isDailyLimit
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).neutral10,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _model.isDailyLimit
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).base0,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 17.0, 12.0, 17.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).formElementHover,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        textAlign: TextAlign.start,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        enableInteractiveSelection: true,
                        validator: _model
                            .textFieldUpdatedAmount2ndTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    if (_model.isDailyLimit)
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Limit exceeds maximum allowed.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textFieldUpdatedAmountTextController,
                        focusNode: _model.textFieldUpdatedAmountFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textFieldUpdatedAmountTextController',
                          Duration(milliseconds: 200),
                          () async {
                            _model.amountLimitPerTransaction =
                                functions.stringToDouble(
                                    functions.formatAmountDisplay(_model
                                        .textFieldUpdatedAmountTextController
                                        .text));
                            _model.updatePage(() {});
                            _model.isTransacLimit =
                                functions.isMaxLimitExceeded(
                                    widget
                                        .transactionLimit?.bankLimits.maxAmount
                                        .toString(),
                                    _model.textFieldUpdatedAmountTextController
                                        .text)!;
                            safeSetState(() {});
                            safeSetState(() {
                              _model.textFieldUpdatedAmountTextController
                                  ?.text = formatNumber(
                                _model.amountLimitPerTransaction,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              );
                            });
                            await widget.callback?.call(
                              functions.isMaxLimitExceeded(
                                  widget
                                      .transactionLimit?.bankLimits.maxAmount
                                      .toString(),
                                  _model.textFieldUpdatedAmountTextController
                                      .text)!,
                            );
                          },
                        ),
                        autofocus: false,
                        enabled: true,
                        textInputAction: TextInputAction.done,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Per Transaction Limit',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelLargeIsCustom,
                              ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelMediumFamily,
                                color: Color(0xFF72777A),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelMediumIsCustom,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _model.isTransacLimit
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).neutral10,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _model.isTransacLimit
                                  ? FlutterFlowTheme.of(context).error
                                  : FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).base0,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 17.0, 12.0, 17.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).formElementHover,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                        textAlign: TextAlign.start,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        enableInteractiveSelection: true,
                        validator: _model
                            .textFieldUpdatedAmountTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                    if (_model.isTransacLimit)
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          'Limit exceeds maximum allowed.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).error,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
