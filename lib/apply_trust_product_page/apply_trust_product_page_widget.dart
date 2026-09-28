import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/radio_button_container_component_copy_widget.dart';
import '/components/select_source_account_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'apply_trust_product_page_model.dart';
export 'apply_trust_product_page_model.dart';

/// Money Transfer Form
class ApplyTrustProductPageWidget extends StatefulWidget {
  const ApplyTrustProductPageWidget({super.key});

  static String routeName = 'ApplyTrustProductPage';
  static String routePath = '/ApplyTrustFundPage';

  @override
  State<ApplyTrustProductPageWidget> createState() =>
      _ApplyTrustProductPageWidgetState();
}

class _ApplyTrustProductPageWidgetState
    extends State<ApplyTrustProductPageWidget> {
  late ApplyTrustProductPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApplyTrustProductPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
      await _model.getOptions(context);
      _model.isLoading = false;
      _model.isNotSelectedAccount = false;
      _model.isNotSelected = false;
      safeSetState(() {});
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                        pageIndex: 1,
                        shouldHideBottomNav: false,
                      ),
                    ),
                  ),
                if (!_model.isLoading)
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
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
                                  return 36.0;
                                } else {
                                  return 36.0;
                                }
                              }(),
                              0.0,
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
                                  return 36.0;
                                } else {
                                  return 36.0;
                                }
                              }(),
                              0.0,
                            ),
                            0.0),
                        child: Container(
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
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE6F4F4),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  'Tell us what you need and explore available loan products.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLargeFamily,
                                                        color:
                                                            Color(0xFF667085),
                                                        fontSize: 12.5,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLargeIsCustom,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Select Account',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '*',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Semantics(
                                                label:
                                                    'trustproduct_selectAccount_component',
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
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
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
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  SelectSourceAccountBottomSheetWidget(
                                                                callBack:
                                                                    (selectedAccount) async {
                                                                  _model
                                                                      .updateSelectedAccountStruct(
                                                                    (e) => e
                                                                      ..accountNumber =
                                                                          selectedAccount
                                                                              .fullAccountNumber
                                                                      ..accountName =
                                                                          selectedAccount
                                                                              .accountName
                                                                      ..accountNumberMasked =
                                                                          selectedAccount
                                                                              .maskedAccountNumber,
                                                                  );
                                                                  _model
                                                                      .updateRequestValueStruct(
                                                                    (e) => e
                                                                      ..accountNumber =
                                                                          selectedAccount
                                                                              .fullAccountNumber,
                                                                  );
                                                                  _model.isNotSelectedAccount =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFCCE3E4),
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 42.0,
                                                                  height: 42.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFE3F4F4),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14.0),
                                                                  ),
                                                                  child: Icon(
                                                                    Icons
                                                                        .wallet_sharp,
                                                                    color: Color(
                                                                        0xFF027377),
                                                                    size: 16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      _model
                                                                          .selectedAccount
                                                                          ?.accountNumber,
                                                                      '-',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          color:
                                                                              Color(0xFF002C75),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 28.0,
                                                                  height: 28.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFE3F4F4),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_sharp,
                                                                    color: Color(
                                                                        0xFF027377),
                                                                    size: 14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (_model.isNotSelectedAccount)
                                              Text(
                                                'Please select your account.',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                          ].divide(SizedBox(height: 16.0)),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Nationality',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final nationality = _model
                                                      .nationalityOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        nationality.length,
                                                        (nationalityIndex) {
                                                      final nationalityItem =
                                                          nationality[
                                                              nationalityIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_nationality_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Key5uc_${nationalityIndex}_of_${nationality.length}'),
                                                          isSelected:
                                                              nationalityItem
                                                                  .isSelected,
                                                          text: nationalityItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .nationalityOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.nationalityOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateNationalityOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      nationalityIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..nationality =
                                                                    nationalityItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.nationalityOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select nationality.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Investible Funds',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final funds = _model
                                                      .fundsOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        funds.length,
                                                        (fundsIndex) {
                                                      final fundsItem =
                                                          funds[fundsIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_funds_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Keyizd_${fundsIndex}_of_${funds.length}'),
                                                          isSelected: fundsItem
                                                              .isSelected,
                                                          text: fundsItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .fundsOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.fundsOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateFundsOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      fundsIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..investibleFunds =
                                                                    fundsItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.fundsOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select investible funds.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Which statement best defines your investments objective?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final investment = _model
                                                      .investmentOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        investment.length,
                                                        (investmentIndex) {
                                                      final investmentItem =
                                                          investment[
                                                              investmentIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_objectice_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Keyn8l_${investmentIndex}_of_${investment.length}'),
                                                          isSelected:
                                                              investmentItem
                                                                  .isSelected,
                                                          text: investmentItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .investmentOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.investmentOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateInvestmentOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      investmentIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..investmentObjective =
                                                                    investmentItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.investmentOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select investment objective.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'How long are you willing to allow funds to stay invested?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final horizon = _model
                                                      .horizonOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        horizon.length,
                                                        (horizonIndex) {
                                                      final horizonItem =
                                                          horizon[horizonIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_horizon_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Keyubk_${horizonIndex}_of_${horizon.length}'),
                                                          isSelected:
                                                              horizonItem
                                                                  .isSelected,
                                                          text: horizonItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .horizonOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.horizonOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateHorizonOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      horizonIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..investmentHorizon =
                                                                    horizonItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.horizonOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'What portion of the fund would be set aside for investments?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final allocation = _model
                                                      .allocationOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        allocation.length,
                                                        (allocationIndex) {
                                                      final allocationItem =
                                                          allocation[
                                                              allocationIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_allocation_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Keyfjn_${allocationIndex}_of_${allocation.length}'),
                                                          isSelected:
                                                              allocationItem
                                                                  .isSelected,
                                                          text: allocationItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .allocationOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.allocationOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateAllocationOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      allocationIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..investmentAllocation =
                                                                    allocationItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.allocationOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Which of the statements below best describes your invesment risk?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final risk = _model.riskOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        risk.length,
                                                        (riskIndex) {
                                                      final riskItem =
                                                          risk[riskIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_risk_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Keyc65_${riskIndex}_of_${risk.length}'),
                                                          isSelected: riskItem
                                                              .isSelected,
                                                          text: riskItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .riskOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.riskOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateRiskOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      riskIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..riskTolerance =
                                                                    riskItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.riskOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select investment risk.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'What is your net worth for the last 2 years? How much are you willing to invest in a regular trust account?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '*',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    )
                                                  ],
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final networth = _model
                                                      .networthOption
                                                      .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        networth.length,
                                                        (networthIndex) {
                                                      final networthItem =
                                                          networth[
                                                              networthIndex];
                                                      return Semantics(
                                                        label:
                                                            'trustproduct_networth_component',
                                                        child:
                                                            RadioButtonContainerComponentCopyWidget(
                                                          key: Key(
                                                              'Key94e_${networthIndex}_of_${networth.length}'),
                                                          isSelected:
                                                              networthItem
                                                                  .isSelected,
                                                          text: networthItem
                                                              .selectedItem,
                                                          callback: () async {
                                                            for (int loop1Index =
                                                                    0;
                                                                loop1Index <
                                                                    _model
                                                                        .networthOption
                                                                        .length;
                                                                loop1Index++) {
                                                              final currentLoop1Item =
                                                                  _model.networthOption[
                                                                      loop1Index];
                                                              _model
                                                                  .updateNetworthOptionAtIndex(
                                                                loop1Index,
                                                                (e) => e
                                                                  ..isSelected =
                                                                      networthIndex ==
                                                                          loop1Index,
                                                              );
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            _model
                                                                .updateRequestValueStruct(
                                                              (e) => e
                                                                ..netWorthLast2Years =
                                                                    networthItem
                                                                        .selectedItem,
                                                            );
                                                            safeSetState(() {});
                                                          },
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                              if (_model.isNotSelected &&
                                                  !(_model.networthOption
                                                      .where((e) =>
                                                          e.isSelected == true)
                                                      .toList()
                                                      .isNotEmpty))
                                                Text(
                                                  'Please select.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 50.0),
                                  child: Semantics(
                                    label: 'trustproduct_submit_component',
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if ((_model.requestValue == null) ||
                                            (_model.requestValue?.accountNumber ==
                                                '') ||
                                            (_model.requestValue?.nationality ==
                                                '') ||
                                            (_model.requestValue
                                                    ?.investibleFunds ==
                                                '') ||
                                            (_model.requestValue
                                                    ?.investmentObjective ==
                                                '') ||
                                            (_model.requestValue?.investmentHorizon ==
                                                '') ||
                                            (_model.requestValue
                                                    ?.investmentAllocation ==
                                                '') ||
                                            (_model.requestValue
                                                    ?.riskTolerance ==
                                                '') ||
                                            (_model.requestValue
                                                    ?.netWorthLast2Years ==
                                                '')) {
                                          _model.isNotSelectedAccount = true;
                                          _model.isNotSelected = true;
                                          safeSetState(() {});
                                        } else {
                                          _model.isNotSelectedAccount = false;
                                          _model.isNotSelected = false;
                                          safeSetState(() {});
                                          _model.trustFundSuccess =
                                              await WhitebankGroupAPIGroup
                                                  .retailServiceRequestTrustProductSubmitCall
                                                  .call(
                                            accountNumber: _model
                                                .requestValue?.accountNumber,
                                            nationality: _model
                                                .requestValue?.nationality,
                                            investibleFunds: _model
                                                .requestValue?.investibleFunds,
                                            investmentObjective: _model
                                                .requestValue
                                                ?.investmentObjective,
                                            investmentHorizon: _model
                                                .requestValue
                                                ?.investmentHorizon,
                                            investmentAllocation: _model
                                                .requestValue
                                                ?.investmentAllocation,
                                            riskTolerance: _model
                                                .requestValue?.riskTolerance,
                                            netWorthLast2Years: _model
                                                .requestValue
                                                ?.netWorthLast2Years,
                                            idempotencyKey:
                                                functions.createUuid(),
                                            baseURL: FFDevEnvironmentValues()
                                                .WBPBASEURL,
                                            accessToken:
                                                currentAuthenticationToken,
                                          );

                                          if ((_model.trustFundSuccess
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState()
                                                .updateTrustFundResponseStruct(
                                              (e) => e
                                                ..referenceNumber =
                                                    TrustFundResponseSuccessStruct
                                                            .maybeFromMap((_model
                                                                    .trustFundSuccess
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.referenceNumber
                                                ..status =
                                                    TrustFundResponseSuccessStruct
                                                            .maybeFromMap((_model
                                                                    .trustFundSuccess
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.status
                                                ..dateApplied =
                                                    TrustFundResponseSuccessStruct
                                                            .maybeFromMap((_model
                                                                    .trustFundSuccess
                                                                    ?.jsonBody ??
                                                                ''))
                                                        ?.dateApplied,
                                            );
                                            safeSetState(() {});

                                            context.pushNamed(
                                                TrustFundSuccessPageWidget
                                                    .routeName);
                                          }
                                        }

                                        safeSetState(() {});
                                      },
                                      text: 'Submit',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF027377),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleSmallIsCustom,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
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
              ],
            ),
            wrapWithModel(
              model: _model.customWebAppBarModel,
              updateCallback: () => safeSetState(() {}),
              child: CustomWebAppBarWidget(
                pageTitle: 'Apply Trust Product',
                leftButtonAction: () async {},
                midButtonAction: () async {},
                rightButtonAction: () async {},
              ),
            ),
            Builder(
              builder: (context) => wrapWithModel(
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
                  buttonWithoutBackground: false,
                  btnWOBgIcon: Icon(
                    Icons.arrow_back,
                    color: Color(0xFF444C66),
                  ),
                  btnWOBgColor: Color(0xFF444C66),
                  btnWOBgIconSize: 24.0,
                  isTitleLeftAlign: true,
                  titleLeftAlign: 'Apply Trust Product',
                  textLeftAlignColor: Color(0xFF444C66),
                  rightButtonAction: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: CustomReusableBottomSheetV2Widget(
                                title: 'Trust This Device?',
                                message:
                                    'We noticed this is your first login on this device. For your security, please confirm if you trust this device to access your account.',
                                buttonTitle: 'Trust Device',
                                cancelButtonTitle: 'Not now',
                                callback: () async {
                                  var _shouldSetState = false;
                                  _model.devicesResponse =
                                      await WhitebankGroupAPIGroup
                                          .retailSettingsDevicesListCall
                                          .call(
                                    accessToken: currentAuthenticationToken,
                                    baseURL:
                                        FFDevEnvironmentValues().WBPBASEURL,
                                  );

                                  _shouldSetState = true;
                                  if (((_model.devicesResponse?.jsonBody ?? '')
                                              .toList()
                                              .map<TrustedDeviceStruct?>(
                                                  TrustedDeviceStruct.maybeFromMap)
                                              .toList()
                                          as Iterable<TrustedDeviceStruct?>)
                                      .withoutNulls
                                      .where((e) =>
                                          e.deviceId ==
                                          FFAppState().DeviceDetails.deviceId)
                                      .toList()
                                      .isNotEmpty) {
                                    _model.initTrustResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailSettingsDeviceInitiateTrustCall
                                            .call(
                                      deviceId: ((_model.devicesResponse
                                                          ?.jsonBody ??
                                                      '')
                                                  .toList()
                                                  .map<TrustedDeviceStruct?>(
                                                      TrustedDeviceStruct
                                                          .maybeFromMap)
                                                  .toList()
                                              as Iterable<TrustedDeviceStruct?>)
                                          .withoutNulls
                                          .where((e) =>
                                              e.deviceId ==
                                              FFAppState()
                                                  .DeviceDetails
                                                  .deviceId)
                                          .toList()
                                          .firstOrNull
                                          ?.id,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                    );

                                    _shouldSetState = true;
                                    if (WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .error(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            null ||
                                        WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .error(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            '') {
                                      context.pushNamed(
                                        AccountVerificationPageWidget.routeName,
                                        queryParameters: {
                                          'sessionToken': serializeParam(
                                            WhitebankGroupAPIGroup
                                                .retailSettingsDeviceInitiateTrustCall
                                                .sessionId(
                                              (_model.initTrustResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            ParamType.String,
                                          ),
                                          'purpose': serializeParam(
                                            VerificationType.trustDevice,
                                            ParamType.Enum,
                                          ),
                                          'deviceId': serializeParam(
                                            ((_model.devicesResponse
                                                                ?.jsonBody ??
                                                            '')
                                                        .toList()
                                                        .map<TrustedDeviceStruct?>(
                                                            TrustedDeviceStruct
                                                                .maybeFromMap)
                                                        .toList()
                                                    as Iterable<
                                                        TrustedDeviceStruct?>)
                                                .withoutNulls
                                                .where((e) =>
                                                    e.deviceId ==
                                                    FFAppState()
                                                        .DeviceDetails
                                                        .deviceId)
                                                .toList()
                                                .firstOrNull
                                                ?.id,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else if (WhitebankGroupAPIGroup
                                            .retailSettingsDeviceInitiateTrustCall
                                            .error(
                                          (_model.initTrustResponse?.jsonBody ??
                                              ''),
                                        ) ==
                                        ResponseStatus
                                            .MAX_TRUSTED_DEVICES_REACHED.name) {
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
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    )?.toString(),
                                                    'Maximum number of trusted devices (3) reached',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
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
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    )?.toString(),
                                                    'Failed to initiate trust device.',
                                                  ),
                                                  primaryButtonTitle: 'Dismiss',
                                                  title: valueOrDefault<String>(
                                                    getJsonField(
                                                      (_model.initTrustResponse
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.error''',
                                                    )?.toString(),
                                                    'Device already trusted.',
                                                  ),
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

                                    return;
                                  } else {
                                    _model.fcmTokenOutput =
                                        await actions.getFCMToken();
                                    _shouldSetState = true;
                                    _model.registerDeviceResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailSettingsDeviceRegisterCall
                                            .call(
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      deviceName:
                                          FFAppState().DeviceDetails.name,
                                      pushToken: _model.fcmTokenOutput,
                                      pushPlatform:
                                          FFAppState().DeviceDetails.os,
                                      deviceType: FFAppState().DeviceDetails.os,
                                      osVersion:
                                          FFAppState().DeviceDetails.osVersion,
                                      appVersion:
                                          FFAppConstants.BuildVersionNumber,
                                    );

                                    _shouldSetState = true;
                                    // If newly registered device is not trusted, then initiate trust
                                    if (WhitebankGroupAPIGroup
                                            .retailSettingsDeviceRegisterCall
                                            .trusted(
                                          (_model.registerDeviceResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ) ==
                                        false) {
                                      _model.initTrustResponseCopy =
                                          await WhitebankGroupAPIGroup
                                              .retailSettingsDeviceInitiateTrustCall
                                              .call(
                                        deviceId: ((_model.devicesResponse
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<TrustedDeviceStruct?>(
                                                        TrustedDeviceStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    TrustedDeviceStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.deviceId ==
                                                FFAppState()
                                                    .DeviceDetails
                                                    .deviceId)
                                            .toList()
                                            .firstOrNull
                                            ?.id,
                                        accessToken: currentAuthenticationToken,
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                      );

                                      _shouldSetState = true;
                                      if (WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .error(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              null ||
                                          WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .error(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              '') {
                                        context.pushNamed(
                                          AccountVerificationPageWidget
                                              .routeName,
                                          queryParameters: {
                                            'sessionToken': serializeParam(
                                              WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceInitiateTrustCall
                                                  .sessionId(
                                                (_model.initTrustResponseCopy
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                            'purpose': serializeParam(
                                              VerificationType.trustDevice,
                                              ParamType.Enum,
                                            ),
                                            'deviceId': serializeParam(
                                              WhitebankGroupAPIGroup
                                                  .retailSettingsDeviceRegisterCall
                                                  .id(
                                                (_model.registerDeviceResponse
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else if (WhitebankGroupAPIGroup
                                              .retailSettingsDeviceInitiateTrustCall
                                              .error(
                                            (_model.initTrustResponseCopy
                                                    ?.jsonBody ??
                                                ''),
                                          ) ==
                                          ResponseStatus
                                              .MAX_TRUSTED_DEVICES_REACHED
                                              .name) {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
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
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initTrustResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Maximum number of trusted devices (3) reached',
                                                    ),
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
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
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
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initTrustResponseCopy
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Failed to initiate trust device.',
                                                    ),
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

                                      return;
                                    } else {
                                      Navigator.pop(context);
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        isDismissible: false,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return WebViewAware(
                                            child: GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child:
                                                    CustomReusableBottomSheetV2Widget(
                                                  title:
                                                      'You have successfullly trusted this device.',
                                                  message:
                                                      'Device trusted successfully',
                                                  buttonTitle:
                                                      'Go to Dashboard',
                                                  callback: () async {
                                                    context.goNamed(
                                                      DashboardWidget.routeName,
                                                      extra: <String, dynamic>{
                                                        '__transition_info__':
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  cancelCallback: () async {},
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }

                                    return;
                                  }
                                },
                                cancelCallback: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));

                    safeSetState(() {});
                  },
                  leftButtonAction: () async {
                    context.safePop();
                  },
                  midRightButtonAction: () async {},
                ),
              ),
            ),
            if (_model.isLoading)
              wrapWithModel(
                model: _model.loadingStateComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: LoadingStateComponentWidget(
                  isFinished: true,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
