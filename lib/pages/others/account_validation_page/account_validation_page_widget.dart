import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'account_validation_page_model.dart';
export 'account_validation_page_model.dart';

class AccountValidationPageWidget extends StatefulWidget {
  const AccountValidationPageWidget({
    super.key,
    this.module,
  });

  final String? module;

  static String routeName = 'AccountValidationPage';
  static String routePath = '/accountValidationPage';

  @override
  State<AccountValidationPageWidget> createState() =>
      _AccountValidationPageWidgetState();
}

class _AccountValidationPageWidgetState
    extends State<AccountValidationPageWidget> with TickerProviderStateMixin {
  late AccountValidationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountValidationPageModel());

    _model.textFieldAccountNumberTextController ??= TextEditingController();
    _model.textFieldAccountNumberFocusNode ??= FocusNode();

    _model.textFieldAccountNumberMask =
        MaskTextInputFormatter(mask: '####-####-####-###');
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return FFAppConstants.MobileAppBarHeight;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return FFAppConstants.MobileAppBarHeight;
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
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return double.infinity;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return FFAppConstants.ContentMaxWidth;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return FFAppConstants.ContentMaxWidth;
                                } else {
                                  return FFAppConstants.ContentMaxWidth;
                                }
                              }(),
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Let’s check your account.',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmallFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmallIsCustom,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 60.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              'Enter your account number or scan your debit card or bank statement by tapping scan icon.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 30.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Account Information',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    height: 56.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Semantics(
                                                            label:
                                                                'Enrollment_TextField_Account_Number',
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textFieldAccountNumberTextController,
                                                                focusNode: _model
                                                                    .textFieldAccountNumberFocusNode,
                                                                autofocus:
                                                                    false,
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Account Number',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelLargeFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelLargeIsCustom,
                                                                      ),
                                                                  hintText:
                                                                      'Enter Account Number *',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).labelMediumFamily,
                                                                        color: Color(
                                                                            0xFF72777A),
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .neutral10,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .base0,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          17.0,
                                                                          16.0,
                                                                          17.0),
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .formElementHover,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                                maxLines: null,
                                                                maxLength: 30,
                                                                maxLengthEnforcement:
                                                                    MaxLengthEnforcement
                                                                        .enforced,
                                                                buildCounter: (context,
                                                                        {required currentLength,
                                                                        required isFocused,
                                                                        maxLength}) =>
                                                                    null,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                enableInteractiveSelection:
                                                                    true,
                                                                validator: _model
                                                                    .textFieldAccountNumberTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                                inputFormatters: [
                                                                  _model
                                                                      .textFieldAccountNumberMask
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 17.0)),
                                                    ),
                                                  ),
                                                  Semantics(
                                                    label:
                                                        'Enrollment_Custom_Date_Label_Picker_Widget',
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .customDateLabelPickerWidgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          CustomDateLabelPickerWidgetWidget(
                                                        label: _model.dateOfBirthValue !=
                                                                    null &&
                                                                _model.dateOfBirthValue !=
                                                                    ''
                                                            ? dateTimeFormat(
                                                                "MM-d-yyyy",
                                                                _model
                                                                    .datePicked,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )
                                                            : 'Birthdate *',
                                                        isDateSelected: _model
                                                                    .dateOfBirthValue !=
                                                                null &&
                                                            _model.dateOfBirthValue !=
                                                                '',
                                                        textfieldLabel:
                                                            'Birthdate',
                                                        hoverStyle:
                                                            IconButtonBadgeHoverStyleStruct(
                                                          iconColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryButton,
                                                          defaultIconColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryButton,
                                                        ),
                                                        callBack: () async {
                                                          // DatePicker2
                                                          final _datePickedDate =
                                                              await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                getCurrentTimestamp,
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                getCurrentTimestamp,
                                                          );

                                                          if (_datePickedDate !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked =
                                                                  DateTime(
                                                                _datePickedDate
                                                                    .year,
                                                                _datePickedDate
                                                                    .month,
                                                                _datePickedDate
                                                                    .day,
                                                              );
                                                            });
                                                          } else if (_model
                                                                  .datePicked !=
                                                              null) {
                                                            safeSetState(() {
                                                              _model.datePicked =
                                                                  getCurrentTimestamp;
                                                            });
                                                          }
                                                          if (_model
                                                                  .datePicked !=
                                                              null) {
                                                            _model.dateOfBirthValue =
                                                                dateTimeFormat(
                                                              "yyyy-MM-dd",
                                                              _model.datePicked,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            );
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                    .isDateOfBirthSet =
                                                                true;
                                                            FFAppState()
                                                                    .dateOfBirth =
                                                                dateTimeFormat(
                                                              "yyyy-MM-dd",
                                                              _model.datePicked,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            );
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 5.0)),
                                              ),
                                            ].divide(SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ),
                            ),
                            Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return double.infinity;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return FFAppConstants.ContentMaxWidth;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return FFAppConstants.ContentMaxWidth;
                                } else {
                                  return FFAppConstants.ContentMaxWidth;
                                }
                              }(),
                              decoration: BoxDecoration(),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 60.0),
                                  child: Semantics(
                                    label: 'Enrollment_Continue_Button',
                                    child: wrapWithModel(
                                      model: _model.primaryButtonComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryButtonComponentWidget(
                                        buttonTitle: 'Continue',
                                        buttonWidth: valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return double.infinity;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 450.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 450.0;
                                            } else {
                                              return 450.0;
                                            }
                                          }(),
                                          450.0,
                                        ),
                                        buttonHeight: 48.0,
                                        buttonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 12.0,
                                        borderRadius: 16.0,
                                        buttonDisabledOption:
                                            (_model.textFieldAccountNumberTextController
                                                            .text ==
                                                        '') ||
                                                (_model.dateOfBirthValue ==
                                                        null ||
                                                    _model.dateOfBirthValue ==
                                                        ''),
                                        callback: () async {
                                          var _shouldSetState = false;
                                          _model.formOutput = true;
                                          if (_model.formKey.currentState ==
                                                  null ||
                                              !_model.formKey.currentState!
                                                  .validate()) {
                                            safeSetState(() =>
                                                _model.formOutput = false);
                                            return;
                                          }
                                          _shouldSetState = true;
                                          _model.registrationInitiateValidationResponse =
                                              await WhitebankGroupAPIGroup
                                                  .registrationInitiateWithValidationCall
                                                  .call(
                                            accountNumber:
                                                functions.removeHyphens(_model
                                                    .textFieldAccountNumberTextController
                                                    .text),
                                            birthDate: _model.dateOfBirthValue,
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                          );

                                          _shouldSetState = true;
                                          if (WhitebankGroupAPIGroup
                                                      .registrationInitiateWithValidationCall
                                                      .reason(
                                                    (_model.registrationInitiateValidationResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) !=
                                                  null &&
                                              WhitebankGroupAPIGroup
                                                      .registrationInitiateWithValidationCall
                                                      .reason(
                                                    (_model.registrationInitiateValidationResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ) !=
                                                  '') {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: functions
                                                            .mapError(
                                                                WhitebankGroupAPIGroup
                                                                    .registrationInitiateWithValidationCall
                                                                    .reason(
                                                              (_model.registrationInitiateValidationResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!)
                                                            .message,
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: functions
                                                            .mapError(
                                                                WhitebankGroupAPIGroup
                                                                    .registrationInitiateWithValidationCall
                                                                    .reason(
                                                              (_model.registrationInitiateValidationResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!)
                                                            .title,
                                                        primaryButtonAction:
                                                            () async {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else if (!(_model
                                                  .registrationInitiateValidationResponse
                                                  ?.succeeded ??
                                              true)) {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message:
                                                            WhitebankGroupAPIGroup
                                                                .registrationInitiateWithValidationCall
                                                                .detail(
                                                          (_model.registrationInitiateValidationResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!,
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: WhitebankGroupAPIGroup
                                                            .registrationInitiateWithValidationCall
                                                            .title(
                                                          (_model.registrationInitiateValidationResponse
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else if (WhitebankGroupAPIGroup
                                                  .registrationInitiateWithValidationCall
                                                  .status(
                                                (_model.registrationInitiateValidationResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              ResponseStatus
                                                  .ACCOUNT_VALIDATED.name) {
                                            // REQUIRED: Set EnrollingUser Appstate
                                            // EnrollingUserAppstate
                                            FFAppState().EnrollingUserAppstate =
                                                EnrollingUserStruct(
                                              sessionToken: WhitebankGroupAPIGroup
                                                  .registrationInitiateWithValidationCall
                                                  .sessionToken(
                                                (_model.registrationInitiateValidationResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              user: UserV3Struct(
                                                firstName: WhitebankGroupAPIGroup
                                                    .registrationInitiateWithValidationCall
                                                    .firstName(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                lastName: WhitebankGroupAPIGroup
                                                    .registrationInitiateWithValidationCall
                                                    .lastName(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                maskedEmail: WhitebankGroupAPIGroup
                                                    .registrationInitiateWithValidationCall
                                                    .maskedEmail(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                maskedContact:
                                                    WhitebankGroupAPIGroup
                                                        .registrationInitiateWithValidationCall
                                                        .maskedContact(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                                fullName:
                                                    '${WhitebankGroupAPIGroup.registrationInitiateWithValidationCall.firstName(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                )} ${WhitebankGroupAPIGroup.registrationInitiateWithValidationCall.lastName(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                )}',
                                                email: WhitebankGroupAPIGroup
                                                    .registrationInitiateWithValidationCall
                                                    .email(
                                                  (_model.registrationInitiateValidationResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              ),
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                              AccountValidationSuccessPageWidget
                                                  .routeName,
                                              queryParameters: {
                                                'sessionToken': serializeParam(
                                                  WhitebankGroupAPIGroup
                                                      .registrationInitiateWithValidationCall
                                                      .sessionToken(
                                                    (_model.registrationInitiateValidationResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'accountNumber': serializeParam(
                                                  functions.removeHyphens(_model
                                                      .textFieldAccountNumberTextController
                                                      .text),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          } else if (WhitebankGroupAPIGroup
                                                  .registrationInitiateWithValidationCall
                                                  .status(
                                                (_model.registrationInitiateValidationResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              'FAILED') {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .detail(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Something went wrong.',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .title(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else if (WhitebankGroupAPIGroup
                                                  .registrationInitiateWithValidationCall
                                                  .status(
                                                (_model.registrationInitiateValidationResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) !=
                                              '200') {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .detail(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Something went wrong.',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .title(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else if (WhitebankGroupAPIGroup
                                                  .registrationInitiateWithValidationCall
                                                  .error(
                                                (_model.registrationInitiateValidationResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'Unprocessable Entity') {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .message(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Something went wrong.',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .title(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          Navigator.pop(
                                                              context);
                                                          // Clear Fields
                                                          await Future.wait([
                                                            Future(() async {
                                                              safeSetState(() {
                                                                _model
                                                                    .textFieldAccountNumberTextController
                                                                    ?.clear();
                                                                _model
                                                                    .textFieldAccountNumberMask
                                                                    .clear();
                                                              });
                                                            }),
                                                            Future(() async {
                                                              _model.dateOfBirthValue =
                                                                  '';
                                                              safeSetState(
                                                                  () {});
                                                            }),
                                                          ]);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          CustomInformationalDialogWidget(
                                                        message: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .message(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Something went wrong.',
                                                        ),
                                                        primaryButtonTitle:
                                                            'Dismiss',
                                                        title: valueOrDefault<
                                                            String>(
                                                          WhitebankGroupAPIGroup
                                                              .registrationInitiateWithValidationCall
                                                              .title(
                                                            (_model.registrationInitiateValidationResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ),
                                                          'Oops!',
                                                        ),
                                                        primaryButtonAction:
                                                            () async {
                                                          Navigator.pop(
                                                              context);
                                                          // Clear Fields
                                                          await Future.wait([
                                                            Future(() async {
                                                              safeSetState(() {
                                                                _model
                                                                    .textFieldAccountNumberTextController
                                                                    ?.clear();
                                                                _model
                                                                    .textFieldAccountNumberMask
                                                                    .clear();
                                                              });
                                                            }),
                                                            Future(() async {
                                                              _model.dateOfBirthValue =
                                                                  '';
                                                              safeSetState(
                                                                  () {});
                                                            }),
                                                          ]);
                                                        },
                                                        secondaryButtonAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );

                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'Custom Mobile AppBar',
                      child: wrapWithModel(
                        model: _model.customMobileAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomMobileAppBarWidget(
                          pageTitle: '',
                          rightButtonIcon: null,
                          leftButtonIcon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          midRightButtonIcon: null,
                          buttonColor: Colors.transparent,
                          rightButtonAction: () async {},
                          leftButtonAction: () async {
                            context.safePop();
                          },
                          midRightButtonAction: () async {},
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'Custom Web AppBar',
                      child: wrapWithModel(
                        model: _model.customWebAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomWebAppBarWidget(
                          pageTitle: '',
                          leftButtonAction: () async {},
                          midButtonAction: () async {},
                          rightButtonAction: () async {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
