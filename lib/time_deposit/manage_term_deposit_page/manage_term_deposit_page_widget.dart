import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/manage_deposit_card_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'manage_term_deposit_page_model.dart';
export 'manage_term_deposit_page_model.dart';

class ManageTermDepositPageWidget extends StatefulWidget {
  const ManageTermDepositPageWidget({super.key});

  static String routeName = 'ManageTermDepositPage';
  static String routePath = '/manageTermDepositPage';

  @override
  State<ManageTermDepositPageWidget> createState() =>
      _ManageTermDepositPageWidgetState();
}

class _ManageTermDepositPageWidgetState
    extends State<ManageTermDepositPageWidget> {
  late ManageTermDepositPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageTermDepositPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      safeSetState(() {});
      _model.apiResultv7f =
          await WhitebankGroupAPIGroup.retailTimeDepositsCall.call(
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        accessToken: currentAuthenticationToken,
      );

      if ((_model.apiResultv7f?.succeeded ?? true)) {
        _model.timeDepositState = TimeDepositOutputStruct.maybeFromMap(
            (_model.apiResultv7f?.jsonBody ?? ''));
        _model.isloading = false;
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
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(dialogContext).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: CustomInformationalDialogWidget(
                    message:
                        WhitebankGroupAPIGroup.retailTimeDepositsCall.message(
                      (_model.apiResultv7f?.jsonBody ?? ''),
                    )!,
                    primaryButtonTitle: 'Close',
                    primaryButtonAction: () async {
                      Navigator.pop(context);
                    },
                    secondaryButtonAction: () async {},
                  ),
                ),
              ),
            );
          },
        );
      }
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

    return Builder(
      builder: (context) => GestureDetector(
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
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    wrapWithModel(
                      model: _model.mobileNavigationBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileNavigationBarWidget(
                        pageIndex: 13,
                        shouldHideBottomNav: false,
                      ),
                    ),
                  if (!_model.isloading)
                    Flexible(
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 64.0;
                                    } else {
                                      return 64.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 100.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 100.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 64.0;
                                    } else {
                                      return 64.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                0.0,
                                0.0),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Manage Term Deposit',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 24.0, 16.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Your Deposits',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color:
                                                              Color(0xFF5C6466),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                if (!(_model.timeDepositState!
                                                    .timeDeposits.isNotEmpty))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .emptyListComponentModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          EmptyListComponentWidget(
                                                        title: FFAppState()
                                                                    .accountListOrder
                                                                    .lastOrNull ==
                                                                null
                                                            ? 'We’re unable to retrieve your account details right now. Please try again later.'
                                                            : 'You don’t have any linked accounts. Add an account to get started.',
                                                        imageWidth: 80.0,
                                                        imageHeight: 80.0,
                                                        textColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 120.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final timeDepositList = _model
                                                              .timeDepositState
                                                              ?.timeDeposits
                                                              .sortedList(
                                                                  keyOf: (e) =>
                                                                      e.openedDate,
                                                                  desc: true)
                                                              .toList() ??
                                                          [];

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            timeDepositList
                                                                .length,
                                                        itemBuilder: (context,
                                                            timeDepositListIndex) {
                                                          final timeDepositListItem =
                                                              timeDepositList[
                                                                  timeDepositListIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        16.0),
                                                            child:
                                                                ManageDepositCardComponentWidget(
                                                              key: Key(
                                                                  'Keyj32_${timeDepositListIndex}_of_${timeDepositList.length}'),
                                                              timeDepositDetails:
                                                                  timeDepositListItem,
                                                              tap:
                                                                  (setRemainingDays) async {
                                                                context
                                                                    .pushNamed(
                                                                  TimeDepositDetailsPageWidget
                                                                      .routeName,
                                                                  queryParameters:
                                                                      {
                                                                    'depositDetails':
                                                                        serializeParam(
                                                                      timeDepositListItem,
                                                                      ParamType
                                                                          .DataStruct,
                                                                    ),
                                                                    'remainingDays':
                                                                        serializeParam(
                                                                      setRemainingDays,
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                            ),
                                                          );
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 54.0),
                              child: Container(
                                height: 50.0,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.primaryButtonComponentModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: PrimaryButtonComponentWidget(
                                      buttonTitle: 'Open a New Time Deposit',
                                      buttonWidth: double.infinity,
                                      buttonHeight: 48.0,
                                      buttonColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 16.0,
                                      borderRadius: 16.0,
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      childPadding: 16.0,
                                      buttonDisabledOption: false,
                                      callback: () async {
                                        context.pushNamed(
                                            OpenTimeDepositProductSelectionPageWidget
                                                .routeName);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              wrapWithModel(
                model: _model.customWebAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CustomWebAppBarWidget(
                  pageTitle: '',
                  leftButtonIcon: null,
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midButtonAction: () async {},
                  rightButtonAction: () async {},
                ),
              ),
              wrapWithModel(
                model: _model.customMobileAppBarModel,
                updateCallback: () => safeSetState(() {}),
                child: CustomMobileAppBarWidget(
                  buttonWithoutBackground: true,
                  btnWOBgIcon: Icon(
                    Icons.arrow_back_rounded,
                  ),
                  isTitleLeftAlign: false,
                  titleLeftAlign: 'Term Deposit',
                  rightButtonAction: () async {},
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midRightButtonAction: () async {},
                ),
              ),
              if (_model.isloading)
                wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: false,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
