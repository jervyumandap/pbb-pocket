import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/send_money_manually_component/send_money_manually_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'send_money_component_model.dart';
export 'send_money_component_model.dart';

class SendMoneyComponentWidget extends StatefulWidget {
  const SendMoneyComponentWidget({
    super.key,
    this.fundTransferType,
  });

  final String? fundTransferType;

  @override
  State<SendMoneyComponentWidget> createState() =>
      _SendMoneyComponentWidgetState();
}

class _SendMoneyComponentWidgetState extends State<SendMoneyComponentWidget> {
  late SendMoneyComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SendMoneyComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 400.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).whiteText,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (false)
                wrapWithModel(
                  model: _model.sendMoneyManuallyComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: SendMoneyManuallyComponentWidget(
                    callback: () async {
                      Navigator.pop(context);
                      _model.referenceNumber13 =
                          await actions.genReferenceNumber(
                        FFAppState().IsInstaPayChannelSelected,
                      );

                      safeSetState(() {});
                    },
                  ),
                ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 16.0,
                              buttonSize: 32.0,
                              icon: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context).appBarTitle,
                                size: 20.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ].divide(SizedBox(width: 20.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (widget.fundTransferType == 'toOthers')
                              Container(
                                width: double.infinity,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .bgThemeColor,
                                    width: 1.0,
                                  ),
                                ),
                                child: FlutterFlowDropDown<String>(
                                  controller:
                                      _model.bankDropdownValueController ??=
                                          FormFieldController<String>(
                                    _model.bankDropdownValue ??=
                                        'Philippine Business Bank',
                                  ),
                                  options: [
                                    'Philippine Business Bank',
                                    'UnionBank of The Philippines',
                                    'Gcash / G-Exchange'
                                  ],
                                  onChanged: (val) => safeSetState(
                                      () => _model.bankDropdownValue = val),
                                  width: 200.0,
                                  height: 40.0,
                                  searchHintTextStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelMediumFamily,
                                            color: Color(0xFF1E1E1E),
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelMediumIsCustom,
                                          ),
                                  searchTextStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  hintText: 'Select Bank',
                                  searchHintText: 'Search...',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xFF131214),
                                    size: 24.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: true,
                                  isMultiSelect: false,
                                ),
                              ),
                            wrapWithModel(
                              model: _model.textfieldDoubleModel,
                              updateCallback: () => safeSetState(() {}),
                              child: TextfieldDoubleWidget(
                                maxLength: 16,
                                title: 'Account Number',
                                isAmount: false,
                                callback: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.accountNameTextfieldModel,
                              updateCallback: () => safeSetState(() {}),
                              child: PrimaryTextFieldComponentWidget(
                                textfieldTitle: 'Name',
                                action: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.remarksTextfieldModel,
                              updateCallback: () => safeSetState(() {}),
                              child: PrimaryTextFieldComponentWidget(
                                textfieldTitle: 'Remarks',
                                action: () async {},
                              ),
                            ),
                          ].divide(SizedBox(height: 18.0)),
                        ),
                        Container(
                          width: 596.5,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).whiteText,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'PHP',
                                    style: FlutterFlowTheme.of(context)
                                        .displayMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .displayMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .neutral3,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .displayMediumIsCustom,
                                        ),
                                  ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.textfieldAmountDoubleModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextfieldDoubleWidget(
                                        title: 'Amount',
                                        isAmount: true,
                                        callback: () async {},
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.textfieldAmountDoubleModel
                                              .textController?.text = '100';
                                        },
                                        child: Container(
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.close,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'PHP 100',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF04605F),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.textfieldAmountDoubleModel
                                              .textController?.text = '200';
                                        },
                                        child: Container(
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFDAF8FF),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.close,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'PHP 200',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF04605F),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.textfieldAmountDoubleModel
                                              .textController?.text = '500';
                                        },
                                        child: Container(
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFDAF8FF),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.close,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 16.0,
                                                ),
                                                Text(
                                                  'PHP 500',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF04605F),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 18.0)),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            FFAppState().updateFundTransferRequestStruct(
                              (e) => e
                                ..recipientName = _model
                                    .accountNameTextfieldModel
                                    .textController
                                    .text
                                ..recipientAccountNumber = _model
                                    .textfieldDoubleModel.textController.text
                                ..recipientBankCode = _model.bankDropdownValue
                                ..amount = double.tryParse(_model
                                    .textfieldAmountDoubleModel
                                    .textController
                                    .text)
                                ..remarks = _model.remarksTextfieldModel
                                                .textController.text !=
                                            ''
                                    ? _model.remarksTextfieldModel
                                        .textController.text
                                    : 'Remarks Default',
                            );
                            FFAppState().update(() {});
                            Navigator.pop(context);
                          },
                          text: 'Confirm',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(SizedBox(height: 18.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
