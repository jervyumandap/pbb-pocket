import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/card_widget/card_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'manage_account_page_model.dart';
export 'manage_account_page_model.dart';

class ManageAccountPageWidget extends StatefulWidget {
  const ManageAccountPageWidget({super.key});

  static String routeName = 'ManageAccountPage';
  static String routePath = '/manageAccountPage';

  @override
  State<ManageAccountPageWidget> createState() =>
      _ManageAccountPageWidgetState();
}

class _ManageAccountPageWidgetState extends State<ManageAccountPageWidget> {
  late ManageAccountPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageAccountPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      FFAppState().accountListOrder =
          FFAppState().AccountsState.toList().cast<AccountsStruct>();
      FFAppState().update(() {});
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Padding(
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Manage Account',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineSmallIsCustom,
                                        ),
                                  ),
                                  Text(
                                    'View and update your bank account information, limits, and preferences.',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .headlineSmallIsCustom,
                                        ),
                                  ),
                                  if ((FFAppState()
                                          .accountListOrder
                                          .isNotEmpty) ==
                                      false)
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.emptyListComponentModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: EmptyListComponentWidget(
                                          title: FFAppState()
                                                      .accountListOrder
                                                      .lastOrNull ==
                                                  null
                                              ? 'We’re unable to retrieve your account details right now. Please try again later.'
                                              : 'You don’t have any linked accounts. Add an account to get started.',
                                        ),
                                      ),
                                    ),
                                  Container(
                                    height: 40.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Visibility(
                                                visible: (FFAppState()
                                                        .accountListOrder
                                                        .isNotEmpty) ==
                                                    true,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final accounts =
                                                            FFAppState()
                                                                .accountListOrder
                                                                .toList();

                                                        return ReorderableListView
                                                            .builder(
                                                          key: ValueKey(accounts
                                                              .firstOrNull!
                                                              .accountNumber),
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                            0,
                                                            0,
                                                            0,
                                                            20.0,
                                                          ),
                                                          primary: false,
                                                          proxyDecorator: (Widget
                                                                      child,
                                                                  int index,
                                                                  Animation<
                                                                          double>
                                                                      animation) =>
                                                              Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: child),
                                                          buildDefaultDragHandles:
                                                              false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              accounts.length,
                                                          itemBuilder: (context,
                                                              accountsIndex) {
                                                            final accountsItem =
                                                                accounts[
                                                                    accountsIndex];
                                                            return MouseRegion(
                                                              key: ValueKey(
                                                                  "ListView_cxh7ym6x" +
                                                                      '_' +
                                                                      accountsIndex
                                                                          .toString()),
                                                              cursor:
                                                                  SystemMouseCursors
                                                                      .grab,
                                                              child:
                                                                  ReorderableDragStartListener(
                                                                index:
                                                                    accountsIndex,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .cardWidgetModels
                                                                            .getModel(
                                                                          accountsItem
                                                                              .accountNumber,
                                                                          accountsIndex,
                                                                        ),
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        updateOnChange:
                                                                            true,
                                                                        child:
                                                                            CardWidgetWidget(
                                                                          key:
                                                                              Key(
                                                                            'Keyvda_${accountsItem.accountNumber}',
                                                                          ),
                                                                          title: accountsItem.alias == 'test'
                                                                              ? valueOrDefault<String>(
                                                                                  accountsItem.accountType?.name,
                                                                                  '-',
                                                                                )
                                                                              : accountsItem.alias,
                                                                          subtitle:
                                                                              'Available Balance',
                                                                          balance:
                                                                              '${functions.formatWithCommas(accountsItem.availableBalance)}',
                                                                          title2:
                                                                              accountsItem.accountNumber,
                                                                          accountType:
                                                                              accountsItem.accountType!,
                                                                          isEmpty:
                                                                              false,
                                                                          currency:
                                                                              accountsItem.currency,
                                                                          tapAction:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              AccountDetailPageWidget.routeName,
                                                                              queryParameters: {
                                                                                'account': serializeParam(
                                                                                  accountsItem,
                                                                                  ParamType.DataStruct,
                                                                                ),
                                                                                'rootPage': serializeParam(
                                                                                  'accountDetail',
                                                                                  ParamType.String,
                                                                                ),
                                                                              }.withoutNulls,
                                                                            );

                                                                            FFAppState().currentAccountV2 =
                                                                                accountsItem;
                                                                            safeSetState(() {});
                                                                          },
                                                                          buttonAction:
                                                                              () async {},
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          onReorder: (int
                                                                  reorderableOldIndex,
                                                              int reorderableNewIndex) async {
                                                            _model.updatedList =
                                                                await actions
                                                                    .reorderItems(
                                                              FFAppState()
                                                                  .accountListOrder
                                                                  .map((e) =>
                                                                      e.toMap())
                                                                  .toList(),
                                                              reorderableOldIndex,
                                                              reorderableNewIndex,
                                                            );
                                                            FFAppState().accountListOrder = _model
                                                                .updatedList!
                                                                .map((e) =>
                                                                    AccountsStruct
                                                                        .maybeFromMap(
                                                                            e))
                                                                .withoutNulls
                                                                .toList()
                                                                .cast<
                                                                    AccountsStruct>();
                                                            FFAppState()
                                                                .update(() {});
                                                            _model.isReorderInit =
                                                                true;
                                                            safeSetState(() {});

                                                            safeSetState(() {});
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Visibility(
                                                    visible:
                                                        _model.isReorderInit,
                                                    child: Builder(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
                                                                      _model.isReorderInit
                                                                          ? 16.0
                                                                          : 40.0,
                                                                      16.0,
                                                                    )),
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .primaryButtonComponentModel1,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              PrimaryButtonComponentWidget(
                                                            buttonTitle: 'Save',
                                                            buttonWidth:
                                                                double.infinity,
                                                            buttonHeight: 48.0,
                                                            buttonColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            textColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 16.0,
                                                            borderRadius: 16.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            childPadding: 16.0,
                                                            buttonDisabledOption:
                                                                false,
                                                            callback: () async {
                                                              _model.accountNumbers = functions
                                                                  .extractAccountNumbers(
                                                                      FFAppState()
                                                                          .accountListOrder
                                                                          .toList())
                                                                  .toList()
                                                                  .cast<
                                                                      String>();
                                                              safeSetState(
                                                                  () {});
                                                              _model.apiResultk5h =
                                                                  await WhitebankGroupAPIGroup
                                                                      .accountCardReorderCall
                                                                      .call(
                                                                accountNumbersList:
                                                                    _model
                                                                        .accountNumbers,
                                                                accessToken:
                                                                    currentAuthenticationToken,
                                                                baseURL:
                                                                    FFDevEnvironmentValues()
                                                                        .WBPBASEURL,
                                                              );

                                                              if ((_model
                                                                      .apiResultk5h
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                'Reorder Successful',
                                                                            primaryButtonTitle:
                                                                                'Dismiss',
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

                                                                FFAppState()
                                                                        .AccountsState =
                                                                    FFAppState()
                                                                        .accountListOrder
                                                                        .toList()
                                                                        .cast<
                                                                            AccountsStruct>();
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
                                                                _model.isReorderInit =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(dialogContext).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              CustomInformationalDialogWidget(
                                                                            message:
                                                                                'Reorder Unsuccessful. Please try again later.',
                                                                            primaryButtonTitle:
                                                                                'Dismiss',
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

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Visibility(
                                                    visible:
                                                        _model.isReorderInit,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    _model.isReorderInit
                                                                        ? 16.0
                                                                        : 40.0,
                                                                    16.0,
                                                                  )),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .primaryButtonComponentModel2,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            PrimaryButtonComponentWidget(
                                                          buttonTitle: 'Cancel',
                                                          buttonWidth:
                                                              double.infinity,
                                                          buttonHeight: 48.0,
                                                          buttonColor:
                                                              Color(0x0000727D),
                                                          textColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          fontSize: 16.0,
                                                          borderRadius: 16.0,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          childPadding: 16.0,
                                                          buttonDisabledOption:
                                                              false,
                                                          callback: () async {
                                                            FFAppState()
                                                                    .AccountsState =
                                                                FFAppState()
                                                                    .AccountsState
                                                                    .toList()
                                                                    .cast<
                                                                        AccountsStruct>();
                                                            FFAppState()
                                                                    .accountListOrder =
                                                                FFAppState()
                                                                    .AccountsState
                                                                    .toList()
                                                                    .cast<
                                                                        AccountsStruct>();
                                                            safeSetState(() {});
                                                            _model.isReorderInit =
                                                                false;
                                                            safeSetState(() {});
                                                          },
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
                  pageTitle: '',
                  leftButtonAction: () async {},
                  midButtonAction: () async {},
                  rightButtonAction: () async {},
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: wrapWithModel(
                    model: _model.mobileNavigationBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MobileNavigationBarWidget(
                      pageIndex: 17,
                      shouldHideBottomNav: true,
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
