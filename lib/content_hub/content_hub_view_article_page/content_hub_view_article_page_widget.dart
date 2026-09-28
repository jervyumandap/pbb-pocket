import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/content_hub/content_hub_article_view_component/content_hub_article_view_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'content_hub_view_article_page_model.dart';
export 'content_hub_view_article_page_model.dart';

class ContentHubViewArticlePageWidget extends StatefulWidget {
  const ContentHubViewArticlePageWidget({
    super.key,
    this.articleSlug,
    required this.categoryName,
  });

  final String? articleSlug;
  final String? categoryName;

  static String routeName = 'ContentHubViewArticlePage';
  static String routePath = '/contentHubViewArticlePage';

  @override
  State<ContentHubViewArticlePageWidget> createState() =>
      _ContentHubViewArticlePageWidgetState();
}

class _ContentHubViewArticlePageWidgetState
    extends State<ContentHubViewArticlePageWidget> {
  late ContentHubViewArticlePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentHubViewArticlePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.apiResultoid = await WhitebankGroupAPIGroup
              .retailContentHubArticlesSlugCall
              .call(
            slug: widget.articleSlug,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          );

          if ((_model.apiResultoid?.succeeded ?? true)) {
            _model.viewArticle =
                ContentHubArticlesSlugModelStruct.maybeFromMap(getJsonField(
              (_model.apiResultoid?.jsonBody ?? ''),
              r'''$''',
            ));
            safeSetState(() {});
            _model.apiResultpjqw = await WhitebankGroupAPIGroup
                .retailContentHubArticleEventsCall
                .call(
              id: _model.viewArticle?.id,
              dwellMs: 0,
              eventType: ContentHubEvents.IMPRESSION.name,
              baseURL: FFDevEnvironmentValues().WBPBASEURL,
              accessToken: currentAuthenticationToken,
            );

            _model.body = await actions.parseArticleContentAction(
              _model.viewArticle?.body,
            );
            _model.bodyState =
                ContentHubBodyModelStruct.maybeFromMap(_model.body);
            _model.isLoading = false;
            safeSetState(() {});
          } else {
            _model.isLoading = false;
            safeSetState(() {});
          }
        }),
        Future(() async {
          await actions.startDwellTimer();
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      _model.getDwellTimeMS = await actions.getDwellTimeMs();
      _model.apiResultpjq =
          await WhitebankGroupAPIGroup.retailContentHubArticleEventsCall.call(
        id: _model.viewArticle?.id,
        dwellMs: _model.getDwellTimeMS,
        eventType: ContentHubEvents.DWELL.name,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        accessToken: currentAuthenticationToken,
      );
    }();

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
            if (_model.isLoading)
              wrapWithModel(
                model: _model.loadingStateComponentModel1,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(
                  isFinished: false,
                ),
              ),
            if (false)
              wrapWithModel(
                model: _model.loadingStateComponentModel2,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(),
              ),
            wrapWithModel(
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
                buttonWithoutBackground: true,
                btnWOBgIcon: Icon(
                  Icons.arrow_back,
                ),
                btnWOBgColor: FlutterFlowTheme.of(context).primaryText,
                btnWOBgIconSize: 24.0,
                isTitleLeftAlign: true,
                titleLeftAlign: widget.categoryName,
                rightButtonAction: () async {},
                leftButtonAction: () async {
                  context.safePop();
                },
                midRightButtonAction: () async {},
              ),
            ),
            if (!_model.isLoading)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
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
                            0.0,
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
                                  return 16.0;
                                } else {
                                  return 16.0;
                                }
                              }(),
                              270.0,
                            ),
                            10.0),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: custom_widgets.ScrollListener(
                            width: double.infinity,
                            height: double.infinity,
                            onScrolled: () async {},
                            onReachedBottom: () async {
                              _model.apiResultpjqd =
                                  await WhitebankGroupAPIGroup
                                      .retailContentHubArticleEventsCall
                                      .call(
                                id: _model.viewArticle?.id,
                                dwellMs: 0,
                                eventType: ContentHubEvents.READ.name,
                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                accessToken: currentAuthenticationToken,
                              );

                              safeSetState(() {});
                            },
                            contentBuilder: () =>
                                ContentHubArticleViewComponentWidget(
                              article: _model.viewArticle!,
                              body: _model.bodyState!,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.mobileNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MobileNavigationBarWidget(
                    pageIndex: 6,
                    shouldHideBottomNav: true,
                  ),
                ),
              ),
            wrapWithModel(
              model: _model.customWebAppBarModel,
              updateCallback: () => safeSetState(() {}),
              child: CustomWebAppBarWidget(
                pageTitle: '',
                leftButtonAction: () async {},
                midButtonAction: () async {},
                rightButtonAction: () async {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
