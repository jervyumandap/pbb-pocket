import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/biller_bottom_sheet/biller_bottom_sheet_widget.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/biller_side_drawer/biller_side_drawer_widget.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/payment_from_account_bottom_sheet/payment_from_account_bottom_sheet_widget.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/payment_from_account_side_drawer/payment_from_account_side_drawer_widget.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/select_payment_from_account/select_payment_from_account_widget.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/select_payment_to_biller/select_payment_to_biller_widget.dart';
import '/components/custom_date_picker_widget/custom_date_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'bills_payment_page_model.dart';
export 'bills_payment_page_model.dart';

class BillsPaymentPageWidget extends StatefulWidget {
  const BillsPaymentPageWidget({super.key});

  static String routeName = 'BillsPaymentPage';
  static String routePath = '/billsPaymentPage';

  @override
  State<BillsPaymentPageWidget> createState() => _BillsPaymentPageWidgetState();
}

class _BillsPaymentPageWidgetState extends State<BillsPaymentPageWidget>
    with TickerProviderStateMixin {
  late BillsPaymentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BillsPaymentPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.fmHeader = FMHeaderStruct(
        ipAddress: '123.123.123.123',
        channelCode: 'cbxr',
        originatingIPAddress: '123.123.123.123',
        originatingChannelCode: 'cbxr',
        checkpointType: 'TRANSACTION',
      );
      _model.fmSession = FMSessionStruct(
        timeSession: '1580382236924',
        sessionId: '1A530637284E8D531427',
      );
      _model.fmTransaction = TransactionCheckpointDetailsStruct(
        timeStamp: getCurrentTimestamp.millisecondsSinceEpoch.toString(),
        transactionType: 'PURCHASE',
        amount: 34.15,
        curType: 'PHP',
        destinationId: 'mVr1a51n6er',
        thirdPartyBankCode: 'mVr1a51n6er',
        thirdPartyAccNum: 'mVr1a51n6er',
        thirdPartyAccName: 'mVr1a51n6er',
        thirdPartyAccType: 'mVr1a51n6er',
        bankTranType: 'ONLINE_SHOPPING',
        tranDesc: 'Purchase of electronic items from an online store',
        isDeviceVerified: 'VERIFIED',
        sourceCtry: 'PH',
        destinationCtry: 'PH',
        tranDtls: 'Test Transaction Details',
        tranMode: 'Card',
        tranSts: 'Success',
        tranStsRsn: 'Purchased Successfully',
        orgnlCcy: 'PHP',
        orgnlAmt: 34.15,
        userDtls: UserDtlsStruct(
          userId: '40248',
          registeredEmail: 'auvergne.grace@test.com',
          userFullName: 'Grace Auvergne',
          userName: 'auvergne_grace',
          accountType: 'mVr1a51n6er',
          isKYCVerified: 'VERIFIED',
          registeredPhoneNumber: '639876543212',
          isPhoneUserVerified: 'VERIFIED',
          registrationDate: 1580382236916,
          userAddress: UserAddressStruct(
            firstName: 'Grace',
            lastName: 'Auvergne',
            adrLine1: 'Test Address',
            adrLine2: 'Test Address 2',
            city: 'Caloocan City',
            region: 'Metro Manila',
            postalCode: '1400',
            country: 'PH',
          ),
        ),
        shippingAddress: ShippingAddressStruct(
          firstName: 'Grace',
          lastName: 'Auvergne',
          adrLine1: 'Test Address',
          adrLine2: 'Grace Park',
          city: 'Caloocan City',
          region: 'Metro Manila',
          postalCode: '1403',
          country: 'Philippines',
          contactNum: '639876543212',
        ),
        billingAddress: BillingAddressStruct.maybeFromMap(ShippingAddressStruct(
          firstName: 'Grace',
          lastName: 'Auvergne',
          adrLine1: 'Test Address',
          adrLine2: 'Grace Park',
          city: 'Caloocan City',
          region: 'Metro Manila',
          postalCode: '1403',
          country: 'Philippines',
          contactNum: '639876543212',
        ).toMap()),
        payment: PaymentStruct(
          paymentMethodId: '4q5w8e0r1t0y',
        ),
        bankAccountDetails: BankAccountDetailsStruct(
          bankAccountNumber: '00000000000001',
          bankAccountFullName: 'Grace Auvergne',
          bankAccountBranchAccId: '001',
          bankBvn: '082902',
          bankBsb: '12345678901',
        ),
        cardMetaData: CardMetaDataStruct(
          cardId: 'CARD789654321',
          cardScheme: 'Visa',
          cardType: 'DEBIT',
          cardBin: '411111',
          cardLast4Digits: '1234',
          cardExpDate: '12/2026',
          cardIsPrepaid: 'false',
          cardIsVirtual: 'true',
          cardAuthMethod: 'PIN',
          cardTranChannel: 'CARD_PRESENT',
        ),
        merchant: MerchantStruct(
          merchantMcc: '5732',
          merchantId: 'MER123456789',
          merchantName: 'Merchant Store',
          merchantLocation: MerchantLocationStruct(
            merchantAdrLine1: '123 Store Street',
            merchantCity: 'Caloocan City',
            merchantAdrState: 'MerchantAdrState',
            merchantPostalCode: '1403',
            merchantCtry: 'Philippines',
            merchantLatitude: '37.774929',
            merchantLongitude: '-122.419418',
          ),
        ),
        authorizationResponse: AuthorizationResponseStruct(
          verificationSts: 'success',
          aVSResultCode: 'Y',
          declineResultCode: 'n7',
          declineResultMessage: 'Decline for CVV2 failure (VISA)',
          acquirerResponseCode: '00',
          acquirerResponseMessage: 'Transaction approved',
          threeDSResponseStatus: 'Y',
          threeDSResponseEnrolled: 'Y',
          threeDSResponseECI: '5',
        ),
        otherRequiredDetails: OtherRequiredDetailsStruct(
          tranCode: '001',
        ),
      );
      _model.fmDeviceInfo = DeviceInfoStruct(
        deviceIpAddress: '46.101.95.123',
        deviceUserAgent: 'Chrome/143.0.7499.193 (Tahoe 26.2)',
        deviceId: 'FVFJC6ZVQ6L4',
        acceptLanguage: 'en-US,en;q=0.9',
        cookie: 'Cookie',
      );
      safeSetState(() {});
    });

    _model.textFieldPaymentAmountTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      formatNumber(
        _model.paymentAmount,
        formatType: FormatType.decimal,
        decimalType: DecimalType.periodDecimal,
      ),
      '0.00',
    ));
    _model.textFieldPaymentAmountFocusNode ??= FocusNode();
    _model.textFieldPaymentAmountFocusNode!.addListener(
      () async {
        _model.paymentAmount = valueOrDefault<double>(
          double.tryParse(_model.textFieldPaymentAmountTextController.text),
          0.00,
        );
        _model.updateBillsBodyStruct(
          (e) => e
            ..amount = double.tryParse(
                _model.textFieldPaymentAmountTextController.text),
        );
        safeSetState(() {
          _model.textFieldPaymentAmountTextController?.text =
              valueOrDefault<String>(
            formatNumber(
              _model.paymentAmount,
              formatType: FormatType.decimal,
              decimalType: DecimalType.periodDecimal,
            ),
            '0.00',
          );
        });
      },
    );
    _model.textFieldRemarksTextController ??= TextEditingController();
    _model.textFieldRemarksFocusNode ??= FocusNode();

    animationsMap.addAll({
      'selectPaymentFromAccountOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'selectPaymentToBillerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(1.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).bgThemeColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/PBBBackgroundWeb.png',
                    ).image,
                  ),
                ),
                child: Stack(
                  children: [
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
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
                                  return valueOrDefault<double>(
                                    FFAppState().isDrawerOpen
                                        ? FFAppConstants.maxDrawerWidth
                                        : FFAppConstants.minDrawerWidth,
                                    80.0,
                                  );
                                } else {
                                  return valueOrDefault<double>(
                                    FFAppState().isDrawerOpen
                                        ? FFAppConstants.maxDrawerWidth
                                        : FFAppConstants.minDrawerWidth,
                                    80.0,
                                  );
                                }
                              }(),
                              280.0,
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
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 600.0;
                                      } else {
                                        return 600.0;
                                      }
                                    }(),
                                    600.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Service Fee',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLargeFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryLabel,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .titleLargeIsCustom,
                                            ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 5.0, 10.0, 5.0),
                                          child: Text(
                                            'Free',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmallFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .whiteText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmallIsCustom,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      // if Mobile, show bottom sheet, else show side drawer.
                                      if (() {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return true;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return true;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return false;
                                        } else {
                                          return false;
                                        }
                                      }()) {
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
                                                      PaymentFromAccountBottomSheetWidget(
                                                    callback: () async {
                                                      _model.selectedSourceAccount =
                                                          FFAppState()
                                                              .PaymentFromSelectedAccountAppState;
                                                      safeSetState(() {});
                                                      Navigator.pop(context);
                                                    },
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
                                                      PaymentFromAccountSideDrawerWidget(
                                                    callback: () async {
                                                      _model.selectedSourceAccount =
                                                          FFAppState()
                                                              .PaymentFromSelectedAccountAppState;
                                                      safeSetState(() {});
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.selectPaymentFromAccountModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SelectPaymentFromAccountWidget(
                                        label: 'Payment from',
                                        subtitle:
                                            'Select one of your PBB accounts.',
                                        userAccount:
                                            _model.selectedSourceAccount,
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'selectPaymentFromAccountOnPageLoadAnimation']!),
                                ),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      // if Mobile, show bottom sheet, else show side drawer.
                                      if (() {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return true;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return true;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return false;
                                        } else {
                                          return false;
                                        }
                                      }()) {
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
                                                      BillerBottomSheetWidget(
                                                    callback: () async {
                                                      _model.selectedBiller =
                                                          FFAppState()
                                                              .PaymentToSelectedBillerAppState;
                                                      safeSetState(() {});
                                                      Navigator.pop(context);
                                                    },
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
                                                  child: BillerSideDrawerWidget(
                                                    callback: () async {
                                                      _model.selectedBiller =
                                                          FFAppState()
                                                              .PaymentToSelectedBillerAppState;
                                                      safeSetState(() {});
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: wrapWithModel(
                                      model: _model.selectPaymentToBillerModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SelectPaymentToBillerWidget(
                                        label: 'Payment to',
                                        subtitle:
                                            'Select the Biller to make payment to.',
                                        biller: _model.selectedBiller,
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'selectPaymentToBillerOnPageLoadAnimation']!),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 600.0;
                                      } else {
                                        return 600.0;
                                      }
                                    }(),
                                    600.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).whiteText,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Payment Amount',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryLabel,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleLargeIsCustom,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .neutral10,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    _model.selectedBiller
                                                        ?.currency,
                                                    'PHP',
                                                  ),
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
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 53.2,
                                                child: TextFormField(
                                                  controller: _model
                                                      .textFieldPaymentAmountTextController,
                                                  focusNode: _model
                                                      .textFieldPaymentAmountFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeFamily,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLargeIsCustom,
                                                            ),
                                                    hintText: ' 0.00',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          color:
                                                              Color(0xFF72777A),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMediumIsCustom,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral10,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                  ),
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  textAlign: TextAlign.end,
                                                  keyboardType:
                                                      const TextInputType
                                                          .numberWithOptions(
                                                          decimal: true),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .textFieldPaymentAmountTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation1']!),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 600.0;
                                      } else {
                                        return 600.0;
                                      }
                                    }(),
                                    600.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).whiteText,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Schedule',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryLabel,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleLargeIsCustom,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Expanded(
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownScheduleTypeValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownScheduleTypeValue ??=
                                                      TransactionScheduleType
                                                          .DAILY.name,
                                                ),
                                                options: TransactionScheduleType
                                                    .values
                                                    .map((e) => e.name)
                                                    .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                            .dropDownScheduleTypeValue =
                                                        val),
                                                height: 44.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                hintText: 'Select...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryLabel,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .base0,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .neutral10,
                                                borderWidth: 1.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                        if (_model.dropDownScheduleTypeValue ==
                                            TransactionScheduleType.ONCE.name)
                                          wrapWithModel(
                                            model: _model
                                                .customDatePickerWidgetPaymentDateModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CustomDatePickerWidgetWidget(
                                              label: _model.paymentDate !=
                                                          null &&
                                                      _model.paymentDate != ''
                                                  ? dateTimeFormat(
                                                      "d-MMM-y",
                                                      _model.datePicked1,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )
                                                  : 'Set a payment date (DD-MM-YYYY)',
                                              callBack: () async {
                                                final _datePicked1Date =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                );

                                                if (_datePicked1Date != null) {
                                                  safeSetState(() {
                                                    _model.datePicked1 =
                                                        DateTime(
                                                      _datePicked1Date.year,
                                                      _datePicked1Date.month,
                                                      _datePicked1Date.day,
                                                    );
                                                  });
                                                } else if (_model.datePicked1 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked1 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                if (_model.datePicked1 !=
                                                    null) {
                                                  _model.paymentDate =
                                                      dateTimeFormat(
                                                    "y-MM-d",
                                                    _model.datePicked1,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  );
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                          ),
                                        if ((_model.dropDownScheduleTypeValue ==
                                                TransactionScheduleType
                                                    .MONTHLY.name) ||
                                            (_model.dropDownScheduleTypeValue ==
                                                TransactionScheduleType
                                                    .ONCE.name))
                                          wrapWithModel(
                                            model: _model
                                                .customDatePickerWidgetStartDateModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CustomDatePickerWidgetWidget(
                                              label: _model.startPaymentDate !=
                                                          null &&
                                                      _model.startPaymentDate !=
                                                          ''
                                                  ? dateTimeFormat(
                                                      "d-MMM-y",
                                                      _model.datePicked2,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )
                                                  : 'Select start date (DD-MM-YYYY)',
                                              callBack: () async {
                                                final _datePicked2Date =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                );

                                                if (_datePicked2Date != null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        DateTime(
                                                      _datePicked2Date.year,
                                                      _datePicked2Date.month,
                                                      _datePicked2Date.day,
                                                    );
                                                  });
                                                } else if (_model.datePicked2 !=
                                                    null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        getCurrentTimestamp;
                                                  });
                                                }
                                                if (_model.datePicked2 !=
                                                    null) {
                                                  _model.startPaymentDate =
                                                      dateTimeFormat(
                                                    "y-MM-d",
                                                    _model.datePicked2,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  );
                                                  safeSetState(() {});
                                                }
                                              },
                                            ),
                                          ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if ((_model.dropDownScheduleTypeValue ==
                                                    TransactionScheduleType
                                                        .MONTHLY.name) ||
                                                (_model.dropDownScheduleTypeValue ==
                                                    TransactionScheduleType
                                                        .ONCE.name))
                                              Expanded(
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownNumberOfPaymentValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    '1',
                                                    '2',
                                                    '3',
                                                    '4',
                                                    '5',
                                                    '6',
                                                    '7',
                                                    '8',
                                                    '9',
                                                    '10',
                                                    '11',
                                                    '12'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .dropDownNumberOfPaymentValue =
                                                          val),
                                                  height: 44.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                  hintText:
                                                      'Set number of payments',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryLabel,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .base0,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .neutral10,
                                                  borderWidth: 1.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation2']!),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Container(
                                  width: valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return double.infinity;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 600.0;
                                      } else {
                                        return 600.0;
                                      }
                                    }(),
                                    600.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).whiteText,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Remarks',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLargeFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryLabel,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .titleLargeIsCustom,
                                              ),
                                        ),
                                        TextFormField(
                                          controller: _model
                                              .textFieldRemarksTextController,
                                          focusNode:
                                              _model.textFieldRemarksFocusNode,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeFamily,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLargeIsCustom,
                                                    ),
                                            hintText: 'Optional',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily,
                                                      color: Color(0xFF72777A),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumIsCustom,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .neutral10,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .base0,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 17.0, 12.0, 17.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .formElementHover,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                          maxLines: null,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          enableInteractiveSelection: true,
                                          validator: _model
                                              .textFieldRemarksTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation3']!),
                              ),
                              Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: ((_model.paymentAmount < 1.0) ||
                                            (_model.selectedSourceAccount ==
                                                null) ||
                                            (_model.selectedBiller == null))
                                        ? null
                                        : () async {
                                            _model.billsHeader =
                                                BillsHeaderStruct(
                                              channelRefNumber:
                                                  valueOrDefault<String>(
                                                random_data.randomString(
                                                  5,
                                                  8,
                                                  false,
                                                  true,
                                                  true,
                                                ),
                                                'PLUM0001',
                                              ),
                                              channelCode: 'cbxrw',
                                              billerCode:
                                                  valueOrDefault<String>(
                                                _model.selectedBiller?.code,
                                                'BDOCC',
                                              ),
                                              userId: '40248',
                                              branchId: 001,
                                            );
                                            _model.billsBody = BillsBodyStruct(
                                              accNum: valueOrDefault<String>(
                                                _model.selectedBiller
                                                    ?.accountNumber,
                                                '5188690005874103',
                                              ),
                                              amount: _model.paymentAmount,
                                              fullName: _model
                                                  .selectedSourceAccount
                                                  ?.accountName,
                                              billNum: valueOrDefault<String>(
                                                _model.selectedBiller?.fields
                                                    .where((e) =>
                                                        e.name == 'Bill Number')
                                                    .toList()
                                                    .firstOrNull
                                                    ?.value,
                                                '13310456',
                                              ),
                                              tranRefNum:
                                                  valueOrDefault<String>(
                                                _model.selectedBiller?.fields
                                                    .where((e) =>
                                                        e.name ==
                                                        'Reference Number')
                                                    .toList()
                                                    .firstOrNull
                                                    ?.value,
                                                '000102134567',
                                              ),
                                              chequeNum: '',
                                              otherCharges: 0.00,
                                              paymentMethod: 'DEBIT',
                                              bankName: '',
                                            );
                                            safeSetState(() {});
                                            // Call FMS fraudcheck first before validation then pay bills.
                                            _model.oAuthTokenBpTransactResponse =
                                                await PbbGroup.oauthTokenCall
                                                    .call(
                                              channelCode: 'cbxr',
                                              originatingChannelCode: 'cbxr',
                                              checkPoint: 'transaction',
                                              grantType: 'password',
                                              baseURL:
                                                  'https://lumine.pbb.com.ph',
                                            );

                                            if ((_model
                                                    .oAuthTokenBpTransactResponse
                                                    ?.succeeded ??
                                                true)) {
                                              _model.fMSFraudCheckReponse =
                                                  await PbbGroup
                                                      .fMSFraudCheckCall
                                                      .call(
                                                requestBodyJson: <String,
                                                    dynamic>{
                                                  'FMHeader':
                                                      _model.fmHeader?.toMap(),
                                                  'FMSession':
                                                      _model.fmSession?.toMap(),
                                                  'TRANSACTION': _model
                                                      .fmTransaction
                                                      ?.toMap(),
                                                  'DeviceInfo': _model
                                                      .fmDeviceInfo
                                                      ?.toMap(),
                                                },
                                                baseURL:
                                                    'https://lumine.pbb.com.ph',
                                                oAuthaccessToken: PbbGroup
                                                    .oauthTokenCall
                                                    .accesstoken(
                                                  (_model.oAuthTokenBpTransactResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              );

                                              if ((_model.fMSFraudCheckReponse
                                                      ?.succeeded ??
                                                  true)) {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
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
                                                            primaryButtonTitle:
                                                                'Continue',
                                                            title: FMSFraudCheckResponseStruct
                                                                    .maybeFromMap(
                                                                        (_model.fMSFraudCheckReponse?.jsonBody ??
                                                                            ''))
                                                                ?.riskStatus,
                                                            message: FMSFraudCheckResponseStruct
                                                                    .maybeFromMap((_model
                                                                            .fMSFraudCheckReponse
                                                                            ?.jsonBody ??
                                                                        ''))!
                                                                .riskDetails
                                                                .statusMessage,
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

                                                context.pushNamed(
                                                  BillsPaymentReviewPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'billsHeader':
                                                        serializeParam(
                                                      _model.billsHeader,
                                                      ParamType.DataStruct,
                                                    ),
                                                    'billsBody': serializeParam(
                                                      _model.billsBody,
                                                      ParamType.DataStruct,
                                                    ),
                                                    'bpFieldsModel':
                                                        serializeParam(
                                                      BillsPaymentFieldsModelStruct(
                                                        paymentFrom:
                                                            AccountsV2Struct(
                                                          accountNumber: _model
                                                              .billsBody
                                                              ?.accNum,
                                                          accountName: _model
                                                              .billsBody
                                                              ?.fullName,
                                                          accountTypeId: '',
                                                          currency: 'PHP',
                                                          status: 'active',
                                                          organizationCode: '1',
                                                          branchId: '1',
                                                        ),
                                                        paymentTo:
                                                            FrequentBillerDataModelStruct(
                                                          billerName: _model
                                                              .billsHeader
                                                              ?.billerCode,
                                                          name: _model
                                                              .billsHeader
                                                              ?.billerCode,
                                                          category: '',
                                                          code: _model
                                                              .billsHeader
                                                              ?.billerCode,
                                                          serviceId: '1',
                                                          accountNumber: _model
                                                              .billsBody
                                                              ?.accNum,
                                                          currency: 'PHP',
                                                          createdBy:
                                                              currentUserData
                                                                  ?.user
                                                                  .cifNumber,
                                                          shortName: _model
                                                              .billsBody
                                                              ?.bankName,
                                                        ),
                                                        paymentAmount: _model
                                                            .billsBody?.amount,
                                                        schedule: () {
                                                          if (_model
                                                                  .dropDownScheduleTypeValue ==
                                                              TransactionScheduleType
                                                                  .DAILY.name) {
                                                            return TransactionScheduleType
                                                                .DAILY;
                                                          } else if (_model
                                                                  .dropDownScheduleTypeValue ==
                                                              TransactionScheduleType
                                                                  .ONCE.name) {
                                                            return TransactionScheduleType
                                                                .ONCE;
                                                          } else if (_model
                                                                  .dropDownScheduleTypeValue ==
                                                              TransactionScheduleType
                                                                  .MONTHLY
                                                                  .name) {
                                                            return TransactionScheduleType
                                                                .MONTHLY;
                                                          } else {
                                                            return TransactionScheduleType
                                                                .DAILY;
                                                          }
                                                        }(),
                                                        remarks: _model
                                                            .textFieldRemarksTextController
                                                            .text,
                                                      ),
                                                      ParamType.DataStruct,
                                                    ),
                                                  }.withoutNulls,
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
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
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
                                                            primaryButtonTitle:
                                                                'Continue',
                                                            title: PbbGroup
                                                                .fMSFraudCheckCall
                                                                .riskDetailsStatus(
                                                              (_model.fMSFraudCheckReponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ),
                                                            message: PbbGroup
                                                                .fMSFraudCheckCall
                                                                .riskDetailsStatusMessage(
                                                              (_model.fMSFraudCheckReponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!,
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
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(
                                                                  dialogContext)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child:
                                                            CustomInformationalDialogWidget(
                                                          primaryButtonTitle:
                                                              'Dismiss',
                                                          message: PbbGroup
                                                              .oauthTokenCall
                                                              .errorMessage(
                                                            (_model.oAuthTokenBpTransactResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!,
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

                                            safeSetState(() {});
                                          },
                                    text: 'Continue',
                                    options: FFButtonOptions(
                                      width: valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return double.infinity;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 600.0;
                                          } else {
                                            return 600.0;
                                          }
                                        }(),
                                        600.0,
                                      ),
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                      borderRadius: BorderRadius.circular(8.0),
                                      disabledColor:
                                          FlutterFlowTheme.of(context).neutral9,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation']!),
                                ),
                              ),
                            ]
                                .divide(SizedBox(height: 24.0))
                                .addToStart(SizedBox(height: 24.0))
                                .addToEnd(SizedBox(height: 24.0)),
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.customMobileAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: CustomMobileAppBarWidget(
                        pageTitle: 'Pay Bills',
                        rightButtonIcon: Icon(
                          Icons.list,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        leftButtonIcon: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        midRightButtonIcon: null,
                        backgroudColor:
                            FFAppConstants.AppBarSecondaryBackgroundColor,
                        titleColor: FlutterFlowTheme.of(context).info,
                        buttonColor: FFAppConstants.AppBarButtonSecondaryColor,
                        rightButtonAction: () async {
                          // -> BillsPaymentTransactionsPage

                          context.pushNamed(
                            BillsPaymentTransactionsPageWidget.routeName,
                            extra: <String, dynamic>{
                              '__transition_info__': TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
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
                        pageTitle: 'New Payment',
                        leftButtonIcon: null,
                        rightButtonIcon: Icon(
                          Icons.list_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        leftButtonAction: () async {},
                        midButtonAction: () async {},
                        rightButtonAction: () async {
                          context.pushNamed(
                            BillsPaymentTransactionsPageWidget.routeName,
                            extra: <String, dynamic>{
                              '__transition_info__': TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
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
            ),
          ],
        ),
      ),
    );
  }
}
