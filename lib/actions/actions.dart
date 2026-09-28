import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

Future<String?> verifyAccountNumber(
  BuildContext context, {
  String? accountNumber,
  String? dateofBirth,
  String? accessToken,
}) async {
  ApiCallResponse? validateAccountResponse;

  validateAccountResponse = await PbbGroup.validateAccountNumberCall.call(
    accountNumber: accountNumber,
    dateOfBirth: dateofBirth,
    oAuthaccessToken: accessToken,
  );

  if (!(validateAccountResponse.succeeded ?? true)) {
    return null;
  }
  return PbbGroup.validateAccountNumberCall.cIFNo(
    (validateAccountResponse.jsonBody ?? ''),
  );
}

Future<CIFDetailsStruct?> verifyCIFNumberBlock(
  BuildContext context, {
  String? cifNumber,
  String? dateOfBirth,
  String? accessToken,
}) async {
  ApiCallResponse? validateCIFResponse;

  validateCIFResponse = await PbbGroup.validateCIFCall.call(
    cifNo: cifNumber,
    dateOfBirth: dateOfBirth,
    oAuthaccessToken: accessToken,
  );

  if ((validateCIFResponse.succeeded ?? true)) {
    return PbbGroup.validateCIFCall.cIFDetails(
      (validateCIFResponse.jsonBody ?? ''),
    );
  }

  return null;
}

Future<String?> otp(
  BuildContext context, {
  required String? checkpoint,
  String? pin,
  required String? phoneNumber,
  String? birthDate,
  String? message,
}) async {
  ApiCallResponse? authToken;
  ApiCallResponse? otp;
  ApiCallResponse? sendOTPResponse;

  authToken = await PbbGroup.oauthTokenCall.call(
    channelCode: 'CBXR',
    checkPoint: checkpoint,
    grantType: 'password',
    originatingChannelCode: 'CBXR',
  );

  otp = await SupabaseGroup.getSMSCheckpointCall.call(
    type: checkpoint,
    phone: phoneNumber,
    validity: '5',
    accessToken: FFDevEnvironmentValues().ANONKEY,
    pin: pin,
    message: message,
  );

  if ((otp.succeeded ?? true)) {
    sendOTPResponse = await PbbGroup.otpCall.call(
      oAuthaccessToken: PbbGroup.oauthTokenCall.accesstoken(
        (authToken.jsonBody ?? ''),
      ),
      checkpointJson: SupabaseGroup.getSMSCheckpointCall.body(
        (otp.jsonBody ?? ''),
      ),
      checkpointType: checkpoint,
    );

    if (PbbGroup.otpCall.statusCode(
          (sendOTPResponse.jsonBody ?? ''),
        ) !=
        '200') {
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
              child: CustomInformationalDialogWidget(
                message: PbbGroup.otpCall.statusMessage(
                  (sendOTPResponse?.jsonBody ?? ''),
                )!,
                primaryButtonTitle: 'Try Again',
                primaryButtonAction: () async {
                  Navigator.pop(context);
                },
                secondaryButtonAction: () async {},
              ),
            ),
          );
        },
      );

      return 'false';
    }
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
            child: CustomInformationalDialogWidget(
              message: SupabaseGroup.getSMSCheckpointCall.errorMessageMaxOTP(
                            (otp?.jsonBody ?? ''),
                          ) !=
                          null &&
                      SupabaseGroup.getSMSCheckpointCall.errorMessageMaxOTP(
                            (otp?.jsonBody ?? ''),
                          ) !=
                          ''
                  ? SupabaseGroup.getSMSCheckpointCall.errorMessageMaxOTP(
                      (otp?.jsonBody ?? ''),
                    )!
                  : 'We’re having trouble reaching our server. Please check your internet connection or try again in a moment.',
              primaryButtonTitle: 'Try Again',
              primaryButtonAction: () async {
                Navigator.pop(context);
              },
              secondaryButtonAction: () async {},
            ),
          ),
        );
      },
    );

    return 'false';
  }

  return null;
}

Future<String?> fms(
  BuildContext context, {
  FMHeaderStruct? fmHeader,
  FMSessionStruct? fmSession,
  TransactionCheckpointDetailsStruct? fmTransaction,
  DeviceInfoStruct? fmDeviceInfo,
}) async {
  String? fmsTokenOutput;
  ApiCallResponse? apiResultht2;

  fmsTokenOutput = await action_blocks.oauthToken(
    context,
    channelCode: 'cbxr',
    checkPoint: 'transaction',
    grantType: 'password',
    originatingChannelCode: 'cbxr',
  );
  apiResultht2 = await PbbGroup.fMSFraudCheckCall.call(
    requestBodyJson: <String, dynamic>{
      'FMHeader': fmHeader?.toMap(),
      'FMSession': fmSession?.toMap(),
      'TRANSACTION': fmTransaction?.toMap(),
      'DeviceInfo': fmDeviceInfo?.toMap(),
    },
    oAuthaccessToken: fmsTokenOutput,
  );

  if (!(apiResultht2.succeeded ?? true)) {
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
            child: CustomInformationalDialogWidget(
              message: 'Something went wrong. Please try again later.',
              primaryButtonTitle: 'Try Again',
              primaryButtonAction: () async {
                Navigator.pop(context);
              },
              secondaryButtonAction: () async {},
            ),
          ),
        );
      },
    );

    return 'error';
  }

  return null;
}

Future<String?> oauthToken(
  BuildContext context, {
  String? channelCode,
  String? checkPoint,
  String? grantType,
  String? originatingChannelCode,
  String? baseURL,
}) async {
  ApiCallResponse? oauthtoken;

  oauthtoken = await PbbGroup.oauthTokenCall.call(
    channelCode: channelCode,
    checkPoint: checkPoint,
    grantType: grantType,
    originatingChannelCode: originatingChannelCode,
    baseURL: baseURL,
  );

  if ((oauthtoken.succeeded ?? true)) {
    return PbbGroup.oauthTokenCall.accesstoken(
      (oauthtoken.jsonBody ?? ''),
    );
  }

  await showDialog(
    context: context,
    builder: (dialogContext) {
      return Dialog(
        elevation: 0,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        alignment:
            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
        child: WebViewAware(
          child: CustomInformationalDialogWidget(
            message: 'Something went wrong',
            primaryButtonTitle: 'Try Again',
            primaryButtonAction: () async {
              Navigator.pop(context);
            },
            secondaryButtonAction: () async {},
          ),
        ),
      );
    },
  );

  return 'error';
}

Future<String?> email(
  BuildContext context, {
  EmailDataTypeStruct? emailDatatype,
}) async {
  String? oauthtoken;
  ApiCallResponse? apiResultgcp;

  oauthtoken = await action_blocks.oauthToken(
    context,
    channelCode: 'CBXR',
    checkPoint: 'EMAIL',
    grantType: 'password',
    originatingChannelCode: 'WHITECLOAK',
  );
  if (oauthtoken == 'error') {
    return null;
  }

  apiResultgcp = await PbbGroup.emailCall.call(
    requestHeaderJson: emailDatatype?.header.toMap(),
    requestBodyJson: emailDatatype?.body.toMap(),
    oAuthaccessToken: oauthtoken,
  );

  if (!(apiResultgcp.succeeded ?? true)) {
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
            child: CustomInformationalDialogWidget(
              message: 'Something went wrong sending email notification',
              primaryButtonTitle: 'Close',
              primaryButtonAction: () async {
                Navigator.pop(context);
              },
              secondaryButtonAction: () async {},
            ),
          ),
        );
      },
    );

    return 'error';
  }

  return null;
}

Future<List<DepositAccountsStruct>?> getDepositAccounts(
  BuildContext context, {
  required String? cifNumber,
}) async {
  ApiCallResponse? depositAccountsResponse;

  depositAccountsResponse = await PbbGroup.termDepositAccountDetailsCall.call(
    cifNo: cifNumber,
  );

  if ((depositAccountsResponse.succeeded ?? true)) {
    return DepositAccountsResponseStruct.maybeFromMap(
            (depositAccountsResponse.jsonBody ?? ''))
        ?.accounts;
  }

  await showDialog(
    context: context,
    builder: (dialogContext) {
      return Dialog(
        elevation: 0,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        alignment:
            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
        child: WebViewAware(
          child: CustomInformationalDialogWidget(
            message: 'Unable to return deposit accounts.',
            primaryButtonTitle: 'OK',
            primaryButtonAction: () async {
              Navigator.pop(context);
            },
            secondaryButtonAction: () async {},
          ),
        ),
      );
    },
  );

  return null;
}

Future<List<StatementTransactionModelStruct>?> getTermDepositHistory(
  BuildContext context, {
  required String? accountNumber,
}) async {
  ApiCallResponse? termDepositHistoryResponse;

  termDepositHistoryResponse = await PbbGroup.termDepositHistoryCall.call(
    accountNumber: accountNumber,
  );

  if ((termDepositHistoryResponse.succeeded ?? true)) {
    return TermDepositHistoryResponseStruct.maybeFromMap(
            (termDepositHistoryResponse.jsonBody ?? ''))
        ?.depositTransactions;
  }

  return null;
}

Future<List<DepositAccountModelStruct>?> getDepositDetails(
  BuildContext context, {
  required String? cifNumber,
}) async {
  ApiCallResponse? depositDetailsResponse;

  depositDetailsResponse = await PbbGroup.termDepositFetchDetailsCall.call(
    cifNo: cifNumber,
  );

  if ((depositDetailsResponse.succeeded ?? true)) {
    return TermDepositListResponseStruct.maybeFromMap(
            (depositDetailsResponse.jsonBody ?? ''))
        ?.depositAccounts;
  }

  return null;
}

Future globalFlowCoordinator(BuildContext context) async {
  if (true == true) {
    context.pushNamed(
      BillsPaymentTransactionSummaryPageWidget.routeName,
      queryParameters: {
        'billsHeader': serializeParam(
          BillsHeaderStruct(),
          ParamType.DataStruct,
        ),
        'billsBody': serializeParam(
          BillsBodyStruct(),
          ParamType.DataStruct,
        ),
      }.withoutNulls,
    );
  } else if (true == true) {
    context.pushNamed(TransferMoneySuccessfulWidget.routeName);
  } else if (true == true) {
  } else {
    context.pushNamed(
      ForgotPasswordPageWidget.routeName,
      extra: <String, dynamic>{
        '__transition_info__': TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
          duration: Duration(milliseconds: 0),
        ),
      },
    );
  }
}

Future<String?> getUserDeviceDetails(
  BuildContext context, {
  required String? username,
  DeviceDataStruct? deviceDetails,
  String? token,
}) async {
  ApiCallResponse? output;
  ApiCallResponse? user;
  ApiCallResponse? apiResultk5o;

  if (username != null && username != '') {
    output = await SupabaseGroup.generateRefreshTokenCall.call(
      token: token,
      deviceId: deviceDetails?.deviceId,
      accessToken: FFDevEnvironmentValues().ANONKEY,
    );

    FFAppState().jsonv2 = (output.jsonBody ?? '');
    FFAppState().update(() {});
    user = await SupabaseGroup.getUserCall.call(
      userName: username,
      accessToken:
          RefreshTokenDataTypeStruct.maybeFromMap((output.jsonBody ?? ''))
              ?.accessToken,
    );

    FFAppState().token =
        RefreshTokenDataTypeStruct.maybeFromMap((output.jsonBody ?? ''))!
            .accessToken;
    GoRouter.of(context).prepareAuthEvent();
    await authManager.signIn(
      authenticationToken:
          RefreshTokenDataTypeStruct.maybeFromMap((output.jsonBody ?? ''))
              ?.accessToken,
      authUid: SupabaseGroup.getUserCall
          .id(
            (user.jsonBody ?? ''),
          )
          ?.toString(),
      userData: AuthenticatedUserStruct(
        accessToken: '',
        refreshToken: '',
        expiresIn: 0,
        user: UserV3Struct(),
      ),
    );
    apiResultk5o = await SupabaseGroup.getTrustedDeviceByUserIDCall.call(
      userId: SupabaseGroup.getUserCall
          .id(
            (user.jsonBody ?? ''),
          )
          ?.toString(),
      accessToken:
          RefreshTokenDataTypeStruct.maybeFromMap((output.jsonBody ?? ''))
              ?.accessToken,
    );

    return SupabaseGroup.generateRefreshTokenCall.accesstoken(
      (output.jsonBody ?? ''),
    );
  }

  return null;
}

/// refreshTokenV2
Future refreshTokenActionBlock(BuildContext context) async {
  RefreshTokenResponseStruct? refreshTokenV2Response;

  refreshTokenV2Response = await actions.refreshTokenV2();
  await authManager.updateAuthUserData(
    authenticationToken: refreshTokenV2Response?.accessToken,
    refreshToken: currentAuthRefreshToken,
    tokenExpiration: currentAuthTokenExpiration,
    authUid: currentUserUid,
    userData: AuthenticatedUserStruct(
      accessToken: refreshTokenV2Response?.accessToken,
      refreshToken: currentAuthRefreshToken,
      expiresIn: refreshTokenV2Response?.expiresIn,
      user: currentUserData?.user,
    ),
  );
}

Future postTransaction(
  BuildContext context, {
  int? accountID,
  double? amount,
  double? runningbalance,
  String? referencenumber,
  String? description,
  String? transactionmethod,
  String? transactioncategeory,
  String? transactiontype,
  String? payee,
  int? invoiceID,
  String? notes,
  int? userID,
  FundTransferPayloadStruct? transactionPayload,
}) async {}

Future<PaymentIniatedModelStruct?> sendToOthersBlock(
  BuildContext context, {
  required String? transferType,
  required String? sourceAccountNumber,
  required String? destinationAccountNumber,
  required String? destinationBankCode,
  required double? amount,
  required String? currency,
  String? remarks,
}) async {
  ApiCallResponse? initiateFundTransfer;

  initiateFundTransfer =
      await WhitebankGroupAPIGroup.initiateFundTransferCall.call(
    sourceAccountNumber: sourceAccountNumber,
    destinationAccountNumber: destinationAccountNumber,
    destinationBankCode: destinationBankCode,
    amount: amount,
    currency: currency,
    remarks: remarks,
    transferTypeE: transferType,
    accessToken: currentAuthenticationToken,
  );

  if ((initiateFundTransfer.succeeded ?? true)) {
    return PaymentIniatedModelStruct.maybeFromMap(
        (initiateFundTransfer.jsonBody ?? ''));
  }

  await showDialog(
    context: context,
    builder: (dialogContext) {
      return Dialog(
        elevation: 0,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        alignment:
            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
        child: WebViewAware(
          child: CustomInformationalDialogWidget(
            message: getJsonField(
              (initiateFundTransfer?.jsonBody ?? ''),
              r'''$[:].message''',
            ).toString(),
            primaryButtonTitle: 'Dismiss',
            primaryButtonAction: () async {
              Navigator.pop(context);
            },
            secondaryButtonAction: () async {},
          ),
        ),
      );
    },
  );

  return null;
}

Future<String?> sendToOwn(
  BuildContext context, {
  PGSWithinTransferBodyStruct? pGSWithinTransferBody,
  PGSWithinTransferHeaderStruct? pGSWithinTransferHeader,
}) async {
  return null;
}

/// Check if should refresh token first.
Future refreshSessionActionBlock(BuildContext context) async {
  await actions.refreshSession(
    context,
  );
}

/// to update the FeatureFlagsAppState.
Future getFeatureFlags(
  BuildContext context, {
  /// retail, corporate
  String? customerType,
}) async {
  ApiCallResponse? getFeatureFlagsResponse;

  getFeatureFlagsResponse =
      await WhitebankGroupAPIGroup.getAllFeatureFlagsCall.call(
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    customerType: customerType,
  );

  if ((getFeatureFlagsResponse.succeeded ?? true)) {
    FFAppState().FeatureFlagsAppstate = WBFlagsStruct.maybeFromMap(
        WhitebankGroupAPIGroup.getAllFeatureFlagsCall.flags(
      (getFeatureFlagsResponse.jsonBody ?? ''),
    ))!;
    FFAppState().update(() {});
  } else {
    return;
  }
}

/// Deletes existing private and public keys created by the previous user.
Future checkUsername(
  BuildContext context, {
  required String? username,
}) async {
  String? retrivedUsername;

  // Retrieve wb_username
  retrivedUsername = await actions.retrieveStoredData(
    FFAppConstants.WBUsernameKey,
  );
  if (retrivedUsername != null && retrivedUsername != '') {
    if (username == retrivedUsername) {
      return;
    }

    await actions.storeDataLocally(
      FFAppConstants.WBUsernameKey,
      username!,
    );
    // Delete device_public_key
    await actions.deleteStoredData(
      'device_public_key',
    );
    // Delete device_private_key
    await actions.deleteStoredData(
      'device_private_key',
    );
  } else {
    // Store wb_username
    await actions.storeDataLocally(
      FFAppConstants.WBUsernameKey,
      username!,
    );
  }
}

Future getAccountBalanceActionBlock(
  BuildContext context, {
  String? accountNumber,
}) async {
  ApiCallResponse? apiResultz04;

  apiResultz04 =
      await WhitebankGroupAPIGroup.getBalanceByAccountNumberCall.call(
    accountNumber: accountNumber,
    accessToken: currentAuthenticationToken,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
  );

  if ((apiResultz04.succeeded ?? true)) {
    FFAppState().accountBalance = functions.intToDouble(getJsonField(
      (apiResultz04.jsonBody ?? ''),
      r'''$.availableBalance''',
    ))!;
    FFAppState().update(() {});
  }
}

Future cancelTransactionBlock(BuildContext context) async {
  ApiCallResponse? cancelTransactionResponse;

  cancelTransactionResponse =
      await WhitebankGroupAPIGroup.cancelTransactionCall.call(
    id: FFAppState().FundTransferiniatedResponse.id,
    accessToken: currentAuthenticationToken,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
  );
}

/// For BP, FT, etc..
///
/// sample
/// {
///   "transactionType": "fund_transfer",
///   "transactionId": "550e8400-e29b-41d4-a716-446655440000",
///   "amount": 1500.00,
///   "currency": "PHP",
///   "context": "****5678"     // account number
/// }
Future<CreateConfirmSigningPKResultStruct> createConfirmSigningPKPayload(
  BuildContext context, {
  required WBStepupAuthOptionsPayloadStruct? stepupOptionsPayload,
}) async {
  ApiCallResponse? stepupAuthOptionsResponse;
  dynamic pKStepupVerifyPayload;
  ApiCallResponse? pKStepupVerifyAuthResponse;

  stepupAuthOptionsResponse =
      await WhitebankGroupAPIGroup.retailGenStepupAuthOptionsJsonBodyCall.call(
    requestBodyJson: stepupOptionsPayload?.toMap(),
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    accessToken: currentAuthenticationToken,
  );

  if ((stepupAuthOptionsResponse.succeeded ?? true)) {
    pKStepupVerifyPayload = await actions.passkeyCreateStepupVerifyPayload(
      (stepupAuthOptionsResponse.jsonBody ?? ''),
      getJsonField(
        (stepupAuthOptionsResponse.jsonBody ?? ''),
        r'''$.transactionHash''',
      ).toString(),
    );
    if (getJsonField(
          pKStepupVerifyPayload,
          r'''$.data''',
        ) !=
        null) {
      pKStepupVerifyAuthResponse =
          await WhitebankGroupAPIGroup.retailVerifyStepupAuthCall.call(
        payloadJson: getJsonField(
          pKStepupVerifyPayload,
          r'''$.data''',
        ),
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        accessToken: currentAuthenticationToken,
      );

      if (((stepupOptionsPayload?.transactionType ==
                  PasskeyTransactionType.scheduled_bills_payment.name) ||
              (stepupOptionsPayload?.transactionType ==
                  PasskeyTransactionType.scheduled_transfer.name)) &&
          (pKStepupVerifyAuthResponse.succeeded ?? true)) {
        return CreateConfirmSigningPKResultStruct(
          success: true,
          data: WBConfirmSigningPasskeyBodyStruct(
            method: SigningAvailableMethods.passkey.name,
            stepupToken:
                WhitebankGroupAPIGroup.retailVerifyStepupAuthCall.stepupToken(
              (pKStepupVerifyAuthResponse.jsonBody ?? ''),
            ),
            transactionHash: getJsonField(
              (stepupAuthOptionsResponse.jsonBody ?? ''),
              r'''$.transactionHash''',
            ).toString(),
            operationId: stepupOptionsPayload?.transactionId,
          ),
        );
      } else if ((stepupOptionsPayload?.transactionType ==
              PasskeyTransactionType.time_deposit.name) &&
          (pKStepupVerifyAuthResponse.succeeded ?? true)) {
        return CreateConfirmSigningPKResultStruct(
          success: true,
          data: WBConfirmSigningPasskeyBodyStruct(
            method: SigningAvailableMethods.passkey.name,
            stepupToken:
                WhitebankGroupAPIGroup.retailVerifyStepupAuthCall.stepupToken(
              (pKStepupVerifyAuthResponse.jsonBody ?? ''),
            ),
            transactionHash: getJsonField(
              (stepupAuthOptionsResponse.jsonBody ?? ''),
              r'''$.transactionHash''',
            ).toString(),
            openingId: stepupOptionsPayload?.transactionId,
          ),
        );
      } else if ((pKStepupVerifyAuthResponse.succeeded ?? true)) {
        return CreateConfirmSigningPKResultStruct(
          success: true,
          data: WBConfirmSigningPasskeyBodyStruct(
            method: SigningAvailableMethods.passkey.name,
            stepupToken:
                WhitebankGroupAPIGroup.retailVerifyStepupAuthCall.stepupToken(
              (pKStepupVerifyAuthResponse.jsonBody ?? ''),
            ),
            transactionHash: getJsonField(
              (stepupAuthOptionsResponse.jsonBody ?? ''),
              r'''$.transactionHash''',
            ).toString(),
          ),
        );
      }

      return CreateConfirmSigningPKResultStruct(
        success: false,
        errorMessage: WhitebankGroupAPIGroup.retailVerifyStepupAuthCall.detail(
          (pKStepupVerifyAuthResponse.jsonBody ?? ''),
        ),
      );
    } else {
      return CreateConfirmSigningPKResultStruct(
        success: false,
        errorMessage: getJsonField(
          pKStepupVerifyPayload,
          r'''$.error''',
        ).toString(),
      );
    }
  } else {
    return CreateConfirmSigningPKResultStruct(
      success: false,
      errorMessage:
          WhitebankGroupAPIGroup.retailGenStepupAuthOptionsJsonBodyCall.detail(
        (stepupAuthOptionsResponse.jsonBody ?? ''),
      ),
    );
  }
}

Future<ConfirmActionBlockModelStruct> qrConfirmSigningBlock(
  BuildContext context, {
  required DeviceSignaturePayloadModelStruct? signingPayload,
  required String? signature,

  /// qr payment init ID
  required String? transacitonId,
  required MpinUsage? usage,
}) async {
  ApiCallResponse? mpinBioSigningResponse;
  ApiCallResponse? qRSigningChallengeResponse;

  mpinBioSigningResponse =
      await WhitebankGroupAPIGroup.retailQRPaymentMpinBioSigningCall.call(
    id: transacitonId,
    method: 'mpin',
    deviceId: FFAppState().DeviceDetails.deviceId,
    challenge: signingPayload?.challenge,
    signature: signature,
    mpin: signingPayload?.mpin,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    accessToken: currentAuthenticationToken,
    fmsSessionId: currentUserData?.fmsSessionId,
  );

  if ((mpinBioSigningResponse.succeeded ?? true)) {
    return ConfirmActionBlockModelStruct(
      isSuccess: true,
    );
  }
  if (WhitebankGroupAPIGroup.retailQRPaymentMpinBioSigningCall.error(
        (mpinBioSigningResponse.jsonBody ?? ''),
      ) ==
      ResponseStatus.INVALID_MPIN.name) {
    qRSigningChallengeResponse =
        await WhitebankGroupAPIGroup.retailQRPaymentSigningChallengeCall.call(
      id: transacitonId,
      deviceId: FFAppState().DeviceDetails.deviceId,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
      accessToken: currentAuthenticationToken,
    );

    if ((qRSigningChallengeResponse.succeeded ?? true)) {
      return ConfirmActionBlockModelStruct(
        challenge: WhitebankGroupAPIGroup.retailQRPaymentSigningChallengeCall
            .challenge(
          (qRSigningChallengeResponse.jsonBody ?? ''),
        ),
        errorMessage: '${valueOrDefault<String>(
          getJsonField(
            (mpinBioSigningResponse.jsonBody ?? ''),
            r'''$.remainingAttempts''',
          )?.toString(),
          '0',
        )} attempts remaining.',
      );
    }

    return ConfirmActionBlockModelStruct(
      isSuccess: false,
    );
  } else if (WhitebankGroupAPIGroup.retailQRPaymentMpinBioSigningCall.error(
        (mpinBioSigningResponse.jsonBody ?? ''),
      ) ==
      'MPIN_LOCKED') {
    return ConfirmActionBlockModelStruct(
      isSuccess: false,
      isLocked: true,
      lockedUntil: getJsonField(
        (mpinBioSigningResponse.jsonBody ?? ''),
        r'''$.lockedUntil''',
      ).toString(),
    );
  } else {
    return ConfirmActionBlockModelStruct(
      isSuccess: false,
    );
  }
}

Future<ConfirmActionBlockModelStruct?> fTScheduleConfirmBlock(
  BuildContext context, {
  required String? mpin,
  required String? signature,
  required String? challenge,
  SigningAvailableMethods? method,
}) async {
  ApiCallResponse? apiResultpyx;
  ApiCallResponse? apiResultrj5;

  apiResultpyx =
      await WhitebankGroupAPIGroup.retailScheduledTransferConfirmCall.call(
    mpin: mpin,
    signature: signature,
    challenge: challenge,
    deviceId: FFAppState().DeviceDetails.deviceId,
    method: method?.name,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    accessToken: currentAuthenticationToken,
    fmsSessionId: currentUserData?.fmsSessionId,
  );

  if ((apiResultpyx.succeeded ?? true)) {
    FFAppState().updateFundTransferiniatedResponseStruct(
      (e) => e
        ..nextRunAt = getJsonField(
          (apiResultpyx?.jsonBody ?? ''),
          r'''$.nextRunAt''',
        ).toString(),
    );
    return ConfirmActionBlockModelStruct(
      isSuccess: true,
    );
  } else {
    if (WhitebankGroupAPIGroup.retailScheduledTransferConfirmCall.errorName(
          (apiResultpyx.jsonBody ?? ''),
        ) ==
        'INVALID_MPIN') {
      apiResultrj5 = await WhitebankGroupAPIGroup
          .scheduleTransferSigningChallengeCall
          .call(
        transferType: FFAppState().FundTransferiniatedResponse.transferType,
        sourceAccountNumber:
            FFAppState().FundTransferiniatedResponse.sourceAccountNumber,
        destinationAccountNumber:
            FFAppState().FundTransferiniatedResponse.destinationAccountNumber,
        destinationBankCode:
            FFAppState().FundTransferiniatedResponse.destinationBankCode,
        amount: FFAppState().FundTransferiniatedResponse.totalAmount,
        currency: 'PHP',
        remarks: FFAppState().FundTransferiniatedResponse.remarks,
        accessToken: currentAuthenticationToken,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        frequency: FFAppState().FundTransferiniatedResponse.frequency != null
            ? FFAppState().FundTransferiniatedResponse.frequency?.name
            : TransactionScheduleType.DAILY.name,
        startDate: FFAppState().FundTransferiniatedResponse.startDate,
        endCondition: FFAppState().FundTransferiniatedResponse.endCondition,
        endDate: FFAppState().FundTransferiniatedResponse.endDate,
        maxOccurrences: FFAppState().FundTransferiniatedResponse.maxOccurrences,
        deviceId: FFAppState().DeviceDetails.deviceId,
        destinationAccountHolderName:
            FFAppState().FundTransferiniatedResponse.destinationAccountName,
      );

      if ((apiResultrj5.succeeded ?? true)) {
        return ConfirmActionBlockModelStruct(
          challenge: SigningChallengeModelStruct.maybeFromMap(
                  (apiResultrj5.jsonBody ?? ''))
              ?.challenge,
          errorMessage: '${valueOrDefault<String>(
            WhitebankGroupAPIGroup.retailScheduledTransferConfirmCall.title(
              (apiResultpyx.jsonBody ?? ''),
            ),
            'Something went wrong',
          )}. Remaining Attempts: ${valueOrDefault<String>(
            getJsonField(
              (apiResultpyx.jsonBody ?? ''),
              r'''$.remainingAttempts''',
            )?.toString(),
            'Something went wrong',
          )}',
        );
      }

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

      return ConfirmActionBlockModelStruct(
        isSuccess: false,
      );
    } else if (WhitebankGroupAPIGroup.retailScheduledTransferConfirmCall
            .errorName(
          (apiResultpyx.jsonBody ?? ''),
        ) ==
        'MPIN_LOCKED') {
      return ConfirmActionBlockModelStruct(
        isSuccess: false,
        isLocked: true,
        lockedUntil: getJsonField(
          (apiResultpyx.jsonBody ?? ''),
          r'''$.lockedUntil''',
        ).toString(),
      );
    } else {
      return ConfirmActionBlockModelStruct(
        isSuccess: false,
      );
    }
  }
}

Future<ConfirmActionBlockModelStruct> signingConfirmBlock(
  BuildContext context, {
  required String? method,
  required String? deviceID,
  required String? challenge,
  required String? signature,
  required String? mpin,
  String? stepupToken,
  String? transactionHash,
  String? credentialId,
  dynamic authenticatorResponse,
}) async {
  ApiCallResponse? apiResult8th;
  ApiCallResponse? retailTransfersSigningChallengeOutput;

  apiResult8th =
      await WhitebankGroupAPIGroup.retailTransfersConfirmSigningCall.call(
    id: FFAppState().FundTransferiniatedResponse.id,
    method: method,
    deviceId: FFAppState().DeviceDetails.deviceId,
    challenge: challenge,
    signature: signature,
    mpin: mpin,
    accessToken: currentAuthenticationToken,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    stepupToken: stepupToken,
    transactionHash: transactionHash,
    credentialId: credentialId,
    authenticatorResponseJson: authenticatorResponse,
    fmsSessionId: currentUserData?.fmsSessionId,
  );

  if ((apiResult8th.succeeded ?? true) == true) {
    FFAppState().updateFundTransferiniatedResponseStruct(
      (e) => e
        ..referenceNumber = getJsonField(
          (apiResult8th?.jsonBody ?? ''),
          r'''$.referenceNumber''',
        ).toString(),
    );
    return ConfirmActionBlockModelStruct(
      isSuccess: true,
    );
  } else {
    if ((WhitebankGroupAPIGroup.retailTransfersConfirmSigningCall.error(
              (apiResult8th.jsonBody ?? ''),
            ) ==
            'INVALID_MPIN') ||
        (WhitebankGroupAPIGroup.retailTransfersConfirmSigningCall.error(
              (apiResult8th.jsonBody ?? ''),
            ) ==
            'INVALID_CHALLENGE')) {
      retailTransfersSigningChallengeOutput =
          await WhitebankGroupAPIGroup.retailTransfersSigningChallengeCall.call(
        id: FFAppState().FundTransferiniatedResponse.id,
        deviceId: FFAppState().DeviceDetails.deviceId,
        accessToken: currentAuthenticationToken,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
      );

      if ((retailTransfersSigningChallengeOutput.succeeded ?? true)) {
        return ConfirmActionBlockModelStruct(
          isSuccess: false,
          challenge: getJsonField(
            (retailTransfersSigningChallengeOutput.jsonBody ?? ''),
            r'''$.challenge''',
          ).toString(),
          errorMessage: '${valueOrDefault<String>(
            WhitebankGroupAPIGroup.retailTransfersConfirmSigningCall.title(
              (apiResult8th.jsonBody ?? ''),
            ),
            'Something went wrong',
          )}. Remaining Attempts: ${valueOrDefault<String>(
            getJsonField(
              (apiResult8th.jsonBody ?? ''),
              r'''$.remainingAttempts''',
            )?.toString(),
            'Something went wrong',
          )}',
        );
      }

      return ConfirmActionBlockModelStruct(
        isSuccess: false,
      );
    } else if (WhitebankGroupAPIGroup.retailTransfersConfirmSigningCall.error(
          (apiResult8th.jsonBody ?? ''),
        ) ==
        'MPIN_LOCKED') {
      return ConfirmActionBlockModelStruct(
        isLocked: true,
        lockedUntil: getJsonField(
          (apiResult8th.jsonBody ?? ''),
          r'''$.lockedUntil''',
        ).toString(),
        isSuccess: false,
      );
    } else {
      return ConfirmActionBlockModelStruct(
        isSuccess: false,
      );
    }
  }
}

Future<List<AccountsStruct>?> getAccounts(BuildContext context) async {
  ApiCallResponse? getAccountsResponse;

  getAccountsResponse =
      await WhitebankGroupAPIGroup.retailDashboardAccountsCall.call(
    accessToken: currentAuthenticationToken,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    fmsSessionId: currentUserData?.fmsSessionId,
  );

  if ((getAccountsResponse.succeeded ?? true)) {
    return WhitebankGroupAPIGroup.retailDashboardAccountsCall
        .accounts(
          (getAccountsResponse.jsonBody ?? ''),
        )
        ?.map((e) => AccountsStruct.maybeFromMap(e))
        .withoutNulls
        .toList();
  }

  return null;
}

Future getAccountsWithBalance(BuildContext context) async {
  List<AccountsStruct>? retailDashboardAccountResponse;
  ApiCallResponse? apiResulthd5;
  List<dynamic>? output;

  retailDashboardAccountResponse = await action_blocks.getAccounts(context);
  if (retailDashboardAccountResponse != null &&
      (retailDashboardAccountResponse).isNotEmpty) {
    FFAppState().AccountsState =
        retailDashboardAccountResponse.toList().cast<AccountsStruct>();
    FFAppState().accountListOrder =
        retailDashboardAccountResponse.toList().cast<AccountsStruct>();
    FFAppState().update(() {});
    for (int loop1Index = 0;
        loop1Index < FFAppState().AccountsState.length;
        loop1Index++) {
      final currentLoop1Item = FFAppState().AccountsState[loop1Index];
      apiResulthd5 =
          await WhitebankGroupAPIGroup.getBalanceByAccountNumberCall.call(
        accountNumber: currentLoop1Item.fullAccountNumber,
        accessToken: currentAuthenticationToken,
        baseURL: FFDevEnvironmentValues().WBPBASEURL,
        fmsSessionId: currentUserData?.fmsSessionId,
      );

      if ((apiResulthd5.succeeded ?? true)) {
        FFAppState().addToBalances(<String, dynamic>{
          'accountNumber': currentLoop1Item.fullAccountNumber,
          'availableBalance':
              AccountsStruct.maybeFromMap((apiResulthd5.jsonBody ?? ''))
                  ?.availableBalance,
          'currentBalance':
              AccountsStruct.maybeFromMap((apiResulthd5.jsonBody ?? ''))
                  ?.currentBalance,
          'currency':
              AccountsStruct.maybeFromMap((apiResulthd5.jsonBody ?? ''))
                  ?.currency,
          'asOf':
              AccountsStruct.maybeFromMap((apiResulthd5.jsonBody ?? ''))?.asOf,
        });
        FFAppState().update(() {});
      }
    }
    output = await actions.mergeAccountsWithBalances(
      FFAppState().AccountsState.map((e) => e.toMap()).toList().toList(),
      FFAppState().balances.toList(),
    );
    FFAppState().AccountsState = output
        .map((e) => AccountsStruct.maybeFromMap(e))
        .withoutNulls
        .toList()
        .toList()
        .cast<AccountsStruct>();
    FFAppState().accountListOrder = output
        .map((e) => AccountsStruct.maybeFromMap(e))
        .withoutNulls
        .toList()
        .toList()
        .cast<AccountsStruct>();
    FFAppState().update(() {});
  }
}

Future<WBConfirmBillPaymentResponseStruct> bpConfirmSigningBlock(
  BuildContext context, {
  required DeviceSignaturePayloadModelStruct? signingPayload,
  required String? signature,

  /// initiate payment id
  required String? bpId,
  MpinUsage? usage,
}) async {
  ApiCallResponse? bPConfirmSigningResponse;
  ApiCallResponse? bPSigningChallengeResponse;

  bPConfirmSigningResponse =
      await WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.call(
    id: bpId,
    method: 'mpin',
    deviceId: FFAppState().DeviceDetails.deviceId,
    challenge: signingPayload?.challenge,
    mpin: signingPayload?.mpin,
    signature: signature,
    baseURL: FFDevEnvironmentValues().WBPBASEURL,
    accessToken: currentAuthenticationToken,
    fmsSessionId: currentUserData?.fmsSessionId,
  );

  if ((bPConfirmSigningResponse.succeeded ?? true)) {
    return WBConfirmBillPaymentResponseStruct.maybeFromMap(
        (bPConfirmSigningResponse.jsonBody ?? ''))!;
  }
  if ((WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.error(
            (bPConfirmSigningResponse.jsonBody ?? ''),
          ) ==
          ResponseStatus.INVALID_MPIN.name) ||
      (WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.error(
            (bPConfirmSigningResponse.jsonBody ?? ''),
          ) ==
          'INVALID_CHALLENGE')) {
    bPSigningChallengeResponse =
        await WhitebankGroupAPIGroup.retailBillPaymentSigningChallengeCall.call(
      id: bpId,
      deviceId: FFAppState().DeviceDetails.deviceId,
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
      fmsSessionId: currentUserData?.fmsSessionId,
    );

    if ((bPSigningChallengeResponse.succeeded ?? true)) {
      return WBConfirmBillPaymentResponseStruct(
        status: WhitebankGroupAPIGroup.retailBillPaymentSigningChallengeCall
            .challenge(
          (bPSigningChallengeResponse.jsonBody ?? ''),
        ),
        errorMessage:
            WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.error(
          (bPConfirmSigningResponse.jsonBody ?? ''),
        ),
        remarks: '${valueOrDefault<String>(
          WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.title(
            (bPConfirmSigningResponse.jsonBody ?? ''),
          ),
          'Invalid Mpin',
        )}. ${valueOrDefault<String>(
          getJsonField(
            (bPConfirmSigningResponse.jsonBody ?? ''),
            r'''$.remainingAttempts''',
          )?.toString(),
          '0',
        )} attempts remaining.',
      );
    }

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
            child: CustomInformationalDialogWidget(
              message: valueOrDefault<String>(
                getJsonField(
                  (bPSigningChallengeResponse?.jsonBody ?? ''),
                  r'''$.message''',
                )?.toString(),
                'Something went wrong.',
              ),
              primaryButtonTitle: 'Dismiss',
              primaryButtonAction: () async {
                context.pushNamed(
                  PayBillsFailedPageWidget.routeName,
                  queryParameters: {
                    'paymentResponse': serializeParam(
                      WBConfirmBillPaymentResponseStruct(),
                      ParamType.DataStruct,
                    ),
                    'isLocked': serializeParam(
                      false,
                      ParamType.bool,
                    ),
                  }.withoutNulls,
                );
              },
              secondaryButtonAction: () async {},
            ),
          ),
        );
      },
    );

    return WBConfirmBillPaymentResponseStruct(
      errorMessage: '${valueOrDefault<String>(
        getJsonField(
          (bPConfirmSigningResponse.jsonBody ?? ''),
          r'''$.remainingAttempts''',
        )?.toString(),
        '0',
      )} attempts remaining.',
    );
  } else if (WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.error(
        (bPConfirmSigningResponse.jsonBody ?? ''),
      ) ==
      'MPIN_LOCKED') {
    return WBConfirmBillPaymentResponseStruct(
      processedAt: getJsonField(
        (bPConfirmSigningResponse.jsonBody ?? ''),
        r'''$.lockedUntil''',
      ).toString(),
      errorMessage:
          WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.detail(
        (bPConfirmSigningResponse.jsonBody ?? ''),
      ),
      status: WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.error(
        (bPConfirmSigningResponse.jsonBody ?? ''),
      ),
    );
  } else {
    return WBConfirmBillPaymentResponseStruct(
      status: WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.title(
        (bPConfirmSigningResponse.jsonBody ?? ''),
      ),
      errorMessage:
          WhitebankGroupAPIGroup.retailBillPaymentConfirmSigningCall.detail(
        (bPConfirmSigningResponse.jsonBody ?? ''),
      ),
    );
  }
}
