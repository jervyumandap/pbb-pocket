import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/fund_transfer/fund_transfer_account_selection/fund_transfer_account_selection_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'confirm_payment_component_model.dart';
export 'confirm_payment_component_model.dart';

class ConfirmPaymentComponentWidget extends StatefulWidget {
  const ConfirmPaymentComponentWidget({
    super.key,
    this.beneficiaryBankName,
    this.ownAccountName,
    this.ownAccountNumber,
    bool? isFromFavorite,
    bool? isQrPayment,
    bool? isScheduled,
  })  : this.isFromFavorite = isFromFavorite ?? false,
        this.isQrPayment = isQrPayment ?? false,
        this.isScheduled = isScheduled ?? false;

  final String? beneficiaryBankName;
  final String? ownAccountName;
  final String? ownAccountNumber;
  final bool isFromFavorite;
  final bool isQrPayment;
  final bool isScheduled;

  @override
  State<ConfirmPaymentComponentWidget> createState() =>
      _ConfirmPaymentComponentWidgetState();
}

class _ConfirmPaymentComponentWidgetState
    extends State<ConfirmPaymentComponentWidget> {
  late ConfirmPaymentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmPaymentComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(
              valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 0.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 0.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 1.0;
                  } else {
                    return 1.0;
                  }
                }(),
                0.0,
              ),
              valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 1.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 1.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return -1.0;
                  } else {
                    return -1.0;
                  }
                }(),
                0.0,
              )),
          child: Container(
            width: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return double.infinity;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return double.infinity;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 398.0;
              } else {
                return 398.0;
              }
            }(),
            height: () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 680.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 680.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return double.infinity;
              } else {
                return double.infinity;
              }
            }(),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
                topRight: Radius.circular(valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 16.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 0.0;
                    } else {
                      return 0.0;
                    }
                  }(),
                  0.0,
                )),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 21.0, 0.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (() {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return false;
                          } else {
                            return false;
                          }
                        }())
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 23.0),
                              child: Container(
                                width: 29.0,
                                height: 6.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
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
                                0.0,
                              ),
                              0.0,
                              24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Semantics(
                                  label:
                                      'fund_transfer_confirmation_recipient_name_text',
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Transfer to ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF383839),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            FFAppState()
                                                .FundTransferiniatedResponse
                                                .destinationAccountName,
                                            'Travel Account',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF094288),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${FFAppState().FundTransferiniatedResponse.currency}${formatNumber(
                                  FFAppState()
                                      .FundTransferiniatedResponse
                                      .totalAmount,
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.periodDecimal,
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineMediumFamily,
                                      color: Color(0xFF43435B),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .headlineMediumIsCustom,
                                    ),
                              ),

                              // fund_transfer_confirmation_recipient_account_number_text
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Text(
                                  functions
                                      .maskAccountNumber(valueOrDefault<String>(
                                    FFAppState()
                                        .FundTransferiniatedResponse
                                        .destinationAccountNumber,
                                    '123213 12312',
                                  )),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF383839),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Container(
                            height: 68.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFEDF9FC),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Semantics(
                                    label:
                                        'fund_transfer_confirmation_destination_bank_name_text',
                                    child: Text(
                                      valueOrDefault<String>(
                                        (FFAppState()
                                                        .FundTransferiniatedResponse
                                                        .transferType ==
                                                    TransactionTypeKey
                                                        .INTRABANK.name) ||
                                                (FFAppState()
                                                        .FundTransferiniatedResponse
                                                        .transferType ==
                                                    TransactionTypeKey
                                                        .OWN_ACCOUNT.name)
                                            ? 'Philippine Business Bank'
                                            : FFAppState()
                                                .FundTransferiniatedResponse
                                                .bankName,
                                        'Philippine Business Bank',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFF094288),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (FFAppState()
                                              .FundTransferiniatedResponse
                                              .transferType ==
                                          TransactionTypeKey.INSTAPAY.name) {
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/image_3.png',
                                            width: 115.0,
                                            height: 26.0,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      } else if (FFAppState()
                                              .FundTransferiniatedResponse
                                              .transferType ==
                                          TransactionTypeKey.PESONET.name) {
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/image_3_(1).png',
                                            width: 115.0,
                                            height: 26.0,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      } else if ((FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType ==
                                              TransactionTypeKey
                                                  .INTRABANK.name) ||
                                          (FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType ==
                                              TransactionTypeKey
                                                  .OWN_ACCOUNT.name)) {
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/fuueei.png',
                                            width: 115.0,
                                            height: 26.0,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      } else {
                                        return Semantics(
                                          label:
                                              'fund_transfer_confirmation_destination_bank_logo_image',
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/fuueei.png',
                                              width: 115.0,
                                              height: 26.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Semantics(
                                              label:
                                                  'fund_transfer_confirmation_transfer_from_label',
                                              child: Text(
                                                'Transfer From',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF383839),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 12.0)),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Semantics(
                                          label:
                                              'fund_transfer_confirmation_source_account_name_text',
                                          child: Text(
                                            valueOrDefault<String>(
                                              currentUserData?.user.fullName,
                                              'Ben Uy',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF383839),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'fund_transfer_confirmation_source_account_number_text',
                                          child: Text(
                                            functions.maskAccountNumber(
                                                valueOrDefault<String>(
                                              FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .sourceAccountNumber,
                                              '123 1232 1232',
                                            )),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF383839),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'fund_transfer_confirmation_source_account_type_text',
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .accountType,
                                              'Savings Account',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF838383),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'fund_transfer_confirmation_change_account_button',
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState()
                                                      .FundTransferiniatedResponse
                                                      .transferType ==
                                                  TransactionTypeKey
                                                      .OWN_ACCOUNT.name) {
                                                FFAppState().AccountsState =
                                                    FFAppState()
                                                        .AccountsState
                                                        .where((e) =>
                                                            FFAppState()
                                                                .FundTransferiniatedResponse
                                                                .destinationAccountNumber !=
                                                            e.fullAccountNumber)
                                                        .toList()
                                                        .cast<AccountsStruct>();
                                                safeSetState(() {});
                                              }
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          FundTransferAccountSelectionWidget(
                                                        isFromFavorites: widget
                                                            .isFromFavorite,
                                                        transferDirection:
                                                            'changeAccount',
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Text(
                                              'Change Account',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF00898E),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 6.0)),
                                    ),
                                  ].divide(SizedBox(width: 38.0)),
                                ),
                                Divider(
                                  thickness: 1.0,
                                  color: Color(0xFFE5E5E5),
                                ),
                                if (FFAppState()
                                        .FundTransferiniatedResponse
                                        .fee !=
                                    0.0)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'fund_transfer_confirmation_transfer_fee_label',
                                                      child: Text(
                                                        'Transfer Fee',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                            Semantics(
                                              label:
                                                  'fund_transfer_confirmation_transfer_fee_value_text',
                                              child: Text(
                                                '${FFAppState().FundTransferiniatedResponse.currency}${formatNumber(
                                                  FFAppState()
                                                      .FundTransferiniatedResponse
                                                      .fee,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                )}',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF383839),
                                                      fontSize: 16.0,
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
                                          ].divide(SizedBox(width: 48.0)),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                    ],
                                  ),
                                if (FFAppState()
                                            .FundTransferiniatedResponse
                                            .remarks !=
                                        '')
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Semantics(
                                                label:
                                                    'fund_transfer_confirmation_remarks_label',
                                                child: Text(
                                                  'Remarks',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF383839),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Semantics(
                                          label:
                                              'fund_transfer_confirmation_remarks_value_text',
                                          child: Text(
                                            FFAppState()
                                                .FundTransferiniatedResponse
                                                .remarks,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF383839),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 72.0)),
                                  ),
                                if (FFAppState()
                                            .FundTransferiniatedResponse
                                            .remarks !=
                                        '')
                                  Divider(
                                    thickness: 1.0,
                                    color: Color(0xFFE5E5E5),
                                  ),
                                if (widget.isScheduled)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'fund_transfer_confirmation_frequency_label',
                                                      child: Text(
                                                        'Frequency',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Semantics(
                                                label:
                                                    'fund_transfer_confirmation_frequency_value_text',
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    FFAppState()
                                                        .FundTransferiniatedResponse
                                                        .frequency
                                                        ?.name,
                                                    'Daily',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        fontSize: 16.0,
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
                                            ),
                                          ].divide(SizedBox(width: 48.0)),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                    ],
                                  ),
                                if (widget.isScheduled)
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'fund_transfer_confirmation_start_date_label',
                                                      child: Text(
                                                        'Start Date',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Semantics(
                                                label:
                                                    'fund_transfer_confirmation_start_date_value_text',
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    functions
                                                        .formatTransactionDate(
                                                            valueOrDefault<
                                                                String>(
                                                      FFAppState()
                                                          .FundTransferiniatedResponse
                                                          .startDate,
                                                      '10/27/2021',
                                                    )),
                                                    '10/27/21',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        fontSize: 16.0,
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
                                            ),
                                          ].divide(SizedBox(width: 48.0)),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                    ],
                                  ),
                                if (FFAppState()
                                        .FundTransferiniatedResponse
                                        .isScheduledTransfer &&
                                    (FFAppState()
                                                .FundTransferiniatedResponse
                                                .endDate !=
                                            ''))
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'fund_transfer_confirmation_end_date_label',
                                                      child: Text(
                                                        'End Date',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF383839),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 12.0)),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      18.0, 0.0, 0.0, 0.0),
                                              child: Semantics(
                                                label:
                                                    'fund_transfer_confirmation_end_date_value_text',
                                                child: Text(
                                                  valueOrDefault<String>(
                                                            functions
                                                                .formatTransactionDate(
                                                                    valueOrDefault<
                                                                        String>(
                                                              FFAppState()
                                                                  .FundTransferiniatedResponse
                                                                  .endDate,
                                                              '2026-05-28T14:06:58.139Z',
                                                            )),
                                                            '2026-05-28T14:06:58.139Z',
                                                          ) ==
                                                          ''
                                                      ? ''
                                                      : valueOrDefault<String>(
                                                          functions
                                                              .formatTransactionDate(
                                                                  valueOrDefault<
                                                                      String>(
                                                            FFAppState()
                                                                .FundTransferiniatedResponse
                                                                .endDate,
                                                            '2026-05-28T14:06:58.139Z',
                                                          )),
                                                          '2026-05-28T14:06:58.139Z',
                                                        ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFF383839),
                                                        fontSize: 16.0,
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
                                            ),
                                          ].divide(SizedBox(width: 48.0)),
                                        ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                    ],
                                  ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ].addToEnd(SizedBox(height: 24.0)),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Semantics(
                              label:
                                  'fund_transfer_confirmation_transfer_button',
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  if (isWeb && widget.isQrPayment) {
                                    _model.fundTransferConfirmSigningPKPayload =
                                        await action_blocks
                                            .createConfirmSigningPKPayload(
                                      context,
                                      stepupOptionsPayload:
                                          WBStepupAuthOptionsPayloadStruct(
                                        transactionType: 'qr_payment',
                                        transactionId: FFAppState()
                                            .FundTransferiniatedResponse
                                            .id,
                                        amount: FFAppState()
                                            .FundTransferiniatedResponse
                                            .amount,
                                        currency: FFAppState()
                                            .FundTransferiniatedResponse
                                            .currency,
                                      ),
                                    );
                                    _shouldSetState = true;
                                    if (_model
                                        .fundTransferConfirmSigningPKPayload!
                                        .success) {
                                      _model.qrPKSigningResponse =
                                          await WhitebankGroupAPIGroup
                                              .retailQRPaymentPasskeySigningCall
                                              .call(
                                        id: FFAppState()
                                            .FundTransferiniatedResponse
                                            .id,
                                        requestBodyJson: _model
                                            .fundTransferConfirmSigningPKPayload
                                            ?.data
                                            .toMap(),
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                        accessToken: currentAuthenticationToken,
                                        fmsSessionId:
                                            currentUserData?.fmsSessionId,
                                      );

                                      _shouldSetState = true;
                                      if ((_model
                                              .qrPKSigningResponse?.succeeded ??
                                          true)) {
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                            TransferMoneySuccessfulWidget
                                                .routeName);
                                      } else {
                                        context.goNamed(
                                          PayTransferFailedPageWidget.routeName,
                                          queryParameters: {
                                            'route': serializeParam(
                                              'transfer',
                                              ParamType.String,
                                            ),
                                            'isLocked': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    } else {
                                      context.goNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else if (widget.isQrPayment) {
                                    _model.qRPaySigningChallengeResponse =
                                        await WhitebankGroupAPIGroup
                                            .retailQRPaymentSigningChallengeCall
                                            .call(
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      id: FFAppState()
                                          .FundTransferiniatedResponse
                                          .id,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      accessToken: currentAuthenticationToken,
                                    );

                                    _shouldSetState = true;
                                    if (WhitebankGroupAPIGroup
                                            .retailQRPaymentSigningChallengeCall
                                            .preferredMethod(
                                          (_model.qRPaySigningChallengeResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ) ==
                                        SigningAvailableMethods.mpin.name) {
                                      context.goNamed(
                                        MPINPageWidget.routeName,
                                        queryParameters: {
                                          'usage': serializeParam(
                                            MpinUsage.QR_PAYMENT,
                                            ParamType.Enum,
                                          ),
                                          'bpId': serializeParam(
                                            FFAppState()
                                                .FundTransferiniatedResponse
                                                .id,
                                            ParamType.String,
                                          ),
                                          'challenge': serializeParam(
                                            WhitebankGroupAPIGroup
                                                .retailQRPaymentSigningChallengeCall
                                                .challenge(
                                              (_model.qRPaySigningChallengeResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else if (WhitebankGroupAPIGroup
                                            .retailQRPaymentSigningChallengeCall
                                            .preferredMethod(
                                          (_model.qRPaySigningChallengeResponse
                                                  ?.jsonBody ??
                                              ''),
                                        ) ==
                                        SigningAvailableMethods
                                            .biometric.name) {
                                      _model.qrpCreateSignatureOutput =
                                          await actions.createSignature(
                                        getJsonField(
                                          (_model.qRPaySigningChallengeResponse
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.challenge''',
                                        ).toString(),
                                      );
                                      _shouldSetState = true;
                                      _model.qrpMpinBioSigningResponse =
                                          await WhitebankGroupAPIGroup
                                              .retailQRPaymentMpinBioSigningCall
                                              .call(
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                        id: FFAppState()
                                            .FundTransferiniatedResponse
                                            .id,
                                        accessToken: currentAuthenticationToken,
                                        method: valueOrDefault<String>(
                                          getJsonField(
                                            (_model.qRPaySigningChallengeResponse
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.preferredMethod''',
                                          )?.toString(),
                                          'biometric',
                                        ),
                                        deviceId:
                                            FFAppState().DeviceDetails.deviceId,
                                        challenge: getJsonField(
                                          (_model.qRPaySigningChallengeResponse
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.challenge''',
                                        ).toString(),
                                        signature:
                                            _model.qrpCreateSignatureOutput,
                                        fmsSessionId:
                                            currentUserData?.fmsSessionId,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.qrpMpinBioSigningResponse
                                              ?.succeeded ??
                                          true)) {
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                            TransferMoneySuccessfulWidget
                                                .routeName);
                                      } else {
                                        context.goNamed(
                                          PayTransferFailedPageWidget.routeName,
                                          queryParameters: {
                                            'route': serializeParam(
                                              'transfer',
                                              ParamType.String,
                                            ),
                                            'isLocked': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    }
                                  } else if ((isWeb == true) &&
                                      widget.isScheduled) {
                                    _model.fTSchedConfirmSigningPKPayload =
                                        await action_blocks
                                            .createConfirmSigningPKPayload(
                                      context,
                                      stepupOptionsPayload:
                                          WBStepupAuthOptionsPayloadStruct(
                                        transactionType: PasskeyTransactionType
                                            .scheduled_transfer.name,
                                        transactionId: FFAppState()
                                            .FundTransferiniatedResponse
                                            .id,
                                        amount: FFAppState()
                                            .FundTransferiniatedResponse
                                            .amount,
                                        currency: FFAppState()
                                            .FundTransferiniatedResponse
                                            .currency,
                                        context: (String accountNumber) {
                                          return '****${accountNumber.length >= 4 ? accountNumber.substring(accountNumber.length - 4) : accountNumber}';
                                        }(FFAppState()
                                            .FundTransferiniatedResponse
                                            .maskedDestinationAccountNumber),
                                      ),
                                    );
                                    _shouldSetState = true;
                                    _model.apiResultpyx =
                                        await WhitebankGroupAPIGroup
                                            .retailScheduledTransferConfirmPasskeyCall
                                            .call(
                                      method:
                                          SigningAvailableMethods.passkey.name,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      operationId: (String accountNumber) {
                                        return '****${accountNumber.length >= 4 ? accountNumber.substring(accountNumber.length - 4) : accountNumber}';
                                      }(FFAppState()
                                          .FundTransferiniatedResponse
                                          .maskedDestinationAccountNumber),
                                      stepupToken: _model
                                          .fTSchedConfirmSigningPKPayload
                                          ?.data
                                          .stepupToken,
                                      transactionHash: _model
                                          .fTSchedConfirmSigningPKPayload
                                          ?.data
                                          .transactionHash,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                      fmsSessionId:
                                          currentUserData?.fmsSessionId,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apiResultpyx?.succeeded ??
                                        true)) {
                                      FFAppState()
                                          .updateFundTransferiniatedResponseStruct(
                                        (e) => e
                                          ..nextRunAt = getJsonField(
                                            (_model.apiResultpyx?.jsonBody ??
                                                ''),
                                            r'''$.nextRunAt''',
                                          ).toString(),
                                      );
                                      safeSetState(() {});
                                      if (Navigator.of(context).canPop()) {
                                        context.pop();
                                      }
                                      context.pushNamed(
                                        TransferMoneySuccessfulWidget.routeName,
                                        queryParameters: {
                                          'isFromFavorite': serializeParam(
                                            widget.isFromFavorite,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );

                                      FFAppState().shouldRefreshTransactions =
                                          true;
                                      safeSetState(() {});
                                    } else {
                                      context.pushNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else if ((isWeb == false) &&
                                      widget.isScheduled) {
                                    _model.apiResultrj5 =
                                        await WhitebankGroupAPIGroup
                                            .scheduleTransferSigningChallengeCall
                                            .call(
                                      transferType: FFAppState()
                                          .FundTransferiniatedResponse
                                          .transferType,
                                      sourceAccountNumber: FFAppState()
                                          .FundTransferiniatedResponse
                                          .sourceAccountNumber,
                                      destinationAccountNumber: FFAppState()
                                          .FundTransferiniatedResponse
                                          .destinationAccountNumber,
                                      destinationBankCode: FFAppState()
                                          .FundTransferiniatedResponse
                                          .destinationBankCode,
                                      amount: FFAppState()
                                          .FundTransferiniatedResponse
                                          .totalAmount,
                                      currency: FFAppState()
                                          .FundTransferiniatedResponse
                                          .currency,
                                      remarks: FFAppState()
                                          .FundTransferiniatedResponse
                                          .remarks,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      frequency: FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .frequency !=
                                              null
                                          ? FFAppState()
                                              .FundTransferiniatedResponse
                                              .frequency
                                              ?.name
                                          : TransactionScheduleType.DAILY.name,
                                      startDate: FFAppState()
                                          .FundTransferiniatedResponse
                                          .startDate,
                                      endCondition: FFAppState()
                                          .FundTransferiniatedResponse
                                          .endCondition,
                                      endDate: FFAppState()
                                          .FundTransferiniatedResponse
                                          .endDate,
                                      maxOccurrences: FFAppState()
                                          .FundTransferiniatedResponse
                                          .maxOccurrences,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      destinationAccountHolderName: FFAppState()
                                          .FundTransferiniatedResponse
                                          .destinationAccountName,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apiResultrj5?.succeeded ??
                                        true)) {
                                      if ((SigningChallengeModelStruct.maybeFromMap((_model.apiResultrj5?.jsonBody ?? ''))
                                                  ?.preferredMethod ==
                                              SigningAvailableMethods
                                                  .biometric.name) &&
                                          (SigningChallengeModelStruct.maybeFromMap((_model.apiResultrj5?.jsonBody ?? ''))
                                                  ?.availableMethods
                                                  .contains(SigningAvailableMethods
                                                      .biometric.name) ==
                                              true) &&
                                          !isWeb) {
                                        _model.createSignatureOutputV2 =
                                            await actions.createSignature(
                                          SigningChallengeModelStruct
                                                  .maybeFromMap((_model
                                                          .apiResultrj5
                                                          ?.jsonBody ??
                                                      ''))!
                                              .challenge,
                                        );
                                        _shouldSetState = true;
                                        _model.signingConfirmBlockv2 =
                                            await action_blocks
                                                .fTScheduleConfirmBlock(
                                          context,
                                          mpin: FFAppState().pinInput,
                                          signature:
                                              _model.createSignatureOutputV2,
                                          challenge: SigningChallengeModelStruct
                                                  .maybeFromMap((_model
                                                          .apiResultrj5
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.challenge,
                                          method:
                                              SigningAvailableMethods.biometric,
                                        );
                                        _shouldSetState = true;
                                        if (_model.signingConfirmBlockv2
                                                ?.isSuccess ==
                                            true) {
                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            TransferMoneySuccessfulWidget
                                                .routeName,
                                            queryParameters: {
                                              'isFromFavorite': serializeParam(
                                                widget.isFromFavorite,
                                                ParamType.bool,
                                              ),
                                            }.withoutNulls,
                                          );

                                          FFAppState()
                                              .shouldRefreshTransactions = true;
                                          safeSetState(() {});
                                        } else {
                                          context.goNamed(
                                            PayTransferFailedPageWidget
                                                .routeName,
                                            queryParameters: {
                                              'route': serializeParam(
                                                'transfer',
                                                ParamType.String,
                                              ),
                                              'isLocked': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      } else if ((SigningChallengeModelStruct.maybeFromMap((_model.apiResultrj5?.jsonBody ?? ''))
                                                  ?.preferredMethod ==
                                              SigningAvailableMethods
                                                  .mpin.name) &&
                                          (SigningChallengeModelStruct.maybeFromMap(
                                                      (_model.apiResultrj5?.jsonBody ?? ''))
                                                  ?.availableMethods
                                                  .contains(SigningAvailableMethods.mpin.name) ==
                                              true) &&
                                          !isWeb) {
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          MPINPageWidget.routeName,
                                          queryParameters: {
                                            'forAuth': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                            'transferType': serializeParam(
                                              FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType,
                                              ParamType.String,
                                            ),
                                            'challenge': serializeParam(
                                              SigningChallengeModelStruct
                                                      .maybeFromMap((_model
                                                              .apiResultrj5
                                                              ?.jsonBody ??
                                                          ''))
                                                  ?.challenge,
                                              ParamType.String,
                                            ),
                                            'usage': serializeParam(
                                              MpinUsage.SCHEDULED_FUND_TRANSFER,
                                              ParamType.Enum,
                                            ),
                                          }.withoutNulls,
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else if (isWeb && (SigningChallengeModelStruct.maybeFromMap((_model.apiResultrj5?.jsonBody ?? ''))?.availableMethods.contains(SigningAvailableMethods.passkey.name) == true)) {
                                        context.safePop();
                                      } else {
                                        Navigator.pop(context);

                                        context.pushNamed(
                                          PayTransferFailedPageWidget.routeName,
                                          queryParameters: {
                                            'route': serializeParam(
                                              'transfer',
                                              ParamType.String,
                                            ),
                                            'isLocked': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      context.goNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else if (isWeb && widget.isScheduled) {
                                  } else if ((FFAppState()
                                              .FundTransferiniatedResponse
                                              .transferType !=
                                          'OWN_ACCOUNT') &&
                                      !widget.isScheduled &&
                                      !isWeb) {
                                    _model.retailTransfersSigningChallengeOutput =
                                        await WhitebankGroupAPIGroup
                                            .retailTransfersSigningChallengeCall
                                            .call(
                                      id: FFAppState()
                                          .FundTransferiniatedResponse
                                          .id,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                    );

                                    _shouldSetState = true;
                                    if ((_model
                                            .retailTransfersSigningChallengeOutput
                                            ?.succeeded ??
                                        true)) {
                                      if ((SigningChallengeModelStruct.maybeFromMap((_model.retailTransfersSigningChallengeOutput?.jsonBody ?? ''))?.availableMethods.contains(SigningAvailableMethods.mpin.name) == false) &&
                                          (SigningChallengeModelStruct.maybeFromMap((_model.retailTransfersSigningChallengeOutput?.jsonBody ?? ''))?.availableMethods.contains(SigningAvailableMethods.biometric.name) ==
                                              false)) {
                                        Navigator.pop(context);

                                        context.goNamed(
                                          PayTransferFailedPageWidget.routeName,
                                          queryParameters: {
                                            'route': serializeParam(
                                              'transfer',
                                              ParamType.String,
                                            ),
                                            'isLocked': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else if ((SigningChallengeModelStruct.maybeFromMap((_model.retailTransfersSigningChallengeOutput?.jsonBody ?? ''))?.preferredMethod ==
                                              SigningAvailableMethods
                                                  .biometric.name) &&
                                          (SigningChallengeModelStruct.maybeFromMap((_model.retailTransfersSigningChallengeOutput?.jsonBody ?? ''))
                                                  ?.availableMethods
                                                  .contains(SigningAvailableMethods
                                                      .biometric.name) ==
                                              true) &&
                                          !isWeb) {
                                        _model.createSignatureOutput =
                                            await actions.createSignature(
                                          getJsonField(
                                            (_model.retailTransfersSigningChallengeOutput
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.challenge''',
                                          ).toString(),
                                        );
                                        _shouldSetState = true;
                                        _model.signingConfirmBlockPasskey =
                                            await action_blocks
                                                .signingConfirmBlock(
                                          context,
                                          method: SigningChallengeModelStruct
                                                  .maybeFromMap((_model
                                                          .retailTransfersSigningChallengeOutput
                                                          ?.jsonBody ??
                                                      ''))
                                              ?.preferredMethod,
                                          deviceID: FFAppState()
                                              .DeviceDetails
                                              .deviceId,
                                          challenge: getJsonField(
                                            (_model.retailTransfersSigningChallengeOutput
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.challenge''',
                                          ).toString(),
                                          signature:
                                              _model.createSignatureOutput,
                                          mpin: '',
                                        );
                                        _shouldSetState = true;
                                        if (_model.signingConfirmBlockPasskey!
                                            .isSuccess) {
                                          if (Navigator.of(context).canPop()) {
                                            context.pop();
                                          }
                                          context.pushNamed(
                                            TransferMoneySuccessfulWidget
                                                .routeName,
                                            queryParameters: {
                                              'isFromFavorite': serializeParam(
                                                widget.isFromFavorite,
                                                ParamType.bool,
                                              ),
                                            }.withoutNulls,
                                          );

                                          FFAppState()
                                              .shouldRefreshTransactions = true;
                                          safeSetState(() {});
                                        } else {
                                          context.goNamed(
                                            PayTransferFailedPageWidget
                                                .routeName,
                                            queryParameters: {
                                              'route': serializeParam(
                                                'transfer',
                                                ParamType.String,
                                              ),
                                              'isLocked': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                            }.withoutNulls,
                                          );

                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      } else if ((SigningChallengeModelStruct.maybeFromMap((_model.retailTransfersSigningChallengeOutput?.jsonBody ?? ''))
                                                  ?.preferredMethod ==
                                              SigningAvailableMethods
                                                  .mpin.name) &&
                                          (SigningChallengeModelStruct.maybeFromMap((_model.retailTransfersSigningChallengeOutput?.jsonBody ?? ''))
                                                  ?.availableMethods
                                                  .contains(SigningAvailableMethods.mpin.name) ==
                                              true) &&
                                          !isWeb) {
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          MPINPageWidget.routeName,
                                          queryParameters: {
                                            'forAuth': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                            'transferType': serializeParam(
                                              FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType,
                                              ParamType.String,
                                            ),
                                            'challenge': serializeParam(
                                              getJsonField(
                                                (_model.retailTransfersSigningChallengeOutput
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.challenge''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                            'usage': serializeParam(
                                              MpinUsage.FUND_TRANSFER,
                                              ParamType.Enum,
                                            ),
                                          }.withoutNulls,
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        Navigator.pop(context);

                                        context.goNamed(
                                          PayTransferFailedPageWidget.routeName,
                                          queryParameters: {
                                            'route': serializeParam(
                                              'transfer',
                                              ParamType.String,
                                            ),
                                            'isLocked': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else {
                                      context.goNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else if ((FFAppState()
                                              .FundTransferiniatedResponse
                                              .transferType !=
                                          'OWN_ACCOUNT') &&
                                      !widget.isScheduled &&
                                      isWeb) {
                                    _model.fTConfirmSigningPKPayload =
                                        await action_blocks
                                            .createConfirmSigningPKPayload(
                                      context,
                                      stepupOptionsPayload:
                                          WBStepupAuthOptionsPayloadStruct(
                                        transactionType: PasskeyTransactionType
                                            .fund_transfer.name,
                                        transactionId: FFAppState()
                                            .FundTransferiniatedResponse
                                            .id,
                                        amount: FFAppState()
                                            .FundTransferiniatedResponse
                                            .amount,
                                        currency: FFAppState()
                                            .FundTransferiniatedResponse
                                            .currency,
                                        context: (String accountNumber) {
                                          return '****${accountNumber.length >= 4 ? accountNumber.substring(accountNumber.length - 4) : accountNumber}';
                                        }(FFAppState()
                                            .FundTransferiniatedResponse
                                            .destinationAccountNumber),
                                      ),
                                    );
                                    _shouldSetState = true;
                                    _model.confirmFTPasskey =
                                        await WhitebankGroupAPIGroup
                                            .retailConfirmSigningPasskeyCall
                                            .call(
                                      transactionHash: _model
                                          .fTConfirmSigningPKPayload
                                          ?.data
                                          .transactionHash,
                                      stepupToken: _model
                                          .fTConfirmSigningPKPayload
                                          ?.data
                                          .stepupToken,
                                      deviceId:
                                          FFAppState().DeviceDetails.deviceId,
                                      method:
                                          SigningAvailableMethods.passkey.name,
                                      id: FFAppState()
                                          .FundTransferiniatedResponse
                                          .id,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      accessToken: currentAuthenticationToken,
                                      fmsSessionId:
                                          currentUserData?.fmsSessionId,
                                    );

                                    _shouldSetState = true;
                                    FFAppState()
                                        .updateFundTransferiniatedResponseStruct(
                                      (e) => e
                                        ..referenceNumber = getJsonField(
                                          (_model.confirmFTPasskey?.jsonBody ??
                                              ''),
                                          r'''$.referenceNumber''',
                                        ).toString(),
                                    );
                                    safeSetState(() {});
                                    if ((_model.confirmFTPasskey?.succeeded ??
                                        true)) {
                                      if (Navigator.of(context).canPop()) {
                                        context.pop();
                                      }
                                      context.pushNamed(
                                        TransferMoneySuccessfulWidget.routeName,
                                        queryParameters: {
                                          'isFromFavorite': serializeParam(
                                            widget.isFromFavorite,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );

                                      FFAppState().shouldRefreshTransactions =
                                          true;
                                      safeSetState(() {});
                                    } else {
                                      context.goNamed(
                                        PayTransferFailedPageWidget.routeName,
                                        queryParameters: {
                                          'route': serializeParam(
                                            'transfer',
                                            ParamType.String,
                                          ),
                                          'isLocked': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } else {
                                    _model.initiateResponse =
                                        await WhitebankGroupAPIGroup
                                            .initiateFundTransferCall
                                            .call(
                                      transferTypeE:
                                          TransactionTypeKey.OWN_ACCOUNT.name,
                                      sourceAccountNumber: FFAppState()
                                          .FundTransferiniatedResponse
                                          .sourceAccountNumber,
                                      destinationAccountNumber: FFAppState()
                                          .FundTransferiniatedResponse
                                          .destinationAccountNumber,
                                      destinationBankCode: FFAppState()
                                          .FundTransferiniatedResponse
                                          .destinationBankCode,
                                      amount: FFAppState()
                                          .FundTransferiniatedResponse
                                          .totalAmount,
                                      currency: FFAppState()
                                          .FundTransferiniatedResponse
                                          .currency,
                                      remarks: FFAppState()
                                          .FundTransferiniatedResponse
                                          .remarks,
                                      accessToken: currentAuthenticationToken,
                                      baseURL:
                                          FFDevEnvironmentValues().WBPBASEURL,
                                      destinationAccountHolderName: FFAppState()
                                          .FundTransferiniatedResponse
                                          .accountType,
                                      fmsSessionId:
                                          currentUserData?.fmsSessionId,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.initiateResponse?.succeeded ??
                                        true)) {
                                      FFAppState()
                                          .updateFundTransferiniatedResponseStruct(
                                        (e) => e
                                          ..referenceNumber = getJsonField(
                                            (_model.initiateResponse
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.referenceNumber''',
                                          ).toString(),
                                      );
                                      safeSetState(() {});

                                      context.pushNamed(
                                          TransferMoneySuccessfulWidget
                                              .routeName);
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
                                              child:
                                                  CustomInformationalDialogWidget(
                                                message: valueOrDefault<String>(
                                                  getJsonField(
                                                    (_model.initiateResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.message''',
                                                  )?.toString(),
                                                  'Something went wrong',
                                                ),
                                                primaryButtonTitle: 'Close',
                                                title: valueOrDefault<String>(
                                                  getJsonField(
                                                    (_model.initiateResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.title''',
                                                  )?.toString(),
                                                  'Oops!',
                                                ),
                                                primaryButtonAction: () async {
                                                  Navigator.pop(context);
                                                },
                                                secondaryButtonAction:
                                                    () async {},
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                text: 'Transfer',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 48.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 16.0, 32.0, 16.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .whiteText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 21.0, 16.0, 10.0),
                        child: Semantics(
                          label: 'fund_transfer_confirmation_cancel_button',
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                              await action_blocks
                                  .cancelTransactionBlock(context);
                              safeSetState(() {});
                            },
                            text: 'Cancel',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 16.0, 32.0, 16.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00F4F4F4),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
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
        ),
      ],
    );
  }
}
