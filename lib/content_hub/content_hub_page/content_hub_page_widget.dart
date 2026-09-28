import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/content_hub/content_hub_container_component/content_hub_container_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'content_hub_page_model.dart';
export 'content_hub_page_model.dart';

class ContentHubPageWidget extends StatefulWidget {
  const ContentHubPageWidget({super.key});

  static String routeName = 'ContentHubPage';
  static String routePath = '/contentHubPage';

  @override
  State<ContentHubPageWidget> createState() => _ContentHubPageWidgetState();
}

class _ContentHubPageWidgetState extends State<ContentHubPageWidget> {
  late ContentHubPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentHubPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      await Future.wait([
        Future(() async {
          _model.apiResultoid =
              await WhitebankGroupAPIGroup.retailContentHubCategoriesCall.call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          );

          if ((_model.apiResultoid?.succeeded ?? true) == true) {
            _model.articleCategories = (getJsonField(
              (_model.apiResultoid?.jsonBody ?? ''),
              r'''$.categories''',
              true,
            )!
                    .toList()
                    .map<ContentHubCategoriesStruct?>(
                        ContentHubCategoriesStruct.maybeFromMap)
                    .toList() as Iterable<ContentHubCategoriesStruct?>)
                .withoutNulls
                .toList()
                .cast<ContentHubCategoriesStruct>();
            _model.isLoading = false;
            safeSetState(() {});
          } else {
            _model.isLoading = false;
            safeSetState(() {});
          }
        }),
        Future(() async {
          _model.apiResultazw = await WhitebankGroupAPIGroup
              .retailContentHubArticlesPinnedCall
              .call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          );

          if ((_model.apiResultazw?.succeeded ?? true)) {
            _model.pinnedArticles = (getJsonField(
              (_model.apiResultazw?.jsonBody ?? ''),
              r'''$.data''',
              true,
            )!
                    .toList()
                    .map<DataStruct?>(DataStruct.maybeFromMap)
                    .toList() as Iterable<DataStruct?>)
                .withoutNulls
                .toList()
                .cast<DataStruct>();
            safeSetState(() {});
            for (int loop1Index = 0;
                loop1Index < _model.pinnedArticles.length;
                loop1Index++) {
              final currentLoop1Item = _model.pinnedArticles[loop1Index];
              _model.apiResultpjqd = await WhitebankGroupAPIGroup
                  .retailContentHubArticleEventsCall
                  .call(
                id: currentLoop1Item.id,
                dwellMs: 0,
                eventType: ContentHubEvents.PIN_IMPRESSION.name,
                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                accessToken: currentAuthenticationToken,
              );
            }
          }
        }),
        Future(() async {
          _model.apiResultazwd = await WhitebankGroupAPIGroup
              .retailContentHubArticlesRecentCall
              .call(
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
            accessToken: currentAuthenticationToken,
          );

          if ((_model.apiResultazwd?.succeeded ?? true)) {
            _model.recentlyUpdatedArticles = (getJsonField(
              (_model.apiResultazwd?.jsonBody ?? ''),
              r'''$.data''',
              true,
            )!
                    .toList()
                    .map<DataStruct?>(DataStruct.maybeFromMap)
                    .toList() as Iterable<DataStruct?>)
                .withoutNulls
                .toList()
                .cast<DataStruct>();
            safeSetState(() {});
          }
        }),
      ]);
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
            if (_model.isLoading)
              wrapWithModel(
                model: _model.loadingStateComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(
                  isFinished: !_model.isLoading,
                ),
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
                isTitleLeftAlign: false,
                titleLeftAlign: '',
                rightButtonAction: () async {},
                leftButtonAction: () async {
                  context.safePop();
                },
                midRightButtonAction: () async {},
              ),
            ),
            if (!_model.isLoading)
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
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
                      100.0,
                      0.0,
                      0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Help & Education',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .headlineSmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .headlineSmallIsCustom,
                                      ),
                                ),
                                Text(
                                  'Learn how to stay safe from scams',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF828BA6),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 30.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final pinnedArticleList =
                                                _model.pinnedArticles.toList();

                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  pinnedArticleList.length,
                                              itemBuilder: (context,
                                                  pinnedArticleListIndex) {
                                                final pinnedArticleListItem =
                                                    pinnedArticleList[
                                                        pinnedArticleListIndex];
                                                return Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 8.0),
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
                                                        context.pushNamed(
                                                          ContentHubViewArticlePageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'articleSlug':
                                                                serializeParam(
                                                              pinnedArticleListItem
                                                                  .slug,
                                                              ParamType.String,
                                                            ),
                                                            'categoryName':
                                                                serializeParam(
                                                              pinnedArticleListItem
                                                                  .categoryName,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        _model.apiResultpjqdsCopy =
                                                            await WhitebankGroupAPIGroup
                                                                .retailContentHubArticleEventsCall
                                                                .call(
                                                          id: pinnedArticleListItem
                                                              .id,
                                                          dwellMs: 0,
                                                          eventType:
                                                              ContentHubEvents
                                                                  .PIN_TAP.name,
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                        );

                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFFDEBED),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFFDEBED),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 38.0,
                                                                height: 38.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFE84056),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0xFFE84056),
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                child: Icon(
                                                                  Icons
                                                                      .warning_amber,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  size: 22.0,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      pinnedArticleListItem
                                                                          .title,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFFE84056),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      pinnedArticleListItem
                                                                          .summary,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF667085),
                                                                            fontSize:
                                                                                12.5,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 18.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    Text(
                                      'Topics',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            color: Color(0xFF0B2545),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final articleCategoriesList =
                                            _model.articleCategories.toList();

                                        return GridView.builder(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 2;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 2;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 4;
                                              } else {
                                                return 4;
                                              }
                                            }(),
                                            crossAxisSpacing: 12.0,
                                            mainAxisSpacing: 10.0,
                                            childAspectRatio: 0.8,
                                          ),
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              articleCategoriesList.length,
                                          itemBuilder: (context,
                                              articleCategoriesListIndex) {
                                            final articleCategoriesListItem =
                                                articleCategoriesList[
                                                    articleCategoriesListIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  ContentHubArticlePageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'articleCountt':
                                                        serializeParam(
                                                      articleCategoriesListItem
                                                          .articleCount,
                                                      ParamType.int,
                                                    ),
                                                    'articleTitle':
                                                        serializeParam(
                                                      articleCategoriesListItem
                                                          .name,
                                                      ParamType.String,
                                                    ),
                                                    'articleSlug':
                                                        serializeParam(
                                                      articleCategoriesListItem
                                                          .slug,
                                                      ParamType.String,
                                                    ),
                                                    'categoryId':
                                                        serializeParam(
                                                      articleCategoriesListItem
                                                          .id,
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child:
                                                  ContentHubContainerComponentWidget(
                                                key: Key(
                                                    'Keyt64_${articleCategoriesListIndex}_of_${articleCategoriesList.length}'),
                                                title: articleCategoriesListItem
                                                    .name,
                                                category:
                                                    articleCategoriesListItem
                                                        .slug,
                                                noOfArticles:
                                                    articleCategoriesListItem
                                                        .articleCount,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    Text(
                                      'Recently Updated',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            color: Color(0xFF0B2545),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final recentlyUpdateList = _model
                                            .recentlyUpdatedArticles
                                            .toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: recentlyUpdateList.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 8.0),
                                          itemBuilder: (context,
                                              recentlyUpdateListIndex) {
                                            final recentlyUpdateListItem =
                                                recentlyUpdateList[
                                                    recentlyUpdateListIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  ContentHubViewArticlePageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'articleSlug':
                                                        serializeParam(
                                                      recentlyUpdateListItem
                                                          .slug,
                                                      ParamType.String,
                                                    ),
                                                    'categoryName':
                                                        serializeParam(
                                                      valueOrDefault<String>(
                                                        recentlyUpdateListItem
                                                            .categoryName,
                                                        '-',
                                                      ),
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                _model.apiResultpjqds =
                                                    await WhitebankGroupAPIGroup
                                                        .retailContentHubArticleEventsCall
                                                        .call(
                                                  id: recentlyUpdateListItem.id,
                                                  dwellMs: 0,
                                                  eventType: ContentHubEvents
                                                      .PIN_TAP.name,
                                                  baseURL:
                                                      FFDevEnvironmentValues()
                                                          .WBPBASEURL,
                                                  accessToken:
                                                      currentAuthenticationToken,
                                                );

                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14.0),
                                                  border: Border.all(
                                                    color: Color(0xFFDAE3E5),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              recentlyUpdateListItem
                                                                  .title,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            Text(
                                                              recentlyUpdateListItem
                                                                  .summary,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        12.5,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            if (recentlyUpdateListItem
                                                                        .updatedAt !=
                                                                    '')
                                                              Text(
                                                                'Updated ${functions.formatDateString(recentlyUpdateListItem.updatedAt)}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.5,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                          ].divide(SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .arrow_forward_ios_sharp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 18.0,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ].divide(SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
          ],
        ),
      ),
    );
  }
}
