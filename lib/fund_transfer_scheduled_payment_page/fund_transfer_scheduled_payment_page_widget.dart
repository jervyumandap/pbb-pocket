import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/scheduled_transactiont_item_component_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'fund_transfer_scheduled_payment_page_model.dart';
export 'fund_transfer_scheduled_payment_page_model.dart';

class FundTransferScheduledPaymentPageWidget extends StatefulWidget {
  const FundTransferScheduledPaymentPageWidget({super.key});

  static String routeName = 'FundTransferScheduledPaymentPage';
  static String routePath = '/fundTransferScheduledPaymentPage';

  @override
  State<FundTransferScheduledPaymentPageWidget> createState() =>
      _FundTransferScheduledPaymentPageWidgetState();
}

class _FundTransferScheduledPaymentPageWidgetState
    extends State<FundTransferScheduledPaymentPageWidget> {
  late FundTransferScheduledPaymentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => FundTransferScheduledPaymentPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                      pageIndex: 9,
                      shouldHideBottomNav: false,
                    ),
                  ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.customMobileAppBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CustomMobileAppBarWidget(
                                pageTitle: '',
                                rightButtonIcon: null,
                                leftButtonIcon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                midRightButtonIcon: null,
                                buttonColor: Colors.transparent,
                                buttonWithoutBackground: true,
                                btnWOBgIcon: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xFF444C66),
                                ),
                                btnWOBgColor: Color(0xFF444C66),
                                btnWOBgIconSize: 24.0,
                                isTitleLeftAlign: true,
                                titleLeftAlign: 'Scheduled Transfer',
                                textLeftAlignColor: Color(0xFF444C66),
                                rightButtonAction: () async {},
                                leftButtonAction: () async {
                                  context.safePop();
                                  FFAppState().AccountsState = FFAppState()
                                      .accountListOrder
                                      .toList()
                                      .cast<AccountsStruct>();
                                  safeSetState(() {});
                                },
                                midRightButtonAction: () async {},
                              ),
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: WhitebankGroupAPIGroup
                                  .retailScheduledTransfersCall
                                  .call(
                                accessToken: currentAuthenticationToken,
                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                              ),
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
                                final columnRetailScheduledTransfersResponse =
                                    snapshot.data!;

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          if (((columnRetailScheduledTransfersResponse
                                                              .jsonBody
                                                              .toList()
                                                              .map<ScheduledTransferModelStruct?>(
                                                                  ScheduledTransferModelStruct
                                                                      .maybeFromMap)
                                                              .toList()
                                                          as Iterable<
                                                              ScheduledTransferModelStruct?>)
                                                      .withoutNulls)
                                                  .isNotEmpty)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 0.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 0.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
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
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 24.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 24.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 80.0;
                                                          } else {
                                                            return 80.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final scheduledTransferList =
                                                      (columnRetailScheduledTransfersResponse
                                                                      .jsonBody
                                                                      .toList()
                                                                      .map<ScheduledTransferModelStruct?>(
                                                                          ScheduledTransferModelStruct
                                                                              .maybeFromMap)
                                                                      .toList()
                                                                  as Iterable<
                                                                      ScheduledTransferModelStruct?>)
                                                              .withoutNulls
                                                              .sortedList(
                                                                  keyOf: (e) =>
                                                                      e.createdAt,
                                                                  desc: true)
                                                              .toList() ??
                                                          [];

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        scheduledTransferList
                                                            .length,
                                                        (scheduledTransferListIndex) {
                                                      final scheduledTransferListItem =
                                                          scheduledTransferList[
                                                              scheduledTransferListIndex];
                                                      return Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        20.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Builder(
                                                                  builder:
                                                                      (context) =>
                                                                          wrapWithModel(
                                                                    model: _model
                                                                        .scheduledTransactiontItemComponentCopyModels
                                                                        .getModel(
                                                                      scheduledTransferListItem
                                                                          .id,
                                                                      scheduledTransferListIndex,
                                                                    ),
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        ScheduledTransactiontItemComponentCopyWidget(
                                                                      key: Key(
                                                                        'Keyzhn_${scheduledTransferListItem.id}',
                                                                      ),
                                                                      scheduledFullName:
                                                                          scheduledTransferListItem
                                                                              .destinationAccountHolderName,
                                                                      accountNumber:
                                                                          scheduledTransferListItem
                                                                              .destinationAccountNumber,
                                                                      nextPaymentDate:
                                                                          scheduledTransferListItem
                                                                              .nextRunAt,
                                                                      isCancelled:
                                                                          scheduledTransferListItem.status ==
                                                                              'CANCELLED',
                                                                      deleteScheduledTransfer:
                                                                          () async {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: WebViewAware(
                                                                                child: GestureDetector(
                                                                                  onTap: () {
                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                  },
                                                                                  child: CustomInformationalDialogWidget(
                                                                                    message: 'Are you sure you want to delete this scheduled transfer?',
                                                                                    primaryButtonTitle: 'Confirm',
                                                                                    title: 'Delete Scheduled Transfer',
                                                                                    secondaryButtonTitle: 'Cancel',
                                                                                    primaryButtonAction: () async {
                                                                                      _model.apiResultpb9 = await WhitebankGroupAPIGroup.retailScheduledTransfersIDCall.call(
                                                                                        accessToken: currentAuthenticationToken,
                                                                                        baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                        id: scheduledTransferListItem.id,
                                                                                      );

                                                                                      if ((_model.apiResultpb9?.succeeded ?? true)) {
                                                                                        Navigator.pop(context);

                                                                                        context.pushNamed(SucessCancelledScheduledTransferWidget.routeName);
                                                                                      } else {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (dialogContext) {
                                                                                            return Dialog(
                                                                                              elevation: 0,
                                                                                              insetPadding: EdgeInsets.zero,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                              child: WebViewAware(
                                                                                                child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: CustomInformationalDialogWidget(
                                                                                                    message: 'Action failed.',
                                                                                                    primaryButtonTitle: 'Confirm',
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
                                                                                    },
                                                                                    secondaryButtonAction: () async {
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      1.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .neutral10,
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ),
                                          if (!((columnRetailScheduledTransfersResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<ScheduledTransferModelStruct?>(
                                                          ScheduledTransferModelStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      ScheduledTransferModelStruct?>)
                                              .withoutNulls
                                              .isNotEmpty))
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                height: 200.0,
                                                decoration: BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .emptyListComponentModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        EmptyListComponentWidget(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
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
          ],
        ),
      ),
    );
  }
}
