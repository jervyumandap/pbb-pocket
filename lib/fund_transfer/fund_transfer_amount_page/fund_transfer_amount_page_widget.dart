import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/fund_transfer/component/confirm_payment_component/confirm_payment_component_widget.dart';
import '/pay_bills/p_b_components/pay_bills_recurring_bottom_sheet/pay_bills_recurring_bottom_sheet_widget.dart';
import 'dart:async';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'fund_transfer_amount_page_model.dart';
export 'fund_transfer_amount_page_model.dart';

class FundTransferAmountPageWidget extends StatefulWidget {
  const FundTransferAmountPageWidget({
    super.key,
    bool? isFromFavorite,
    bool? isQrPayment,
  })  : this.isFromFavorite = isFromFavorite ?? false,
        this.isQrPayment = isQrPayment ?? false;

  final bool isFromFavorite;
  final bool isQrPayment;

  static String routeName = 'FundTransferAmountPage';
  static String routePath = '/fundTransferAmountPage';

  @override
  State<FundTransferAmountPageWidget> createState() =>
      _FundTransferAmountPageWidgetState();
}

class _FundTransferAmountPageWidgetState
    extends State<FundTransferAmountPageWidget> {
  late FundTransferAmountPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FundTransferAmountPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        _model.scheduledCheckboxValue = false;
      });
      _model.initialTransferType =
          FFAppState().FundTransferiniatedResponse.transferType;
      safeSetState(() {});
      await action_blocks.getAccountBalanceActionBlock(
        context,
        accountNumber:
            FFAppState().FundTransferiniatedResponse.sourceAccountNumber,
      );
      safeSetState(() {});
      if (FFAppState().transactionLimitUpdated == true) {
        _model.getTransferLimitsResponse =
            await WhitebankGroupAPIGroup.getTransferLimitsCall.call(
          accessToken: currentAuthenticationToken,
          baseURL: FFDevEnvironmentValues().WBPBASEURL,
        );

        if ((_model.getTransferLimitsResponse?.succeeded ?? true)) {
          FFAppState().TransactionLimit =
              ((_model.getTransferLimitsResponse?.jsonBody ?? '')
                      .toList()
                      .map<WBTransactionLimitsModelStruct?>(
                          WBTransactionLimitsModelStruct.maybeFromMap)
                      .toList() as Iterable<WBTransactionLimitsModelStruct?>)
                  .withoutNulls
                  .where((e) =>
                      e.typeKey ==
                      FFAppState().FundTransferiniatedResponse.transferType)
                  .toList()
                  .firstOrNull!;
          safeSetState(() {});
        }
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

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.scheduleTextFieldTextController ??= TextEditingController(
        text: (String value) {
      return value[0].toUpperCase() + value.substring(1);
    }(_model.scheduleType!.name));
    _model.scheduleTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      FFAppState().AccountsState =
          FFAppState().accountListOrder.toList().cast<AccountsStruct>();
      safeSetState(() {});
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
        body: Row(
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
                  pageIndex: 2,
                  shouldHideBottomNav: false,
                ),
              ),
            Expanded(
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
                          return 36.0;
                        } else {
                          return 36.0;
                        }
                      }(),
                      0.0,
                    ),
                    20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                ),
                                btnWOBgColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                btnWOBgIconSize: 24.0,
                                isTitleLeftAlign: true,
                                titleLeftAlign: 'Send Amount',
                                textLeftAlignColor: Color(0xFF444C66),
                                rightButtonAction: () async {},
                                leftButtonAction: () async {
                                  context.safePop();
                                },
                                midRightButtonAction: () async {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0,
                                  valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 16.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 16.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 36.0;
                                      } else {
                                        return 36.0;
                                      }
                                    }(),
                                    0.0,
                                  ),
                                  16.0,
                                  0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'How much would you like to \nsend to ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .destinationAccountName,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
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
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Semantics(
                                          label:
                                              'fund_transfer_amount_available_balance_label',
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons
                                                    .account_balance_wallet_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 20.0,
                                              ),
                                              Text(
                                                'Available Balance',
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
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                        Semantics(
                                          label:
                                              'fund_transfer_amount_available_balance_value_text',
                                          child: Text(
                                            '${FFAppState().FundTransferiniatedResponse.currency}${formatNumber(
                                              FFAppState().accountBalance,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                            )}',
                                            textAlign: TextAlign.end,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLargeIsCustom,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF5F5F5),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Semantics(
                                                      label:
                                                          'fund_transfer_amount_amount_field',
                                                      child: custom_widgets
                                                          .ExpandingAmountInput(
                                                        width: 320.0,
                                                        height: 68.0,
                                                        initialValue: '',
                                                        fontSize: 12.0,
                                                        externalValue: _model
                                                            .currentAmountValue,
                                                        isDisabled: false,
                                                        onChanged:
                                                            (value) async {
                                                          if ((FFAppState()
                                                                      .FundTransferiniatedResponse
                                                                      .transferType ==
                                                                  TransactionTypeKey
                                                                      .INTRABANK
                                                                      .name) ||
                                                              (FFAppState()
                                                                      .FundTransferiniatedResponse
                                                                      .transferType ==
                                                                  TransactionTypeKey
                                                                      .OWN_ACCOUNT
                                                                      .name)) {
                                                            _model.currentAmountValue =
                                                                value;
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                .updateFundTransferiniatedResponseStruct(
                                                              (e) => e
                                                                ..amount = _model
                                                                    .currentAmountValue
                                                                ..totalAmount =
                                                                    _model
                                                                        .currentAmountValue,
                                                            );
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model
                                                                  .choiceChipsValueController
                                                                  ?.value = [
                                                                ''
                                                              ];
                                                            });
                                                          } else if ((value! >=
                                                                  50000.01) ==
                                                              false) {
                                                            _model.currentAmountValue =
                                                                value;
                                                            _model.isMoreThanInstapayAmount =
                                                                false;
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                .updateFundTransferiniatedResponseStruct(
                                                              (e) => e
                                                                ..amount = _model
                                                                    .currentAmountValue
                                                                ..totalAmount =
                                                                    _model
                                                                        .currentAmountValue
                                                                ..transferType =
                                                                    _model
                                                                        .initialTransferType,
                                                            );
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model
                                                                  .choiceChipsValueController
                                                                  ?.value = [
                                                                ''
                                                              ];
                                                            });
                                                          } else {
                                                            _model.currentAmountValue =
                                                                value;
                                                            _model.isMoreThanInstapayAmount =
                                                                value >=
                                                                    50000.01;
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                .updateFundTransferiniatedResponseStruct(
                                                              (e) => e
                                                                ..amount = _model
                                                                    .currentAmountValue
                                                                ..totalAmount =
                                                                    _model
                                                                        .currentAmountValue
                                                                ..transferType =
                                                                    TransactionTypeKey
                                                                        .PESONET
                                                                        .name,
                                                            );
                                                            safeSetState(() {});
                                                            safeSetState(() {
                                                              _model
                                                                  .choiceChipsValueController
                                                                  ?.value = [
                                                                ''
                                                              ];
                                                            });
                                                          }

                                                          FFAppState()
                                                              .TransactionLimit = ((_model
                                                                              .getTransferLimitsResponse
                                                                              ?.jsonBody ??
                                                                          '')
                                                                      .toList()
                                                                      .map<WBTransactionLimitsModelStruct?>(
                                                                          WBTransactionLimitsModelStruct
                                                                              .maybeFromMap)
                                                                      .toList()
                                                                  as Iterable<
                                                                      WBTransactionLimitsModelStruct?>)
                                                              .withoutNulls
                                                              .where((e) =>
                                                                  e.typeKey ==
                                                                  FFAppState()
                                                                      .FundTransferiniatedResponse
                                                                      .transferType)
                                                              .toList()
                                                              .firstOrNull!;
                                                          safeSetState(() {});
                                                          _model
                                                              .amountIsInvalid = (_model
                                                                      .currentAmountValue ==
                                                                  null) ||
                                                              (_model.currentAmountValue! >
                                                                  FFAppState()
                                                                      .accountBalance);
                                                          _model
                                                              .amountErrorMessage = _model
                                                                      .currentAmountValue ==
                                                                  null
                                                              ? 'Please enter the amount you want to transfer.'
                                                              : 'You do not have enough balance to complete this transfer.';
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ].divide(SizedBox(height: 5.0)),
                                            ),
                                          ),
                                        ),
                                        if (_model.amountIsInvalid)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Semantics(
                                              label:
                                                  'fund_transfer_amount_amount_error_text',
                                              child: Text(
                                                valueOrDefault<String>(
                                                  _model.amountErrorMessage,
                                                  'Please enter the amount you want to transfer.',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFFB3261E),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        if (_model.isMoreThanInstapayAmount &&
                                            (_model.initialTransferType !=
                                                TransactionTypeKey
                                                    .PESONET.name) &&
                                            !_model.amountIsInvalid)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Semantics(
                                              label:
                                                  'fund_transfer_amount_transfer_type_notice_text',
                                              child: Text(
                                                'Your transfer type will be automatically switched to PESONet since the transfer amount exceeds ₱50,000.',
                                                textAlign: TextAlign.center,
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
                                                              .warning,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Or choose a quick amount',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Semantics(
                                        label:
                                            'fund_transfer_amount_quick_amount_section',
                                        child: FlutterFlowChoiceChips(
                                          options: [
                                            ChipData('₱50'),
                                            ChipData('₱100'),
                                            ChipData('₱200'),
                                            ChipData('₱500')
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.choiceChipsValue =
                                                    val?.firstOrNull);
                                            _model.currentAmountValue =
                                                functions.textToDouble(
                                                    _model.choiceChipsValue!);
                                            safeSetState(() {});
                                            FFAppState()
                                                .updateFundTransferiniatedResponseStruct(
                                              (e) => e
                                                ..amount =
                                                    _model.currentAmountValue
                                                ..totalAmount =
                                                    _model.currentAmountValue,
                                            );
                                            safeSetState(() {});
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            iconSize: 14.0,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderWidth: 2.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color: Color(0xFF364153),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 14.0,
                                            labelPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 9.0, 12.0, 9.0),
                                            elevation: 0.0,
                                            borderColor: Color(0xFFE5E7EB),
                                            borderWidth: 2.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          chipSpacing: 12.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.spaceEvenly,
                                          controller: _model
                                                  .choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ),
                                    Semantics(
                                      label:
                                          'fund_transfer_amount_remarks_field',
                                      child: Container(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController1',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              FFAppState()
                                                  .updateFundTransferiniatedResponseStruct(
                                                (e) => e
                                                  ..remarks = _model
                                                      .textController1.text,
                                              );
                                              safeSetState(() {});
                                            },
                                          ),
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Remarks',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFB3B3B3),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    if ((FFAppState()
                                                .FundTransferiniatedResponse
                                                .transferType !=
                                            TransactionTypeKey
                                                .OWN_ACCOUNT.name) &&
                                        !widget.isQrPayment)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Semantics(
                                            label:
                                                'fund_transfer_amount_schedule_payment_checkbox',
                                            child: Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    Color(0xFFD0D1DA),
                                              ),
                                              child: Checkbox(
                                                value: _model
                                                        .scheduledCheckboxValue ??=
                                                    false,
                                                onChanged: (newValue) async {
                                                  safeSetState(() => _model
                                                          .scheduledCheckboxValue =
                                                      newValue!);
                                                  if (newValue!) {
                                                    FFAppState()
                                                        .updateFundTransferiniatedResponseStruct(
                                                      (e) => e
                                                        ..isScheduledTransfer =
                                                            true,
                                                    );
                                                    safeSetState(() {});
                                                  } else {
                                                    FFAppState()
                                                        .updateFundTransferiniatedResponseStruct(
                                                      (e) => e
                                                        ..isScheduledTransfer =
                                                            false,
                                                    );
                                                    safeSetState(() {});
                                                  }
                                                },
                                                side: (Color(0xFFD0D1DA) !=
                                                        null)
                                                    ? BorderSide(
                                                        width: 2,
                                                        color:
                                                            Color(0xFFD0D1DA),
                                                      )
                                                    : null,
                                                activeColor: Color(0xFF0AACB2),
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Schedule Payment',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF002C75),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState()
                                                .FundTransferiniatedResponse
                                                .transferType !=
                                            TransactionTypeKey
                                                .OWN_ACCOUNT.name) &&
                                        _model.scheduledCheckboxValue!)
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Stack(
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                          .FundTransferiniatedResponse
                                                          .transferType !=
                                                      TransactionTypeKey
                                                          .OWN_ACCOUNT.name)
                                                    Expanded(
                                                      child: Container(
                                                        width: 200.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .scheduleTextFieldTextController,
                                                          focusNode: _model
                                                              .scheduleTextFieldFocusNode,
                                                          autofocus: false,
                                                          enabled: true,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          readOnly: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelText:
                                                                'Set as recurring',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelLargeFamily,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelLargeIsCustom,
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      color: Color(
                                                                          0xFF72777A),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .labelMediumIsCustom,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .neutral10,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF676666),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .base0,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        17.0,
                                                                        12.0,
                                                                        17.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .formElementHover,
                                                            suffixIcon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                          maxLines: null,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          enableInteractiveSelection:
                                                              true,
                                                          validator: _model
                                                              .scheduleTextFieldTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              Form(
                                                key: _model.formKey,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model
                                                            .scheduledCheckboxValue ??
                                                        true)
                                                      Semantics(
                                                        label:
                                                            'fund_transfer_amount_recurring_dropdown',
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
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              context: context,
                                                              builder:
                                                                  (context) {
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
                                                                          PayBillsRecurringBottomSheetWidget(
                                                                        callBack:
                                                                            (scheduleType) async {
                                                                          _model.scheduleType =
                                                                              scheduleType;
                                                                          safeSetState(
                                                                              () {});
                                                                          // capitalized string first letter
                                                                          safeSetState(
                                                                              () {
                                                                            _model.scheduleTextFieldTextController?.text =
                                                                                ((String value) {
                                                                              return value[0].toUpperCase() + value.substring(1);
                                                                            }(scheduleType.name));
                                                                          });
                                                                          FFAppState()
                                                                              .updateFundTransferiniatedResponseStruct(
                                                                            (e) => e
                                                                              ..frequency = _model.scheduleType,
                                                                          );
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
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 44.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ),
                                                      ),
                                                    Semantics(
                                                      label:
                                                          'fund_transfer_amount_payment_date_field',
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .startCustomDateLabelPickerModel1,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        updateOnChange: true,
                                                        child:
                                                            CustomDateLabelPickerWidgetWidget(
                                                          label: _model.paymentDate !=
                                                                      null &&
                                                                  _model.paymentDate !=
                                                                      ''
                                                              ? dateTimeFormat(
                                                                  "yMMMd",
                                                                  _model
                                                                      .datePicked1,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                )
                                                              : 'Payment Date',
                                                          isDateSelected: _model
                                                                      .paymentDate !=
                                                                  null &&
                                                              _model.paymentDate !=
                                                                  '',
                                                          textfieldLabel:
                                                              'Payment Date',
                                                          hoverStyle:
                                                              IconButtonBadgeHoverStyleStruct(
                                                            iconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryButton,
                                                            defaultIconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryButton,
                                                          ),
                                                          callBack: () async {
                                                            // Payment Date
                                                            final _datePicked1Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate: functions
                                                                  .addDaysFromDate(
                                                                      getCurrentTimestamp,
                                                                      1),
                                                              firstDate: (functions
                                                                      .addDaysFromDate(
                                                                          getCurrentTimestamp,
                                                                          1) ??
                                                                  DateTime(
                                                                      1900)),
                                                              lastDate: (functions
                                                                      .getFutureDateByDays(
                                                                          365) ??
                                                                  DateTime(
                                                                      2050)),
                                                            );

                                                            if (_datePicked1Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked1 =
                                                                    DateTime(
                                                                  _datePicked1Date
                                                                      .year,
                                                                  _datePicked1Date
                                                                      .month,
                                                                  _datePicked1Date
                                                                      .day,
                                                                );
                                                              });
                                                            } else if (_model
                                                                    .datePicked1 !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked1 =
                                                                    functions
                                                                        .addDaysFromDate(
                                                                            getCurrentTimestamp,
                                                                            1);
                                                              });
                                                            }
                                                            if (_model
                                                                    .datePicked1 !=
                                                                null) {
                                                              _model.paymentDate =
                                                                  _model
                                                                      .datePicked1
                                                                      ?.toString();
                                                              safeSetState(
                                                                  () {});
                                                              FFAppState()
                                                                  .updateFundTransferiniatedResponseStruct(
                                                                (e) => e
                                                                  ..startDate = _model
                                                                      .datePicked1
                                                                      ?.toString(),
                                                              );
                                                              FFAppState()
                                                                      .isPaymentDateEmpty =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                            } else {
                                                              FFAppState()
                                                                      .isPaymentDateEmpty =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                        .isPaymentDateEmpty)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Semantics(
                                                          label:
                                                              'fund_transfer_amount_payment_date_error_text',
                                                          child: Text(
                                                            'Please select the payment date.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Color(
                                                                      0xFFB3261E),
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model.scheduleType !=
                                                        TransactionScheduleType
                                                            .ONCE)
                                                      Semantics(
                                                        label:
                                                            'fund_transfer_amount_end_date_field',
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .startCustomDateLabelPickerModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              CustomDateLabelPickerWidgetWidget(
                                                            label: _model.paymentEndDate !=
                                                                        null &&
                                                                    _model.paymentEndDate !=
                                                                        ''
                                                                ? dateTimeFormat(
                                                                    "yMMMd",
                                                                    _model
                                                                        .datePicked2,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )
                                                                : 'End Date',
                                                            isDateSelected:
                                                                _model.paymentEndDate !=
                                                                        null &&
                                                                    _model.paymentEndDate !=
                                                                        '',
                                                            textfieldLabel:
                                                                'End Date',
                                                            hoverStyle:
                                                                IconButtonBadgeHoverStyleStruct(
                                                              iconColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryButton,
                                                              defaultIconColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryButton,
                                                            ),
                                                            callBack: () async {
                                                              // End Date
                                                              final _datePicked2Date =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate: functions
                                                                    .getDateAfter(
                                                                        _model
                                                                            .paymentDate!),
                                                                firstDate: (functions
                                                                        .getDateAfter(_model
                                                                            .paymentDate!) ??
                                                                    DateTime(
                                                                        1900)),
                                                                lastDate: (functions
                                                                        .getFutureDateByDays(
                                                                            365) ??
                                                                    DateTime(
                                                                        2050)),
                                                              );

                                                              if (_datePicked2Date !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked2 =
                                                                      DateTime(
                                                                    _datePicked2Date
                                                                        .year,
                                                                    _datePicked2Date
                                                                        .month,
                                                                    _datePicked2Date
                                                                        .day,
                                                                  );
                                                                });
                                                              } else if (_model
                                                                      .datePicked2 !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked2 =
                                                                      functions.getDateAfter(
                                                                          _model
                                                                              .paymentDate!);
                                                                });
                                                              }
                                                              if (_model
                                                                      .datePicked2 !=
                                                                  null) {
                                                                _model.paymentEndDate = _model
                                                                    .datePicked2
                                                                    ?.toString();
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                    .updateFundTransferiniatedResponseStruct(
                                                                  (e) => e
                                                                    ..endDate =
                                                                        _model
                                                                            .paymentEndDate
                                                                    ..deviceId =
                                                                        FFAppState()
                                                                            .DeviceDetails
                                                                            .deviceId
                                                                    ..endCondition =
                                                                        ScheduleEndCondition
                                                                            .END_DATE
                                                                            .name,
                                                                );
                                                                FFAppState()
                                                                        .isEndDateEmpty =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                FFAppState()
                                                                        .isEndDateEmpty =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    if ((FFAppState()
                                                                    .isEndDateEmpty ==
                                                                true) &&
                                                            (_model.scheduleType !=
                                                                TransactionScheduleType
                                                                    .ONCE)
                                                        ? true
                                                        : false)
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Text(
                                                          'Please select the end date.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFFB3261E),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                      ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 20.0)),
                                      ),
                                  ].divide(SizedBox(height: 20.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (!(isWeb
                        ? MediaQuery.viewInsetsOf(context).bottom > 0
                        : _isKeyboardVisible))
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Builder(
                          builder: (context) => Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 40.0, 16.0, 20.0),
                            child: Semantics(
                              label: 'fund_transfer_amount_continue_button',
                              child: wrapWithModel(
                                model: _model.primaryButtonComponentModel,
                                updateCallback: () => safeSetState(() {}),
                                child: PrimaryButtonComponentWidget(
                                  buttonTitle: 'Send',
                                  buttonWidth: double.infinity,
                                  buttonHeight: 48.0,
                                  buttonColor:
                                      FlutterFlowTheme.of(context).primary,
                                  textColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 14.0,
                                  borderRadius: 16.0,
                                  buttonDisabledOption:
                                      (_model.currentAmountValue == null) ||
                                          (_model.currentAmountValue! >
                                              FFAppState().accountBalance) ||
                                          (_model.currentAmountValue! <= 0.0),
                                  callback: () async {
                                    var _shouldSetState = false;
                                    await Future.delayed(
                                      Duration(
                                        milliseconds: 1000,
                                      ),
                                    );
                                    _model.amountIsInvalid = (_model
                                                .currentAmountValue ==
                                            null) ||
                                        ((_model.currentAmountValue! >
                                                FFAppState()
                                                    .TransactionLimit
                                                    .remaining) &&
                                            (FFAppState()
                                                    .FundTransferiniatedResponse
                                                    .transferType !=
                                                TransactionTypeKey
                                                    .OWN_ACCOUNT.name)) ||
                                        (_model.currentAmountValue! >
                                            FFAppState().accountBalance);
                                    _model.amountErrorMessage = () {
                                      if (_model.currentAmountValue == null) {
                                        return 'Please enter the amount you want to transfer.';
                                      } else if ((_model.currentAmountValue! >
                                              FFAppState()
                                                  .TransactionLimit
                                                  .remaining) &&
                                          (FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType !=
                                              TransactionTypeKey
                                                  .OWN_ACCOUNT.name)) {
                                        return 'The amount entered exceeds the remaining limit for the selected transfer type. You can update it in Settings.';
                                      } else {
                                        return 'You do not have enough balance to complete this transfer.';
                                      }
                                    }();
                                    safeSetState(() {});
                                    if ((_model.currentAmountValue == null) ||
                                        (_model.currentAmountValue! >
                                            FFAppState()
                                                .TransactionLimit
                                                .remaining) ||
                                        (_model.currentAmountValue! >
                                            FFAppState().accountBalance) ||
                                        (_model.currentAmountValue! <= 0.0)) {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                    // check if qr payment
                                    if (!widget.isQrPayment &&
                                        (FFAppState()
                                                .FundTransferiniatedResponse
                                                .transferType !=
                                            TransactionTypeKey
                                                .OWN_ACCOUNT.name) &&
                                        !_model.scheduledCheckboxValue!) {
                                      _model.initiateResponse =
                                          await WhitebankGroupAPIGroup
                                              .initiateFundTransferCall
                                              .call(
                                        transferTypeE: FFAppState()
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
                                        amount:
                                            functions.removeCommasAndToDouble(
                                                _model.currentAmountValue!
                                                    .toString()),
                                        currency: FFAppState()
                                            .FundTransferiniatedResponse
                                            .currency,
                                        accessToken: currentAuthenticationToken,
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                        destinationAccountHolderName:
                                            valueOrDefault<String>(
                                          FFAppState()
                                              .FundTransferiniatedResponse
                                              .destinationAccountName,
                                          '-',
                                        ),
                                        remarks: FFAppState()
                                            .FundTransferiniatedResponse
                                            .remarks,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.initiateResponse?.succeeded ??
                                          true)) {
                                        FFAppState()
                                            .updateFundTransferiniatedResponseStruct(
                                          (e) => e
                                            ..amount = _model.currentAmountValue
                                            ..id = PaymentIniatedModelStruct
                                                    .maybeFromMap((_model
                                                            .initiateResponse
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.id
                                            ..referenceNumber = getJsonField(
                                              (_model.initiateResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.referenceNumber''',
                                            ).toString()
                                            ..status = PaymentIniatedModelStruct
                                                    .maybeFromMap((_model
                                                            .initiateResponse
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.status
                                            ..otpRequired =
                                                PaymentIniatedModelStruct
                                                        .maybeFromMap((_model
                                                                .initiateResponse
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.otpRequired
                                            ..expiresAt =
                                                PaymentIniatedModelStruct
                                                        .maybeFromMap((_model
                                                                .initiateResponse
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.expiresAt
                                            ..fee = PaymentIniatedModelStruct
                                                    .maybeFromMap((_model
                                                            .initiateResponse
                                                            ?.jsonBody ??
                                                        ''))
                                                ?.fee
                                            ..totalAmount =
                                                _model.currentAmountValue
                                            ..remarks =
                                                _model.textController1.text
                                            ..isScheduledTransfer = false,
                                        );
                                        safeSetState(() {});
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
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
                                                      ConfirmPaymentComponentWidget(
                                                    ownAccountName: '',
                                                    beneficiaryBankName: widget
                                                        .isFromFavorite
                                                        .toString(),
                                                    isQrPayment: false,
                                                    isScheduled: false,
                                                    isFromFavorite:
                                                        widget.isFromFavorite,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
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
                                                        (_model.initiateResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Something went wrong.',
                                                    ),
                                                    primaryButtonTitle: 'Close',
                                                    title:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.initiateResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.title''',
                                                      )?.toString(),
                                                      'Oops!',
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
                                    } else if (_model.scheduledCheckboxValue ==
                                        true) {
                                      if (_model.scheduleType !=
                                          TransactionScheduleType.ONCE) {
                                        _model.validate = true;
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          safeSetState(
                                              () => _model.validate = false);
                                          return;
                                        }
                                        if (_model.datePicked1 == null) {
                                          FFAppState().isPaymentDateEmpty =
                                              true;
                                          safeSetState(() {});
                                          _model.validate = false;
                                          safeSetState(() {});
                                          return;
                                        }
                                        if (_model.datePicked2 == null) {
                                          FFAppState().isEndDateEmpty =
                                              valueOrDefault<bool>(
                                            _model.scheduleType ==
                                                    TransactionScheduleType.ONCE
                                                ? false
                                                : true,
                                            true,
                                          );
                                          safeSetState(() {});
                                          _model.validate = false;
                                          safeSetState(() {});
                                          return;
                                        }
                                        _shouldSetState = true;
                                        FFAppState()
                                            .updateFundTransferiniatedResponseStruct(
                                          (e) => e
                                            ..endCondition =
                                                ScheduleEndCondition
                                                    .END_DATE.name
                                            ..endDate = _model.paymentEndDate,
                                        );
                                        FFAppState().isEndDateEmpty = false;
                                        safeSetState(() {});
                                      } else {
                                        if (_model.paymentDate != null &&
                                            _model.paymentDate != '') {
                                          FFAppState()
                                              .updateFundTransferiniatedResponseStruct(
                                            (e) => e
                                              ..endDate = ''
                                              ..deviceId = FFAppState()
                                                  .DeviceDetails
                                                  .deviceId
                                              ..maxOccurrences = 1
                                              ..endCondition =
                                                  ScheduleEndCondition
                                                      .OCCURRENCE_COUNT.name,
                                          );
                                          FFAppState().isEndDateEmpty = false;
                                          FFAppState().isPaymentDateEmpty =
                                              false;
                                          safeSetState(() {});
                                        } else {
                                          FFAppState().isPaymentDateEmpty =
                                              true;
                                          safeSetState(() {});
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }
                                      }

                                      if (!FFAppState().isPaymentDateEmpty &&
                                          (!FFAppState().isEndDateEmpty ||
                                              (_model.scheduleType ==
                                                  TransactionScheduleType
                                                      .ONCE))) {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
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
                                                      ConfirmPaymentComponentWidget(
                                                    ownAccountName: '',
                                                    beneficiaryBankName: widget
                                                        .isFromFavorite
                                                        .toString(),
                                                    isQrPayment: false,
                                                    isScheduled: true,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    } else if ((FFAppState()
                                                .FundTransferiniatedResponse
                                                .transferType ==
                                            TransactionTypeKey
                                                .OWN_ACCOUNT.name) &&
                                        ((_model.scheduledCheckboxValue ==
                                                null) ||
                                            !_model.scheduledCheckboxValue!)) {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
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
                                                    ConfirmPaymentComponentWidget(
                                                  ownAccountName: '',
                                                  beneficiaryBankName: widget
                                                      .isFromFavorite
                                                      .toString(),
                                                  isQrPayment: false,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      FFAppState()
                                          .updateFundTransferiniatedResponseStruct(
                                        (e) => e..isScheduledTransfer = false,
                                      );
                                      safeSetState(() {});
                                    } else {
                                      FFAppState()
                                          .updateQRPaymentInitiateModelAppStateStruct(
                                        (e) => e
                                          ..amount =
                                              functions.removeCommasAndToDouble(
                                                  _model.currentAmountValue!
                                                      .toString())
                                          ..remarks =
                                              _model.textController1.text,
                                      );
                                      safeSetState(() {});
                                      _model.qrPaymentInitResponse =
                                          await WhitebankGroupAPIGroup
                                              .retailQRPaymentInitiateCall
                                              .call(
                                        baseURL:
                                            FFDevEnvironmentValues().WBPBASEURL,
                                        paymentBodyJson: FFAppState()
                                            .QRPaymentInitiateModelAppState
                                            .toMap(),
                                        accessToken: currentAuthenticationToken,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.qrPaymentInitResponse
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState()
                                            .updateFundTransferiniatedResponseStruct(
                                          (e) => e
                                            ..id = WhitebankGroupAPIGroup
                                                .retailQRPaymentInitiateCall
                                                .id(
                                              (_model.qrPaymentInitResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            )
                                            ..referenceNumber =
                                                WhitebankGroupAPIGroup
                                                    .retailQRPaymentInitiateCall
                                                    .referenceNumber(
                                              (_model.qrPaymentInitResponse
                                                      ?.jsonBody ??
                                                  ''),
                                            )
                                            ..fee = 10.0
                                            ..amount = _model.currentAmountValue
                                            ..totalAmount =
                                                _model.currentAmountValue
                                            ..isScheduledTransfer = false,
                                        );
                                        safeSetState(() {});
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
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
                                                      ConfirmPaymentComponentWidget(
                                                    isQrPayment: true,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
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
                                    }

                                    if (_shouldSetState) safeSetState(() {});
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
            ),
          ],
        ),
      ),
    );
  }
}
