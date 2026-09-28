import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'account_enrollment_welcome_page_model.dart';
export 'account_enrollment_welcome_page_model.dart';

class AccountEnrollmentWelcomePageWidget extends StatefulWidget {
  const AccountEnrollmentWelcomePageWidget({super.key});

  static String routeName = 'AccountEnrollmentWelcomePage';
  static String routePath = '/accountEnrollmentWelcomePage';

  @override
  State<AccountEnrollmentWelcomePageWidget> createState() =>
      _AccountEnrollmentWelcomePageWidgetState();
}

class _AccountEnrollmentWelcomePageWidgetState
    extends State<AccountEnrollmentWelcomePageWidget> {
  late AccountEnrollmentWelcomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountEnrollmentWelcomePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Frame_14422.png',
                  ).image,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 320.0, 0.0, 0.0),
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Semantics(
                                          label: 'Section header Text',
                                          child: Text(
                                            'Welcome! \nYour Account is Ready',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .whiteText,
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallIsCustom,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Opacity(
                                          opacity: 0.7,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Semantics(
                                              label: 'Section header Text',
                                              child: Text(
                                                'Your account has been successfully created. Start exploring and enjoy the full experience.',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .whiteText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                      lineHeight: 1.1,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 60.0),
                              child: Semantics(
                                label: 'Continue to Dashboard Button',
                                child: wrapWithModel(
                                  model: _model.primaryButtonComponentModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: PrimaryButtonComponentWidget(
                                    buttonTitle: 'Continue to Dashboard',
                                    buttonWidth: () {
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
                                    buttonHeight: 48.0,
                                    buttonColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: 16.0,
                                    buttonDisabledOption: false,
                                    callback: () async {
                                      // Clear Enrolling User upon success account linking
                                      FFAppState().EnrollingUserAppstate =
                                          EnrollingUserStruct();
                                      safeSetState(() {});

                                      context.goNamed(
                                        DashboardWidget.routeName,
                                        queryParameters: {
                                          'username': serializeParam(
                                            currentUserData?.user.userName,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Container(
                      width: 320.0,
                      height: 320.0,
                      decoration: BoxDecoration(),
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
                  Align(
                    alignment: AlignmentDirectional(3.0, -1.3),
                    child: Semantics(
                      label: 'upper Right Image',
                      child: Container(
                        width: 320.0,
                        height: 320.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: AlignmentDirectional(0.5, 0.0),
                            image: Image.asset(
                              'assets/images/mkbws7.png',
                            ).image,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0x3F00727D),
                            width: 6.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
