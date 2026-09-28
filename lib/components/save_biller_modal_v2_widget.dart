import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_bottom_sheet_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'save_biller_modal_v2_model.dart';
export 'save_biller_modal_v2_model.dart';

class SaveBillerModalV2Widget extends StatefulWidget {
  const SaveBillerModalV2Widget({
    super.key,
    required this.nickName,
    required this.textfieldTitle,
    required this.bottomSheetTitle,
    String? text,
  }) : this.text = text ?? 'Select the account you want to sendmoney from';

  final String? nickName;
  final String? textfieldTitle;
  final String? bottomSheetTitle;
  final String text;

  @override
  State<SaveBillerModalV2Widget> createState() =>
      _SaveBillerModalV2WidgetState();
}

class _SaveBillerModalV2WidgetState extends State<SaveBillerModalV2Widget> {
  late SaveBillerModalV2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveBillerModalV2Model());

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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 23.0),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.bottomSheetTitle,
                          'Save Recipient',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFF00558D),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 25.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.text,
                          'Save this recipient for faster transaction next time',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFF444C66),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: wrapWithModel(
                      model: _model.nicknameTextfieldModel,
                      updateCallback: () => safeSetState(() {}),
                      child: PrimaryTextFieldComponentWidget(
                        textfieldTitle: valueOrDefault<String>(
                          widget.textfieldTitle,
                          'Account Nickname',
                        ),
                        maxLines: 1,
                        lineHeight: 1,
                        maxLength: 12,
                        initialValue: '',
                        hintText: 'Account Nickname',
                        isReadOnly: false,
                        minLength: 5.0,
                        action: () async {
                          safeSetState(() {});
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
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
                                buttonColor:
                                    FlutterFlowTheme.of(context).primary,
                                textColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 14.0,
                                borderRadius: 16.0,
                                childPadding: 16.0,
                                buttonDisabledOption: _model.nicknameTextfieldModel.textController
                                            .text ==
                                        '',
                                callback: () async {
                                  _model.apiResultyp3 =
                                      await WhitebankGroupAPIGroup
                                          .retailSavedBillersAddCall
                                          .call(
                                    billerId: FFAppState()
                                        .FundTransferiniatedResponse
                                        .billerId,
                                    nickname: _model.nicknameTextfieldModel
                                        .textController.text,
                                    accountNumber: FFAppState()
                                        .FundTransferiniatedResponse
                                        .sourceAccountNumber,
                                    accountHolderName:
                                        currentUserData?.user.fullName,
                                    accessToken: currentAuthenticationToken,
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                  );

                                  if ((_model.apiResultyp3?.succeeded ??
                                      true)) {
                                    Navigator.pop(context);
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
                                                CustomMobileBottomSheetWidget(
                                              textTitle: 'Biller Save',
                                              btnText: 'Okay',
                                              textBody: '',
                                              btnCallback: () async {
                                                context.pushNamed(
                                                    DashboardWidget.routeName);
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    FFAppState().isFromFavorite = false;
                                    safeSetState(() {});
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: WebViewAware(
                                            child:
                                                CustomInformationalDialogWidget(
                                              message: 'Something went wrong',
                                              primaryButtonTitle: 'Close',
                                              primaryButtonAction: () async {
                                                Navigator.pop(context);
                                              },
                                              secondaryButtonAction:
                                                  () async {},
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  }

                                  safeSetState(() {});
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
        ),
      ),
    );
  }
}
