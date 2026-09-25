import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_mobile_bottom_sheet_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_limit_item_component/transaction_limit_item_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'transaction_limits_page_model.dart';
export 'transaction_limits_page_model.dart';

class TransactionLimitsPageWidget extends StatefulWidget {
  const TransactionLimitsPageWidget({super.key});

  static String routeName = 'TransactionLimitsPage';
  static String routePath = '/transactionLimitsPage';

  @override
  State<TransactionLimitsPageWidget> createState() =>
      _TransactionLimitsPageWidgetState();
}

class _TransactionLimitsPageWidgetState
    extends State<TransactionLimitsPageWidget> {
  late TransactionLimitsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionLimitsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isLoading = true;
      safeSetState(() {});
      await action_blocks.refreshSessionActionBlock(context);
      safeSetState(() {});
      _model.getTransactionLimitsResponse =
          await WhitebankGroupAPIGroup.retailSettingsTransactionLimitsCall.call(
        accessToken: currentAuthenticationToken,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
      );

      if ((_model.getTransactionLimitsResponse?.succeeded ?? true)) {
        _model.fetchedTransactionLimits = (getJsonField(
          (_model.getTransactionLimitsResponse?.jsonBody ?? ''),
          r'''$.limits''',
          true,
        )!
                .toList()
                .map<LimitsStruct?>(LimitsStruct.maybeFromMap)
                .toList() as Iterable<LimitsStruct?>)
            .withoutNulls
            .toList()
            .cast<LimitsStruct>();
        _model.isLoading = false;
        safeSetState(() {});
      }
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      context.pushNamed(UserProfilePageWidget.routeName);
    }();

    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
        backgroundColor: Colors.white,
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
                      pageIndex: 5,
                      shouldHideBottomNav: false,
                    ),
                  ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 16.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 16.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 32.0;
                            } else {
                              return 32.0;
                            }
                          }(),
                          0.0,
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
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.customMobileAppBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: CustomMobileAppBarWidget(
                                buttonWithoutBackground: true,
                                btnWOBgIcon: Icon(
                                  Icons.arrow_back,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                btnWOBgColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                isTitleLeftAlign: true,
                                titleLeftAlign: 'Transaction Limits',
                                rightButtonAction: () async {},
                                leftButtonAction: () async {
                                  context.safePop();
                                },
                                midRightButtonAction: () async {},
                              ),
                            ),
                            if (!_model.isLoading)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 14.0, 0.0, 10.0),
                                          child: Text(
                                            'Manage Transaction Limits',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF383839),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'Set and control how much you can transfer each day for better security and budgeting.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF444C66),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (!_model.isLoading)
                              Flexible(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 16.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final transactionLimits = _model
                                                      .fetchedTransactionLimits
                                                      .where((e) =>
                                                          e.isCustomizable ==
                                                          true)
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        transactionLimits
                                                            .length,
                                                        (transactionLimitsIndex) {
                                                      final transactionLimitsItem =
                                                          transactionLimits[
                                                              transactionLimitsIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    24.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await actions
                                                                .generateDeviceKeyPair();
                                                          },
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .transactionLimitItemComponentModels
                                                                .getModel(
                                                              '${_model.resetKey?.toString()}_${transactionLimitsItem.typeKey}',
                                                              transactionLimitsIndex,
                                                            ),
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            updateOnChange:
                                                                true,
                                                            child:
                                                                TransactionLimitItemComponentWidget(
                                                              key: Key(
                                                                'Keysuz_${'${_model.resetKey?.toString()}_${transactionLimitsItem.typeKey}'}',
                                                              ),
                                                              transactionLimit:
                                                                  transactionLimitsItem,
                                                              textfieldTitle:
                                                                  transactionLimitsItem
                                                                      .typeKey,
                                                              amountLimitPerTransaction: transactionLimitsItem
                                                                          .customerLimits
                                                                          .maxAmount ==
                                                                      0.0
                                                                  ? transactionLimitsItem
                                                                      .effective
                                                                      .maxAmount
                                                                  : transactionLimitsItem
                                                                      .customerLimits
                                                                      .maxAmount,
                                                              amountLimitDaily: transactionLimitsItem
                                                                          .customerLimits
                                                                          .dailyLimit ==
                                                                      0.0
                                                                  ? transactionLimitsItem
                                                                      .effective
                                                                      .dailyLimit
                                                                  : transactionLimitsItem
                                                                      .customerLimits
                                                                      .dailyLimit,
                                                              currentLimit: transactionLimitsItem
                                                                          .customerLimits
                                                                          .dailyLimit ==
                                                                      0.0
                                                                  ? transactionLimitsItem
                                                                      .effective
                                                                      .dailyLimit
                                                                  : transactionLimitsItem
                                                                      .customerLimits
                                                                      .dailyLimit,
                                                              callback:
                                                                  (dailyInvalid) async {
                                                                if (_model
                                                                    .updatedList
                                                                    .where((e) =>
                                                                        e.typeKey ==
                                                                        transactionLimitsItem
                                                                            .typeKey)
                                                                    .toList()
                                                                    .isNotEmpty) {
                                                                  _model.removeFromUpdatedList(_model
                                                                      .updatedList
                                                                      .where((e) =>
                                                                          e.typeKey ==
                                                                          transactionLimitsItem
                                                                              .typeKey)
                                                                      .toList()
                                                                      .firstOrNull!);
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.addToUpdatedList(
                                                                      PatchLimitBodyStruct(
                                                                    typeKey:
                                                                        transactionLimitsItem
                                                                            .typeKey,
                                                                    maxAmount: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmountTextController
                                                                          .text,
                                                                    )!),
                                                                    dailyLimit: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmount2ndTextController
                                                                          .text,
                                                                    )!),
                                                                  ));
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.addToUpdatedList(
                                                                      PatchLimitBodyStruct(
                                                                    typeKey:
                                                                        transactionLimitsItem
                                                                            .typeKey,
                                                                    maxAmount: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmountTextController
                                                                          .text,
                                                                    )!),
                                                                    dailyLimit: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmount2ndTextController
                                                                          .text,
                                                                    )!),
                                                                  ));
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                _model
                                                                    .updateFetchedTransactionLimitsAtIndex(
                                                                  transactionLimitsIndex,
                                                                  (e) => e
                                                                    ..isMaxedInvalid =
                                                                        dailyInvalid,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              callback2:
                                                                  (maxedInvalid) async {
                                                                if (_model
                                                                    .updatedList
                                                                    .where((e) =>
                                                                        e.typeKey ==
                                                                        transactionLimitsItem
                                                                            .typeKey)
                                                                    .toList()
                                                                    .isNotEmpty) {
                                                                  _model.removeFromUpdatedList(_model
                                                                      .updatedList
                                                                      .where((e) =>
                                                                          e.typeKey ==
                                                                          transactionLimitsItem
                                                                              .typeKey)
                                                                      .toList()
                                                                      .firstOrNull!);
                                                                  safeSetState(
                                                                      () {});
                                                                  _model.addToUpdatedList(
                                                                      PatchLimitBodyStruct(
                                                                    typeKey:
                                                                        transactionLimitsItem
                                                                            .typeKey,
                                                                    maxAmount: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmountTextController
                                                                          .text,
                                                                    )!),
                                                                    dailyLimit: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmount2ndTextController
                                                                          .text,
                                                                    )!),
                                                                  ));
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  _model.addToUpdatedList(
                                                                      PatchLimitBodyStruct(
                                                                    typeKey:
                                                                        transactionLimitsItem
                                                                            .typeKey,
                                                                    dailyLimit: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmount2ndTextController
                                                                          .text,
                                                                    )!),
                                                                    maxAmount: functions.textToDouble(_model
                                                                        .transactionLimitItemComponentModels
                                                                        .getValueAtIndex(
                                                                      transactionLimitsIndex,
                                                                      (m) => m
                                                                          .textFieldUpdatedAmountTextController
                                                                          .text,
                                                                    )!),
                                                                  ));
                                                                  safeSetState(
                                                                      () {});
                                                                }

                                                                _model
                                                                    .updateFetchedTransactionLimitsAtIndex(
                                                                  transactionLimitsIndex,
                                                                  (e) => e
                                                                    ..isDailyInvalid =
                                                                        maxedInvalid,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              callback3:
                                                                  () async {},
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 36.0, 16.0, 36.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEEF2FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: Color(0xFFE0E7FF),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Icon(
                                                        Icons.warning_sharp,
                                                        color:
                                                            Color(0xFF012D72),
                                                        size: 24.0,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '1. Application service fees are excluded from the transaction limit amount.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily,
                                                                    color: Color(
                                                                        0xFF312C85),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodySmallIsCustom,
                                                                  ),
                                                            ),
                                                            Text(
                                                              '2. Your transaction limits and spending are refreshed daily at 10PM.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily,
                                                                    color: Color(
                                                                        0xFF312C85),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodySmallIsCustom,
                                                                  ),
                                                            ),
                                                            Text(
                                                              '3. See our partner apps and website here.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily,
                                                                    color: Color(
                                                                        0xFF312C85),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodySmallIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if ((_model.isLoading == false) &&
                                !(isWeb
                                    ? MediaQuery.viewInsetsOf(context).bottom >
                                        0
                                    : _isKeyboardVisible))
                              Align(
                                alignment: AlignmentDirectional(0.1, 1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 16.0, 41.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: FFButtonWidget(
                                          onPressed:
                                              !(_model.updatedList.isNotEmpty)
                                                  ? null
                                                  : () async {
                                                      _model
                                                          .fetchedTransactionLimits = (WhitebankGroupAPIGroup
                                                                  .retailSettingsTransactionLimitsCall
                                                                  .limits(
                                                                    (_model.getTransactionLimitsResponse
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!
                                                                  .toList()
                                                                  .map<LimitsStruct?>(
                                                                      LimitsStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  LimitsStruct?>)
                                                          .withoutNulls
                                                          .toList()
                                                          .cast<LimitsStruct>();
                                                      _model.updatedList = [];
                                                      _model.resetKey =
                                                          _model.resetKey! + 1;
                                                      safeSetState(() {});
                                                      await Future.delayed(
                                                        Duration(
                                                          milliseconds: 50,
                                                        ),
                                                      );
                                                      _model.getTransactionLimitsResponseV2 =
                                                          await WhitebankGroupAPIGroup
                                                              .retailSettingsTransactionLimitsCall
                                                              .call(
                                                        accessToken:
                                                            currentAuthenticationToken,
                                                        baseURL:
                                                            FFDevEnvironmentValues()
                                                                .WBPBASEURL,
                                                      );

                                                      if ((_model
                                                              .getTransactionLimitsResponseV2
                                                              ?.succeeded ??
                                                          true)) {
                                                        _model.fetchedTransactionLimits =
                                                            (getJsonField(
                                                          (_model.getTransactionLimitsResponseV2
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.limits''',
                                                          true,
                                                        )!
                                                                        .toList()
                                                                        .map<LimitsStruct?>(LimitsStruct
                                                                            .maybeFromMap)
                                                                        .toList()
                                                                    as Iterable<
                                                                        LimitsStruct?>)
                                                                .withoutNulls
                                                                .toList()
                                                                .cast<
                                                                    LimitsStruct>();
                                                        safeSetState(() {});
                                                      }

                                                      safeSetState(() {});
                                                    },
                                          text: 'Cancel',
                                          options: FFButtonOptions(
                                            width: 170.0,
                                            height: 48.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeIsCustom,
                                                    ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color: valueOrDefault<Color>(
                                                !(_model.updatedList.isNotEmpty)
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            disabledTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Builder(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: (!(_model.updatedList
                                                        .isNotEmpty) ||
                                                    (_model.updatedList
                                                        .where((e) =>
                                                            (e.maxAmount ==
                                                                0.0) ||
                                                            (e.dailyLimit ==
                                                                0.0))
                                                        .toList()
                                                        .isNotEmpty) ||
                                                    (_model
                                                        .fetchedTransactionLimits
                                                        .where((e) =>
                                                            e.isMaxedInvalid ==
                                                            true)
                                                        .toList()
                                                        .isNotEmpty) ||
                                                    (_model
                                                        .fetchedTransactionLimits
                                                        .where((e) =>
                                                            e.isDailyInvalid ==
                                                            true)
                                                        .toList()
                                                        .isNotEmpty))
                                                ? null
                                                : () async {
                                                    var _shouldSetState = false;
                                                    _model.apiResultyq5 =
                                                        await WhitebankGroupAPIGroup
                                                            .limitsChallengeCall
                                                            .call(
                                                      updatesJson: _model
                                                          .updatedList
                                                          .map((e) => e.toMap())
                                                          .toList(),
                                                      deviceId: FFAppState()
                                                          .DeviceDetails
                                                          .deviceId,
                                                      accessToken:
                                                          currentAuthenticationToken,
                                                      baseURL:
                                                          FFDevEnvironmentValues()
                                                              .WBPBASEURL,
                                                      fmsSessionId:
                                                          currentUserData
                                                              ?.fmsSessionId,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model.apiResultyq5
                                                            ?.succeeded ??
                                                        true)) {
                                                      if (SigningChallengeStruct.maybeFromMap((_model.apiResultyq5?.jsonBody ?? ''))?.preferredMethod == null ||
                                                          SigningChallengeStruct.maybeFromMap((_model.apiResultyq5?.jsonBody ?? ''))
                                                                  ?.preferredMethod ==
                                                              '') {
                                                        context.goNamed(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'route':
                                                                serializeParam(
                                                              'limits',
                                                              ParamType.String,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        if (_shouldSetState)
                                                          safeSetState(() {});
                                                        return;
                                                      } else if ((isWeb == true) &&
                                                          (SigningChallengeStruct.maybeFromMap((_model.apiResultyq5?.jsonBody ?? ''))
                                                                  ?.availableMethods
                                                                  .contains(SigningAvailableMethods
                                                                      .passkey
                                                                      .name) ==
                                                              true)) {
                                                        _model.fundTransferConfirmSigningPKPayload =
                                                            await action_blocks
                                                                .createConfirmSigningPKPayload(
                                                          context,
                                                          stepupOptionsPayload:
                                                              WBStepupAuthOptionsPayloadStruct(
                                                            transactionType:
                                                                PasskeyTransactionType
                                                                    .limit_change
                                                                    .name,
                                                            transactionId:
                                                                getJsonField(
                                                              (_model.apiResultyq5
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.operationId''',
                                                            ).toString(),
                                                            context: functions
                                                                .buildLimitChangeContext(_model
                                                                    .updatedList
                                                                    .map((e) =>
                                                                        e.toMap())
                                                                    .toList()),
                                                          ),
                                                        );
                                                        _shouldSetState = true;
                                                        _model.confirmPasskey =
                                                            await WhitebankGroupAPIGroup
                                                                .limitsChallengeConfirmPasskeyCall
                                                                .call(
                                                          method:
                                                              SigningAvailableMethods
                                                                  .passkey.name,
                                                          deviceId: FFAppState()
                                                              .DeviceDetails
                                                              .deviceId,
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          stepupToken: _model
                                                              .fundTransferConfirmSigningPKPayload
                                                              ?.data
                                                              .stepupToken,
                                                          transactionHash: _model
                                                              .fundTransferConfirmSigningPKPayload
                                                              ?.data
                                                              .transactionHash,
                                                          operationId:
                                                              getJsonField(
                                                            (_model.apiResultyq5
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.operationId''',
                                                          ).toString(),
                                                          fmsSessionId:
                                                              currentUserData
                                                                  ?.fmsSessionId,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .confirmPasskey
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        CustomMobileBottomSheetWidget(
                                                                      textTitle:
                                                                          'Daily limit updated successfully',
                                                                      btnText:
                                                                          'Okay',
                                                                      btnCallback:
                                                                          () async {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          FFAppState()
                                                                  .shouldRefreshTransactions =
                                                              true;
                                                          safeSetState(() {});
                                                        } else {
                                                          context.goNamed(
                                                            PayTransferFailedPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'route':
                                                                  serializeParam(
                                                                'limits',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      } else if ((SigningChallengeStruct.maybeFromMap((_model.apiResultyq5?.jsonBody ?? ''))
                                                                  ?.preferredMethod ==
                                                              SigningAvailableMethods
                                                                  .biometric
                                                                  .name) &&
                                                          !isWeb) {
                                                        _model.createSignatureOutput =
                                                            await actions
                                                                .createSignature(
                                                          SigningChallengeStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResultyq5
                                                                          ?.jsonBody ??
                                                                      ''))!
                                                              .challenge,
                                                        );
                                                        _shouldSetState = true;
                                                        _model.confirm =
                                                            await WhitebankGroupAPIGroup
                                                                .limitsChallengeConfirmCall
                                                                .call(
                                                          method:
                                                              SigningAvailableMethods
                                                                  .biometric
                                                                  .name,
                                                          deviceId: FFAppState()
                                                              .DeviceDetails
                                                              .deviceId,
                                                          challenge: SigningChallengeStruct
                                                                  .maybeFromMap((_model
                                                                          .apiResultyq5
                                                                          ?.jsonBody ??
                                                                      ''))
                                                              ?.challenge,
                                                          signature: _model
                                                              .createSignatureOutput,
                                                          accessToken:
                                                              currentAuthenticationToken,
                                                          mpin: '',
                                                          baseURL:
                                                              FFDevEnvironmentValues()
                                                                  .WBPBASEURL,
                                                          fmsSessionId:
                                                              currentUserData
                                                                  ?.fmsSessionId,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model.confirm
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        CustomMobileBottomSheetWidget(
                                                                      textTitle:
                                                                          'Daily limit updated successfully',
                                                                      btnText:
                                                                          'Okay',
                                                                      btnCallback:
                                                                          () async {
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          FFAppState()
                                                                  .shouldRefreshTransactions =
                                                              true;
                                                          safeSetState(() {});
                                                        } else {
                                                          context.goNamed(
                                                            PayTransferFailedPageWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'route':
                                                                  serializeParam(
                                                                'limits',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'isLocked':
                                                                  serializeParam(
                                                                false,
                                                                ParamType.bool,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      } else if ((SigningChallengeStruct.maybeFromMap((_model.apiResultyq5?.jsonBody ?? ''))
                                                                  ?.preferredMethod ==
                                                              SigningAvailableMethods
                                                                  .mpin.name) &&
                                                          !isWeb) {
                                                        context.pushNamed(
                                                          MPINPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'forAuth':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                            'challenge':
                                                                serializeParam(
                                                              SigningChallengeStruct
                                                                      .maybeFromMap(
                                                                          (_model.apiResultyq5?.jsonBody ??
                                                                              ''))
                                                                  ?.challenge,
                                                              ParamType.String,
                                                            ),
                                                            'usage':
                                                                serializeParam(
                                                              MpinUsage
                                                                  .SETTING_LIMITS,
                                                              ParamType.Enum,
                                                            ),
                                                            'updateLimits':
                                                                serializeParam(
                                                              _model.updatedList
                                                                  .map((e) =>
                                                                      e.toMap())
                                                                  .toList(),
                                                              ParamType.JSON,
                                                              isList: true,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        Navigator.pop(context);

                                                        context.goNamed(
                                                          PayTransferFailedPageWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'route':
                                                                serializeParam(
                                                              'limits',
                                                              ParamType.String,
                                                            ),
                                                            'isLocked':
                                                                serializeParam(
                                                              false,
                                                              ParamType.bool,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child: WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child:
                                                                    CustomInformationalDialogWidget(
                                                                  message:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    functions.beautifyErrorMessage(WhitebankGroupAPIGroup
                                                                        .limitsChallengeCall
                                                                        .message(
                                                                          (_model.apiResultyq5?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                        .toString()),
                                                                    'Something went wrong',
                                                                  ),
                                                                  primaryButtonTitle:
                                                                      'Close',
                                                                  primaryButtonAction:
                                                                      () async {
                                                                    Navigator.pop(
                                                                        context);
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

                                                    _model.updatedList = [];
                                                    safeSetState(() {});
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                  },
                                            text: 'Save',
                                            options: FFButtonOptions(
                                              width: 170.0,
                                              height: 48.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLargeIsCustom,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              disabledColor: Color(0xFFDAE3E5),
                                              disabledTextColor:
                                                  Color(0xFF939FA3),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        if (_model.isLoading)
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
