import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_bottom_sheet_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'edit_alias_component_model.dart';
export 'edit_alias_component_model.dart';

class EditAliasComponentWidget extends StatefulWidget {
  const EditAliasComponentWidget({
    super.key,
    this.accountType,
    this.accountOrder,
    required this.accountNickname,
  });

  final BankAccountType? accountType;
  final int? accountOrder;
  final String? accountNickname;

  @override
  State<EditAliasComponentWidget> createState() =>
      _EditAliasComponentWidgetState();
}

class _EditAliasComponentWidgetState extends State<EditAliasComponentWidget> {
  late EditAliasComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditAliasComponentModel());

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

    return Align(
      alignment: AlignmentDirectional(
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 0.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 0.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 1.0;
              } else {
                return 1.0;
              }
            }(),
            0.0,
          ),
          1.0),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return double.infinity;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return double.infinity;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 400.0;
          } else {
            return 400.0;
          }
        }(),
        height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 330.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 330.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return double.infinity;
          } else {
            return double.infinity;
          }
        }(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 32.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 0.0;
                } else {
                  return 0.0;
                }
              }(),
              0.0,
            )),
          ),
        ),
        alignment: AlignmentDirectional(0.0, 1.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Container(
                      width: 29.0,
                      height: 6.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Edit Nickname',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF383839),
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 25.0),
                  child: Text(
                    'Edit your account nickname to easily identify your accounts.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF444C66),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: wrapWithModel(
                  model: _model.accountNameTextfieldModel,
                  updateCallback: () => safeSetState(() {}),
                  child: PrimaryTextFieldComponentWidget(
                    textfieldTitle: 'Account Nickname',
                    maxLines: 1,
                    lineHeight: 1,
                    maxLength: 30,
                    initialValue: widget.accountNickname,
                    hintText: 'Account Nickname',
                    isReadOnly: _model.radioButtonClicked,
                    action: () async {
                      safeSetState(() {});
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowRadioButton(
                      options: ['Remove account nickname'].toList(),
                      onChanged: (val) async {
                        safeSetState(() {});
                        safeSetState(() {
                          _model.accountNameTextfieldModel.textController
                              ?.clear();
                        });
                        _model.radioButtonClicked = !_model.radioButtonClicked;
                        safeSetState(() {});
                      },
                      controller: _model.radioButtonValueController ??=
                          FormFieldController<String>(null),
                      optionHeight: 32.0,
                      textStyle: FlutterFlowTheme.of(context)
                          .labelMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                      selectedTextStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor: FlutterFlowTheme.of(context).primary,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      toggleable: true,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: wrapWithModel(
                        model: _model.primaryButtonComponentModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: PrimaryButtonComponentWidget(
                          buttonTitle: 'Cancel',
                          buttonWidth: 166.0,
                          buttonHeight: 48.0,
                          buttonColor: Colors.transparent,
                          textColor: FlutterFlowTheme.of(context).primary,
                          fontSize: 14.0,
                          borderRadius: 16.0,
                          borderColor: FlutterFlowTheme.of(context).primary,
                          childPadding: 16.0,
                          buttonDisabledOption: false,
                          callback: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) => wrapWithModel(
                          model: _model.primaryButtonComponentModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: PrimaryButtonComponentWidget(
                            buttonTitle: 'Save',
                            buttonWidth: 166.0,
                            buttonHeight: 48.0,
                            buttonColor: FlutterFlowTheme.of(context).primary,
                            textColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 14.0,
                            borderRadius: 16.0,
                            childPadding: 16.0,
                            buttonDisabledOption: (_model.accountNameTextfieldModel
                                            .textController.text ==
                                        '') &&
                                !_model.radioButtonClicked,
                            callback: () async {
                              var _shouldSetState = false;
                              if (_model.radioButtonClicked == false) {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.accountNameTextfieldModel
                                        .textController.text ==
                                    FFAppState().alias) {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: WebViewAware(
                                          child:
                                              CustomInformationalDialogWidget(
                                            message:
                                                'This is already the account alias.',
                                            primaryButtonTitle: 'Close',
                                            primaryButtonAction: () async {
                                              Navigator.pop(context);
                                            },
                                            secondaryButtonAction: () async {},
                                          ),
                                        ),
                                      );
                                    },
                                  );

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              }
                              _model.apiResult8rv = await WhitebankGroupAPIGroup
                                  .patchAliasCall
                                  .call(
                                accountNumber: FFAppState()
                                    .currentAccountV2
                                    .fullAccountNumber,
                                alias: _model.radioButtonClicked
                                    ? widget.accountType?.name
                                    : _model.accountNameTextfieldModel
                                        .textController.text,
                                accessToken: currentAuthenticationToken,
                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                              );

                              _shouldSetState = true;
                              if ((_model.apiResult8rv?.succeeded ?? true)) {
                                FFAppState().alias = _model.radioButtonClicked
                                    ? widget.accountType!.name
                                    : _model.accountNameTextfieldModel
                                        .textController.text;
                                FFAppState().updateCurrentAccountV2Struct(
                                  (e) => e
                                    ..alias = _model.accountNameTextfieldModel
                                        .textController.text,
                                );
                                FFAppState().update(() {});
                                Navigator.pop(context);
                                _model.radioButtonClicked = false;
                                safeSetState(() {});
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: CustomMobileBottomSheetWidget(
                                          textTitle:
                                              'Changes saved successfully.',
                                          btnText: 'Okay',
                                          btnCallback: () async {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                await action_blocks
                                    .getAccountsWithBalance(context);
                                safeSetState(() {});
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: WebViewAware(
                                        child: CustomInformationalDialogWidget(
                                          message:
                                              'Error Updating Alias. Please try again later!',
                                          primaryButtonTitle: 'Close',
                                          primaryButtonAction: () async {
                                            Navigator.pop(context);
                                          },
                                          secondaryButtonAction: () async {},
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
