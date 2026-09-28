import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/time_deposit/open_time_deposit_component/open_time_deposit_component_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'open_time_deposit_product_selection_page_model.dart';
export 'open_time_deposit_product_selection_page_model.dart';

class OpenTimeDepositProductSelectionPageWidget extends StatefulWidget {
  const OpenTimeDepositProductSelectionPageWidget({super.key});

  static String routeName = 'OpenTimeDepositProductSelectionPage';
  static String routePath = '/openTimeDepositProductSelectionPage';

  @override
  State<OpenTimeDepositProductSelectionPageWidget> createState() =>
      _OpenTimeDepositProductSelectionPageWidgetState();
}

class _OpenTimeDepositProductSelectionPageWidgetState
    extends State<OpenTimeDepositProductSelectionPageWidget> {
  late OpenTimeDepositProductSelectionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OpenTimeDepositProductSelectionPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResulthnv =
          await WhitebankGroupAPIGroup.retailTimeDepositProductsCall.call(
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        accessToken: currentAuthenticationToken,
      );

      if ((_model.apiResulthnv?.succeeded ?? true) != false) {
        _model.products = TimeDepositProductsModelStruct.maybeFromMap(
            (_model.apiResulthnv?.jsonBody ?? ''));
        safeSetState(() {});
        await Future.delayed(
          Duration(
            milliseconds: 1000,
          ),
        );
        _model.isLoading = false;
        safeSetState(() {});
        FFAppState().openTimeDepositState = TimeDepositComputationModelStruct();
        FFAppState().update(() {});
      } else {
        return;
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
            if (!_model.isLoading)
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
                          return 0.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 0.0;
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
                        titleLeftAlign: 'Open Time Deposit',
                        rightButtonAction: () async {},
                        leftButtonAction: () async {
                          context.safePop();
                        },
                        midRightButtonAction: () async {},
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
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
                                      'Choose a deposit product',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmallFamily,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .headlineSmallIsCustom,
                                          ),
                                    ),
                                    Text(
                                      'Each product has its own minimum amount, term range, and rate.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
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
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(),
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (_model
                                                      .products
                                                      ?.products
                                                      .firstOrNull
                                                      ?.productCode !=
                                                  null &&
                                              _model
                                                      .products
                                                      ?.products
                                                      .firstOrNull
                                                      ?.productCode !=
                                                  '')
                                            Flexible(
                                              child: Builder(
                                                builder: (context) {
                                                  final timeDepositProductList =
                                                      _model.products?.products
                                                              .toList() ??
                                                          [];

                                                  return Semantics(
                                                    label:
                                                        'open_time_deposit_product_selection_list',
                                                    child: ListView.separated(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                        0,
                                                        0,
                                                        0,
                                                        30.0,
                                                      ),
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          timeDepositProductList
                                                              .length,
                                                      separatorBuilder:
                                                          (_, __) => SizedBox(
                                                              height: 16.0),
                                                      itemBuilder: (context,
                                                          timeDepositProductListIndex) {
                                                        final timeDepositProductListItem =
                                                            timeDepositProductList[
                                                                timeDepositProductListIndex];
                                                        return Stack(
                                                          children: [
                                                            if ((FFAppState()
                                                                    .AccountsState
                                                                    .where((e) =>
                                                                        e.currency ==
                                                                        timeDepositProductListItem
                                                                            .currency)
                                                                    .toList()
                                                                    .isNotEmpty) ==
                                                                true)
                                                              wrapWithModel(
                                                                model: _model
                                                                    .openTimeDepositComponentModels
                                                                    .getModel(
                                                                  timeDepositProductListItem
                                                                      .productCode,
                                                                  timeDepositProductListIndex,
                                                                ),
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                updateOnChange:
                                                                    true,
                                                                child:
                                                                    OpenTimeDepositComponentWidget(
                                                                  key: Key(
                                                                    'Keycvs_${timeDepositProductListItem.productCode}',
                                                                  ),
                                                                  product:
                                                                      timeDepositProductListItem,
                                                                  selectedProductCode:
                                                                      _model
                                                                          .selectedProductCode!,
                                                                  callback:
                                                                      () async {
                                                                    _model.selectedProductCode =
                                                                        timeDepositProductListItem
                                                                            .productCode;
                                                                    _model.selectedTDProduct =
                                                                        timeDepositProductListItem;
                                                                    safeSetState(
                                                                        () {});
                                                                    FFAppState()
                                                                        .updateOpenTimeDepositStateStruct(
                                                                      (e) => e
                                                                        ..productCode =
                                                                            timeDepositProductListItem.productCode,
                                                                    );
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  callbackUnselect:
                                                                      () async {
                                                                    _model.selectedTDProduct =
                                                                        null;
                                                                    _model.selectedProductCode =
                                                                        '123123';
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 54.0),
                          child: Semantics(
                            label:
                                'open_time_deposit_product_selection_continue_button',
                            child: wrapWithModel(
                              model: _model.primaryButtonComponentModel,
                              updateCallback: () => safeSetState(() {}),
                              child: PrimaryButtonComponentWidget(
                                buttonTitle: 'Continue',
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
                                buttonDisabledOption:
                                    _model.selectedProductCode == null ||
                                        _model.selectedProductCode == '',
                                callback: () async {
                                  if (_model.selectedTDProduct != null) {
                                    context.pushNamed(
                                      OpenTimeDepositDetailsPageWidget
                                          .routeName,
                                      queryParameters: {
                                        'product': serializeParam(
                                          _model.selectedTDProduct,
                                          ParamType.DataStruct,
                                        ),
                                      }.withoutNulls,
                                    );
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
                                                    'Please select a product type.',
                                                primaryButtonTitle: 'Dismiss',
                                                primaryButtonAction: () async {
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
            if (_model.isLoading)
              wrapWithModel(
                model: _model.loadingStateComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(
                  isFinished: false,
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
            if (true &&
                responsiveVisibility(
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
