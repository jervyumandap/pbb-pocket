import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/time_deposit/time_deposit_account_selection/time_deposit_account_selection_widget.dart';
import '/time_deposit/time_deposit_term_container/time_deposit_term_container_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'open_time_deposit_details_page_model.dart';
export 'open_time_deposit_details_page_model.dart';

class OpenTimeDepositDetailsPageWidget extends StatefulWidget {
  const OpenTimeDepositDetailsPageWidget({
    super.key,
    required this.product,
  });

  final ProductsStruct? product;

  static String routeName = 'OpenTimeDepositDetailsPage';
  static String routePath = '/openTimeDepositDetailsPage';

  @override
  State<OpenTimeDepositDetailsPageWidget> createState() =>
      _OpenTimeDepositDetailsPageWidgetState();
}

class _OpenTimeDepositDetailsPageWidgetState
    extends State<OpenTimeDepositDetailsPageWidget> {
  late OpenTimeDepositDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpenTimeDepositDetailsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectedAccount = FFAppState().AccountsState.firstOrNull!;
      safeSetState(() {});
      _model.selectedTerm = widget.product?.tenorDays.firstOrNull;
      _model.amount = widget.product?.minAmount.toDouble();
      safeSetState(() {});
      safeSetState(() {
        _model.tetxfieldAmountTextController?.text = formatNumber(
          _model.amount,
          formatType: FormatType.decimal,
          decimalType: DecimalType.periodDecimal,
        );
      });
      if (_model.amount! <= FFAppState().selectedAccount.availableBalance) {
        _model.tdCalculatedEarningsOutputV2 = await actions.tdCalculateEarnings(
          _model.amount!,
          widget.product!.tenorDays.firstOrNull!,
          widget.product!.interestRateAnnual,
          widget.product!.currency,
        );
        _model.timeDepositComputationOutput =
            TimeDepositComputationModelStruct.maybeFromMap(
                _model.tdCalculatedEarningsOutputV2);
        safeSetState(() {});
        FFAppState().openTimeDepositState =
            TimeDepositComputationModelStruct.maybeFromMap(
                _model.tdCalculatedEarningsOutputV2!)!;
        safeSetState(() {});
        FFAppState().updateOpenTimeDepositStateStruct(
          (e) => e..productCode = widget.product?.productCode,
        );
        safeSetState(() {});
      } else {
        _model.isAmountInvalid = true;
        _model.timeDepositComputationOutput = null;
        _model.amountErrorMessage =
            'Oops! It looks like the amount you entered is more than your available balance. Please check your balance and try again.';
        safeSetState(() {});
      }
    });

    _model.tetxfieldAmountTextController ??= TextEditingController(
        text: formatNumber(
      _model.amount,
      formatType: FormatType.decimal,
      decimalType: DecimalType.periodDecimal,
    ));
    _model.tetxfieldAmountFocusNode ??= FocusNode();
    _model.tetxfieldAmountFocusNode!.addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return (FFAppState().isDrawerOpen
                          ? valueOrDefault<double>(
                              FFAppConstants.maxDrawerWidth,
                              260.0,
                            )
                          : FFAppConstants.minDrawerWidth);
                    } else {
                      return (FFAppState().isDrawerOpen
                          ? valueOrDefault<double>(
                              FFAppConstants.maxDrawerWidth,
                              260.0,
                            )
                          : FFAppConstants.minDrawerWidth);
                    }
                  }(),
                  270.0,
                ),
                valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 0.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return FFAppConstants.WebAppBarHeight;
                    } else {
                      return FFAppConstants.WebAppBarHeight;
                    }
                  }(),
                  72.0,
                ),
                0.0,
                0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.customMobileAppBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CustomMobileAppBarWidget(
                      pageTitle: '',
                      leftButtonIcon: Icon(
                        Icons.arrow_back_rounded,
                      ),
                      buttonWithoutBackground: true,
                      btnWOBgIcon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      isTitleLeftAlign: true,
                      titleLeftAlign: 'Details',
                      rightButtonAction: () async {},
                      leftButtonAction: () async {
                        context.safePop();
                      },
                      midRightButtonAction: () async {},
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Amount',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Color(0xFF5C6466),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            Semantics(
                              label: 'open_time_deposit_minimum_amount_text',
                              child: Text(
                                'Min. ${formatNumber(
                                  widget.product?.minAmount,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF939FA3),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Semantics(
                                label: 'open_time_deposit_amount_field',
                                child: TextFormField(
                                  controller:
                                      _model.tetxfieldAmountTextController,
                                  focusNode: _model.tetxfieldAmountFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.tetxfieldAmountTextController',
                                    Duration(milliseconds: 200),
                                    () async {
                                      _model.amount = functions.stringToDouble(
                                          functions.formatAmountDisplay(_model
                                              .tetxfieldAmountTextController
                                              .text));
                                      safeSetState(() {});
                                      if ((_model.amount! >=
                                              widget.product!.minAmount
                                                  .toDouble()) &&
                                          (_model.amount! <=
                                              FFAppState()
                                                  .selectedAccount
                                                  .availableBalance)) {
                                        safeSetState(() {
                                          _model.tetxfieldAmountTextController
                                              ?.text = formatNumber(
                                            _model.amount,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          );
                                        });
                                        _model.isAmountInvalid = false;
                                        safeSetState(() {});
                                        _model.tdCalculatedEarningsOutput =
                                            await actions.tdCalculateEarnings(
                                          _model.amount!,
                                          widget
                                              .product!.tenorDays.firstOrNull!,
                                          widget.product!.interestRateAnnual,
                                          widget.product!.currency,
                                        );
                                        _model.timeDepositComputationOutput =
                                            TimeDepositComputationModelStruct
                                                .maybeFromMap(_model
                                                    .tdCalculatedEarningsOutput);
                                        safeSetState(() {});
                                        FFAppState().openTimeDepositState =
                                            TimeDepositComputationModelStruct
                                                .maybeFromMap(_model
                                                    .tdCalculatedEarningsOutput!)!;
                                        safeSetState(() {});
                                        FFAppState()
                                            .updateOpenTimeDepositStateStruct(
                                          (e) => e
                                            ..productCode =
                                                widget.product?.productCode,
                                        );
                                        safeSetState(() {});
                                      } else if (_model.amount! >
                                          FFAppState()
                                              .selectedAccount
                                              .availableBalance) {
                                        safeSetState(() {
                                          _model.tetxfieldAmountTextController
                                              ?.text = formatNumber(
                                            _model.amount,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          );
                                        });
                                        _model.isAmountInvalid = true;
                                        _model.timeDepositComputationOutput =
                                            null;
                                        _model.amountErrorMessage =
                                            'Oops! It looks like the amount you entered is more than your available balance. Please check your balance and try again.';
                                        safeSetState(() {});
                                      } else {
                                        safeSetState(() {
                                          _model.tetxfieldAmountTextController
                                              ?.text = formatNumber(
                                            _model.amount,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          );
                                        });
                                        _model.isAmountInvalid = true;
                                        _model.timeDepositComputationOutput =
                                            null;
                                        _model.amountErrorMessage =
                                            'Please enter an amount that is equal to or greater than the minimum amount to continue and calculate.';
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                  autofocus: false,
                                  enabled: true,
                                  textInputAction: TextInputAction.done,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelLargeFamily,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelLargeIsCustom,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily,
                                          color: Color(0xFF72777A),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelMediumIsCustom,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .neutral10,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).base0,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            12.0, 17.0, 12.0, 17.0),
                                    hoverColor: FlutterFlowTheme.of(context)
                                        .formElementHover,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  textAlign: TextAlign.start,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          decimal: true),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model
                                      .tetxfieldAmountTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            if (_model.isAmountInvalid ?? true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Semantics(
                                  label: 'open_time_deposit_amount_error_text',
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.amountErrorMessage,
                                      'Please enter an amount that is equal to or greater than the minimum amount to continue and calculate.',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFFB3261E),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        FlutterFlowChoiceChips(
                          options: [
                            ChipData('+ ${widget.product?.currency} 10,000'),
                            ChipData('+ ${widget.product?.currency} 50,000'),
                            ChipData('+ ${widget.product?.currency} 100,000'),
                            ChipData('+ ${widget.product?.currency} 500,000')
                          ],
                          onChanged: (val) async {
                            safeSetState(() =>
                                _model.choiceChipsValue = val?.firstOrNull);
                            _model.amount =
                                functions.stringToDouble((String value) {
                              return value.replaceAll(RegExp(r'\D'), '');
                            }(_model.choiceChipsValue!));
                            safeSetState(() {});
                            _model.tdCalculatedEarningsOutputs =
                                await actions.tdCalculateEarnings(
                              _model.amount!,
                              widget.product!.tenorDays.firstOrNull!,
                              widget.product!.interestRateAnnual,
                              widget.product!.currency,
                            );
                            _model.timeDepositComputationOutput =
                                TimeDepositComputationModelStruct.maybeFromMap(
                                    _model.tdCalculatedEarningsOutputs);
                            safeSetState(() {});
                            FFAppState().openTimeDepositState =
                                TimeDepositComputationModelStruct.maybeFromMap(
                                    _model.tdCalculatedEarningsOutputs!)!;
                            safeSetState(() {});
                            FFAppState().updateOpenTimeDepositStateStruct(
                              (e) =>
                                  e..productCode = widget.product?.productCode,
                            );
                            safeSetState(() {});
                            safeSetState(() {
                              _model.tetxfieldAmountTextController?.text =
                                  formatNumber(
                                _model.amount,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.periodDecimal,
                              );
                            });

                            safeSetState(() {});
                          },
                          selectedChipStyle: ChipStyle(
                            backgroundColor: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Color(0xFF5C6466),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            iconColor: FlutterFlowTheme.of(context).info,
                            iconSize: 16.0,
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 6.0, 12.0, 6.0),
                            elevation: 0.0,
                            borderColor: Color(0xFFDAE3E5),
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            iconSize: 14.0,
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 6.0, 12.0, 6.0),
                            elevation: 0.0,
                            borderColor: Color(0xFFDAE3E5),
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          chipSpacing: 8.0,
                          rowSpacing: 8.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: false,
                        ),
                      ].divide(SizedBox(height: 8.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Term',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF5C6466),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Text(
                                'Max.5 Years',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF939FA3),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        if (widget.product!.tenorDays.length > 1)
                          Builder(
                            builder: (context) {
                              final tenor =
                                  widget.product?.tenorDays.toList() ?? [];

                              return Semantics(
                                label: 'open_time_deposit_term_options_group',
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                      List.generate(tenor.length, (tenorIndex) {
                                    final tenorItem = tenor[tenorIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if ((_model.amount! >=
                                                widget.product!.minAmount
                                                    .toDouble()) &&
                                            (_model.amount! <=
                                                FFAppState()
                                                    .selectedAccount
                                                    .availableBalance)) {
                                          _model.tdCalculatedEarningsOutput2 =
                                              await actions.tdCalculateEarnings(
                                            _model.amount!,
                                            tenorItem,
                                            widget.product!.interestRateAnnual,
                                            widget.product!.currency,
                                          );
                                          _model.isAmountInvalid = false;
                                          safeSetState(() {});
                                          _model.timeDepositComputationOutput =
                                              TimeDepositComputationModelStruct
                                                  .maybeFromMap(_model
                                                      .tdCalculatedEarningsOutput2);
                                          _model.selectedTerm = tenorItem;
                                          safeSetState(() {});
                                          FFAppState().openTimeDepositState =
                                              TimeDepositComputationModelStruct
                                                  .maybeFromMap(_model
                                                      .tdCalculatedEarningsOutput2!)!;
                                          safeSetState(() {});
                                          FFAppState()
                                              .updateOpenTimeDepositStateStruct(
                                            (e) => e
                                              ..productCode =
                                                  widget.product?.productCode,
                                          );
                                          safeSetState(() {});
                                        } else if ((_model.amount! <
                                                widget.product!.minAmount
                                                    .toDouble()) &&
                                            (_model.amount! <=
                                                FFAppState()
                                                    .selectedAccount
                                                    .availableBalance)) {
                                          _model.isAmountInvalid = true;
                                          _model.timeDepositComputationOutput =
                                              null;
                                          _model.amountErrorMessage =
                                              'Please enter an amount that is equal to or greater than the minimum amount to continue and calculate.';
                                          safeSetState(() {});
                                        } else if (_model.amount! >
                                            FFAppState()
                                                .selectedAccount
                                                .availableBalance) {
                                          _model.isAmountInvalid = true;
                                          _model.timeDepositComputationOutput =
                                              null;
                                          _model.amountErrorMessage =
                                              'Oops! It looks like the amount you entered is more than your available balance. Please check your balance and try again.';
                                          safeSetState(() {});
                                        } else {
                                          safeSetState(() {});
                                        }

                                        safeSetState(() {});
                                      },
                                      child: TimeDepositTermContainerWidget(
                                        key: Key(
                                            'Key0ve_${tenorIndex}_of_${tenor.length}'),
                                        term: tenorItem,
                                        selectedTerm: _model.selectedTerm!,
                                      ),
                                    );
                                  }).divide(SizedBox(width: 8.0)),
                                ),
                              );
                            },
                          ),
                        if (widget.product?.tenorDays.length == 1)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Semantics(
                              label: 'open_time_deposit_fixed_term_card',
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F9FF),
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: Color(0xFFDAE3E5),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: Container(
                                              width: 42.0,
                                              height: 42.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(14.0),
                                              ),
                                              child: Icon(
                                                Icons.lock_open,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .gradient2,
                                                size: 16.0,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'FIXED TERM',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF002C75),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Text(
                                                'Cannot be changed',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF939FA3),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              widget.product?.tenorDays
                                                  .firstOrNull
                                                  ?.toString(),
                                              '1',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 30.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          Text(
                                            'DAYS',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF939FA3),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 27.0, 16.0, 0.0),
                        child: Text(
                          'Maturity Instruction',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF5C6466),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          width: double.infinity,
                          height: 51.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3FAFB),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: Color(0xFFD8EBEC),
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Auto Closure',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF1A2536),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Funding Source',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFF5C6466),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Semantics(
                          label: 'open_time_deposit_funding_source_card',
                          child: Container(
                            width: double.infinity,
                            height: 72.0,
                            decoration: BoxDecoration(
                              color: Color(0x001E1E1E),
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: Color(0xFFDAE3E5),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Container(
                                          width: 42.0,
                                          height: 42.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                FlutterFlowTheme.of(context)
                                                    .secondary
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.0, -1.0),
                                              end: AlignmentDirectional(0, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14.0),
                                          ),
                                          child: Icon(
                                            Icons.credit_card_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFAppState()
                                                            .selectedAccount
                                                            .accountNumber !=
                                                        ''
                                                ? '${FFAppState().selectedAccount.accountType?.name} ${FFAppState().selectedAccount.accountNumber}'
                                                : '${FFAppState().AccountsState.firstOrNull?.accountType?.name} ${FFAppState().AccountsState.firstOrNull?.accountNumber}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF1A2536),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          Text(
                                            FFAppState()
                                                            .selectedAccount
                                                            .accountNumber !=
                                                        ''
                                                ? 'Available ${FFAppState().selectedAccount.currency} ${formatNumber(
                                                    FFAppState()
                                                        .selectedAccount
                                                        .availableBalance,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .periodDecimal,
                                                  )}'
                                                : 'Available ${FFAppState().AccountsState.firstOrNull?.currency} ${formatNumber(
                                                    FFAppState()
                                                        .AccountsState
                                                        .firstOrNull
                                                        ?.availableBalance,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .periodDecimal,
                                                  )}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF939FA3),
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  TimeDepositAccountSelectionWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Text(
                                      'CHANGE',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFF939FA3),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Semantics(
                      label: 'open_time_deposit_earnings_calculation_section',
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF0F8F8),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: Color(0xFFCDEFF6),
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Text(
                                  'EARNINGS CALCULATION',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF027377),
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Principal',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF5C6466),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    _model.amount != null
                                        ? formatNumber(
                                            _model.amount,
                                            formatType: FormatType.decimal,
                                            decimalType:
                                                DecimalType.periodDecimal,
                                          )
                                        : '-',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              StyledDivider(
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rate (p.a.)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF5C6466),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.timeDepositComputationOutput
                                                  ?.maturityValue !=
                                              null
                                          ? _model.timeDepositComputationOutput
                                              ?.displayRate
                                          : '-',
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              StyledDivider(
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Term',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF5C6466),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.timeDepositComputationOutput
                                                  ?.maturityValue !=
                                              null
                                          ? _model.timeDepositComputationOutput
                                              ?.displayTerm
                                          : '-',
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              StyledDivider(
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gross interest',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF5C6466),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.timeDepositComputationOutput
                                                  ?.maturityValue !=
                                              null
                                          ? _model.timeDepositComputationOutput
                                              ?.displayGrossInterest
                                          : '-',
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              StyledDivider(
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Withholding tax (20%)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF5C6466),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.timeDepositComputationOutput
                                                  ?.maturityValue !=
                                              null
                                          ? _model.timeDepositComputationOutput
                                              ?.displayWithholdingTax
                                          : '-',
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              StyledDivider(
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Net interest',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF5C6466),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.timeDepositComputationOutput
                                                  ?.maturityValue !=
                                              null
                                          ? _model.timeDepositComputationOutput
                                              ?.displayNetInterest
                                          : '-',
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                              StyledDivider(
                                color: FlutterFlowTheme.of(context).alternate,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'MATURITY VALUE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 11.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.timeDepositComputationOutput
                                                  ?.maturityValue !=
                                              null
                                          ? _model.timeDepositComputationOutput
                                              ?.displayMaturityValue
                                          : '-',
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.spaceMono(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1A2536),
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 54.0),
                    child: Semantics(
                      label: 'open_time_deposit_submit_button',
                      child: wrapWithModel(
                        model: _model.primaryButtonComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: PrimaryButtonComponentWidget(
                          buttonTitle: 'Open a New Time Deposit',
                          buttonWidth: double.infinity,
                          buttonHeight: 48.0,
                          buttonColor: FlutterFlowTheme.of(context).primary,
                          textColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 16.0,
                          borderRadius: 16.0,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          childPadding: 16.0,
                          buttonDisabledOption: _model.isAmountInvalid,
                          callback: () async {
                            context.pushNamed(
                                OpenTimeDepositConfirmationPageWidget
                                    .routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (true &&
              responsiveVisibility(
                context: context,
                phone: false,
              ))
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: wrapWithModel(
                model: _model.mobileNavigationBarModel,
                updateCallback: () => safeSetState(() {}),
                child: MobileNavigationBarWidget(
                  pageIndex: 6,
                  shouldHideBottomNav: true,
                ),
              ),
            ),
          wrapWithModel(
            model: _model.customWebAppBarModel,
            updateCallback: () => safeSetState(() {}),
            child: CustomWebAppBarWidget(
              pageTitle: '',
              leftButtonAction: () async {},
              midButtonAction: () async {},
              rightButtonAction: () async {},
            ),
          ),
        ],
      ),
    );
  }
}
