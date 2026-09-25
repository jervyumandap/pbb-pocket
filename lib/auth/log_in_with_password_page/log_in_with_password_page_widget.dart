import '/auth/login_with_username_component/login_with_username_component_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'log_in_with_password_page_model.dart';
export 'log_in_with_password_page_model.dart';

class LogInWithPasswordPageWidget extends StatefulWidget {
  const LogInWithPasswordPageWidget({
    super.key,
    this.username,
    required this.deviceDetails,
    this.outputToken,
  });

  final String? username;
  final dynamic deviceDetails;
  final String? outputToken;

  static String routeName = 'LogInWithPasswordPage';
  static String routePath = '/logInWithPasswordPage';

  @override
  State<LogInWithPasswordPageWidget> createState() =>
      _LogInWithPasswordPageWidgetState();
}

class _LogInWithPasswordPageWidgetState
    extends State<LogInWithPasswordPageWidget> {
  late LogInWithPasswordPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogInWithPasswordPageModel());

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
                  color: FlutterFlowTheme.of(context).bgThemeColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/PBBBackgroundWeb.png',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
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
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: wrapWithModel(
                              model: _model.loginWithUsernameComponentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: LoginWithUsernameComponentWidget(
                                username: widget.username!,
                                loginCallback: () async {
                                  var _shouldSetState = false;
                                  await _model.loginUserLogin(
                                    context,
                                    inputUsername: widget.username != null &&
                                            widget.username != ''
                                        ? widget.username
                                        : _model.loginWithUsernameComponentModel
                                            .textFieldUnTextController.text,
                                    inputPassword: _model
                                        .loginWithUsernameComponentModel
                                        .textFieldPwTextController
                                        .text,
                                    inputDeviceDetails:
                                        DeviceDataStruct.maybeFromMap(
                                            widget.deviceDetails),
                                    outputToken: widget.outputToken,
                                  );
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.loginWithUsernameComponentModel
                                        .textFieldUnTextController
                                        ?.clear();
                                    _model.loginWithUsernameComponentModel
                                        .textFieldPwTextController
                                        ?.clear();
                                  });
                                  if ((isAndroid == true) || isiOS) {
                                    _model.hehehehehehe = await action_blocks
                                        .getUserDeviceDetails(
                                      context,
                                      username: widget.username,
                                      deviceDetails:
                                          DeviceDataStruct.maybeFromMap(
                                              widget.deviceDetails),
                                      token: widget.outputToken,
                                    );
                                    _shouldSetState = true;
                                  } else {
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                forgotPasswordPage: () async {
                                  context.pushNamed(
                                    AccountValidationPageWidget.routeName,
                                    queryParameters: {
                                      'module': serializeParam(
                                        '/forgotPasswordPage',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/check_primary_icon.png',
                              width: 16.0,
                              height: 16.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    wrapWithModel(
                      model: _model.customMobileAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomMobileAppBarWidget(
                        pageTitle: '',
                        rightButtonIcon: null,
                        leftButtonIcon: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        midRightButtonIcon: null,
                        backgroudColor: Color(0x00000000),
                        rightButtonAction: () async {},
                        leftButtonAction: () async {
                          context.safePop();
                        },
                        midRightButtonAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.customWebAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomWebAppBarWidget(
                        pageTitle: 'New Payment',
                        leftButtonIcon: null,
                        rightButtonIcon: Icon(
                          Icons.list_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        leftButtonAction: () async {},
                        midButtonAction: () async {},
                        rightButtonAction: () async {
                          context.pushNamed(
                            BillsPaymentTransactionsPageWidget.routeName,
                            extra: <String, dynamic>{
                              '__transition_info__': TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
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
