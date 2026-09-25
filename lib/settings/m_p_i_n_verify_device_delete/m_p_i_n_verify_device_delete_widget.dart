import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/m_pin/pin_component/pin_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'm_p_i_n_verify_device_delete_model.dart';
export 'm_p_i_n_verify_device_delete_model.dart';

class MPINVerifyDeviceDeleteWidget extends StatefulWidget {
  const MPINVerifyDeviceDeleteWidget({
    super.key,
    required this.id,
    required this.deviceName,
  });

  final String? id;
  final String? deviceName;

  static String routeName = 'MPINVerifyDeviceDelete';
  static String routePath = '/mPINVerifyDeviceDelete';

  @override
  State<MPINVerifyDeviceDeleteWidget> createState() =>
      _MPINVerifyDeviceDeleteWidgetState();
}

class _MPINVerifyDeviceDeleteWidgetState
    extends State<MPINVerifyDeviceDeleteWidget> {
  late MPINVerifyDeviceDeleteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MPINVerifyDeviceDeleteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().pinInput = '';
      safeSetState(() {});
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
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 36.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/fuueei.png',
                              width: 120.0,
                              height: 27.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 25.0, 0.0, 0.0),
                              child: Text(
                                'Enter Mpin to delete ${widget.deviceName}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                            Text(
                              'Enter your MPIN',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF5C6466),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 62.0, 0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.pinComponentModel,
                            updateCallback: () => safeSetState(() {}),
                            child: PinComponentWidget(
                              callback: () async {
                                _model.apiResultqiq =
                                    await WhitebankGroupAPIGroup
                                        .retailSettingsDeviceRemoveChallengeCall
                                        .call(
                                  accessToken: currentAuthenticationToken,
                                  id: widget.id,
                                  deviceId: FFAppState().DeviceDetails.deviceId,
                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                );

                                if ((_model.apiResultqiq?.succeeded ?? true)) {
                                  _model.sig = await actions.createPcSignature(
                                    DeviceSignaturePayloadModelStruct(
                                      mpin: FFAppState().pinInput,
                                      challenge: getJsonField(
                                        (_model.apiResultqiq?.jsonBody ?? ''),
                                        r'''$.challenge''',
                                      ).toString(),
                                    ),
                                  );
                                  _model.apiResult8xo =
                                      await WhitebankGroupAPIGroup
                                          .retailSettingsDeviceRemoveConfirmCall
                                          .call(
                                    accessToken: currentAuthenticationToken,
                                    id: widget.id,
                                    method: 'mpin',
                                    deviceId:
                                        FFAppState().DeviceDetails.deviceId,
                                    challenge: getJsonField(
                                      (_model.apiResultqiq?.jsonBody ?? ''),
                                      r'''$.challenge''',
                                    ).toString(),
                                    signature: getJsonField(
                                      _model.sig,
                                      r'''$.signatureBase64''',
                                    ).toString(),
                                    mpin: FFAppState().pinInput,
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                  );

                                  if ((_model.apiResult8xo?.succeeded ??
                                      true)) {
                                    context.pushNamed(
                                        SuccessDeleteDeviceWidget.routeName);
                                  } else {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return WebViewAware(
                                                  child: AlertDialog(
                                                    title: Text('Invalid MPIN'),
                                                    content: Text(
                                                        'Invalid MPIN. Please try again'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                false),
                                                        child: Text('Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                true),
                                                        child: Text('Confirm'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ) ??
                                            false;
                                  }
                                }

                                safeSetState(() {});
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 64.0),
                    child: Text(
                      'Forgot MPIN?',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
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
    );
  }
}
