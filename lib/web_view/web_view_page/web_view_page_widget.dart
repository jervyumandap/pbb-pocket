import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'web_view_page_model.dart';
export 'web_view_page_model.dart';

class WebViewPageWidget extends StatefulWidget {
  const WebViewPageWidget({
    super.key,
    required this.url,
  });

  final String? url;

  static String routeName = 'WebViewPage';
  static String routePath = '/webViewPage';

  @override
  State<WebViewPageWidget> createState() => _WebViewPageWidgetState();
}

class _WebViewPageWidgetState extends State<WebViewPageWidget> {
  late WebViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebViewPageModel());

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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Semantics(
          label: 'Stack Parent',
          child: Stack(
            children: [
              Container(
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
                child: Semantics(
                  label: 'Stack',
                  child: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return FFAppConstants
                                            .MobileAppBarHeight;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return FFAppConstants
                                            .MobileAppBarHeight;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 0.0;
                                      } else {
                                        return 0.0;
                                      }
                                    }(),
                                    72.0,
                                  ),
                                  0.0,
                                  0.0),
                              child: Semantics(
                                label: 'WebView',
                                child: FlutterFlowWebView(
                                  content: valueOrDefault<String>(
                                    widget.url,
                                    'https://pbb.com.ph/data-privacy',
                                  ),
                                  bypass: false,
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 1.0,
                                  verticalScroll: false,
                                  horizontalScroll: false,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Semantics(
                label: 'CustomMobileAppBar',
                child: wrapWithModel(
                  model: _model.customMobileAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomMobileAppBarWidget(
                    pageTitle: 'Login',
                    rightButtonIcon: null,
                    leftButtonIcon: Icon(
                      Icons.chevron_left_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    midRightButtonIcon: null,
                    backgroudColor: FlutterFlowTheme.of(context).primary,
                    titleColor: Color(0x00DAF8FF),
                    buttonColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    rightButtonAction: () async {},
                    leftButtonAction: () async {
                      context.safePop();
                    },
                    midRightButtonAction: () async {},
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
