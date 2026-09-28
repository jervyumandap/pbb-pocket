import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/components/transaction_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pay_bills/p_b_components/edit_delete_beneficiary_bottom_sheet/edit_delete_beneficiary_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/modify_beneficiary_bottom_sheet/modify_beneficiary_bottom_sheet_widget.dart';
import '/pay_bills/p_b_components/save_beneficiary_success_bottom_sheet/save_beneficiary_success_bottom_sheet_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'fund_transfer_page_model.dart';
export 'fund_transfer_page_model.dart';

/// Money Transfer Form
class FundTransferPageWidget extends StatefulWidget {
  const FundTransferPageWidget({
    super.key,
    String? bankName,
    String? accountName,
    this.accountNumber,
    this.qrParsedData,
    this.accountType,
    bool? isFromFavorites,
  })  : this.bankName = bankName ?? 'UnionBank of The Philippines',
        this.accountName = accountName ?? 'Ben Uy',
        this.isFromFavorites = isFromFavorites ?? false;

  final String bankName;
  final String accountName;
  final String? accountNumber;
  final ParsedEMVCoDataModelStruct? qrParsedData;
  final String? accountType;
  final bool isFromFavorites;

  static String routeName = 'FundTransferPage';
  static String routePath = '/fundTransferPage';

  @override
  State<FundTransferPageWidget> createState() => _FundTransferPageWidgetState();
}

class _FundTransferPageWidgetState extends State<FundTransferPageWidget> {
  late FundTransferPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FundTransferPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.selectedAccountNumber = FFAppState()
              .AccountsState
              .where((e) => e.fullAccountNumber != widget.accountNumber)
              .toList()
              .firstOrNull
              ?.fullAccountNumber;
          safeSetState(() {});
          if (FFAppState().FundTransferiniatedResponse.transferType !=
              TransactionTypeKey.INTRABANK.name) {
            _model.getBanksResponse =
                await WhitebankGroupAPIGroup.getBanksCall.call(
              accessToken: currentAuthenticationToken,
              baseURL: FFDevEnvironmentValues().WBPBASEURL,
            );

            if ((_model.getBanksResponse?.succeeded ?? true)) {
              _model.bankList = ((_model.getBanksResponse?.jsonBody ?? '')
                      .toList()
                      .map<BankModelStruct?>(BankModelStruct.maybeFromMap)
                      .toList() as Iterable<BankModelStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<BankModelStruct>();
              safeSetState(() {});
            }
          }
          _model.fmDeviceInfo = DeviceInfoStruct(
            deviceIpAddress: '46.101.95.123',
            deviceUserAgent: 'Chrome/143.0.7499.193 (Tahoe 26.2)',
            deviceId: 'FVFJC6ZVQ6L4',
            acceptLanguage: 'en-US,en;q=0.9',
            cookie: 'Cookie',
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
            billingAddress:
                BillingAddressStruct.maybeFromMap(ShippingAddressStruct(
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
          _model.fmSession = FMSessionStruct(
            timeSession: '1580382236924',
            sessionId: '1A530637284E8D531427',
          );
          _model.fmHeader = FMHeaderStruct(
            ipAddress: '123.123.123.123',
            channelCode: 'cbxr',
            originatingIPAddress: '123.123.123.123',
            originatingChannelCode: 'cbxr',
            checkpointType: 'TRANSACTION',
          );
          _model.isLoading = false;
          safeSetState(() {});

          safeSetState(() {});
        }),
        Future(() async {
          _model.beneficiaryResponse =
              await WhitebankGroupAPIGroup.getBeneficiariesCall.call(
            accessToken: currentAuthenticationToken,
            baseURL: FFDevEnvironmentValues().WBPBASEURL,
          );

          if ((_model.beneficiaryResponse?.succeeded ?? true)) {
            FFAppState().BeneficiaryListState =
                ((_model.beneficiaryResponse?.jsonBody ?? '')
                        .toList()
                        .map<BeneficiaryModelStruct?>(
                            BeneficiaryModelStruct.maybeFromMap)
                        .toList() as Iterable<BeneficiaryModelStruct?>)
                    .withoutNulls
                    .toList()
                    .cast<BeneficiaryModelStruct>();
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
                        message: valueOrDefault<String>(
                          getJsonField(
                            (_model.beneficiaryResponse?.jsonBody ?? ''),
                            r'''$.message''',
                          )?.toString(),
                          'Something went wrong.',
                        ),
                        primaryButtonTitle: 'Dismiss',
                        title: valueOrDefault<String>(
                          getJsonField(
                            (_model.beneficiaryResponse?.jsonBody ?? ''),
                            r'''$.title''',
                          )?.toString(),
                          'Oops!',
                        ),
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
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      FFAppState().accounts = AccountsV2Struct();
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
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              if (_model.isLoading)
                wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: _model.isLoading,
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
                    wrapWithModel(
                      model: _model.mobileNavigationBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileNavigationBarWidget(
                        pageIndex: 2,
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.customMobileAppBarModel,
                                updateCallback: () => safeSetState(() {}),
                                child: CustomMobileAppBarWidget(
                                  pageTitle: '',
                                  rightButtonIcon: null,
                                  leftButtonIcon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
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
                                  titleLeftAlign: (FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType ==
                                              TransactionTypeKey
                                                  .OWN_ACCOUNT.name) ||
                                          (FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType ==
                                              'INTRABANK')
                                      ? 'Within PBB Account'
                                      : 'Send to other banks',
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
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 18.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 44.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE2E8F0),
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.isFavoritesSelected =
                                                    false;
                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                FFAppState()
                                                            .FundTransferiniatedResponse
                                                            .transferType ==
                                                        'PBBtoPBB'
                                                    ? 'PBB Account'
                                                    : 'Banks',
                                                'PBB Account',
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: valueOrDefault<Color>(
                                                  _model.isFavoritesSelected
                                                      ? Color(0xFFE2E8F0)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                                ),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.isFavoritesSelected
                                                            ? Color(0xFF0F172B)
                                                            : Color(0xFF45556C),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                      ),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.isFavoritesSelected =
                                                    true;
                                                safeSetState(() {});
                                                safeSetState(() {
                                                  _model.checkboxValue = false;
                                                });
                                              },
                                              text: 'Favorites',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: valueOrDefault<Color>(
                                                  !_model.isFavoritesSelected
                                                      ? Color(0xFFE2E8F0)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                                ),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          valueOrDefault<Color>(
                                                        !_model.isFavoritesSelected
                                                            ? Color(0xFF0F172B)
                                                            : Color(0xFF45556C),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                      ),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      if (!_model.isFavoritesSelected) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Form(
                                                key: _model.formKey,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    if ((widget.qrParsedData ==
                                                            null) &&
                                                        !_model.isLoading)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            if ((FFAppState()
                                                                        .FundTransferiniatedResponse
                                                                        .transferType ==
                                                                    TransactionTypeKey
                                                                        .INSTAPAY
                                                                        .name) ||
                                                                (FFAppState()
                                                                        .FundTransferiniatedResponse
                                                                        .transferType ==
                                                                    TransactionTypeKey
                                                                        .PESONET
                                                                        .name))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Semantics(
                                                                  label:
                                                                      'fund_transfer_bank_dropdown',
                                                                  child: custom_widgets
                                                                      .LabelValueDropdown(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        56.0,
                                                                    placeholder:
                                                                        'Select Bank',
                                                                    options: _model
                                                                        .bankList
                                                                        .map((e) =>
                                                                            e.bankCode)
                                                                        .toList(),
                                                                    labels: _model
                                                                        .bankList
                                                                        .map((e) =>
                                                                            e.bankName)
                                                                        .toList(),
                                                                    initialValue:
                                                                        'initial value',
                                                                    showError:
                                                                        _model
                                                                            .isBankInvalid,
                                                                    errorText:
                                                                        'Please select a bank before proceeding',
                                                                    onChanged:
                                                                        (label,
                                                                            value) async {
                                                                      _model.bankCode =
                                                                          value;
                                                                      _model.bankName =
                                                                          label;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            'Transfer Money to:',
                                                                            style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ].divide(SizedBox(height: 10.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            if (_model
                                                                    .isFavoritesSelected ==
                                                                false)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              8.0),
                                                                          child:
                                                                              Semantics(
                                                                            label:
                                                                                'fund_transfer_account_number_field',
                                                                            textField:
                                                                                true,
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.accountNumberTextfieldModel,
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: TextfieldDoubleWidget(
                                                                                minLength: 10,
                                                                                maxLength: 18,
                                                                                title: 'Account Number',
                                                                                isAmount: false,
                                                                                initialValue: '',
                                                                                hintText: 'Account Number',
                                                                                isReadOnly: _model.checkboxValue,
                                                                                callback: () async {},
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Semantics(
                                                                          label:
                                                                              'fund_transfer_account_name_textfield',
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.accountNameTextfieldModel,
                                                                            updateCallback: () =>
                                                                                safeSetState(() {}),
                                                                            child:
                                                                                PrimaryTextFieldComponentWidget(
                                                                              textfieldTitle: 'Enter Account Name',
                                                                              maxLines: 1,
                                                                              lineHeight: 1,
                                                                              maxLength: 28,
                                                                              initialValue: '',
                                                                              isReadOnly: _model.checkboxValue,
                                                                              action: () async {},
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              height: 8.0)),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          16.0)),
                                                                ),
                                                              ),
                                                            if (((FFAppState()
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
                                                                            .name)) &&
                                                                (FFAppState()
                                                                    .AccountsState
                                                                    .where((e) =>
                                                                        e.fullAccountNumber !=
                                                                        widget
                                                                            .accountNumber)
                                                                    .toList()
                                                                    .isNotEmpty))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Theme(
                                                                      data:
                                                                          ThemeData(
                                                                        checkboxTheme:
                                                                            CheckboxThemeData(
                                                                          visualDensity:
                                                                              VisualDensity.compact,
                                                                          materialTapTargetSize:
                                                                              MaterialTapTargetSize.shrinkWrap,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(4.0),
                                                                          ),
                                                                        ),
                                                                        unselectedWidgetColor:
                                                                            Color(0xFF002C75),
                                                                      ),
                                                                      child:
                                                                          Checkbox(
                                                                        value: _model.checkboxValue ??=
                                                                            false,
                                                                        onChanged:
                                                                            (newValue) async {
                                                                          safeSetState(() =>
                                                                              _model.checkboxValue = newValue!);
                                                                          if (newValue!) {
                                                                            _model.fundTransferType =
                                                                                TransactionTypeKey.OWN_ACCOUNT.name;
                                                                            _model.checkBoxValue =
                                                                                true;
                                                                            _model.selectedAccountType =
                                                                                FFAppState().AccountsState.where((e) => e.fullAccountNumber != widget.accountNumber).toList().firstOrNull?.accountType?.name;
                                                                            _model.selectedAccountName =
                                                                                FFAppState().AccountsState.where((e) => e.fullAccountNumber != widget.accountNumber).toList().firstOrNull?.accountType?.name;
                                                                            safeSetState(() {});
                                                                            FFAppState().updateFundTransferiniatedResponseStruct(
                                                                              (e) => e..transferType = TransactionTypeKey.OWN_ACCOUNT.name,
                                                                            );
                                                                            safeSetState(() {});
                                                                            safeSetState(() {
                                                                              _model.accountNumberTextfieldModel.textController?.clear();
                                                                              _model.accountNameTextfieldModel.textController?.clear();
                                                                            });
                                                                          } else {
                                                                            _model.checkBoxValue =
                                                                                false;
                                                                            _model.fundTransferType =
                                                                                TransactionTypeKey.INTRABANK.name;
                                                                            _model.selectedAccountType =
                                                                                null;
                                                                            safeSetState(() {});
                                                                            FFAppState().updateFundTransferiniatedResponseStruct(
                                                                              (e) => e..transferType = TransactionTypeKey.INTRABANK.name,
                                                                            );
                                                                            safeSetState(() {});
                                                                          }
                                                                        },
                                                                        side: (Color(0xFF002C75) !=
                                                                                null)
                                                                            ? BorderSide(
                                                                                width: 2,
                                                                                color: Color(0xFF002C75),
                                                                              )
                                                                            : null,
                                                                        activeColor:
                                                                            Color(0xFF0AACB2),
                                                                        checkColor:
                                                                            FlutterFlowTheme.of(context).info,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Transfer money to own account',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          8.0)),
                                                                ),
                                                              ),
                                                            if ((FFAppState()
                                                                        .FundTransferiniatedResponse
                                                                        .transferType ==
                                                                    TransactionTypeKey
                                                                        .OWN_ACCOUNT
                                                                        .name) ||
                                                                (FFAppState()
                                                                        .FundTransferiniatedResponse
                                                                        .transferType ==
                                                                    TransactionTypeKey
                                                                        .INTRABANK
                                                                        .name))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            28.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 220.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Visibility(
                                                                    visible:
                                                                        _model.checkboxValue ??
                                                                            true,
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final accounts = FFAppState()
                                                                            .AccountsState
                                                                            .map((e) =>
                                                                                e)
                                                                            .toList()
                                                                            .where((e) =>
                                                                                e.fullAccountNumber !=
                                                                                widget.accountNumber)
                                                                            .toList();

                                                                        return ListView
                                                                            .separated(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              accounts.length,
                                                                          separatorBuilder: (_, __) =>
                                                                              SizedBox(height: 8.0),
                                                                          itemBuilder:
                                                                              (context, accountsIndex) {
                                                                            final accountsItem =
                                                                                accounts[accountsIndex];
                                                                            return Semantics(
                                                                              label: 'fund_transfer_own_accounts_dropdown',
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 24.0,
                                                                                    height: 24.0,
                                                                                    child: custom_widgets.CustomRadioButtonOnly(
                                                                                      width: 24.0,
                                                                                      height: 24.0,
                                                                                      isSelected: _model.selectedAccountNumber == accountsItem.fullAccountNumber,
                                                                                      size: 24.0,
                                                                                      activeColor: Color(0xFF0AACB2),
                                                                                      onTap: () async {
                                                                                        _model.isAccountSelected = false;
                                                                                        _model.selectedAccountNumber = accountsItem.fullAccountNumber;
                                                                                        _model.selectedAccountName = accountsItem.accountType?.name;
                                                                                        _model.selectedAccountType = accountsItem.accountType?.name;
                                                                                        safeSetState(() {});
                                                                                        FFAppState().updateFundTransferiniatedResponseStruct(
                                                                                          (e) => e
                                                                                            ..destinationAccountName = accountsItem.accountType?.name
                                                                                            ..destinationAccountNumber = accountsItem.fullAccountNumber
                                                                                            ..accountType = _model.selectedAccountType
                                                                                            ..transferType = TransactionTypeKey.OWN_ACCOUNT.name,
                                                                                        );
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      width: 100.0,
                                                                                      height: 76.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF7F7F7),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsets.all(16.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 145.0,
                                                                                              height: 30.0,
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      accountsItem.accountType?.name,
                                                                                                      'Payroll Account',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      accountsItem.accountNumber,
                                                                                                      '1233 1212 2121',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                        ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              '${accountsItem.currency} ${formatNumber(
                                                                                                accountsItem.currentBalance,
                                                                                                formatType: FormatType.decimal,
                                                                                                decimalType: DecimalType.periodDecimal,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    color: Color(0xFF252525),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 16.0)),
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if ((FFAppState()
                                                                        .FundTransferiniatedResponse
                                                                        .transferType ==
                                                                    TransactionTypeKey
                                                                        .INSTAPAY
                                                                        .name) ||
                                                                (FFAppState()
                                                                        .FundTransferiniatedResponse
                                                                        .transferType ==
                                                                    TransactionTypeKey
                                                                        .PESONET
                                                                        .name))
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        70.0,
                                                                    decoration:
                                                                        BoxDecoration(),
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
                                          ],
                                        );
                                      } else {
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 36.0, 16.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final beneficiaryList = FFAppState()
                                                      .BeneficiaryListState
                                                      .where((e) =>
                                                          FFAppState()
                                                              .FundTransferiniatedResponse
                                                              .transferType ==
                                                          e.transferType)
                                                      .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        beneficiaryList.length,
                                                    itemBuilder: (context,
                                                        beneficiaryListIndex) {
                                                      final beneficiaryListItem =
                                                          beneficiaryList[
                                                              beneficiaryListIndex];
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Builder(
                                                              builder: (context) =>
                                                                  TransactionItemWidget(
                                                                key: Key(
                                                                    'Keytw1_${beneficiaryListIndex}_of_${beneficiaryList.length}'),
                                                                userInitial: functions
                                                                    .extractReceiver(
                                                                        beneficiaryListItem
                                                                            .accountHolderName),
                                                                userNickname:
                                                                    beneficiaryListItem
                                                                        .nickname,
                                                                accountType:
                                                                    'Travels Account',
                                                                accountNumber:
                                                                    beneficiaryListItem
                                                                        .accountNumber,
                                                                inFavPage: true,
                                                                openBotSheet:
                                                                    (isOpenBotSheet) async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                ModifyBeneficiaryBottomSheetWidget(
                                                                              beneficiary: beneficiaryListItem,
                                                                              editAction: (savedBeneficiary) async {
                                                                                Navigator.pop(context);
                                                                                await Future.delayed(
                                                                                  Duration(
                                                                                    milliseconds: 100,
                                                                                  ),
                                                                                );
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
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
                                                                                          child: EditDeleteBeneficiaryBottomSheetWidget(
                                                                                            beneficiary: beneficiaryListItem,
                                                                                            actionType: BeneficiaryActionType.edit,
                                                                                            callBack: (beneficiary) async {
                                                                                              _model.beneficiaryUpdateResponse = await WhitebankGroupAPIGroup.updateBeneficiaryCall.call(
                                                                                                id: beneficiary.id,
                                                                                                nickname: beneficiary.nickname,
                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                                accessToken: currentAuthenticationToken,
                                                                                              );

                                                                                              if ((_model.beneficiaryUpdateResponse?.succeeded ?? true)) {
                                                                                                Navigator.pop(context);
                                                                                                await Future.delayed(
                                                                                                  Duration(
                                                                                                    milliseconds: 100,
                                                                                                  ),
                                                                                                );
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
                                                                                                          child: SaveBeneficiarySuccessBottomSheetWidget(
                                                                                                            title: 'Changes Saved!',
                                                                                                            callBack: () async {
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
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      child: WebViewAware(
                                                                                                        child: GestureDetector(
                                                                                                          onTap: () {
                                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                          },
                                                                                                          child: CustomInformationalDialogWidget(
                                                                                                            message: ErrorMappingModelStruct.maybeFromMap((_model.beneficiaryUpdateResponse?.jsonBody ?? ''))!.message,
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
                                                                                              }

                                                                                              _model.beneficiaryResponse2 = await WhitebankGroupAPIGroup.getBeneficiariesCall.call(
                                                                                                accessToken: currentAuthenticationToken,
                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                              );

                                                                                              if ((_model.beneficiaryResponse2?.succeeded ?? true)) {
                                                                                                FFAppState().BeneficiaryListState = ((_model.beneficiaryResponse2?.jsonBody ?? '').toList().map<BeneficiaryModelStruct?>(BeneficiaryModelStruct.maybeFromMap).toList() as Iterable<BeneficiaryModelStruct?>).withoutNulls.toList().cast<BeneficiaryModelStruct>();
                                                                                                safeSetState(() {});
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
                                                                                                            message: valueOrDefault<String>(
                                                                                                              getJsonField(
                                                                                                                (_model.beneficiaryResponse?.jsonBody ?? ''),
                                                                                                                r'''$.message''',
                                                                                                              )?.toString(),
                                                                                                              'Something went wrong.',
                                                                                                            ),
                                                                                                            primaryButtonTitle: 'Dismiss',
                                                                                                            title: valueOrDefault<String>(
                                                                                                              getJsonField(
                                                                                                                (_model.beneficiaryResponse?.jsonBody ?? ''),
                                                                                                                r'''$.title''',
                                                                                                              )?.toString(),
                                                                                                              'Oops!',
                                                                                                            ),
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
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                              deleteAction: (savedBeneficiary) async {
                                                                                Navigator.pop(context);
                                                                                await Future.delayed(
                                                                                  Duration(
                                                                                    milliseconds: 100,
                                                                                  ),
                                                                                );
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  enableDrag: false,
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
                                                                                          child: EditDeleteBeneficiaryBottomSheetWidget(
                                                                                            beneficiary: beneficiaryListItem,
                                                                                            actionType: BeneficiaryActionType.delete,
                                                                                            callBack: (beneficiary) async {
                                                                                              _model.beneficiaryDeleteResponse = await WhitebankGroupAPIGroup.deleteBeneficiaryCall.call(
                                                                                                id: beneficiary.id,
                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                                accessToken: currentAuthenticationToken,
                                                                                              );

                                                                                              if ((_model.beneficiaryDeleteResponse?.succeeded ?? true)) {
                                                                                                Navigator.pop(context);
                                                                                                await Future.delayed(
                                                                                                  Duration(
                                                                                                    milliseconds: 100,
                                                                                                  ),
                                                                                                );
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
                                                                                                          child: SaveBeneficiarySuccessBottomSheetWidget(
                                                                                                            title: 'Deleted Successfully',
                                                                                                            callBack: () async {
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
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      child: WebViewAware(
                                                                                                        child: GestureDetector(
                                                                                                          onTap: () {
                                                                                                            FocusScope.of(dialogContext).unfocus();
                                                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                                                          },
                                                                                                          child: CustomInformationalDialogWidget(
                                                                                                            message: ErrorMappingModelStruct.maybeFromMap((_model.beneficiaryDeleteResponse?.jsonBody ?? ''))!.message,
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
                                                                                              }

                                                                                              _model.beneficiaryResponse3 = await WhitebankGroupAPIGroup.getBeneficiariesCall.call(
                                                                                                accessToken: currentAuthenticationToken,
                                                                                                baseURL: FFDevEnvironmentValues().WBPBASEURL,
                                                                                              );

                                                                                              if ((_model.beneficiaryResponse3?.succeeded ?? true)) {
                                                                                                FFAppState().BeneficiaryListState = ((_model.beneficiaryResponse3?.jsonBody ?? '').toList().map<BeneficiaryModelStruct?>(BeneficiaryModelStruct.maybeFromMap).toList() as Iterable<BeneficiaryModelStruct?>).withoutNulls.toList().cast<BeneficiaryModelStruct>();
                                                                                                safeSetState(() {});
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
                                                                                                            message: valueOrDefault<String>(
                                                                                                              getJsonField(
                                                                                                                (_model.beneficiaryResponse?.jsonBody ?? ''),
                                                                                                                r'''$.message''',
                                                                                                              )?.toString(),
                                                                                                              'Something went wrong.',
                                                                                                            ),
                                                                                                            primaryButtonTitle: 'Dismiss',
                                                                                                            title: valueOrDefault<String>(
                                                                                                              getJsonField(
                                                                                                                (_model.beneficiaryResponse?.jsonBody ?? ''),
                                                                                                                r'''$.title''',
                                                                                                              )?.toString(),
                                                                                                              'Oops!',
                                                                                                            ),
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
                                                                                ).then((value) => safeSetState(() {}));
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                proceedAction:
                                                                    () async {
                                                                  FFAppState()
                                                                      .updateFundTransferiniatedResponseStruct(
                                                                    (e) => e
                                                                      ..destinationAccountName =
                                                                          beneficiaryListItem
                                                                              .accountHolderName
                                                                      ..sourceAccountNumber =
                                                                          widget
                                                                              .accountNumber
                                                                      ..bankName =
                                                                          beneficiaryListItem
                                                                              .bankName
                                                                      ..destinationAccountNumber =
                                                                          beneficiaryListItem
                                                                              .accountNumber
                                                                      ..destinationBankCode =
                                                                          beneficiaryListItem
                                                                              .bankCode
                                                                      ..accountType =
                                                                          widget
                                                                              .accountType
                                                                      ..transferType =
                                                                          beneficiaryListItem
                                                                              .transferType,
                                                                  );
                                                                  FFAppState()
                                                                          .isFromFavorite =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});

                                                                  context
                                                                      .pushNamed(
                                                                    FundTransferAmountPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'isFromFavorite':
                                                                          serializeParam(
                                                                        true,
                                                                        ParamType
                                                                            .bool,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 343.0,
                                                            child: Divider(
                                                              thickness: 1.0,
                                                              color: Color(
                                                                  0x14000000),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          if (!_model.isFavoritesSelected)
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 32.0),
                                  child: Semantics(
                                    label: 'fund_transfer_next_button',
                                    child: wrapWithModel(
                                      model: _model.primaryButtonComponentModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: PrimaryButtonComponentWidget(
                                        buttonTitle: 'Next',
                                        buttonIcon: Icon(
                                          Icons.filter_none,
                                        ),
                                        buttonWidth: double.infinity,
                                        buttonHeight: 48.0,
                                        buttonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 16.0,
                                        borderRadius: 24.0,
                                        borderColor: Color(0x0000727D),
                                        childPadding: 8.0,
                                        buttonDisabledOption: () {
                                          if (FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType ==
                                              'WITHIN_PBB') {
                                            return false;
                                          } else if (_model.checkBoxValue) {
                                            return false;
                                          } else if ((FFAppState()
                                                      .FundTransferiniatedResponse
                                                      .transferType ==
                                                  'INSTAPAY') ||
                                              (FFAppState()
                                                      .FundTransferiniatedResponse
                                                      .transferType ==
                                                  'PESONET')) {
                                            return ((_model
                                                            .accountNumberTextfieldModel
                                                            .textController
                                                            .text ==
                                                        '') ||
                                                (_model
                                                            .accountNameTextfieldModel
                                                            .textController
                                                            .text ==
                                                        ''));
                                          } else if (FFAppState()
                                                  .FundTransferiniatedResponse
                                                  .transferType ==
                                              'INTRABANK') {
                                            return ((_model
                                                            .accountNumberTextfieldModel
                                                            .textController
                                                            .text ==
                                                        '') ||
                                                (_model
                                                            .accountNameTextfieldModel
                                                            .textController
                                                            .text ==
                                                        ''));
                                          } else {
                                            return ((_model
                                                            .accountNumberTextfieldModel
                                                            .textController
                                                            .text ==
                                                        '') ||
                                                (_model
                                                            .accountNameTextfieldModel
                                                            .textController
                                                            .text ==
                                                        ''));
                                          }
                                        }(),
                                        callback: () async {
                                          var _shouldSetState = false;
                                          if (((FFAppState()
                                                          .FundTransferiniatedResponse
                                                          .transferType ==
                                                      TransactionTypeKey
                                                          .INTRABANK.name) ||
                                                  (FFAppState()
                                                          .FundTransferiniatedResponse
                                                          .transferType ==
                                                      TransactionTypeKey
                                                          .OWN_ACCOUNT.name)) &&
                                              (FFAppState()
                                                  .AccountsState
                                                  .where((e) =>
                                                      e.fullAccountNumber !=
                                                      widget.accountNumber)
                                                  .toList()
                                                  .isNotEmpty) &&
                                              !_model.checkboxValue!) {
                                            _model.validateTransfersAccount =
                                                await WhitebankGroupAPIGroup
                                                    .retailTransfersValidateAccountCall
                                                    .call(
                                              accountNumber: _model
                                                  .accountNumberTextfieldModel
                                                  .textController
                                                  .text,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                              accessToken:
                                                  currentAuthenticationToken,
                                            );

                                            _shouldSetState = true;
                                            if ((_model.validateTransfersAccount
                                                    ?.succeeded ??
                                                true)) {
                                            } else if (ErrorMappingModelStruct
                                                        .maybeFromMap((_model
                                                                .validateTransfersAccount
                                                                ?.jsonBody ??
                                                            ''))
                                                    ?.title ==
                                                'Account Not Found') {
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
                                                          message:
                                                              'Invalid account number.',
                                                          primaryButtonTitle:
                                                              'Confirm',
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

                                              _model.accountInvalid = true;
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
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
                                                          message: ErrorMappingModelStruct
                                                                  .maybeFromMap((_model
                                                                          .validateTransfersAccount
                                                                          ?.jsonBody ??
                                                                      ''))!
                                                              .message,
                                                          primaryButtonTitle:
                                                              'Confirm',
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

                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          }
                                          await Future.wait([
                                            Future(() async {
                                              if ((_model.bankCode != null &&
                                                      _model.bankCode != '') ||
                                                  (FFAppState()
                                                          .FundTransferiniatedResponse
                                                          .transferType ==
                                                      TransactionTypeKey
                                                          .INTRABANK.name) ||
                                                  (_model.fundTransferType ==
                                                      TransactionTypeKey
                                                          .OWN_ACCOUNT.name)) {
                                                _model.isBankInvalid = false;
                                                safeSetState(() {});
                                              } else {
                                                _model.isBankInvalid = true;
                                                safeSetState(() {});
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            }),
                                            Future(() async {
                                              if (((_model.checkboxValue ==
                                                          false) ||
                                                      (_model.checkboxValue ==
                                                          null)) &&
                                                  (_model.fundTransferType !=
                                                      TransactionTypeKey
                                                          .OWN_ACCOUNT.name)) {
                                                _model.validateForm = true;
                                                if (_model.formKey
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey.currentState!
                                                        .validate()) {
                                                  safeSetState(() => _model
                                                      .validateForm = false);
                                                  return;
                                                }
                                                _shouldSetState = true;
                                                if (_model.validateForm ==
                                                    false) {
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }
                                              }
                                            }),
                                          ]);
                                          if (_model.fundTransferType ==
                                                  TransactionTypeKey
                                                      .OWN_ACCOUNT.name
                                              ? true
                                              : ((_model.isBankInvalid ==
                                                      false) &&
                                                  _model.validateForm!)) {
                                            _model.validateAccountOutput =
                                                await WhitebankGroupAPIGroup
                                                    .validateAccountCall
                                                    .call(
                                              accountNumber: _model
                                                          .checkboxValue ==
                                                      true
                                                  ? _model.selectedAccountNumber
                                                  : _model
                                                      .accountNumberTextfieldModel
                                                      .textController
                                                      .text,
                                              bankCode: (_model.checkboxValue ==
                                                          true) ||
                                                      (FFAppState()
                                                              .FundTransferiniatedResponse
                                                              .transferType ==
                                                          TransactionTypeKey
                                                              .INTRABANK.name)
                                                  ? ''
                                                  : _model.bankCode,
                                              transferType: _model
                                                          .checkboxValue ==
                                                      true
                                                  ? TransactionTypeKey
                                                      .OWN_ACCOUNT.name
                                                  : FFAppState()
                                                      .FundTransferiniatedResponse
                                                      .transferType,
                                              accessToken:
                                                  currentAuthenticationToken,
                                              baseURL: FFDevEnvironmentValues()
                                                  .WBPBASEURL,
                                            );

                                            _shouldSetState = true;
                                            if ((_model.validateAccountOutput
                                                    ?.succeeded ??
                                                true)) {
                                              if ((_model.validateAccountOutput
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                    .updateFundTransferiniatedResponseStruct(
                                                  (e) => e
                                                    ..destinationAccountName = _model
                                                                .checkboxValue ==
                                                            true
                                                        ? _model
                                                            .selectedAccountName
                                                        : _model
                                                            .accountNameTextfieldModel
                                                            .textController
                                                            .text
                                                    ..sourceAccountNumber =
                                                        widget.accountNumber
                                                    ..bankName = _model.bankName
                                                    ..destinationAccountNumber = _model
                                                                .checkboxValue ==
                                                            true
                                                        ? _model
                                                            .selectedAccountNumber
                                                        : _model
                                                            .accountNumberTextfieldModel
                                                            .textController
                                                            .text
                                                    ..destinationBankCode =
                                                        _model.bankCode
                                                    ..maskedDestinationAccountNumber =
                                                        _model
                                                            .accountNumberTextfieldModel
                                                            .textController
                                                            .text,
                                                );
                                                FFAppState().isFromFavorite =
                                                    false;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  FundTransferAmountPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'isFromFavorite':
                                                        serializeParam(
                                                      widget.isFromFavorites,
                                                      ParamType.bool,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                _model.accountInvalid = true;
                                                _model.accountErrorMessage =
                                                    getJsonField(
                                                  (_model.validateAccountOutput
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.isValid''',
                                                ).toString();
                                                safeSetState(() {});
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            } else {
                                              _model.accountInvalid = true;
                                              safeSetState(() {});
                                              if (_shouldSetState)
                                                safeSetState(() {});
                                              return;
                                            }
                                          }
                                          if (_shouldSetState)
                                            safeSetState(() {});
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
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: wrapWithModel(
                  model: _model.customWebAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CustomWebAppBarWidget(
                    pageTitle: '',
                    leftButtonAction: () async {},
                    midButtonAction: () async {},
                    rightButtonAction: () async {},
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
