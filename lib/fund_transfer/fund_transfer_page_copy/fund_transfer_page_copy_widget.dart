import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/o_t_p_verification_component/o_t_p_verification_component_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/components/send_money_component/send_money_component_widget.dart';
import '/components/send_via_component/send_via_component_widget.dart';
import '/components/textfield_double/textfield_double_widget.dart';
import '/components/transaction_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'fund_transfer_page_copy_model.dart';
export 'fund_transfer_page_copy_model.dart';

/// Money Transfer Form
class FundTransferPageCopyWidget extends StatefulWidget {
  const FundTransferPageCopyWidget({
    super.key,
    String? bankName,
    String? accountName,
    this.fundTransferType,
    this.accountNumber,
    this.qrParsedData,
    this.accountType,
    bool? isFromFavorites,
  })  : this.bankName = bankName ?? 'UnionBank of The Philippines',
        this.accountName = accountName ?? 'Ben Uy',
        this.isFromFavorites = isFromFavorites ?? false;

  final String bankName;
  final String accountName;
  final String? fundTransferType;
  final String? accountNumber;
  final ParsedEMVCoDataModelStruct? qrParsedData;
  final String? accountType;
  final bool isFromFavorites;

  static String routeName = 'FundTransferPageCopy';
  static String routePath = '/fundTransferPageCopy';

  @override
  State<FundTransferPageCopyWidget> createState() =>
      _FundTransferPageCopyWidgetState();
}

class _FundTransferPageCopyWidgetState extends State<FundTransferPageCopyWidget>
    with TickerProviderStateMixin {
  late FundTransferPageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasButtonTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FundTransferPageCopyModel());

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
          if (widget.fundTransferType != 'PBBtoPBB') {
            _model.getBanksResponse =
                await WhitebankGroupAPIGroup.getBanksCall.call(
              accessToken: currentAuthenticationToken,
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
                        message: 'Something went wrong',
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
        }),
      ]);
    });

    animationsMap.addAll({
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 670.0.ms,
            hz: 4,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      FFAppState().FundTransferRequest = TransferDetailsStruct();
      FFAppState().update(() {});
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
              if (_model.isLoading == false)
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
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
                                color: Color(0xFF444C66),
                              ),
                              btnWOBgColor: Color(0xFF444C66),
                              btnWOBgIconSize: 24.0,
                              isTitleLeftAlign: true,
                              titleLeftAlign: (widget.fundTransferType ==
                                          'PBBtoPBB') ||
                                      (widget.fundTransferType == 'INTRABANK')
                                  ? 'Within PBB Account'
                                  : 'Send to other banks',
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
                                    Flexible(
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          _model.isFavoritesSelected = false;
                                          safeSetState(() {});
                                        },
                                        text: valueOrDefault<String>(
                                          widget.fundTransferType == 'PBBtoPBB'
                                              ? 'PBB Account'
                                              : 'Banks',
                                          'PBB Account',
                                        ),
                                        options: FFButtonOptions(
                                          width: 165.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: valueOrDefault<Color>(
                                            _model.isFavoritesSelected
                                                ? Color(0xFFE2E8F0)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  _model.isFavoritesSelected
                                                      ? Color(0xFF0F172B)
                                                      : Color(0xFF45556C),
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                                ),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
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
                                          _model.isFavoritesSelected = true;
                                          safeSetState(() {});
                                        },
                                        text: 'Favorites',
                                        options: FFButtonOptions(
                                          width: 165.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: valueOrDefault<Color>(
                                            !_model.isFavoritesSelected
                                                ? Color(0xFFE2E8F0)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  !_model.isFavoritesSelected
                                                      ? Color(0xFF0F172B)
                                                      : Color(0xFF45556C),
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                                ),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if ((widget.fundTransferType !=
                                                    TransactionTypeKey
                                                        .OWN_ACCOUNT.name) &&
                                                (widget.qrParsedData == null))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    if ((widget.fundTransferType ==
                                                            'INSTAPAY') ||
                                                        (widget.fundTransferType ==
                                                            'PESONET'))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: custom_widgets
                                                            .LabelValueDropdown(
                                                          width:
                                                              double.infinity,
                                                          height: 56.0,
                                                          placeholder:
                                                              'Select Biller',
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
                                                          showError: _model
                                                              .isBankInvalid,
                                                          errorText:
                                                              'Please select a bank before proceeding',
                                                          onChanged: (label,
                                                              value) async {
                                                            _model.bankCode =
                                                                value;
                                                            _model.bankName =
                                                                label;
                                                            safeSetState(() {});
                                                          },
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Destination Account',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleMediumFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).titleMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        10.0)),
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .accountNumberTextfieldModel,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      TextfieldDoubleWidget(
                                                                    maxLength:
                                                                        18,
                                                                    title:
                                                                        'Account Number',
                                                                    isAmount:
                                                                        false,
                                                                    initialValue:
                                                                        '',
                                                                    hintText:
                                                                        'Account Number',
                                                                    isReadOnly:
                                                                        _model
                                                                            .checkboxValue,
                                                                    callback:
                                                                        () async {},
                                                                  ),
                                                                ),
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .accountNameTextfieldModel,
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      PrimaryTextFieldComponentWidget(
                                                                    textfieldTitle:
                                                                        'Enter Account Name',
                                                                    maxLines: 1,
                                                                    lineHeight:
                                                                        1,
                                                                    maxLength:
                                                                        28,
                                                                    initialValue:
                                                                        '',
                                                                    isReadOnly:
                                                                        _model
                                                                            .checkboxValue,
                                                                    action:
                                                                        () async {},
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    if (widget
                                                            .fundTransferType ==
                                                        'INTRABANK')
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Theme(
                                                              data: ThemeData(
                                                                checkboxTheme:
                                                                    CheckboxThemeData(
                                                                  visualDensity:
                                                                      VisualDensity
                                                                          .compact,
                                                                  materialTapTargetSize:
                                                                      MaterialTapTargetSize
                                                                          .shrinkWrap,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                  ),
                                                                ),
                                                                unselectedWidgetColor:
                                                                    Color(
                                                                        0xFF002C75),
                                                              ),
                                                              child: Checkbox(
                                                                value: _model
                                                                        .checkboxValue ??=
                                                                    false,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  safeSetState(() =>
                                                                      _model.checkboxValue =
                                                                          newValue!);
                                                                  if (newValue!) {
                                                                    _model.fundTransferType =
                                                                        'OWN_ACCOUNT';
                                                                    _model.checkBoxValue =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                    safeSetState(
                                                                        () {
                                                                      _model
                                                                          .accountNumberTextfieldModel
                                                                          .textController
                                                                          ?.clear();
                                                                      _model
                                                                          .accountNameTextfieldModel
                                                                          .textController
                                                                          ?.clear();
                                                                    });
                                                                  } else {
                                                                    _model.checkBoxValue =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  }
                                                                },
                                                                side: (Color(
                                                                            0xFF002C75) !=
                                                                        null)
                                                                    ? BorderSide(
                                                                        width:
                                                                            2,
                                                                        color: Color(
                                                                            0xFF002C75),
                                                                      )
                                                                    : null,
                                                                activeColor: Color(
                                                                    0xFF0AACB2),
                                                                checkColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Transfer money to own account',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    if (widget
                                                            .fundTransferType ==
                                                        'INTRABANK')
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    28.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                        ),
                                                      ),
                                                    if ((widget.fundTransferType ==
                                                            TransactionTypeKey
                                                                .INSTAPAY
                                                                .name) ||
                                                        (widget.fundTransferType ==
                                                            TransactionTypeKey
                                                                .PESONET.name))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            height: 70.0,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 36.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          final beneficiaryList = FFAppState()
                                              .BeneficiaryListState
                                              .where((e) =>
                                                  widget.fundTransferType ==
                                                  e.transferType)
                                              .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: beneficiaryList.length,
                                            itemBuilder: (context,
                                                beneficiaryListIndex) {
                                              final beneficiaryListItem =
                                                  beneficiaryList[
                                                      beneficiaryListIndex];
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
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
                                                        context.pushNamed(
                                                            FundTransferAmountPageWidget
                                                                .routeName);
                                                      },
                                                      child:
                                                          TransactionItemWidget(
                                                        key: Key(
                                                            'Keydnq_${beneficiaryListIndex}_of_${beneficiaryList.length}'),
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
                                                        openBotSheet:
                                                            (isOpenBotSheet) async {},
                                                        proceedAction:
                                                            () async {},
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 343.0,
                                                    child: Divider(
                                                      thickness: 1.0,
                                                      color: Color(0x14000000),
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
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 32.0),
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
                              buttonColor: FlutterFlowTheme.of(context).primary,
                              textColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 16.0,
                              borderRadius: 24.0,
                              borderColor: Color(0x0000727D),
                              childPadding: 8.0,
                              buttonDisabledOption: () {
                                if (widget.fundTransferType == 'WITHIN_PBB') {
                                  return false;
                                } else if (_model.checkBoxValue) {
                                  return false;
                                } else if ((widget.fundTransferType ==
                                        'INSTAPAY') ||
                                    (widget.fundTransferType == 'PESONET')) {
                                  return ((_model.accountNumberTextfieldModel
                                                  .textController.text ==
                                              '') ||
                                      (_model.accountNameTextfieldModel
                                                  .textController.text ==
                                              ''));
                                } else if (widget.fundTransferType ==
                                    'INTRABANK') {
                                  return ((_model.accountNumberTextfieldModel
                                                  .textController.text ==
                                              '') ||
                                      (_model.accountNameTextfieldModel
                                                  .textController.text ==
                                              ''));
                                } else {
                                  return ((_model.accountNumberTextfieldModel
                                                  .textController.text ==
                                              '') ||
                                      (_model.accountNameTextfieldModel
                                                  .textController.text ==
                                              ''));
                                }
                              }(),
                              callback: () async {
                                var _shouldSetState = false;
                                await Future.wait([
                                  Future(() async {
                                    if ((_model.bankCode != null &&
                                            _model.bankCode != '') ||
                                        (widget.fundTransferType ==
                                            'INTRABANK') ||
                                        (_model.fundTransferType ==
                                            'OWN_ACCOUNT')) {
                                      _model.isBankInvalid = false;
                                      safeSetState(() {});
                                    } else {
                                      _model.isBankInvalid = true;
                                      safeSetState(() {});
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  }),
                                  Future(() async {
                                    if (((_model.checkboxValue == false) ||
                                            (_model.checkboxValue == null)) &&
                                        (_model.fundTransferType !=
                                            'OWN_ACCOUNT')) {
                                      _model.validateForm = true;
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        safeSetState(
                                            () => _model.validateForm = false);
                                        return;
                                      }
                                      _shouldSetState = true;
                                      if (_model.validateForm == false) {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    }
                                  }),
                                ]);
                                if (_model.fundTransferType == 'OWN_ACCOUNT'
                                    ? true
                                    : ((_model.isBankInvalid == false) &&
                                        _model.validateForm!)) {
                                  _model.validateAccountOutput =
                                      await WhitebankGroupAPIGroup
                                          .validateAccountCall
                                          .call(
                                    accountNumber:
                                        (_model.checkboxValue == true) ||
                                                (_model.checkboxValue != null)
                                            ? _model.selectedAccountNumber
                                            : _model.accountNumberTextfieldModel
                                                .textController.text,
                                    bankCode: () {
                                      if (widget.fundTransferType ==
                                          TransactionTypeKey.OWN_ACCOUNT.name) {
                                        return '';
                                      } else if (widget.fundTransferType ==
                                          'INTRABANK') {
                                        return 'BPIPHPHMXXX';
                                      } else {
                                        return _model.bankCode;
                                      }
                                    }(),
                                    transferType:
                                        (_model.checkboxValue == true) ||
                                                (_model.checkboxValue != null)
                                            ? 'OWN_ACCOUNT'
                                            : widget.fundTransferType,
                                    accessToken: currentAuthenticationToken,
                                  );

                                  _shouldSetState = true;
                                  if ((_model
                                          .validateAccountOutput?.succeeded ??
                                      true)) {
                                    if ((_model
                                            .validateAccountOutput?.succeeded ??
                                        true)) {
                                      FFAppState()
                                          .updateFundTransferiniatedResponseStruct(
                                        (e) => e
                                          ..destinationAccountName =
                                              _model.checkboxValue == true
                                                  ? _model.selectedAccountName
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
                                              ? _model.selectedAccountNumber
                                              : _model
                                                  .accountNumberTextfieldModel
                                                  .textController
                                                  .text
                                          ..destinationBankCode =
                                              _model.bankCode
                                          ..accountType = widget.accountType
                                          ..transferType =
                                              widget.fundTransferType,
                                      );
                                      safeSetState(() {});

                                      context.pushNamed(
                                          FundTransferAmountPageWidget
                                              .routeName);
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } else {
                                    _model.accountInvalid = true;
                                    safeSetState(() {});
                                  }
                                }
                                if (_shouldSetState) safeSetState(() {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if ((_model.isLoading == false) &&
                  responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                Align(
                  alignment: AlignmentDirectional(0.0, -0.14),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 680.5,
                          height: 546.58,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).whiteText,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Builder(
                            builder: (context) {
                              if (_model.transactionActionState) {
                                return Visibility(
                                  visible: responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Transfer Details',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .openSans(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral3,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  'Confirm amount before you transfer',
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
                                                                .neutral3,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Send Amount',
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
                                                              .neutral3,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Text(
                                                'PHP${functions.formatWithCommas(FFAppState().FundTransferRequest.amount)}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral3,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineMediumIsCustom,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'From',
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
                                                              .neutral3,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/pbb_logo.png',
                                                      width: 48.0,
                                                      height: 48.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Savings Account',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .neutral3,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .currentAccount
                                                              .accountNumber,
                                                          '00000000',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .appBarTitle,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Send to',
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
                                                              .neutral3,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/Logo.png',
                                                      width: 48.0,
                                                      height: 48.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFAppState()
                                                            .FundTransferRequest
                                                            .recipientAccountNumber,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .appBarTitle,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      Text(
                                                        'UnionBank',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .appBarTitle,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .FundTransferRequest
                                                              .recipientName,
                                                          'Khate',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .appBarTitle,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 4.0)),
                                                  ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                          Divider(
                                            thickness: 0.2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Transfer fees',
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
                                                              .neutral3,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  FFAppState()
                                                      .FundTransferRequest
                                                      .transferFee
                                                      .toString(),
                                                  '20',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral3,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineMediumIsCustom,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Note',
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
                                                              .neutral3,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                              Text(
                                                FFAppState()
                                                    .FundTransferRequest
                                                    .remarks,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeFamily,
                                                      color: Color(0xFF767676),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLargeIsCustom,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          ),
                                        ]
                                            .divide(SizedBox(height: 18.0))
                                            .addToStart(SizedBox(height: 24.0))
                                            .addToEnd(SizedBox(height: 24.0)),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 24.0, 24.0, 24.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 40.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFB2E6E6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Icon(
                                                    Icons.credit_card,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFAppState()
                                                        .currentAccount
                                                        .accountName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .neutral3,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMediumIsCustom,
                                                        ),
                                                  ),
                                                  Text(
                                                    'Balance: ${FFAppState().currentAccount.balance.toString()}',
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
                                                              .neutral3,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(SizedBox(width: 16.0)),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Change',
                                            icon: Icon(
                                              Icons.chevron_right,
                                              size: 16.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 30.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 8.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .whiteText,
                                              color:
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
                                                        .menuHover,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            showLoadingIndicator: false,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (widget.fundTransferType ==
                                                    FundTransfer
                                                        .fundTransferToOtherBank
                                                        .name)
                                                  SizedBox(
                                                    height: 40.0,
                                                    child: VerticalDivider(
                                                      thickness: 0.4,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                              ].divide(SizedBox(width: 16.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (widget.fundTransferType ==
                                          FundTransfer
                                              .fundTransferToOtherBank.name)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Builder(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  1.0, -1.0)
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
                                                                  SendViaComponentWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .formElementHover,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Icon(
                                                                Icons.person,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Send Money Via:',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .neutral3,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .titleMediumIsCustom,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Select Channel',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .neutral3,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 16.0)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 18.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    8.0),
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
                                                            _model.onSelectedSendMoneyVia =
                                                                true;
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                    .IsInstaPayChannelSelected =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: Container(
                                                            height: 167.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                _model.onSelectedSendMoneyVia
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary
                                                                    : Colors
                                                                        .white,
                                                                Colors.white,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  _model.onSelectedSendMoneyVia
                                                                      ? Color(
                                                                          0xFF00AAA5)
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                  Color(
                                                                      0xFF00AAA5),
                                                                ),
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
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
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/i6r9f6.png',
                                                                      width:
                                                                          70.0,
                                                                      height:
                                                                          40.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '• Real-time fund transfer (₱50k limit per transaction)\n• Available 24/7, including weekends/holidays\n• Fee: ₱10–₱25 depending on bank\n• Best for quick payments and small transfers',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    8.0),
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
                                                            _model.onSelectedSendMoneyVia =
                                                                false;
                                                            safeSetState(() {});
                                                            FFAppState()
                                                                    .IsInstaPayChannelSelected =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Container(
                                                            height: 167.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                !_model.onSelectedSendMoneyVia
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary
                                                                    : Colors
                                                                        .white,
                                                                Colors.white,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  !_model.onSelectedSendMoneyVia
                                                                      ? Color(
                                                                          0xFF00AAA5)
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                  Color(
                                                                      0xFFDAF8FF),
                                                                ),
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/GKV137_PESONet-logobase.net.png',
                                                                              width: 70.0,
                                                                              height: 40.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '• Batch-processed (same-day or next-day credit)\n• Higher limits, ideal for payroll or large payments\n• Follows bank cut-off times and business days\n• Usually lower fees than InstaPay',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                                ),
                                                                          ),
                                                                        ],
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
                                                  ].divide(
                                                      SizedBox(width: 20.0)),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 10.0)),
                                          ),
                                        ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 40.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .formElementHover,
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      'https://www.clipartmax.com/png/middle/182-1828676_person-icons-person-icon.png',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                ),
                                              ),
                                              Text(
                                                'To:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .neutral3,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMediumIsCustom,
                                                    ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Builder(
                                                    builder: (context) {
                                                      if (FFAppState()
                                                                  .FundTransferRequest
                                                                  .recipientAccountNumber !=
                                                              '') {
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .FundTransferRequest
                                                                    .recipientName,
                                                                'Khatea Bautista',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .FundTransferRequest
                                                                    .recipientBankCode,
                                                                'UnionBank of the Philippines',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                FFAppState()
                                                                    .FundTransferRequest
                                                                    .recipientAccountNumber,
                                                                '1292 7328 9213',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 4.0)),
                                                        );
                                                      } else {
                                                        return Text(
                                                          'Select recipient',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .neutral3,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ].divide(SizedBox(width: 14.0)),
                                          ),
                                          if (FFAppState()
                                                      .FundTransferRequest
                                                      .recipientAccountNumber !=
                                                  '')
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
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
                                                                    1.0, -1.0)
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
                                                                    SendMoneyComponentWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .mode_edit_outline,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 18.0,
                                                        ),
                                                        Text(
                                                          'Edit',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 16.0,
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
                                                      ].divide(SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Transfer Fee: PHP 20',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(height: 24.0)),
                                            ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
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
                                                                  1.0, -1.0)
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
                                                              SendMoneyComponentWidget(
                                                            fundTransferType:
                                                                widget
                                                                    .fundTransferType,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              text: 'Add Recipient',
                                              icon: Icon(
                                                Icons.chevron_right,
                                                size: 16.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 30.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 8.0, 16.0, 8.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .whiteText,
                                                color:
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .menuHover,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              showLoadingIndicator: false,
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12.0)),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.safePop();
                                  _model.onSelectedSendMoneyVia = false;
                                  safeSetState(() {});
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  width: 260.0,
                                  height: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFC6D1D1),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .whiteText,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleMediumIsCustom,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                showLoadingIndicator: false,
                              ),
                            ),
                            if (_model.transactionActionState)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      var _shouldSetState = false;
                                      _model.otpBlock = await action_blocks.otp(
                                        context,
                                        checkpoint: 'OTP',
                                        phoneNumber:
                                            currentUserData?.user.mobileNumber,
                                      );
                                      _shouldSetState = true;
                                      if (_model.otpBlock == 'false') {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }

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
                                                    OTPVerificationComponentWidget(
                                                  callbackResendOTP:
                                                      () async {},
                                                  callbackClose: () async {},
                                                  callbackSuccess: () async {},
                                                  callbackConfirm: () async {},
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );

                                      _model.transactionPayload = null;
                                      safeSetState(() {});
                                      if (_shouldSetState) safeSetState(() {});
                                    },
                                    text: 'Confirm Before Submitting',
                                    options: FFButtonOptions(
                                      width: 400.2,
                                      height: 50.0,
                                      padding: EdgeInsets.all(8.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleMediumIsCustom,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    showLoadingIndicator: false,
                                  ).animateOnActionTrigger(
                                      animationsMap[
                                          'buttonOnActionTriggerAnimation']!,
                                      hasBeenTriggered: hasButtonTriggered),
                                ),
                              ),
                            if (!_model.transactionActionState)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.referenceNumber13v2 =
                                        await actions.genReferenceNumber(
                                      FFAppState().IsInstaPayChannelSelected,
                                    );
                                    _model.transactionActionState = true;
                                    safeSetState(() {});

                                    safeSetState(() {});
                                  },
                                  text: 'Continue',
                                  options: FFButtonOptions(
                                    width: 400.2,
                                    height: 50.0,
                                    padding: EdgeInsets.all(8.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .whiteText,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleMediumIsCustom,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                          ].divide(SizedBox(width: 20.0)),
                        ),
                      ]
                          .divide(SizedBox(height: 24.0))
                          .addToStart(SizedBox(height: 24.0))
                          .addToEnd(SizedBox(height: 24.0)),
                    ),
                  ),
                ),
              if (_model.isLoading)
                wrapWithModel(
                  model: _model.loadingStateComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: LoadingStateComponentWidget(
                    isFinished: _model.isLoading,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
