import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/cheque/cheque_inquiry_charge/cheque_inquiry_charge_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/custom_reusable_bottom_sheet_v2/custom_reusable_bottom_sheet_v2_widget.dart';
import '/pay_bills/p_b_components/feature_flag_bottom_sheet/feature_flag_bottom_sheet_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cheque_inquiry_result_page_model.dart';
export 'cheque_inquiry_result_page_model.dart';

/// Money Transfer Form
class ChequeInquiryResultPageWidget extends StatefulWidget {
  const ChequeInquiryResultPageWidget({super.key});

  static String routeName = 'ChequeInquiryResultPage';
  static String routePath = '/chequeInquiryResultPage';

  @override
  State<ChequeInquiryResultPageWidget> createState() =>
      _ChequeInquiryResultPageWidgetState();
}

class _ChequeInquiryResultPageWidgetState
    extends State<ChequeInquiryResultPageWidget> {
  late ChequeInquiryResultPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChequeInquiryResultPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await _model.getDevices(context);
      _model.isLoading = false;
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
            if (_model.isLoading)
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: _model.isLoading,
                  ),
                ),
              ),
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
                            isWeb ? 20.0 : 0.0,
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
                        child: Visibility(
                          visible: _model.isLoading == false,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 80.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        if (FFAppState()
                                            .chequeInquiryRecords
                                            .isNotEmpty) {
                                          return Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Builder(
                                              builder: (context) {
                                                final chequeLists = FFAppState()
                                                    .chequeInquiryRecords
                                                    .toList();

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      chequeLists.length,
                                                      (chequeListsIndex) {
                                                    final chequeListsItem =
                                                        chequeLists[
                                                            chequeListsIndex];
                                                    return Builder(
                                                      builder: (context) =>
                                                          Semantics(
                                                        label:
                                                            'chequeInquiryResult_stopcheque_component',
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
                                                            if (FFAppState()
                                                                .FeatureFlagsAppstate
                                                                .retailStopCheque) {
                                                              if (chequeListsItem
                                                                      .chequeStatus ==
                                                                  'Cheque Not Yet Paid/Negotiated') {
                                                                await showModalBottomSheet(
                                                                  isScrollControlled:
                                                                      true,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              ChequeInquiryChargeWidget(
                                                                            chequeNumber:
                                                                                chequeListsItem.chequeNumber,
                                                                            cancelAction:
                                                                                () async {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            confirmAction:
                                                                                (selectedReason) async {
                                                                              if (FFAppState().chequeInquiryAccountDetails.accountBalance > 200.0) {
                                                                                _model.aPIStopChequeResult = await WhitebankGroupAPIGroup.retailStopChequePrepareCall.call(
                                                                                  accountNumber: FFAppState().chequeInquiryAccountDetails.accountNumber,
                                                                                  chequeNumber: chequeListsItem.chequeNumber,
                                                                                  reason: selectedReason,
                                                                                  baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                  accessToken: currentAuthenticationToken,
                                                                                );

                                                                                if ((_model.aPIStopChequeResult?.succeeded ?? true)) {
                                                                                  _model.aPIStopChequeChallenge = await WhitebankGroupAPIGroup.retailStopChequeSigningChallengeCall.call(
                                                                                    deviceId: FFAppState().DeviceDetails.deviceId,
                                                                                    id: RetailStopChequePrepareResponseStruct.maybeFromMap((_model.aPIStopChequeResult?.jsonBody ?? ''))?.pendingRequestId,
                                                                                    baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                    accessToken: currentAuthenticationToken,
                                                                                  );

                                                                                  if ((RetailStopChequeChallengeResponseStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))?.preferredMethod == SigningAvailableMethods.mpin.name) && (_model.aPIStopChequeChallenge?.succeeded ?? true) && !isWeb) {
                                                                                    FFAppState().updateStopChequeModelStruct(
                                                                                      (e) => e
                                                                                        ..accountNumber = FFAppState().chequeInquiryAccountDetails.accountNumber
                                                                                        ..accountBalance = FFAppState().chequeInquiryAccountDetails.accountBalance
                                                                                        ..challenge = RetailStopChequeChallengeResponseStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))?.challenge
                                                                                        ..chequeId = RetailStopChequePrepareResponseStruct.maybeFromMap((_model.aPIStopChequeResult?.jsonBody ?? ''))?.pendingRequestId,
                                                                                    );
                                                                                    safeSetState(() {});

                                                                                    context.pushNamed(
                                                                                      MPINPageWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'usage': serializeParam(
                                                                                          MpinUsage.STOP_CHEQUE,
                                                                                          ParamType.Enum,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  } else if ((_model.aPIStopChequeChallenge?.succeeded ?? true) && (RetailStopChequeChallengeResponseStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))?.preferredMethod == SigningAvailableMethods.biometric.name) && !isWeb) {
                                                                                    _model.signature = await actions.createSignature(
                                                                                      RetailStopChequeChallengeResponseStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))!.challenge,
                                                                                    );
                                                                                    _model.chequeConfirmSigning = await WhitebankGroupAPIGroup.retailStopChequeConfirmSigningCall.call(
                                                                                      method: SigningAvailableMethods.biometric.name,
                                                                                      deviceId: FFAppState().DeviceDetails.deviceId,
                                                                                      challenge: RetailStopChequeChallengeResponseStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))?.challenge,
                                                                                      signature: _model.signature,
                                                                                      id: RetailStopChequePrepareResponseStruct.maybeFromMap((_model.aPIStopChequeResult?.jsonBody ?? ''))?.pendingRequestId,
                                                                                      baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                      accessToken: currentAuthenticationToken,
                                                                                    );

                                                                                    if ((_model.chequeConfirmSigning?.succeeded ?? true)) {
                                                                                      FFAppState().updateChequeSuccessStruct(
                                                                                        (e) => e
                                                                                          ..chequeNumber = ChequeConfirmSigningResponseStruct.maybeFromMap((_model.chequeConfirmSigning?.jsonBody ?? ''))?.chequeNumber
                                                                                          ..dateAndTime = ChequeConfirmSigningResponseStruct.maybeFromMap((_model.chequeConfirmSigning?.jsonBody ?? ''))?.confirmedAt,
                                                                                      );
                                                                                      safeSetState(() {});

                                                                                      context.pushNamed(ChequeStopSuccessPageWidget.routeName);
                                                                                    } else {
                                                                                      if ((ChequeStopFailedStruct.maybeFromMap((_model.chequeConfirmSigning?.jsonBody ?? ''))?.error == 'STOP_CHEQUE_CUTOFF') || (ChequeStopFailedStruct.maybeFromMap((_model.chequeConfirmSigning?.jsonBody ?? ''))?.error == 'STOP_CHEQUE_DAILY_LIMIT')) {
                                                                                        FFAppState().StopChequeModel = ChequeStopModelStruct();
                                                                                        safeSetState(() {});
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
                                                                                                    message: ChequeStopFailedStruct.maybeFromMap((_model.chequeConfirmSigning?.jsonBody ?? ''))!.message,
                                                                                                    primaryButtonTitle: 'Dismiss',
                                                                                                    primaryButtonAction: () async {
                                                                                                      context.pushNamed(DashboardWidget.routeName);
                                                                                                    },
                                                                                                    secondaryButtonAction: () async {},
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        );
                                                                                      } else {
                                                                                        context.pushNamed(
                                                                                          StopChequeFailedPageWidget.routeName,
                                                                                          queryParameters: {
                                                                                            'isLocked': serializeParam(
                                                                                              false,
                                                                                              ParamType.bool,
                                                                                            ),
                                                                                          }.withoutNulls,
                                                                                        );
                                                                                      }
                                                                                    }
                                                                                  } else if ((StopChequeChallengeErrorStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))?.error == 'DEVICE_NOT_TRUSTED') || (StopChequeChallengeErrorStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))?.error == 'DEVICE_NOT_OWNED')) {
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
                                                                                                message: StopChequeChallengeErrorStruct.maybeFromMap((_model.aPIStopChequeChallenge?.jsonBody ?? ''))!.message,
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
                                                                                  } else {
                                                                                    context.pushNamed(
                                                                                      StopChequeFailedPageWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'isLocked': serializeParam(
                                                                                          false,
                                                                                          ParamType.bool,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  if ((ChequeStopFailedStruct.maybeFromMap((_model.aPIStopChequeResult?.jsonBody ?? ''))?.error == 'INVALID_CHEQUE_NUMBER') || (ChequeStopFailedStruct.maybeFromMap((_model.aPIStopChequeResult?.jsonBody ?? ''))?.error == 'VALIDATION_ERROR')) {
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
                                                                                                message: ChequeStopFailedStruct.maybeFromMap((_model.aPIStopChequeResult?.jsonBody ?? ''))!.message,
                                                                                                primaryButtonTitle: 'Dismiss',
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
                                                                                  } else {
                                                                                    context.pushNamed(
                                                                                      StopChequeFailedPageWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'isLocked': serializeParam(
                                                                                          false,
                                                                                          ParamType.bool,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  }
                                                                                }
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
                                                                                            message: 'Insufficient Balance.',
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
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                ).then((value) =>
                                                                    safeSetState(
                                                                        () {}));
                                                              }
                                                            } else {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return WebViewAware(
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        FocusScope.of(context)
                                                                            .unfocus();
                                                                        FocusManager
                                                                            .instance
                                                                            .primaryFocus
                                                                            ?.unfocus();
                                                                      },
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            MediaQuery.viewInsetsOf(context),
                                                                        child:
                                                                            FeatureFlagBottomSheetWidget(
                                                                          callBack:
                                                                              () async {
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x15027377),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                if (chequeListsItem
                                                                        .chequeStatus ==
                                                                    'Cheque Already Paid') {
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            16.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              'Cheque No. ${chequeListsItem.chequeNumber}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              chequeListsItem.chequeDate,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: Color(0xFF707070),
                                                                                    fontSize: 12.0,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 4.0)),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              chequeListsItem.chequeAmount,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    color: Color(0xFF848484),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                  ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                color: () {
                                                                                  if (chequeListsItem.chequeStatus == 'Cheque Already Paid') {
                                                                                    return FlutterFlowTheme.of(context).success2;
                                                                                  } else if (chequeListsItem.chequeStatus == 'Cheque Not Yet Paid/Negotiated') {
                                                                                    return FlutterFlowTheme.of(context).warning;
                                                                                  } else {
                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                  }
                                                                                }(),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                child: Text(
                                                                                  chequeListsItem.chequeStatus,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 2.0)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  );
                                                                } else {
                                                                  return Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            16.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Cheque No. ${chequeListsItem.chequeNumber}',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 4.0)),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: BoxDecoration(
                                                                                    color: () {
                                                                                      if (chequeListsItem.chequeStatus == 'Cheque Already Paid') {
                                                                                        return FlutterFlowTheme.of(context).success2;
                                                                                      } else if (chequeListsItem.chequeStatus == 'Cheque Not Yet Paid/Negotiated') {
                                                                                        return FlutterFlowTheme.of(context).warning;
                                                                                      } else {
                                                                                        return FlutterFlowTheme.of(context).error;
                                                                                      }
                                                                                    }(),
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                    child: Text(
                                                                                      chequeListsItem.chequeStatus,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(SizedBox(height: 2.0)),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Builder(
                                                                          builder:
                                                                              (context) {
                                                                            if (chequeListsItem.chequeStatus ==
                                                                                'Cheque Not Yet Paid/Negotiated') {
                                                                              return Container(
                                                                                width: double.infinity,
                                                                                height: 50.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  borderRadius: BorderRadius.circular(32.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Icon(
                                                                                      Icons.cancel_outlined,
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      size: 18.0,
                                                                                    ),
                                                                                    Text(
                                                                                      'Stop this Cheque',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Color(0xFFB04A4F),
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 5.0)),
                                                                                ),
                                                                              );
                                                                            } else {
                                                                              return Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFF9FAFB),
                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsets.all(12.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons.info_outline,
                                                                                        color: Color(0xFF4B5563),
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      Text(
                                                                                        'This cheque has been stopped and can \nno longer be paid.',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: Color(0xFF4B5563),
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                            ),
                                                                                      ),
                                                                                    ].divide(SizedBox(width: 5.0)),
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                          },
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 10.0)),
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }).divide(
                                                      SizedBox(height: 16.0)),
                                                );
                                              },
                                            ),
                                          );
                                        } else {
                                          return wrapWithModel(
                                            model:
                                                _model.emptyListComponentModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: EmptyListComponentWidget(
                                              title:
                                                  'You don\'t have existing cheques.',
                                            ),
                                          );
                                        }
                                      },
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
                ),
              ],
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
                  titleLeftAlign: 'Inquiry Result',
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
