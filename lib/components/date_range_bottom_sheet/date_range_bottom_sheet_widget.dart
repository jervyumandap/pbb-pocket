import '/components/filter_date_picker_widget/filter_date_picker_widget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'date_range_bottom_sheet_model.dart';
export 'date_range_bottom_sheet_model.dart';

class DateRangeBottomSheetWidget extends StatefulWidget {
  const DateRangeBottomSheetWidget({
    super.key,
    String? title,
    String? message,
    String? cancelButtonTitle,
    this.cancelButtonAction,
    String? submitButtonTitle,
    this.submitButtonAction,
    required this.selectedFilter,
  })  : this.title = title ?? 'Date Range',
        this.message = message ?? 'Message',
        this.cancelButtonTitle = cancelButtonTitle ?? 'Cancel',
        this.submitButtonTitle = submitButtonTitle ?? 'Apply Filter';

  final String title;
  final String message;
  final String cancelButtonTitle;
  final Future Function()? cancelButtonAction;
  final String submitButtonTitle;
  final Future Function()? submitButtonAction;
  final Future Function(DateTime fromDate, DateTime toDate)? selectedFilter;

  @override
  State<DateRangeBottomSheetWidget> createState() =>
      _DateRangeBottomSheetWidgetState();
}

class _DateRangeBottomSheetWidgetState extends State<DateRangeBottomSheetWidget>
    with TickerProviderStateMixin {
  late DateRangeBottomSheetModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DateRangeBottomSheetModel());

    animationsMap.addAll({
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            width: 45.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFDADADA),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        widget.title,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .neutral3,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('Today'),
                                            ChipData('7 Days'),
                                            ChipData('30 Days'),
                                            ChipData('Custom')
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.choiceChipsValue1 =
                                                    val?.firstOrNull);
                                            if (_model.choiceChipsValue1 ==
                                                'Today') {
                                              _model.toDate = functions
                                                  .getDateRangeByDays(1)
                                                  ?.toDate;
                                              _model.fromDate = functions
                                                  .getDateRangeByDays(1)
                                                  ?.fromDate;
                                              _model.hasSelection = true;
                                            } else if (_model
                                                    .choiceChipsValue1 ==
                                                '7 Days') {
                                              _model.toDate = functions
                                                  .getDateRangeByDays(7)
                                                  ?.toDate;
                                              _model.fromDate = functions
                                                  .getDateRangeByDays(7)
                                                  ?.fromDate;
                                              _model.hasSelection = true;
                                            } else if (_model
                                                    .choiceChipsValue1 ==
                                                '30 Days') {
                                              _model.toDate = functions
                                                  .getDateRangeByDays(30)
                                                  ?.toDate;
                                              _model.fromDate = functions
                                                  .getDateRangeByDays(30)
                                                  ?.fromDate;
                                              _model.hasSelection = true;
                                            } else if (_model
                                                    .choiceChipsValue1 ==
                                                'Custom') {}

                                            safeSetState(() {});
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: Color(0xFFB7E4E6),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary2,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            iconSize: 16.0,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Color(0xFFEDF9FA),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral3,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 16.0,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            elevation: 0.0,
                                            borderColor: Color(0xFFC2E5E6),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          chipSpacing: 12.0,
                                          rowSpacing: 12.0,
                                          multiselect: false,
                                          initialized:
                                              _model.choiceChipsValue1 != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController1 ??=
                                              FormFieldController<List<String>>(
                                            ['Today'],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                                if (_model.choiceChipsValue1 == 'Custom')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model
                                              .startDatePickerWidgetModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FilterDatePickerWidgetWidget(
                                            label: 'Start Date',
                                            dateValue: dateTimeFormat(
                                              "yMMMMd",
                                              _model.fromDate,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            callBack: () async {
                                              // StartDatePicker
                                              final _datePicked1Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: getCurrentTimestamp,
                                              );

                                              if (_datePicked1Date != null) {
                                                safeSetState(() {
                                                  _model.datePicked1 = DateTime(
                                                    _datePicked1Date.year,
                                                    _datePicked1Date.month,
                                                    _datePicked1Date.day,
                                                  );
                                                });
                                              } else if (_model.datePicked1 !=
                                                  null) {
                                                safeSetState(() {
                                                  _model.datePicked1 =
                                                      getCurrentTimestamp;
                                                });
                                              }
                                              if (_model.datePicked1 != null) {
                                                _model.fromDate =
                                                    _model.datePicked1;
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.endDatePickerWidgetModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FilterDatePickerWidgetWidget(
                                            label: 'End Date',
                                            dateValue: dateTimeFormat(
                                              "yMMMMd",
                                              _model.toDate,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            callBack: () async {
                                              // EndDatePicker
                                              final _datePicked2Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: getCurrentTimestamp,
                                              );

                                              if (_datePicked2Date != null) {
                                                safeSetState(() {
                                                  _model.datePicked2 = DateTime(
                                                    _datePicked2Date.year,
                                                    _datePicked2Date.month,
                                                    _datePicked2Date.day,
                                                  );
                                                });
                                              } else if (_model.datePicked2 !=
                                                  null) {
                                                safeSetState(() {
                                                  _model.datePicked2 =
                                                      getCurrentTimestamp;
                                                });
                                              }
                                              if (_model.datePicked2 != null) {
                                                _model.toDate =
                                                    _model.datePicked2;
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 18.0)),
                                    ),
                                  ),
                              ].divide(SizedBox(height: 18.0)),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 60.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await widget.cancelButtonAction?.call();
                                      },
                                      text: valueOrDefault<String>(
                                        widget.cancelButtonTitle,
                                        'Cancel',
                                      ),
                                      options: FFButtonOptions(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 450.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 450.0;
                                          } else {
                                            return 450.0;
                                          }
                                        }(),
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation1']!),
                                  ),
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: !_model.hasSelection!
                                          ? null
                                          : () async {
                                              await widget.selectedFilter?.call(
                                                _model.fromDate!,
                                                _model.toDate!,
                                              );
                                            },
                                      text: valueOrDefault<String>(
                                        widget.submitButtonTitle,
                                        'Apply Filter',
                                      ),
                                      options: FFButtonOptions(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 450.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 450.0;
                                          } else {
                                            return 450.0;
                                          }
                                        }(),
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .neutral9,
                                        disabledTextColor:
                                            FlutterFlowTheme.of(context)
                                                .neutral7,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation2']!),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 18.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: FFAppConstants.RightDrawerWidth,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          -5.0,
                        ),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close_rounded,
                                color: Color(0xFF252525),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        widget.title,
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .neutral3,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyLargeIsCustom,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('Today'),
                                            ChipData('7 Days'),
                                            ChipData('30 Days'),
                                            ChipData('Custom')
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.choiceChipsValue2 =
                                                    val?.firstOrNull);
                                            if (_model.choiceChipsValue2 ==
                                                'Today') {
                                              _model.toDate = functions
                                                  .getDateRangeByDays(1)
                                                  ?.toDate;
                                              _model.fromDate = functions
                                                  .getDateRangeByDays(1)
                                                  ?.fromDate;
                                              _model.hasSelection = true;
                                            } else if (_model
                                                    .choiceChipsValue2 ==
                                                '7 Days') {
                                              _model.toDate = functions
                                                  .getDateRangeByDays(7)
                                                  ?.toDate;
                                              _model.fromDate = functions
                                                  .getDateRangeByDays(7)
                                                  ?.fromDate;
                                              _model.hasSelection = true;
                                            } else if (_model
                                                    .choiceChipsValue2 ==
                                                '30 Days') {
                                              _model.toDate = functions
                                                  .getDateRangeByDays(30)
                                                  ?.toDate;
                                              _model.fromDate = functions
                                                  .getDateRangeByDays(30)
                                                  ?.fromDate;
                                              _model.hasSelection = true;
                                            } else if (_model
                                                    .choiceChipsValue2 ==
                                                'Custom') {}

                                            safeSetState(() {});
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor: Color(0xFFB7E4E6),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary2,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            iconSize: 16.0,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: Color(0xFFEDF9FA),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral3,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 16.0,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            elevation: 0.0,
                                            borderColor: Color(0xFFC2E5E6),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          chipSpacing: 12.0,
                                          rowSpacing: 12.0,
                                          multiselect: false,
                                          initialized:
                                              _model.choiceChipsValue2 != null,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController2 ??=
                                              FormFieldController<List<String>>(
                                            ['Today'],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                                if (_model.choiceChipsValue2 == 'Custom')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model
                                              .startDatePickerWidgetModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FilterDatePickerWidgetWidget(
                                            label: 'Start Date',
                                            dateValue: dateTimeFormat(
                                              "yMMMMd",
                                              _model.fromDate,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            callBack: () async {
                                              // StartDatePicker
                                              final _datePicked3Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: getCurrentTimestamp,
                                              );

                                              if (_datePicked3Date != null) {
                                                safeSetState(() {
                                                  _model.datePicked3 = DateTime(
                                                    _datePicked3Date.year,
                                                    _datePicked3Date.month,
                                                    _datePicked3Date.day,
                                                  );
                                                });
                                              } else if (_model.datePicked3 !=
                                                  null) {
                                                safeSetState(() {
                                                  _model.datePicked3 =
                                                      getCurrentTimestamp;
                                                });
                                              }
                                              if (_model.datePicked3 != null) {
                                                _model.fromDate =
                                                    _model.datePicked3;
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.endDatePickerWidgetModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FilterDatePickerWidgetWidget(
                                            label: 'End Date',
                                            dateValue: dateTimeFormat(
                                              "yMMMMd",
                                              _model.toDate,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            callBack: () async {
                                              // EndDatePicker
                                              final _datePicked4Date =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: DateTime(1900),
                                                lastDate: getCurrentTimestamp,
                                              );

                                              if (_datePicked4Date != null) {
                                                safeSetState(() {
                                                  _model.datePicked4 = DateTime(
                                                    _datePicked4Date.year,
                                                    _datePicked4Date.month,
                                                    _datePicked4Date.day,
                                                  );
                                                });
                                              } else if (_model.datePicked4 !=
                                                  null) {
                                                safeSetState(() {
                                                  _model.datePicked4 =
                                                      getCurrentTimestamp;
                                                });
                                              }
                                              if (_model.datePicked4 != null) {
                                                _model.toDate =
                                                    _model.datePicked4;
                                                safeSetState(() {});
                                              }
                                            },
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 18.0)),
                                    ),
                                  ),
                              ].divide(SizedBox(height: 18.0)),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 60.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await widget.cancelButtonAction?.call();
                                      },
                                      text: valueOrDefault<String>(
                                        widget.cancelButtonTitle,
                                        'Cancel',
                                      ),
                                      options: FFButtonOptions(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 450.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 450.0;
                                          } else {
                                            return 450.0;
                                          }
                                        }(),
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation3']!),
                                  ),
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: !_model.hasSelection!
                                          ? null
                                          : () async {
                                              await widget.selectedFilter?.call(
                                                _model.fromDate!,
                                                _model.toDate!,
                                              );
                                            },
                                      text: valueOrDefault<String>(
                                        widget.submitButtonTitle,
                                        'Apply Filter',
                                      ),
                                      options: FFButtonOptions(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 450.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 450.0;
                                          } else {
                                            return 450.0;
                                          }
                                        }(),
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        disabledColor:
                                            FlutterFlowTheme.of(context)
                                                .neutral9,
                                        disabledTextColor:
                                            FlutterFlowTheme.of(context)
                                                .neutral7,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'buttonOnPageLoadAnimation4']!),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ].divide(SizedBox(height: 18.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
