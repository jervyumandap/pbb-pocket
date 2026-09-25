import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/settings/manage_passkey_bottom_sheet/manage_passkey_bottom_sheet_widget.dart';
import '/settings/rename_revoke_passkey_bottom_sheet/rename_revoke_passkey_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'passkey_credentials_page_model.dart';
export 'passkey_credentials_page_model.dart';

/// Money Transfer Form
class PasskeyCredentialsPageWidget extends StatefulWidget {
  const PasskeyCredentialsPageWidget({super.key});

  static String routeName = 'PasskeyCredentialsPage';
  static String routePath = '/passkeyCredentialsPage';

  @override
  State<PasskeyCredentialsPageWidget> createState() =>
      _PasskeyCredentialsPageWidgetState();
}

class _PasskeyCredentialsPageWidgetState
    extends State<PasskeyCredentialsPageWidget> {
  late PasskeyCredentialsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasskeyCredentialsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
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
                    child: Container(
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Semantics(
                                        label: 'Header Text',
                                        child: Text(
                                          'Passkey Credentials',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Semantics(
                                        label: 'Sub Header Text',
                                        child: Text(
                                          'Review the credentials that currently have access to your account.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLargeFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLargeIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 16.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: (_model.apiRequestCompleter ??=
                                        Completer<ApiCallResponse>()
                                          ..complete(WhitebankGroupAPIGroup
                                              .retailListPasskeyCredentialsCall
                                              .call(
                                            accessToken:
                                                currentAuthenticationToken,
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                          )))
                                    .future,
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final credentialsColumnRetailListPasskeyCredentialsResponse =
                                      snapshot.data!;

                                  return Semantics(
                                    label: 'Credentials-Column',
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                            maxHeight: 500.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Builder(
                                            builder: (context) {
                                              final credentials = (credentialsColumnRetailListPasskeyCredentialsResponse
                                                              .jsonBody
                                                              .toList()
                                                              .map<WBPasskeyCredentialStruct?>(
                                                                  WBPasskeyCredentialStruct
                                                                      .maybeFromMap)
                                                              .toList()
                                                          as Iterable<
                                                              WBPasskeyCredentialStruct?>)
                                                      .withoutNulls
                                                      .where((e) =>
                                                          e.revokedAt == '')
                                                      .toList()
                                                      .toList() ??
                                                  [];

                                              return Semantics(
                                                label: 'Column Items',
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: List.generate(
                                                      credentials.length,
                                                      (credentialsIndex) {
                                                    final credentialsItem =
                                                        credentials[
                                                            credentialsIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        ManagePasskeyBottomSheetWidget(
                                                                      id: credentialsItem
                                                                          .id,
                                                                      name: credentialsItem
                                                                          .name,
                                                                      callback:
                                                                          (actionType) async {
                                                                        Navigator.pop(
                                                                            context);
                                                                        await Future
                                                                            .delayed(
                                                                          Duration(
                                                                            milliseconds:
                                                                                200,
                                                                          ),
                                                                        );
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: GestureDetector(
                                                                                onTap: () {
                                                                                  FocusScope.of(context).unfocus();
                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                },
                                                                                child: Padding(
                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                  child: RenameRevokePasskeyBottomSheetWidget(
                                                                                    id: credentialsItem.id,
                                                                                    name: credentialsItem.name,
                                                                                    actionType: actionType,
                                                                                    renameCallback: (newName) async {
                                                                                      _model.renameResponse = await WhitebankGroupAPIGroup.retailRenamePasskeyCredentialCall.call(
                                                                                        id: credentialsItem.id,
                                                                                        name: newName,
                                                                                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                        accessToken: currentAuthenticationToken,
                                                                                      );

                                                                                      Navigator.pop(context);
                                                                                      safeSetState(() => _model.apiRequestCompleter = null);
                                                                                      await _model.waitForApiRequestCompleted();
                                                                                    },
                                                                                    revokeCallback: () async {
                                                                                      _model.revokeResponse = await WhitebankGroupAPIGroup.retailRevokePasskeyCredentialCall.call(
                                                                                        id: credentialsItem.id,
                                                                                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                        accessToken: currentAuthenticationToken,
                                                                                      );

                                                                                      Navigator.pop(context);
                                                                                      safeSetState(() => _model.apiRequestCompleter = null);
                                                                                      await _model.waitForApiRequestCompleted();
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          safeSetState(() {});
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Icon(
                                                                Icons
                                                                    .devices_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Semantics(
                                                                        label:
                                                                            'Credential Name Text',
                                                                        child:
                                                                            Text(
                                                                          '${credentialsItem.name} - ${credentialsItem.deviceType}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                letterSpacing: 0.0,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Semantics(
                                                                          label:
                                                                              'Last Used Text',
                                                                          child:
                                                                              Text(
                                                                            'Last used ${dateTimeFormat(
                                                                              "relative",
                                                                              functions.stringToDateTimeWithFormat(credentialsItem.lastUsedAt),
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )}',
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodySmallIsCustom,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        if (!((credentialsColumnRetailListPasskeyCredentialsResponse
                                                    .jsonBody
                                                    .toList()
                                                    .map<WBPasskeyCredentialStruct?>(
                                                        WBPasskeyCredentialStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    WBPasskeyCredentialStruct?>)
                                            .withoutNulls
                                            .isNotEmpty))
                                          Container(
                                            width: double.infinity,
                                            height: 160.0,
                                            constraints: BoxConstraints(
                                              maxHeight: 500.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Semantics(
                                                label: 'Empty List Placeholder',
                                                child: wrapWithModel(
                                                  model: _model
                                                      .emptyListComponentModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      EmptyListComponentWidget(
                                                    title:
                                                        'It looks like you haven\'t set up a passkey yet.',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  );
                                },
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
            if (false)
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Semantics(
                  label: 'LoadingStateComponent',
                  child: wrapWithModel(
                    model: _model.loadingStateComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: LoadingStateComponentWidget(
                      isFinished: _model.isLoading,
                    ),
                  ),
                ),
              ),
            Builder(
              builder: (context) => Semantics(
                label: 'CustomMobileAppBar',
                child: wrapWithModel(
                  model: _model.customMobileAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomMobileAppBarWidget(
                    pageTitle: '',
                    rightButtonIcon: Icon(
                      Icons.devices_other,
                      color: Color(0xFF444C66),
                      size: 24.0,
                    ),
                    leftButtonIcon: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    midRightButtonIcon: null,
                    buttonColor: Colors.transparent,
                    buttonWithoutBackground: false,
                    btnWOBgIcon: Icon(
                      Icons.arrow_back,
                      color: Color(0xFF444C66),
                    ),
                    btnWOBgColor: Color(0xFF444C66),
                    btnWOBgIconSize: 24.0,
                    isTitleLeftAlign: true,
                    titleLeftAlign: 'Passkeys',
                    textLeftAlignColor: Color(0xFF444C66),
                    rightButtonAction: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: CustomReusableBottomSheetV2Widget(
                                  title: 'Register Passkey',
                                  message:
                                      'Would you like to register a passkey for faster and more secure sign-ins on this device?',
                                  buttonTitle: 'Continue',
                                  cancelButtonTitle: 'Cancel',
                                  callback: () async {
                                    var _shouldSetState = false;
                                    _model.retrievedDevicePublicKey =
                                        await actions.retrieveStoredData(
                                      'device_public_key',
                                    );
                                    _shouldSetState = true;
                                    if (_model.retrievedDevicePublicKey !=
                                            null &&
                                        _model.retrievedDevicePublicKey != '') {
                                      _model.pKRegistrationVerifyPayload =
                                          await actions
                                              .passkeyRegistrationVerifyPayload(
                                        currentUserData!.user.userName,
                                        currentAuthenticationToken!,
                                        _model.retrievedDevicePublicKey!,
                                      );
                                      _shouldSetState = true;
                                      _model.pKVerifyRegistrationResponse =
                                          await WhitebankGroupAPIGroup
                                              .retailVerifyPasskeyRegistrationCall
                                              .call(
                                        passkeyName: getJsonField(
                                          _model.pKRegistrationVerifyPayload,
                                          r'''$.passkeyName''',
                                        ).toString(),
                                        id: getJsonField(
                                          _model.pKRegistrationVerifyPayload,
                                          r'''$.id''',
                                        ).toString(),
                                        rawId: getJsonField(
                                          _model.pKRegistrationVerifyPayload,
                                          r'''$.rawId''',
                                        ).toString(),
                                        type: getJsonField(
                                          _model.pKRegistrationVerifyPayload,
                                          r'''$.type''',
                                        ).toString(),
                                        responseJson: getJsonField(
                                          _model.pKRegistrationVerifyPayload,
                                          r'''$.response''',
                                        ),
                                        authenticatorAttachment: getJsonField(
                                          _model.pKRegistrationVerifyPayload,
                                          r'''$.authenticatorAttachment''',
                                        ).toString(),
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                        accessToken: currentAuthenticationToken,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.pKVerifyRegistrationResponse
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().hasPasskey = true;
                                        FFAppState().update(() {});
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
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      CustomInformationalDialogWidget(
                                                    message:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailVerifyPasskeyRegistrationCall
                                                          .detail(
                                                        (_model.pKVerifyRegistrationResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Something went wrong.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailVerifyPasskeyRegistrationCall
                                                          .title(
                                                        (_model.pKVerifyRegistrationResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Oops!',
                                                    ),
                                                    primaryButtonAction:
                                                        () async {
                                                      Navigator.pop(context);
                                                    },
                                                    secondaryButtonAction:
                                                        () async {},
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }

                                      Navigator.pop(
                                          context,
                                          (_model.pKVerifyRegistrationResponse
                                                  ?.succeeded ??
                                              true));
                                      safeSetState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
                                      return;
                                    } else {
                                      _model.deviceKeypairOutput =
                                          await actions.generatePcKeyPair();
                                      _shouldSetState = true;
                                      _model.pKRegistrationVerifyPayload2 =
                                          await actions
                                              .passkeyRegistrationVerifyPayload(
                                        currentUserData!.user.userName,
                                        currentAuthenticationToken!,
                                        getJsonField(
                                          _model.deviceKeypairOutput,
                                          r'''$.publicKeyPem''',
                                        ).toString(),
                                      );
                                      _shouldSetState = true;
                                      _model.pKVerifyRegistrationResponse2 =
                                          await WhitebankGroupAPIGroup
                                              .retailVerifyPasskeyRegistrationCall
                                              .call(
                                        passkeyName: getJsonField(
                                          _model.pKRegistrationVerifyPayload2,
                                          r'''$.passkeyName''',
                                        ).toString(),
                                        id: getJsonField(
                                          _model.pKRegistrationVerifyPayload2,
                                          r'''$.id''',
                                        ).toString(),
                                        rawId: getJsonField(
                                          _model.pKRegistrationVerifyPayload2,
                                          r'''$.rawId''',
                                        ).toString(),
                                        type: getJsonField(
                                          _model.pKRegistrationVerifyPayload2,
                                          r'''$.type''',
                                        ).toString(),
                                        responseJson: getJsonField(
                                          _model.pKRegistrationVerifyPayload2,
                                          r'''$.response''',
                                        ),
                                        authenticatorAttachment: getJsonField(
                                          _model.pKRegistrationVerifyPayload2,
                                          r'''$.authenticatorAttachment''',
                                        ).toString(),
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                        accessToken: currentAuthenticationToken,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.pKVerifyRegistrationResponse2
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().hasPasskey = true;
                                        FFAppState().update(() {});
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
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(dialogContext)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child:
                                                      CustomInformationalDialogWidget(
                                                    message:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailVerifyPasskeyRegistrationCall
                                                          .detail(
                                                        (_model.pKVerifyRegistrationResponse2
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Something went wrong.',
                                                    ),
                                                    primaryButtonTitle:
                                                        'Dismiss',
                                                    title:
                                                        valueOrDefault<String>(
                                                      WhitebankGroupAPIGroup
                                                          .retailVerifyPasskeyRegistrationCall
                                                          .title(
                                                        (_model.pKVerifyRegistrationResponse2
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'Oops!',
                                                    ),
                                                    primaryButtonAction:
                                                        () async {
                                                      Navigator.pop(context);
                                                    },
                                                    secondaryButtonAction:
                                                        () async {},
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }

                                      Navigator.pop(
                                          context,
                                          (_model.pKVerifyRegistrationResponse2
                                                  ?.succeeded ??
                                              true));
                                      safeSetState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
                                      return;
                                    }
                                  },
                                  cancelCallback: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));

                      safeSetState(() {});
                    },
                    leftButtonAction: () async {
                      context.safePop();
                    },
                    midRightButtonAction: () async {},
                  ),
                ),
              ),
            ),
            Builder(
              builder: (context) => wrapWithModel(
                model: _model.customWebAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CustomWebAppBarWidget(
                  pageTitle: '',
                  leftButtonIcon: null,
                  rightButtonIcon: Icon(
                    Icons.devices_other,
                  ),
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midButtonAction: () async {},
                  rightButtonAction: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: CustomReusableBottomSheetV2Widget(
                                title: 'Register Passkey',
                                message:
                                    'Would you like to register a passkey for faster and more secure sign-ins on this device?',
                                buttonTitle: 'Continue',
                                cancelButtonTitle: 'Cancel',
                                callback: () async {
                                  var _shouldSetState = false;
                                  _model.retrievedDevicePublicKey2 =
                                      await actions.retrieveStoredData(
                                    'device_public_key',
                                  );
                                  _shouldSetState = true;
                                  if (_model.retrievedDevicePublicKey != null &&
                                      _model.retrievedDevicePublicKey != '') {
                                    _model.pKRegistrationVerifyPayload3 =
                                        await actions
                                            .passkeyRegistrationVerifyPayload(
                                      currentUserData!.user.userName,
                                      currentAuthenticationToken!,
                                      _model.retrievedDevicePublicKey2!,
                                    );
                                    _shouldSetState = true;
                                    _model.pKVerifyRegistrationResponse3 =
                                        await WhitebankGroupAPIGroup
                                            .retailVerifyPasskeyRegistrationCall
                                            .call(
                                      passkeyName: getJsonField(
                                        _model.pKRegistrationVerifyPayload3,
                                        r'''$.passkeyName''',
                                      ).toString(),
                                      id: getJsonField(
                                        _model.pKRegistrationVerifyPayload3,
                                        r'''$.id''',
                                      ).toString(),
                                      rawId: getJsonField(
                                        _model.pKRegistrationVerifyPayload3,
                                        r'''$.rawId''',
                                      ).toString(),
                                      type: getJsonField(
                                        _model.pKRegistrationVerifyPayload3,
                                        r'''$.type''',
                                      ).toString(),
                                      responseJson: getJsonField(
                                        _model.pKRegistrationVerifyPayload3,
                                        r'''$.response''',
                                      ),
                                      authenticatorAttachment: getJsonField(
                                        _model.pKRegistrationVerifyPayload3,
                                        r'''$.authenticatorAttachment''',
                                      ).toString(),
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.pKVerifyRegistrationResponse3
                                            ?.succeeded ??
                                        true)) {
                                      FFAppState().hasPasskey = true;
                                      FFAppState().update(() {});
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
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    CustomInformationalDialogWidget(
                                                  message: WhitebankGroupAPIGroup
                                                      .retailVerifyPasskeyRegistrationCall
                                                      .detail(
                                                    (_model.pKVerifyRegistrationResponse3
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!,
                                                  primaryButtonTitle: 'Dismiss',
                                                  title: WhitebankGroupAPIGroup
                                                      .retailVerifyPasskeyRegistrationCall
                                                      .title(
                                                    (_model.pKVerifyRegistrationResponse3
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  primaryButtonAction:
                                                      () async {
                                                    Navigator.pop(context);
                                                  },
                                                  secondaryButtonAction:
                                                      () async {},
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }

                                    Navigator.pop(
                                        context,
                                        (_model.pKVerifyRegistrationResponse3
                                                ?.succeeded ??
                                            true));
                                    safeSetState(() =>
                                        _model.apiRequestCompleter = null);
                                    await _model.waitForApiRequestCompleted();
                                    return;
                                  } else {
                                    _model.deviceKeypairOutput3 =
                                        await actions.generatePcKeyPair();
                                    _shouldSetState = true;
                                    _model.pKRegistrationVerifyPayload4 =
                                        await actions
                                            .passkeyRegistrationVerifyPayload(
                                      currentUserData!.user.userName,
                                      currentAuthenticationToken!,
                                      getJsonField(
                                        _model.deviceKeypairOutput3,
                                        r'''$.publicKeyPem''',
                                      ).toString(),
                                    );
                                    _shouldSetState = true;
                                    _model.pKVerifyRegistrationResponse4 =
                                        await WhitebankGroupAPIGroup
                                            .retailVerifyPasskeyRegistrationCall
                                            .call(
                                      passkeyName: getJsonField(
                                        _model.pKRegistrationVerifyPayload4,
                                        r'''$.passkeyName''',
                                      ).toString(),
                                      id: getJsonField(
                                        _model.pKRegistrationVerifyPayload4,
                                        r'''$.id''',
                                      ).toString(),
                                      rawId: getJsonField(
                                        _model.pKRegistrationVerifyPayload4,
                                        r'''$.rawId''',
                                      ).toString(),
                                      type: getJsonField(
                                        _model.pKRegistrationVerifyPayload4,
                                        r'''$.type''',
                                      ).toString(),
                                      responseJson: getJsonField(
                                        _model.pKRegistrationVerifyPayload4,
                                        r'''$.response''',
                                      ),
                                      authenticatorAttachment: getJsonField(
                                        _model.pKRegistrationVerifyPayload4,
                                        r'''$.authenticatorAttachment''',
                                      ).toString(),
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.pKVerifyRegistrationResponse4
                                            ?.succeeded ??
                                        true)) {
                                      FFAppState().hasPasskey = true;
                                      FFAppState().update(() {});
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
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child:
                                                    CustomInformationalDialogWidget(
                                                  message:
                                                      valueOrDefault<String>(
                                                    WhitebankGroupAPIGroup
                                                        .retailVerifyPasskeyRegistrationCall
                                                        .detail(
                                                      (_model.pKVerifyRegistrationResponse4
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    'Something went wrong.',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
                                                  title: valueOrDefault<String>(
                                                    WhitebankGroupAPIGroup
                                                        .retailVerifyPasskeyRegistrationCall
                                                        .title(
                                                      (_model.pKVerifyRegistrationResponse4
                                                              ?.jsonBody ??
                                                          ''),
                                                    ),
                                                    'Oops!',
                                                  ),
                                                  primaryButtonAction:
                                                      () async {
                                                    Navigator.pop(context);
                                                  },
                                                  secondaryButtonAction:
                                                      () async {},
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }

                                    Navigator.pop(
                                        context,
                                        (_model.pKVerifyRegistrationResponse4
                                                ?.succeeded ??
                                            true));
                                    safeSetState(() =>
                                        _model.apiRequestCompleter = null);
                                    await _model.waitForApiRequestCompleted();
                                    return;
                                  }
                                },
                                cancelCallback: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));

                    safeSetState(() {});
                  },
                ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
            ))
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Semantics(
                  label: 'MobileNavigationBar',
                  child: wrapWithModel(
                    model: _model.mobileNavigationBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MobileNavigationBarWidget(
                      pageIndex: 1,
                      shouldHideBottomNav: false,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
