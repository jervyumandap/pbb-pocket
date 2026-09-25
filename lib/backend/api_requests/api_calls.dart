import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start PBB Group Code

class PbbGroup {
  static String getBaseUrl({
    String? baseURL,
    String? oAuthaccessToken = '',
  }) {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    return '${baseURL}';
  }

  static Map<String, String> headers = {
    'Authorization': 'Bearer [oAuthaccessToken]',
  };
  static OauthTokenCall oauthTokenCall = OauthTokenCall();
  static ValidateAccountNumberCall validateAccountNumberCall =
      ValidateAccountNumberCall();
  static OtpCall otpCall = OtpCall();
  static ValidateCIFCall validateCIFCall = ValidateCIFCall();
  static CreateQRCall createQRCall = CreateQRCall();
  static FMSFraudCheckCall fMSFraudCheckCall = FMSFraudCheckCall();
  static FundTransferCall fundTransferCall = FundTransferCall();
  static GetAccountBalanceCall getAccountBalanceCall = GetAccountBalanceCall();
  static ListOfBanksCall listOfBanksCall = ListOfBanksCall();
  static SmsCall smsCall = SmsCall();
  static BillsPaymentPayBillsCall billsPaymentPayBillsCall =
      BillsPaymentPayBillsCall();
  static CreateQRViiCall createQRViiCall = CreateQRViiCall();
  static SendToOwnCall sendToOwnCall = SendToOwnCall();
  static EmailCall emailCall = EmailCall();
  static BillersInfoCall billersInfoCall = BillersInfoCall();
  static TermDepositAccountDetailsCall termDepositAccountDetailsCall =
      TermDepositAccountDetailsCall();
  static TermDepositFetchDetailsCall termDepositFetchDetailsCall =
      TermDepositFetchDetailsCall();
  static LoanAccountHistoryCall loanAccountHistoryCall =
      LoanAccountHistoryCall();
  static TermDepositHistoryCall termDepositHistoryCall =
      TermDepositHistoryCall();
}

class OauthTokenCall {
  Future<ApiCallResponse> call({
    String? channelCode = '',
    String? checkPoint = '',
    String? grantType = '',
    String? originatingChannelCode = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'OauthToken',
      apiUrl: '${baseUrl}/api/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {
        'channel_code': channelCode,
        'check_point': checkPoint,
        'grant_type': grantType,
        'originating_channel_code': originatingChannelCode,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accesstoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class ValidateAccountNumberCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? dateOfBirth = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
"AccountNumber": "${escapeStringForJson(accountNumber)}",
"DateOfBirth": "${escapeStringForJson(dateOfBirth)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ValidateAccountNumber',
      apiUrl: '${baseUrl}/api/Accounts/GetAccountDetails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
  dynamic messageDetail(dynamic response) => getJsonField(
        response,
        r'''$.MessageDetail''',
      );
  String? cIFNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.AccountDetails.CIF''',
      ));
}

class OtpCall {
  Future<ApiCallResponse> call({
    dynamic checkpointJson,
    String? checkpointType = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final checkpoint = _serializeJson(checkpointJson);
    final ffApiRequestBody = '''
{
"Header": {
"ChannelCode": "CBXR",
"OriginatingChannelCode": "CBXR",
"CheckpointType": "${escapeStringForJson(checkpointType)}",
"ReferenceNumber": "POSTMANTEST002"
},
"Body" : ${checkpoint}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OTP',
      apiUrl: '${baseUrl}/api/CentralHub/SMS',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? statusMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.MessageDetails.StatusMessage''',
      ));
  String? statusCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.StatusCode''',
      ));
}

class ValidateCIFCall {
  Future<ApiCallResponse> call({
    String? cifNo = '',
    String? dateOfBirth = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
"CIF": "${escapeStringForJson(cifNo)}",
"DateOfBirth": "${escapeStringForJson(dateOfBirth)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ValidateCIF',
      apiUrl: '${baseUrl}/api/Accounts/GetCIF',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  CIFDetailsStruct? cIFDetails(dynamic response) =>
      CIFDetailsStruct.maybeFromMap(getJsonField(
        response,
        r'''$.CIFDetails''',
      ));
}

class CreateQRCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    dynamic pGSQRHeaderJson,
    dynamic pGSQRBodyJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final pGSQRHeader = _serializeJson(pGSQRHeaderJson);
    final pGSQRBody = _serializeJson(pGSQRBodyJson);
    final ffApiRequestBody = '''
{
  "PGSQRHeader": ${pGSQRHeader},
  "PGSQRBody": ${pGSQRBody}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateQR',
      apiUrl: '${baseUrl}/api/paymentgateway/create-qr',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FMSFraudCheckCall {
  Future<ApiCallResponse> call({
    dynamic requestBodyJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FMS Fraud Check',
      apiUrl: '${baseUrl}/api/FraudManagement/FraudCheck',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? riskDetailsStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.RiskDetails.Status''',
      ));
  String? riskDetailsStatusMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.RiskDetails.StatusMessage''',
      ));
  String? riskStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.RiskStatus''',
      ));
}

class FundTransferCall {
  Future<ApiCallResponse> call({
    dynamic paymentGatewayDetailsJson,
    dynamic paymentGatewayHeaderJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final paymentGatewayDetails = _serializeJson(paymentGatewayDetailsJson);
    final paymentGatewayHeader = _serializeJson(paymentGatewayHeaderJson);
    final ffApiRequestBody = '''
{
  "PaymentGatewayHeader": ${paymentGatewayHeader},
  "PaymentGatewayDetails": ${paymentGatewayDetails}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'FundTransfer',
      apiUrl: '${baseUrl}/api/paymentgateway/create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAccountBalanceCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? dateOfBirth = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
  "AccountNumber": "${escapeStringForJson(accountNumber)}",
  "DateOfBirth": "${escapeStringForJson(dateOfBirth)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Account Balance',
      apiUrl: '${baseUrl}/api/Accounts/GetAccountBalance',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  CIFDetailsStruct? cIFDetails(dynamic response) =>
      CIFDetailsStruct.maybeFromMap(getJsonField(
        response,
        r'''$.CIFDetails''',
      ));
}

class ListOfBanksCall {
  Future<ApiCallResponse> call({
    String? ftchannel = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ListOfBanks',
      apiUrl: '${baseUrl}/api/paymentgateway/bank-lists?ftchannel=${ftchannel}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SmsCall {
  Future<ApiCallResponse> call({
    dynamic headerJson,
    String? checkpointKey = '',
    dynamic checkpointDetailsJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final header = _serializeJson(headerJson);
    final checkpointDetails = _serializeJson(checkpointDetailsJson);
    final ffApiRequestBody = '''
{
    "Header": ${header},
    "Body": {
        "${escapeStringForJson(checkpointKey)}": ${checkpointDetails}
    }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SMS',
      apiUrl: '${baseUrl}/api/CentralHub/SMS',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BillsPaymentPayBillsCall {
  Future<ApiCallResponse> call({
    dynamic billsHeaderJson,
    dynamic billsBodyJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final billsHeader = _serializeJson(billsHeaderJson);
    final billsBody = _serializeJson(billsBodyJson);
    final ffApiRequestBody = '''
{
  "BillsHeader": ${billsHeader},
  "BillsBody": ${billsBody}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Bills Payment Pay Bills',
      apiUrl: '${baseUrl}/api/billspayment/paybills',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateQRViiCall {
  Future<ApiCallResponse> call({
    dynamic pgsqrHeaderJson,
    dynamic pgsqrBodyJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final pgsqrHeader = _serializeJson(pgsqrHeaderJson);
    final pgsqrBody = _serializeJson(pgsqrBodyJson);
    final ffApiRequestBody = '''
{
  "PGSQRHeader": ${pgsqrHeader},
  "PGSQRBody": ${pgsqrBody}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create QR Vii',
      apiUrl: '${baseUrl}/api/paymentgateway/create-qr2',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class SendToOwnCall {
  Future<ApiCallResponse> call({
    dynamic pGSWithinTransferHeaderJson,
    dynamic pGSWithinTransferBodyJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final pGSWithinTransferHeader = _serializeJson(pGSWithinTransferHeaderJson);
    final pGSWithinTransferBody = _serializeJson(pGSWithinTransferBodyJson);
    final ffApiRequestBody = '''
{
  "PGSWithinTransferHeader": ${pGSWithinTransferHeader},
  "PGSWithinTransferBody": ${pGSWithinTransferBody}
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendToOwn',
      apiUrl: '${baseUrl}/api/paymentgateway/PBBTransfers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic responseDetails(dynamic response) => getJsonField(
        response,
        r'''$.response_details''',
      );
}

class EmailCall {
  Future<ApiCallResponse> call({
    dynamic requestHeaderJson,
    dynamic requestBodyJson,
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final requestHeader = _serializeJson(requestHeaderJson);
    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
{
  "Header": ${requestHeader},
  "Body": ${requestBody}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Email',
      apiUrl: '${baseUrl}/api/CentralHub/Email',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BillersInfoCall {
  Future<ApiCallResponse> call({
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Billers Info',
      apiUrl: '${baseUrl}/api/billspayment/BillerInfo',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TermDepositAccountDetailsCall {
  Future<ApiCallResponse> call({
    String? cifNo = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
  "CIF": "${escapeStringForJson(cifNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Term Deposit Account Details',
      apiUrl: '${baseUrl}/api/TermDeposit/AccountDetails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<DepositAccountsStruct>? accounts(dynamic response) => (getJsonField(
        response,
        r'''$.Accounts''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => DepositAccountsStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class TermDepositFetchDetailsCall {
  Future<ApiCallResponse> call({
    String? cifNo = '23131',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
  "CIF": "${escapeStringForJson(cifNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Term Deposit Fetch Details',
      apiUrl: '${baseUrl}/api/TermDeposit/List',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? depositAccounts(dynamic response) => getJsonField(
        response,
        r'''$.DepositAccounts''',
        true,
      ) as List?;
}

class LoanAccountHistoryCall {
  Future<ApiCallResponse> call({
    String? cifNo = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
  "CIF": "${escapeStringForJson(cifNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Loan Account History',
      apiUrl: '${baseUrl}/api/TermDeposit/AccountHistory',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? loanTransactions(dynamic response) => getJsonField(
        response,
        r'''$.TransactionModel''',
        true,
      ) as List?;
}

class TermDepositHistoryCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? baseURL,
    String? oAuthaccessToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().PBBBaseURL;
    final baseUrl = PbbGroup.getBaseUrl(
      baseURL: baseURL,
      oAuthaccessToken: oAuthaccessToken,
    );

    final ffApiRequestBody = '''
{
  "AccountNumber": "${escapeStringForJson(accountNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Term Deposit History',
      apiUrl: '${baseUrl}/api/TermDeposit/HistoryTermDeposit',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${oAuthaccessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? depositTransactions(dynamic response) => getJsonField(
        response,
        r'''$.StatementTransactionModel''',
        true,
      ) as List?;
}

/// End PBB Group Code

/// Start SUPABASE Group Code

class SupabaseGroup {
  static String getBaseUrl({
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    return '${baseURL}';
  }

  static Map<String, String> headers = {
    'apikey': '[APIKEY]',
    'refresh_token': '[refresh_token]',
    'Authorization': 'Bearer [access_token]',
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static RegisterUserCall registerUserCall = RegisterUserCall();
  static FavoriteBillerCall favoriteBillerCall = FavoriteBillerCall();
  static RegisterUserDetailsCall registerUserDetailsCall =
      RegisterUserDetailsCall();
  static UserSecurityCall userSecurityCall = UserSecurityCall();
  static GetUserSecurityByUserIDCall getUserSecurityByUserIDCall =
      GetUserSecurityByUserIDCall();
  static GetUserCall getUserCall = GetUserCall();
  static GetAccountTypesCall getAccountTypesCall = GetAccountTypesCall();
  static RegisterUserProfileCall registerUserProfileCall =
      RegisterUserProfileCall();
  static SetupMPINCall setupMPINCall = SetupMPINCall();
  static GetUserCredentialsByIDCall getUserCredentialsByIDCall =
      GetUserCredentialsByIDCall();
  static UpdateWrongInputAttempCall updateWrongInputAttempCall =
      UpdateWrongInputAttempCall();
  static PostTrustedDevicesCall postTrustedDevicesCall =
      PostTrustedDevicesCall();
  static GetTrustedDeviceByUserIDCall getTrustedDeviceByUserIDCall =
      GetTrustedDeviceByUserIDCall();
  static CheckAccountLockCall checkAccountLockCall = CheckAccountLockCall();
  static GetRefreshTokenCall getRefreshTokenCall = GetRefreshTokenCall();
  static GenerateRefreshTokenCall generateRefreshTokenCall =
      GenerateRefreshTokenCall();
  static LoginUsingUsernameCall loginUsingUsernameCall =
      LoginUsingUsernameCall();
  static GetSMSCheckpointCall getSMSCheckpointCall = GetSMSCheckpointCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static GetAccountsCall getAccountsCall = GetAccountsCall();
  static UpdateMPinCall updateMPinCall = UpdateMPinCall();
  static UserCredentialsCall userCredentialsCall = UserCredentialsCall();
  static InsertAccountCall insertAccountCall = InsertAccountCall();
  static GetUserSecurityCall getUserSecurityCall = GetUserSecurityCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static GetTransactionLimitsCall getTransactionLimitsCall =
      GetTransactionLimitsCall();
  static BulkUpdateTransactionLimitsCall bulkUpdateTransactionLimitsCall =
      BulkUpdateTransactionLimitsCall();
  static PostTransactionCall postTransactionCall = PostTransactionCall();
  static GetTransactionsCall getTransactionsCall = GetTransactionsCall();
  static GetBillerCategoriesCall getBillerCategoriesCall =
      GetBillerCategoriesCall();
  static AccountCheckerIfLinkedCall accountCheckerIfLinkedCall =
      AccountCheckerIfLinkedCall();
  static UpdateBiometricPreferenceCall updateBiometricPreferenceCall =
      UpdateBiometricPreferenceCall();
  static GetFavoriteTransfersByIDCall getFavoriteTransfersByIDCall =
      GetFavoriteTransfersByIDCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwd3R3eWdnemNpcWd3a2xybXJiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ4OTkzMDcsImV4cCI6MjA4MDQ3NTMwN30.GzDxd6sZXwLLIYxohTs2vVJ3_8zyKu5kIFqN_zUdlDY',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? errorCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class RegisterUserCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? username = '',
    String? cifNumber = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
 "data": {
    "username": "${escapeStringForJson(username)}",
    "cif_number": "${escapeStringForJson(cifNumber)}"
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUser',
      apiUrl: '${baseUrl}/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class FavoriteBillerCall {
  Future<ApiCallResponse> call({
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'FavoriteBiller',
      apiUrl: '${baseUrl}/favoriteBiller',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterUserDetailsCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? email = '',
    int? mobileNumber,
    int? statusId,
    String? gender = '',
    String? userName = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "uid": "${escapeStringForJson(uid)}",
  "email": "${escapeStringForJson(email)}",
  "mobile_number": "${mobileNumber}",
  "status_id": ${statusId},
  "gender": "${escapeStringForJson(gender)}",
  "user_name": "${escapeStringForJson(userName)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUserDetails',
      apiUrl: '${baseUrl}/rest/v1/users',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserSecurityCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    bool? biometricEnabled,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "biometric_enabled": "${biometricEnabled}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserSecurity',
      apiUrl: '${baseUrl}/rest/v1/user_security',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserSecurityByUserIDCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetUserSecurityByUserID',
      apiUrl: '${baseUrl}/rest/v1/user_security?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? response(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  bool? isBiometricEnabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].biometric_enabled''',
      ));
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? userName = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetUser',
      apiUrl: '${baseUrl}/rest/v1/users?user_name=eq.${userName}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_name''',
      ));
  UserV3Struct? userDetails(dynamic response) =>
      UserV3Struct.maybeFromMap(getJsonField(
        response,
        r'''$[:]''',
      ));
}

class GetAccountTypesCall {
  Future<ApiCallResponse> call({
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetAccountTypes',
      apiUrl: '${baseUrl}/rest/v1/account_types',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterUserProfileCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? birthDate = '',
    String? address = '',
    String? createdAt = '',
    String? updatedAt = '',
    String? deletedAt = '',
    String? middleName = '',
    String? suffix = '',
    String? gender = '',
    String? mobileNumber = '',
    String? countryCode = '',
    String? cifNumber = '',
    String? role = '',
    String? fullName = '',
    String? uid = '',
    int? statusId,
    String? referenceNumber = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "first_name": "${escapeStringForJson(firstName)}",
  "last_name": "${escapeStringForJson(lastName)}",
  "middle_name": "${escapeStringForJson(middleName)}",
  "suffix": "${escapeStringForJson(suffix)}",
  "birth_date": "${escapeStringForJson(birthDate)}",
  "gender": "${escapeStringForJson(gender)}",
  "mobile_number": "${escapeStringForJson(mobileNumber)}",
  "cif_number": "${escapeStringForJson(cifNumber)}",
  "role": "${escapeStringForJson(role)}",
  "full_name": "${escapeStringForJson(fullName)}",
  "status_id": ${statusId},
  "country_code": "${escapeStringForJson(countryCode)}",
  "uid": "${escapeStringForJson(uid)}",
  "reference_number": "${escapeStringForJson(referenceNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUserProfile',
      apiUrl: '${baseUrl}/functions/v1/register-user-details?uid=eq.${uid}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? details(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.details''',
      ));
}

class SetupMPINCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? mpinHash = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "user_id": "${escapeStringForJson(userId)}",
  "mpin_hash": "${escapeStringForJson(mpinHash)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'SetupMPIN',
      apiUrl: '${baseUrl}/rest/v1/user_credentials',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserCredentialsByIDCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetUserCredentialsByID',
      apiUrl: '${baseUrl}/rest/v1/user_credentials?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  List? empty(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  String? mpinHash(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].mpin_hash''',
      ));
  int? failedAttemps(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].failed_attempts''',
      ));
  String? lockedUntil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].locked_until''',
      ));
}

class UpdateWrongInputAttempCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    int? failedAttempts,
    String? lockedUntil = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
"failed_attempts": ${failedAttempts},
"locked_until": "${escapeStringForJson(lockedUntil)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateWrongInputAttemp',
      apiUrl: '${baseUrl}/rest/v1/user_credentials?user_id=eq.${userId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostTrustedDevicesCall {
  Future<ApiCallResponse> call({
    dynamic metadataJson,
    String? osVersion = '',
    String? deviceOs = '',
    String? deviceId = '',
    String? deviceModel = '',
    String? userId = '',
    bool? isActive,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final metadata = _serializeJson(metadataJson);
    final ffApiRequestBody = '''
{
"device_id": "${escapeStringForJson(deviceId)}",
"device_os": "${escapeStringForJson(deviceOs)}",
"os_version": "${escapeStringForJson(osVersion)}",
"metadata": "${metadata}",
"device_model": "${escapeStringForJson(deviceModel)}",
"user_id": "${escapeStringForJson(userId)}",
"is_active": ${isActive}

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostTrustedDevices',
      apiUrl: '${baseUrl}/rest/v1/trusted_devices',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTrustedDeviceByUserIDCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetTrustedDeviceByUserID',
      apiUrl: '${baseUrl}/rest/v1/trusted_devices?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? deviceID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].device_id''',
      ));
}

class CheckAccountLockCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{"user_id": "${escapeStringForJson(userId)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckAccountLock',
      apiUrl: '${baseUrl}/functions/v1/check-account-lock',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isLocked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_locked''',
      ));
  String? lockedUntil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.locked_until''',
      ));
}

class GetRefreshTokenCall {
  Future<ApiCallResponse> call({
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetRefreshToken',
      apiUrl: '${baseUrl}/token?grant_type=refresh_token',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerateRefreshTokenCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? token = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "device_id": "${escapeStringForJson(deviceId)}",
  "refresh_token": "${escapeStringForJson(token)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateRefreshToken',
      apiUrl: '${baseUrl}/functions/v1/generate-refresh-token',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accesstoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class LoginUsingUsernameCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}",
  "device_id": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginUsingUsername',
      apiUrl: '${baseUrl}/functions/v1/login-using-username',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? istrusteddevice(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_trusted_device''',
      ));
  String? nextstep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.next_step''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.session.access_token''',
      ));
  UserV3Struct? user(dynamic response) =>
      UserV3Struct.maybeFromMap(getJsonField(
        response,
        r'''$.user''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.session.user.email''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  int? currentAttempt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current_attempt''',
      ));
  int? attemptsLeft(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.attempts_left''',
      ));
  bool? isLocked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_locked''',
      ));
  String? lockedUntil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.locked_until''',
      ));
}

class GetSMSCheckpointCall {
  Future<ApiCallResponse> call({
    String? message = '',
    String? type = '',
    String? phone = '',
    String? validity = '',
    String? pin = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "type": "${type}",
  "countryCode": "+63",
  "phone": "${phone}",
  "validity": "${validity}",
  "message": "${message}",
  "pin": "${pin}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSMSCheckpoint',
      apiUrl: '${baseUrl}/functions/v1/get-sms-body',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic body(dynamic response) => getJsonField(
        response,
        r'''$.payload.Body''',
      );
  dynamic vALIDITYDetails(dynamic response) => getJsonField(
        response,
        r'''$.payload.Body.ValidityDetails''',
      );
  dynamic otp(dynamic response) => getJsonField(
        response,
        r'''$.payload.Body.OTPDetails''',
      );
  String? errorMessageMaxOTP(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? newPassword = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "new_password": "${escapeStringForJson(newPassword)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'ForgotPassword',
      apiUrl: '${baseUrl}/functions/v1/forgot-password',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAccountsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Accounts',
      apiUrl: '${baseUrl}/rest/v1/accounts?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateMPinCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? mpinHash = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "mpin_hash": "${escapeStringForJson(mpinHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateMPin',
      apiUrl: '${baseUrl}/rest/v1/user_credentials?user_id=eq.${userId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserCredentialsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'UserCredentials',
      apiUrl: '${baseUrl}/rest/v1/user_credentials?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? failedAttempts(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].failed_attempts''',
      ));
  String? lockedUntil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].locked_until''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
}

class InsertAccountCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    dynamic accountDetailsJson,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final accountDetails = _serializeJson(accountDetailsJson);
    final ffApiRequestBody = '''
${accountDetails}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Account',
      apiUrl: '${baseUrl}/rest/v1/accounts',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserSecurityCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetUserSecurity',
      apiUrl: '${baseUrl}/rest/v1/user_security?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isBiometricsEnabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].biometric_enabled''',
      ));
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteUser',
      apiUrl: '${baseUrl}/auth/v1/admin/users/${userId}',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionLimitsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transaction Limits',
      apiUrl: '${baseUrl}/rest/v1/transaction_limits_view?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BulkUpdateTransactionLimitsCall {
  Future<ApiCallResponse> call({
    dynamic transactionLimitsJson,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final transactionLimits = _serializeJson(transactionLimitsJson, true);
    final ffApiRequestBody = '''
${transactionLimits}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Bulk Update Transaction Limits',
      apiUrl: '${baseUrl}/rest/v1/transaction_limits',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostTransactionCall {
  Future<ApiCallResponse> call({
    int? accountId,
    double? amount,
    double? runningBalance,
    String? referenceNumber = '',
    String? description = '',
    int? invoiceId,
    String? notes = '',
    String? transactionMethod = '',
    String? transactionCategeory = '',
    String? transactionType = '',
    String? payee = '',
    int? userId,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "account_id": ${accountId},
  "amount": ${amount},
  "running_balance": ${runningBalance},
  "reference_number": "${escapeStringForJson(referenceNumber)}",
  "description": "${escapeStringForJson(description)}",
  "metadata": {
    "invoice_id": ${invoiceId},
    "notes": "${escapeStringForJson(notes)}"
  },
  "transaction_method": "${escapeStringForJson(transactionMethod)}",
  "transaction_categeory": "${escapeStringForJson(transactionCategeory)}",
  "transaction_type": "${escapeStringForJson(transactionType)}",
  "payee": "${escapeStringForJson(payee)}",
  "user_id": ${userId}
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostTransaction',
      apiUrl: '${baseUrl}/rest/v1/transactions',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTransactionsCall {
  Future<ApiCallResponse> call({
    String? accountId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetTransactions',
      apiUrl: '${baseUrl}/rest/v1/transactions?account_id=eq.${accountId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<GetTransactionResponseStruct>? transaction(dynamic response) =>
      (getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => GetTransactionResponseStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
}

class GetBillerCategoriesCall {
  Future<ApiCallResponse> call({
    dynamic transactionLimitsJson,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final transactionLimits = _serializeJson(transactionLimitsJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Biller Categories',
      apiUrl: '${baseUrl}/rest/v1/biller_categories',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AccountCheckerIfLinkedCall {
  Future<ApiCallResponse> call({
    String? cifNumber = '',
    String? method = '',
    String? accountNumber = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
  "method": "${method}",
  "account_number": "${accountNumber}",
  "cif_number": "${cifNumber}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'AccountCheckerIfLinked',
      apiUrl: '${baseUrl}/functions/v1/account-checker-using-cif-number',
      callType: ApiCallType.POST,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? accountAlreadyLinked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.accountAlreadyLinked''',
      ));
  String? method(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.method''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.account_number''',
      ));
  bool? isLinked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.linked''',
      ));
}

class UpdateBiometricPreferenceCall {
  Future<ApiCallResponse> call({
    int? userId,
    bool? biometricEnabled,
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    final ffApiRequestBody = '''
{
"biometric_enabled": ${biometricEnabled}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateBiometricPreference',
      apiUrl: '${baseUrl}/rest/v1/user_security?user_id=eq.${userId}',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFavoriteTransfersByIDCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? baseURL,
    String? apikey,
    String? accessToken = '',
    String? refreshToken = '',
  }) async {
    baseURL ??= FFDevEnvironmentValues().BASEURL;
    apikey ??= FFDevEnvironmentValues().APIKEY;
    final baseUrl = SupabaseGroup.getBaseUrl(
      baseURL: baseURL,
      apikey: apikey,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetFavoriteTransfersByID',
      apiUrl: '${baseUrl}/rest/v1/favorite_transfers?user_id=eq.${userId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey': '${apikey}',
        'refresh_token': '${refreshToken}',
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End SUPABASE Group Code

/// Start Whitebank Group API Group Code

class WhitebankGroupAPIGroup {
  static String getBaseUrl({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) =>
      '${baseURL}';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'accept': 'application/json',
    'user-agent': 'user-agent',
    'Authorization': 'Bearer [accessToken]',
    'x-fms-session-id': '[fmsSessionId]',
  };
  static RegistrationInitiateCall registrationInitiateCall =
      RegistrationInitiateCall();
  static RegistrationValidateAccountCall registrationValidateAccountCall =
      RegistrationValidateAccountCall();
  static RegistrationInitiateWithValidationCall
      registrationInitiateWithValidationCall =
      RegistrationInitiateWithValidationCall();
  static RegistrationSendOtpCall registrationSendOtpCall =
      RegistrationSendOtpCall();
  static RegistrationResendOtpCall registrationResendOtpCall =
      RegistrationResendOtpCall();
  static RecoveryMPINResendOtpCall recoveryMPINResendOtpCall =
      RecoveryMPINResendOtpCall();
  static RecoveryPasswordResendOtpCall recoveryPasswordResendOtpCall =
      RecoveryPasswordResendOtpCall();
  static RegistrationVerifyOtpCall registrationVerifyOtpCall =
      RegistrationVerifyOtpCall();
  static RegistrationValidateUsernameCall registrationValidateUsernameCall =
      RegistrationValidateUsernameCall();
  static RegistrationCreateCredentialsCall registrationCreateCredentialsCall =
      RegistrationCreateCredentialsCall();
  static RegistrationStatusCall registrationStatusCall =
      RegistrationStatusCall();
  static RetailLoginCall retailLoginCall = RetailLoginCall();
  static RetailLogoutCall retailLogoutCall = RetailLogoutCall();
  static RetailRefreshTokenCall retailRefreshTokenCall =
      RetailRefreshTokenCall();
  static RetailSessionCall retailSessionCall = RetailSessionCall();
  static RetailBillsPaymentCategoriesCall retailBillsPaymentCategoriesCall =
      RetailBillsPaymentCategoriesCall();
  static RetailBillsPaymentBillersCall retailBillsPaymentBillersCall =
      RetailBillsPaymentBillersCall();
  static RetailBillsPaymentBillerDetailsCall
      retailBillsPaymentBillerDetailsCall =
      RetailBillsPaymentBillerDetailsCall();
  static RetailBillsPaymentValidateBillerAccountCall
      retailBillsPaymentValidateBillerAccountCall =
      RetailBillsPaymentValidateBillerAccountCall();
  static RetailBillsPaymentInitiateCall retailBillsPaymentInitiateCall =
      RetailBillsPaymentInitiateCall();
  static RetailBillPaymentDetailsCall retailBillPaymentDetailsCall =
      RetailBillPaymentDetailsCall();
  static RetailBillPaymentSigningChallengeCall
      retailBillPaymentSigningChallengeCall =
      RetailBillPaymentSigningChallengeCall();
  static RetailBillPaymentConfirmSigningCall
      retailBillPaymentConfirmSigningCall =
      RetailBillPaymentConfirmSigningCall();
  static RetailBillPaymentConfirmSigningNewCall
      retailBillPaymentConfirmSigningNewCall =
      RetailBillPaymentConfirmSigningNewCall();
  static RetailBillPaymentOTPConfirmCall retailBillPaymentOTPConfirmCall =
      RetailBillPaymentOTPConfirmCall();
  static RetailBillPaymentCancelPendingCall retailBillPaymentCancelPendingCall =
      RetailBillPaymentCancelPendingCall();
  static RetailBillsPaymentHistoryCall retailBillsPaymentHistoryCall =
      RetailBillsPaymentHistoryCall();
  static RetailBillsPaymentLimitsCall retailBillsPaymentLimitsCall =
      RetailBillsPaymentLimitsCall();
  static RetailSavedBillersAddCall retailSavedBillersAddCall =
      RetailSavedBillersAddCall();
  static RetailSavedBillersListCall retailSavedBillersListCall =
      RetailSavedBillersListCall();
  static RetailSavedBillerDetailsCall retailSavedBillerDetailsCall =
      RetailSavedBillerDetailsCall();
  static RetailSavedBillerUpdateCall retailSavedBillerUpdateCall =
      RetailSavedBillerUpdateCall();
  static RetailSavedBillerDeleteCall retailSavedBillerDeleteCall =
      RetailSavedBillerDeleteCall();
  static RetailAuthBiometricRegisterCall retailAuthBiometricRegisterCall =
      RetailAuthBiometricRegisterCall();
  static RetailAuthBiometricLoginCall retailAuthBiometricLoginCall =
      RetailAuthBiometricLoginCall();
  static RetailAuthBiometricChallengeCall retailAuthBiometricChallengeCall =
      RetailAuthBiometricChallengeCall();
  static RetailAuthBiometricDevicesCall retailAuthBiometricDevicesCall =
      RetailAuthBiometricDevicesCall();
  static RetailAuthBiometricDeleteDeviceCall
      retailAuthBiometricDeleteDeviceCall =
      RetailAuthBiometricDeleteDeviceCall();
  static GetProfileCall getProfileCall = GetProfileCall();
  static PatchProfileCall patchProfileCall = PatchProfileCall();
  static RetailQRPaymentDecodeCall retailQRPaymentDecodeCall =
      RetailQRPaymentDecodeCall();
  static RetailQRPaymentInitiateCall retailQRPaymentInitiateCall =
      RetailQRPaymentInitiateCall();
  static RetailQRPaymentDetailsCall retailQRPaymentDetailsCall =
      RetailQRPaymentDetailsCall();
  static RetailQRPaymentOTPConfirmCall retailQRPaymentOTPConfirmCall =
      RetailQRPaymentOTPConfirmCall();
  static RetailQRPaymentSigningChallengeCall
      retailQRPaymentSigningChallengeCall =
      RetailQRPaymentSigningChallengeCall();
  static RetailQRPaymentMpinBioSigningCall retailQRPaymentMpinBioSigningCall =
      RetailQRPaymentMpinBioSigningCall();
  static RetailQRPaymentPasskeySigningCall retailQRPaymentPasskeySigningCall =
      RetailQRPaymentPasskeySigningCall();
  static RetailQRPaymentCancelCall retailQRPaymentCancelCall =
      RetailQRPaymentCancelCall();
  static RetailQRPaymentHistoryCall retailQRPaymentHistoryCall =
      RetailQRPaymentHistoryCall();
  static RetailQRPaymentLimitsCall retailQRPaymentLimitsCall =
      RetailQRPaymentLimitsCall();
  static RetailQRPaymentGenerateCall retailQRPaymentGenerateCall =
      RetailQRPaymentGenerateCall();
  static RetailScheduledBPSigningChallengeCall
      retailScheduledBPSigningChallengeCall =
      RetailScheduledBPSigningChallengeCall();
  static RetailScheduledBPDetailsCall retailScheduledBPDetailsCall =
      RetailScheduledBPDetailsCall();
  static RetailScheduledBPEditCall retailScheduledBPEditCall =
      RetailScheduledBPEditCall();
  static RetailScheduledBPCancelCall retailScheduledBPCancelCall =
      RetailScheduledBPCancelCall();
  static RetailScheduledBPPauseCall retailScheduledBPPauseCall =
      RetailScheduledBPPauseCall();
  static RetailScheduledBPResumeCall retailScheduledBPResumeCall =
      RetailScheduledBPResumeCall();
  static RetailScheduledBPCreateCall retailScheduledBPCreateCall =
      RetailScheduledBPCreateCall();
  static RetailScheduledBPCreatePasskeySigningCall
      retailScheduledBPCreatePasskeySigningCall =
      RetailScheduledBPCreatePasskeySigningCall();
  static RetailScheduledBPListCall retailScheduledBPListCall =
      RetailScheduledBPListCall();
  static RetailDashboardCall retailDashboardCall = RetailDashboardCall();
  static RetailDashboardAccountsCall retailDashboardAccountsCall =
      RetailDashboardAccountsCall();
  static RetailDashboardAccountTransactionsCall
      retailDashboardAccountTransactionsCall =
      RetailDashboardAccountTransactionsCall();
  static InitiateFundTransferCall initiateFundTransferCall =
      InitiateFundTransferCall();
  static GetTransferHistoryCall getTransferHistoryCall =
      GetTransferHistoryCall();
  static ConfirmTransactionCall confirmTransactionCall =
      ConfirmTransactionCall();
  static CancelTransactionCall cancelTransactionCall = CancelTransactionCall();
  static GetTransferDetailsByIDCall getTransferDetailsByIDCall =
      GetTransferDetailsByIDCall();
  static GetTransferTypesCall getTransferTypesCall = GetTransferTypesCall();
  static GetTransferLimitsCall getTransferLimitsCall = GetTransferLimitsCall();
  static ValidateAccountCall validateAccountCall = ValidateAccountCall();
  static GetSupportedBanksCall getSupportedBanksCall = GetSupportedBanksCall();
  static DashboardQuickActionsCall dashboardQuickActionsCall =
      DashboardQuickActionsCall();
  static GetBanksCall getBanksCall = GetBanksCall();
  static RetailSettingsProfileDetailsCall retailSettingsProfileDetailsCall =
      RetailSettingsProfileDetailsCall();
  static RetailSettingsProfileUpdateCall retailSettingsProfileUpdateCall =
      RetailSettingsProfileUpdateCall();
  static RetailSettingsPasswordChangeCall retailSettingsPasswordChangeCall =
      RetailSettingsPasswordChangeCall();
  static RetailSettingsPasswordChangeChallengeCall
      retailSettingsPasswordChangeChallengeCall =
      RetailSettingsPasswordChangeChallengeCall();
  static RetailSettingsPasswordChangeConfirmOtpCall
      retailSettingsPasswordChangeConfirmOtpCall =
      RetailSettingsPasswordChangeConfirmOtpCall();
  static RetailSettingsPasswordChangeConfirmChallengeCall
      retailSettingsPasswordChangeConfirmChallengeCall =
      RetailSettingsPasswordChangeConfirmChallengeCall();
  static RetailAuthUsernameRecoveryInitiateCall
      retailAuthUsernameRecoveryInitiateCall =
      RetailAuthUsernameRecoveryInitiateCall();
  static RetailAuthUsernameRecoveryVerifyOtpCall
      retailAuthUsernameRecoveryVerifyOtpCall =
      RetailAuthUsernameRecoveryVerifyOtpCall();
  static RetailAuthPasswordRecoveryInitiateCall
      retailAuthPasswordRecoveryInitiateCall =
      RetailAuthPasswordRecoveryInitiateCall();
  static RetailAuthMpinRecoveryInitiateCall retailAuthMpinRecoveryInitiateCall =
      RetailAuthMpinRecoveryInitiateCall();
  static RetailAuthPasswordRecoveryVerifyOtpCall
      retailAuthPasswordRecoveryVerifyOtpCall =
      RetailAuthPasswordRecoveryVerifyOtpCall();
  static RetailAuthMpinRecoveryVerifyOtpCall
      retailAuthMpinRecoveryVerifyOtpCall =
      RetailAuthMpinRecoveryVerifyOtpCall();
  static RetailAuthPasswordRecoveryResetCall
      retailAuthPasswordRecoveryResetCall =
      RetailAuthPasswordRecoveryResetCall();
  static RetailAuthMpinRecoveryResetCall retailAuthMpinRecoveryResetCall =
      RetailAuthMpinRecoveryResetCall();
  static RetailSettingsMpinStatusCall retailSettingsMpinStatusCall =
      RetailSettingsMpinStatusCall();
  static RetailAuthMpinLoginCall retailAuthMpinLoginCall =
      RetailAuthMpinLoginCall();
  static RetailAuthMpinChallengeCall retailAuthMpinChallengeCall =
      RetailAuthMpinChallengeCall();
  static RetailConfigMpinCall retailConfigMpinCall = RetailConfigMpinCall();
  static RetailSettingsMpinSetCall retailSettingsMpinSetCall =
      RetailSettingsMpinSetCall();
  static RetailSettingsMpinChangeCall retailSettingsMpinChangeCall =
      RetailSettingsMpinChangeCall();
  static RetailSettingsMpinVerifyCall retailSettingsMpinVerifyCall =
      RetailSettingsMpinVerifyCall();
  static RetailSettingsBiometricCall retailSettingsBiometricCall =
      RetailSettingsBiometricCall();
  static RetailSettingsBiometricToggleCall retailSettingsBiometricToggleCall =
      RetailSettingsBiometricToggleCall();
  static RetailSettingsNotificationsPreferencesCall
      retailSettingsNotificationsPreferencesCall =
      RetailSettingsNotificationsPreferencesCall();
  static RetailSettingsNotificationPreferencesUpdateCall
      retailSettingsNotificationPreferencesUpdateCall =
      RetailSettingsNotificationPreferencesUpdateCall();
  static RetailSettingsDevicesListCall retailSettingsDevicesListCall =
      RetailSettingsDevicesListCall();
  static RetailSettingsDeviceDetailsCall retailSettingsDeviceDetailsCall =
      RetailSettingsDeviceDetailsCall();
  static RetailSettingsDeviceRemoveCall retailSettingsDeviceRemoveCall =
      RetailSettingsDeviceRemoveCall();
  static RetailSettingsDeviceRemoveConfirmOTPCall
      retailSettingsDeviceRemoveConfirmOTPCall =
      RetailSettingsDeviceRemoveConfirmOTPCall();
  static RetailSettingsDeviceRegisterCall retailSettingsDeviceRegisterCall =
      RetailSettingsDeviceRegisterCall();
  static RetailSettingsDevicePushNotifTokenCall
      retailSettingsDevicePushNotifTokenCall =
      RetailSettingsDevicePushNotifTokenCall();
  static RetailSettingsDeviceInitiateTrustCall
      retailSettingsDeviceInitiateTrustCall =
      RetailSettingsDeviceInitiateTrustCall();
  static RetailSettingsDeviceInitiateTrustConfirmOtpCall
      retailSettingsDeviceInitiateTrustConfirmOtpCall =
      RetailSettingsDeviceInitiateTrustConfirmOtpCall();
  static RetailSettingsDeviceRevokeTrustCall
      retailSettingsDeviceRevokeTrustCall =
      RetailSettingsDeviceRevokeTrustCall();
  static RetailSettingsDeviceTrustRequestCall
      retailSettingsDeviceTrustRequestCall =
      RetailSettingsDeviceTrustRequestCall();
  static RetailSettingsListPendingDeviceTrustRequestsCall
      retailSettingsListPendingDeviceTrustRequestsCall =
      RetailSettingsListPendingDeviceTrustRequestsCall();
  static RetailSettingsSigningChallengeForDeviceTrustApprovalCall
      retailSettingsSigningChallengeForDeviceTrustApprovalCall =
      RetailSettingsSigningChallengeForDeviceTrustApprovalCall();
  static RetailSettingsDeviceTrustConfirmSigningCall
      retailSettingsDeviceTrustConfirmSigningCall =
      RetailSettingsDeviceTrustConfirmSigningCall();
  static RetailSettingsActivityCall retailSettingsActivityCall =
      RetailSettingsActivityCall();
  static RetailSettingsLoginHistoryCall retailSettingsLoginHistoryCall =
      RetailSettingsLoginHistoryCall();
  static RetailSettingsTransactionLimitsCall
      retailSettingsTransactionLimitsCall =
      RetailSettingsTransactionLimitsCall();
  static RetailSettingsTransactionLimitsUpdateCall
      retailSettingsTransactionLimitsUpdateCall =
      RetailSettingsTransactionLimitsUpdateCall();
  static RetailSettingsTransactionLimitsUpdateConfirmOtpCall
      retailSettingsTransactionLimitsUpdateConfirmOtpCall =
      RetailSettingsTransactionLimitsUpdateConfirmOtpCall();
  static RetailSettingsDeactivateAccountCall
      retailSettingsDeactivateAccountCall =
      RetailSettingsDeactivateAccountCall();
  static RetailSettingsDeactivateAccountConfirmCall
      retailSettingsDeactivateAccountConfirmCall =
      RetailSettingsDeactivateAccountConfirmCall();
  static RetailInboxNotificationsCall retailInboxNotificationsCall =
      RetailInboxNotificationsCall();
  static GetAllFeatureFlagsCall getAllFeatureFlagsCall =
      GetAllFeatureFlagsCall();
  static RetailCryptoWalletCall retailCryptoWalletCall =
      RetailCryptoWalletCall();
  static RetailCryptoWalletStatusCall retailCryptoWalletStatusCall =
      RetailCryptoWalletStatusCall();
  static RetailCryptoTransactionsCall retailCryptoTransactionsCall =
      RetailCryptoTransactionsCall();
  static GetTransactionByHashCall getTransactionByHashCall =
      GetTransactionByHashCall();
  static TransferCryptoToOthersCall transferCryptoToOthersCall =
      TransferCryptoToOthersCall();
  static GetBeneficiariesCall getBeneficiariesCall = GetBeneficiariesCall();
  static AddBeneficiariyCall addBeneficiariyCall = AddBeneficiariyCall();
  static AccountPreferencesCall accountPreferencesCall =
      AccountPreferencesCall();
  static PatchAliasCall patchAliasCall = PatchAliasCall();
  static AccountCardReorderCall accountCardReorderCall =
      AccountCardReorderCall();
  static AccountNumberVisibilityCall accountNumberVisibilityCall =
      AccountNumberVisibilityCall();
  static GetBalanceByAccountNumberCall getBalanceByAccountNumberCall =
      GetBalanceByAccountNumberCall();
  static RetailTransfersSigningChallengeCall
      retailTransfersSigningChallengeCall =
      RetailTransfersSigningChallengeCall();
  static RetailTransfersConfirmSigningCall retailTransfersConfirmSigningCall =
      RetailTransfersConfirmSigningCall();
  static LimitsChallengeCall limitsChallengeCall = LimitsChallengeCall();
  static LimitsChallengeConfirmCall limitsChallengeConfirmCall =
      LimitsChallengeConfirmCall();
  static RetailSettingsDeviceRemoveChallengeCall
      retailSettingsDeviceRemoveChallengeCall =
      RetailSettingsDeviceRemoveChallengeCall();
  static RetailSettingsDeviceRemoveConfirmCall
      retailSettingsDeviceRemoveConfirmCall =
      RetailSettingsDeviceRemoveConfirmCall();
  static MpinChangeChallengeCall mpinChangeChallengeCall =
      MpinChangeChallengeCall();
  static MpinChangeConfirmCall mpinChangeConfirmCall = MpinChangeConfirmCall();
  static ScheduleTransferSigningChallengeCall
      scheduleTransferSigningChallengeCall =
      ScheduleTransferSigningChallengeCall();
  static RetailScheduledTransferConfirmCall retailScheduledTransferConfirmCall =
      RetailScheduledTransferConfirmCall();
  static RetailScheduledTransfersCall retailScheduledTransfersCall =
      RetailScheduledTransfersCall();
  static RetailScheduledTransfersIdCall retailScheduledTransfersIdCall =
      RetailScheduledTransfersIdCall();
  static RetailScheduledTransfersIDCall retailScheduledTransfersIDCall =
      RetailScheduledTransfersIDCall();
  static RetailScheduledTransfersIDPauseCall
      retailScheduledTransfersIDPauseCall =
      RetailScheduledTransfersIDPauseCall();
  static RetailScheduledTransfersIDResumeCall
      retailScheduledTransfersIDResumeCall =
      RetailScheduledTransfersIDResumeCall();
  static RetailLoansCall retailLoansCall = RetailLoansCall();
  static RetailLoansTransactionsCall retailLoansTransactionsCall =
      RetailLoansTransactionsCall();
  static RetailLoansDetailsCall retailLoansDetailsCall =
      RetailLoansDetailsCall();
  static RetailLoansPaymentCall retailLoansPaymentCall =
      RetailLoansPaymentCall();
  static RetailLoanPaymentSigningChallengeCall
      retailLoanPaymentSigningChallengeCall =
      RetailLoanPaymentSigningChallengeCall();
  static RetailLoanConfirmPaymentCall retailLoanConfirmPaymentCall =
      RetailLoanConfirmPaymentCall();
  static RetailLoanConfirmPaymentPasskeyCall
      retailLoanConfirmPaymentPasskeyCall =
      RetailLoanConfirmPaymentPasskeyCall();
  static RetailLoanPaymentCancelCall retailLoanPaymentCancelCall =
      RetailLoanPaymentCancelCall();
  static RetailLoanRepaymentScheduleCall retailLoanRepaymentScheduleCall =
      RetailLoanRepaymentScheduleCall();
  static RetailTimeDepositProductsCall retailTimeDepositProductsCall =
      RetailTimeDepositProductsCall();
  static RetailTimeDepositsConfirmCall retailTimeDepositsConfirmCall =
      RetailTimeDepositsConfirmCall();
  static RetailTimeDepositsChallengeCall retailTimeDepositsChallengeCall =
      RetailTimeDepositsChallengeCall();
  static RetailTimeDepositsAccountNumberCall
      retailTimeDepositsAccountNumberCall =
      RetailTimeDepositsAccountNumberCall();
  static RetailTimeDepositsCall retailTimeDepositsCall =
      RetailTimeDepositsCall();
  static RetailGenPasskeyRegistrationOptionsCall
      retailGenPasskeyRegistrationOptionsCall =
      RetailGenPasskeyRegistrationOptionsCall();
  static RetailVerifyPasskeyRegistrationCall
      retailVerifyPasskeyRegistrationCall =
      RetailVerifyPasskeyRegistrationCall();
  static RetailGenPasskeyAuthOptionsCall retailGenPasskeyAuthOptionsCall =
      RetailGenPasskeyAuthOptionsCall();
  static RetailVerifyPasskeyAuthCall retailVerifyPasskeyAuthCall =
      RetailVerifyPasskeyAuthCall();
  static RetailListPasskeyCredentialsCall retailListPasskeyCredentialsCall =
      RetailListPasskeyCredentialsCall();
  static RetailRenamePasskeyCredentialCall retailRenamePasskeyCredentialCall =
      RetailRenamePasskeyCredentialCall();
  static RetailRevokePasskeyCredentialCall retailRevokePasskeyCredentialCall =
      RetailRevokePasskeyCredentialCall();
  static RetailGenStepupAuthOptionsCall retailGenStepupAuthOptionsCall =
      RetailGenStepupAuthOptionsCall();
  static RetailGenStepupAuthOptionsJsonBodyCall
      retailGenStepupAuthOptionsJsonBodyCall =
      RetailGenStepupAuthOptionsJsonBodyCall();
  static RetailVerifyStepupAuthCall retailVerifyStepupAuthCall =
      RetailVerifyStepupAuthCall();
  static RetailGenPasskeyRecoveryOptionsCall
      retailGenPasskeyRecoveryOptionsCall =
      RetailGenPasskeyRecoveryOptionsCall();
  static RetailVerifyPasskeyRecoveryCall retailVerifyPasskeyRecoveryCall =
      RetailVerifyPasskeyRecoveryCall();
  static RetailGenPasskeyRecoveryCodesCall retailGenPasskeyRecoveryCodesCall =
      RetailGenPasskeyRecoveryCodesCall();
  static RetailAcknowPasskeyRecoveryCodesCall
      retailAcknowPasskeyRecoveryCodesCall =
      RetailAcknowPasskeyRecoveryCodesCall();
  static RetailPasskeyRecoveryCodeStatusCall
      retailPasskeyRecoveryCodeStatusCall =
      RetailPasskeyRecoveryCodeStatusCall();
  static RetailPasskeyLoginWithRecoveryCodeCall
      retailPasskeyLoginWithRecoveryCodeCall =
      RetailPasskeyLoginWithRecoveryCodeCall();
  static RetailPasskeyRecoveryInitiateCall retailPasskeyRecoveryInitiateCall =
      RetailPasskeyRecoveryInitiateCall();
  static RetailPasskeyRecoveryVerifyOTPCall retailPasskeyRecoveryVerifyOTPCall =
      RetailPasskeyRecoveryVerifyOTPCall();
  static RetailPasskeyRecoveryVerifyCodeCall
      retailPasskeyRecoveryVerifyCodeCall =
      RetailPasskeyRecoveryVerifyCodeCall();
  static RetailPasskeyRecoveryResendOTPCall retailPasskeyRecoveryResendOTPCall =
      RetailPasskeyRecoveryResendOTPCall();
  static RetailPasskeyRecoverySessionStatusCall
      retailPasskeyRecoverySessionStatusCall =
      RetailPasskeyRecoverySessionStatusCall();
  static RetailPasskeyAuthLoginStepupOptionsCall
      retailPasskeyAuthLoginStepupOptionsCall =
      RetailPasskeyAuthLoginStepupOptionsCall();
  static RetailPasskeyAuthLoginStepupConfirmCall
      retailPasskeyAuthLoginStepupConfirmCall =
      RetailPasskeyAuthLoginStepupConfirmCall();
  static RetailBankAdvisoriesCall retailBankAdvisoriesCall =
      RetailBankAdvisoriesCall();
  static RetailChequebookEligibleAccountsCall
      retailChequebookEligibleAccountsCall =
      RetailChequebookEligibleAccountsCall();
  static RetailChequebookLimitsCall retailChequebookLimitsCall =
      RetailChequebookLimitsCall();
  static RetailChequebookPrepareCall retailChequebookPrepareCall =
      RetailChequebookPrepareCall();
  static RetailChequebookConfirmSigningCall retailChequebookConfirmSigningCall =
      RetailChequebookConfirmSigningCall();
  static RetailChequebookRequestsCall retailChequebookRequestsCall =
      RetailChequebookRequestsCall();
  static RetailChequebookRequestSubmitCall retailChequebookRequestSubmitCall =
      RetailChequebookRequestSubmitCall();
  static RetailChequebookRequestByIDCall retailChequebookRequestByIDCall =
      RetailChequebookRequestByIDCall();
  static RetailKillSwitchStatusCall retailKillSwitchStatusCall =
      RetailKillSwitchStatusCall();
  static RetailKillSwitchActivateChallengeCall
      retailKillSwitchActivateChallengeCall =
      RetailKillSwitchActivateChallengeCall();
  static RetailKillSwitchActivateConfirmCall
      retailKillSwitchActivateConfirmCall =
      RetailKillSwitchActivateConfirmCall();
  static RetailInvestmentsCall retailInvestmentsCall = RetailInvestmentsCall();
  static RetailInvestmentsStatementCall retailInvestmentsStatementCall =
      RetailInvestmentsStatementCall();
  static RetailReportSuspiciousReportCall retailReportSuspiciousReportCall =
      RetailReportSuspiciousReportCall();
  static RetailChequeInquiryCall retailChequeInquiryCall =
      RetailChequeInquiryCall();
  static RetailContentHubCategoriesCall retailContentHubCategoriesCall =
      RetailContentHubCategoriesCall();
  static RetailContentHubArticlesCall retailContentHubArticlesCall =
      RetailContentHubArticlesCall();
  static RetailContentHubArticlesSlugCall retailContentHubArticlesSlugCall =
      RetailContentHubArticlesSlugCall();
  static RetailContentHubArticleEventsCall retailContentHubArticleEventsCall =
      RetailContentHubArticleEventsCall();
  static RetailReportDisputesChallengeCall retailReportDisputesChallengeCall =
      RetailReportDisputesChallengeCall();
  static RetailReportDisputesChallengeWithTransactionIDCall
      retailReportDisputesChallengeWithTransactionIDCall =
      RetailReportDisputesChallengeWithTransactionIDCall();
  static RetailReportDisputeChallengeSigningCall
      retailReportDisputeChallengeSigningCall =
      RetailReportDisputeChallengeSigningCall();
  static RetailContentHubArticlesPinnedCall retailContentHubArticlesPinnedCall =
      RetailContentHubArticlesPinnedCall();
  static RetailContentHubArticlesRecentCall retailContentHubArticlesRecentCall =
      RetailContentHubArticlesRecentCall();
  static RetailStopChequePrepareCall retailStopChequePrepareCall =
      RetailStopChequePrepareCall();
  static RetailStopChequeSigningChallengeCall
      retailStopChequeSigningChallengeCall =
      RetailStopChequeSigningChallengeCall();
  static RetailStopChequeConfirmSigningCall retailStopChequeConfirmSigningCall =
      RetailStopChequeConfirmSigningCall();
  static RetailConfirmSigningPasskeyCall retailConfirmSigningPasskeyCall =
      RetailConfirmSigningPasskeyCall();
  static RetailTimeDepositsConfirmPasskeyCall
      retailTimeDepositsConfirmPasskeyCall =
      RetailTimeDepositsConfirmPasskeyCall();
  static RetailScheduledTransferConfirmPasskeyCall
      retailScheduledTransferConfirmPasskeyCall =
      RetailScheduledTransferConfirmPasskeyCall();
  static MpinChangeConfirmPasskeyCall mpinChangeConfirmPasskeyCall =
      MpinChangeConfirmPasskeyCall();
  static RetailKillSwitchActivateConfirmPasskeyCall
      retailKillSwitchActivateConfirmPasskeyCall =
      RetailKillSwitchActivateConfirmPasskeyCall();
  static LimitsChallengeConfirmPasskeyCall limitsChallengeConfirmPasskeyCall =
      LimitsChallengeConfirmPasskeyCall();
  static RetailConfirmLoanPaymentPasskeyCall
      retailConfirmLoanPaymentPasskeyCall =
      RetailConfirmLoanPaymentPasskeyCall();
  static RetailSettingsPasswordChangeConfirmPasskeyCall
      retailSettingsPasswordChangeConfirmPasskeyCall =
      RetailSettingsPasswordChangeConfirmPasskeyCall();
  static RetailSafetyDepositBoxRequestsCall retailSafetyDepositBoxRequestsCall =
      RetailSafetyDepositBoxRequestsCall();
  static RetailSafetyDepositBoxRequestsGetCall
      retailSafetyDepositBoxRequestsGetCall =
      RetailSafetyDepositBoxRequestsGetCall();
  static RetailSafetyDepositBoxRequestsBranchesCall
      retailSafetyDepositBoxRequestsBranchesCall =
      RetailSafetyDepositBoxRequestsBranchesCall();
  static RetailSafetyDepositBoxRequestsIdCall
      retailSafetyDepositBoxRequestsIdCall =
      RetailSafetyDepositBoxRequestsIdCall();
  static RetailCardReplacementRequestsCall retailCardReplacementRequestsCall =
      RetailCardReplacementRequestsCall();
  static RetailCardReplacementRequestsGetCall
      retailCardReplacementRequestsGetCall =
      RetailCardReplacementRequestsGetCall();
  static RetailCardReplacementRequestsByIdCall
      retailCardReplacementRequestsByIdCall =
      RetailCardReplacementRequestsByIdCall();
  static RetailLoanInquireSRCall retailLoanInquireSRCall =
      RetailLoanInquireSRCall();
  static RetailServiceRequestTrustProductCall
      retailServiceRequestTrustProductCall =
      RetailServiceRequestTrustProductCall();
  static RetailServiceRequestTrackerCall retailServiceRequestTrackerCall =
      RetailServiceRequestTrackerCall();
  static RetailServiceRequestTrustProductSubmitCall
      retailServiceRequestTrustProductSubmitCall =
      RetailServiceRequestTrustProductSubmitCall();
  static RetailAndroidAssetLinksCall retailAndroidAssetLinksCall =
      RetailAndroidAssetLinksCall();
  static RetailAppleAppSiteAassociationCopyCall
      retailAppleAppSiteAassociationCopyCall =
      RetailAppleAppSiteAassociationCopyCall();
  static RetailPasskeyConfigCheckCall retailPasskeyConfigCheckCall =
      RetailPasskeyConfigCheckCall();
  static RetailConfigSessionCall retailConfigSessionCall =
      RetailConfigSessionCall();
  static MpinChangeSetNewPinCall mpinChangeSetNewPinCall =
      MpinChangeSetNewPinCall();
  static UpdateBeneficiaryCall updateBeneficiaryCall = UpdateBeneficiaryCall();
  static DeleteBeneficiaryCall deleteBeneficiaryCall = DeleteBeneficiaryCall();
  static RetailTransfersValidateAccountCall retailTransfersValidateAccountCall =
      RetailTransfersValidateAccountCall();
}

class RegistrationInitiateCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Initiate',
      apiUrl: '${baseUrl}/registration/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? retryAfter(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.retryAfter''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RegistrationValidateAccountCall {
  Future<ApiCallResponse> call({
    dynamic personalDetailsJson,
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final personalDetails = _serializeJson(personalDetailsJson);
    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "personalDetails": ${personalDetails}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Validate Account',
      apiUrl: '${baseUrl}/registration/validate-account',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? maskedContact(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.maskedContact''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RegistrationInitiateWithValidationCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? birthDate = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "birthDate": "${escapeStringForJson(birthDate)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Initiate with Validation',
      apiUrl: '${baseUrl}/registration/initiate-with-validation',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? maskedContact(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.maskedContact''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? reason(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reason''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? maskedEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.maskedEmail''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RegistrationSendOtpCall {
  Future<ApiCallResponse> call({
    String? channel = '',
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Send Otp',
      apiUrl: '${baseUrl}/registration/send-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isSent(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sent''',
      ));
  String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  String? destination(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.destination''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RegistrationResendOtpCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? channel = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Resend Otp',
      apiUrl: '${baseUrl}/registration/resend-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isSent(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sent''',
      ));
  String? destination(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.destination''',
      ));
  String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RecoveryMPINResendOtpCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Recovery MPIN Resend Otp',
      apiUrl: '${baseUrl}/auth/retail/recovery/mpin/resend-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isSent(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sent''',
      ));
  String? destination(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.destination''',
      ));
  String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? otpChannel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpChannel''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
}

class RecoveryPasswordResendOtpCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Recovery Password Resend Otp',
      apiUrl: '${baseUrl}/auth/retail/recovery/password/resend-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isSent(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sent''',
      ));
  String? destination(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.destination''',
      ));
  String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? otpChannel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpChannel''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
}

class RegistrationVerifyOtpCall {
  Future<ApiCallResponse> call({
    String? otpCode = '',
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "otpCode": "${escapeStringForJson(otpCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Verify Otp',
      apiUrl: '${baseUrl}/registration/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.verified''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RegistrationValidateUsernameCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Validate Username',
      apiUrl: '${baseUrl}/registration/validate-username',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? isAvailable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.available''',
      ));
  String? reason(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reason''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? retryAfter(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.retryAfter''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RegistrationCreateCredentialsCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? username = '',
    String? password = '',
    String? confirmPassword = '',
    String? deviceId = '',
    String? deviceName = '',
    String? pushToken = '',
    String? pushPlatform = '',
    String? deviceType = '',
    String? osVersion = '',
    String? appVersion = '',
    String? devicePublicKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}",
  "confirmPassword": "${escapeStringForJson(confirmPassword)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "deviceName": "${escapeStringForJson(deviceName)}",
  "pushToken": "${escapeStringForJson(pushToken)}",
  "pushPlatform": "${escapeStringForJson(pushPlatform)}",
  "deviceType": "${escapeStringForJson(deviceType)}",
  "osVersion": "${escapeStringForJson(osVersion)}",
  "appVersion": "${escapeStringForJson(appVersion)}",
  "devicePublicKey": "${escapeStringForJson(devicePublicKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registration Create Credentials',
      apiUrl: '${baseUrl}/registration/create-credentials',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isSuccess(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  dynamic deviceTrusted(dynamic response) => getJsonField(
        response,
        r'''$.deviceTrusted''',
      );
  dynamic accessToken(dynamic response) => getJsonField(
        response,
        r'''$.accessToken''',
      );
  dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.refreshToken''',
      );
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RegistrationStatusCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Registration Status',
      apiUrl: '${baseUrl}/registration/status/${sessionToken}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? maskedAccount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.maskedAccount''',
      ));
  List<String>? nextActions(dynamic response) => (getJsonField(
        response,
        r'''$.nextActions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? startedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.startedAt''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailLoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? deviceId = 'deviceId',
    String? deviceName = 'deviceName',
    String? pushToken = 'pushToken',
    String? pushPlatform = 'web',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "deviceName": "${escapeStringForJson(deviceName)}",
  "pushToken": "${escapeStringForJson(pushToken)}",
  "pushPlatform": "${escapeStringForJson(pushPlatform)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Login',
      apiUrl: '${baseUrl}/auth/retail/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? unlockAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.unlockAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailLogoutCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Logout',
      apiUrl: '${baseUrl}/auth/retail/logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isSuccess(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailRefreshTokenCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "refreshToken": "${escapeStringForJson(refreshToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Refresh Token',
      apiUrl: '${baseUrl}/auth/retail/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSessionCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Session',
      apiUrl: '${baseUrl}/auth/retail/session',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? details(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.details''',
      ));
}

class RetailBillsPaymentCategoriesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bills Payment Categories',
      apiUrl: '${baseUrl}/retail/bills-payment/categories',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  List? categories(dynamic response) => getJsonField(
        response,
        r'''$.categories''',
        true,
      ) as List?;
  List<String>? categoryId(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryCode(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryName(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryDescription(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryIcon(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].icon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? categorySortOrder(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].sortOrder''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<bool>? categoryIsActive(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].isActive''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillsPaymentBillersCall {
  Future<ApiCallResponse> call({
    String? categoryId = '',
    String? search = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bills Payment Billers',
      apiUrl: '${baseUrl}/retail/bills-payment/billers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'categoryId': categoryId,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? billers(dynamic response) => getJsonField(
        response,
        r'''$.billers''',
        true,
      ) as List?;
  List<String>? billersId(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? billerCode(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].billerCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? shortName(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].shortName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? category(dynamic response) => getJsonField(
        response,
        r'''$.billers[:].category''',
        true,
      ) as List?;
  List<String>? categoryId(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].category.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryCode(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].category.code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? categoryName(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].category.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? accountNumberLabel(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].accountNumberLabel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isSupportsValidation(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].supportsValidation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? minAmount(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].minAmount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? maxAmount(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].maxAmount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? convenienceFee(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].convenienceFee''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<bool>? isActive(dynamic response) => (getJsonField(
        response,
        r'''$.billers[:].isActive''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillsPaymentBillerDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bills Payment Biller Details',
      apiUrl: '${baseUrl}/retail/bills-payment/billers/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isActive''',
      ));
  int? convenienceFee(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.convenienceFee''',
      ));
  int? maxAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.maxAmount''',
      ));
  int? minAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.minAmount''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerCode''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? shortName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.shortName''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  bool? supportsValidation(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.supportsValidation''',
      ));
  String? accountNumberLabel(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberLabel''',
      ));
  String? categoryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.category.name''',
      ));
  String? categoryCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.category.code''',
      ));
  String? categoryId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.category.id''',
      ));
  dynamic category(dynamic response) => getJsonField(
        response,
        r'''$.category''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillsPaymentValidateBillerAccountCall {
  Future<ApiCallResponse> call({
    String? billerId = '',
    String? accountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "billerId": "${escapeStringForJson(billerId)}",
  "accountNumber": "${escapeStringForJson(accountNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bills Payment Validate Biller Account',
      apiUrl: '${baseUrl}/retail/bills-payment/validate-account',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillsPaymentInitiateCall {
  Future<ApiCallResponse> call({
    dynamic billsPaymentSubmitBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final billsPaymentSubmitBody = _serializeJson(billsPaymentSubmitBodyJson);
    final ffApiRequestBody = '''
${billsPaymentSubmitBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bills Payment Initiate',
      apiUrl: '${baseUrl}/retail/bills-payment',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referenceNumber''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  int? convenienceFee(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.convenienceFee''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  bool? requiresOtp(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.requiresOtp''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccount.accountNumber''',
      ));
  dynamic sourceAccount(dynamic response) => getJsonField(
        response,
        r'''$.sourceAccount''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  int? totalAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalAmount''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillPaymentDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bill Payment Details',
      apiUrl: '${baseUrl}/retail/bills-payment/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referenceNumber''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  int? convenienceFee(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.convenienceFee''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  bool? requiresOtp(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.requiresOtp''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccount.accountNumber''',
      ));
  dynamic sourceAccount(dynamic response) => getJsonField(
        response,
        r'''$.sourceAccount''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  int? totalAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalAmount''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? remarks(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.remarks''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillPaymentSigningChallengeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bill Payment Signing Challenge',
      apiUrl: '${baseUrl}/retail/bills-payment/${id}/signing-challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  dynamic passkeyAvailable(dynamic response) => getJsonField(
        response,
        r'''$.passkeyAvailable''',
      );
}

class RetailBillPaymentConfirmSigningCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? id = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? credentialId = '',
    dynamic authenticatorResponseJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final authenticatorResponse = _serializeJson(authenticatorResponseJson);
    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bill Payment Confirm Signing',
      apiUrl: '${baseUrl}/retail/bills-payment/${id}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailBillPaymentConfirmSigningNewCall {
  Future<ApiCallResponse> call({
    String? id = '',
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bill Payment Confirm Signing New',
      apiUrl: '${baseUrl}/retail/bills-payment/${id}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
}

class RetailBillPaymentOTPConfirmCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? code = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(code)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bill Payment OTP Confirm',
      apiUrl: '${baseUrl}/retail/bills-payment/${id}/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referenceNumber''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  int? convenienceFee(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.convenienceFee''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  bool? requiresOtp(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.requiresOtp''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccount.accountNumber''',
      ));
  dynamic sourceAccount(dynamic response) => getJsonField(
        response,
        r'''$.sourceAccount''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  int? totalAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalAmount''',
      ));
  String? providerReferenceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.providerReferenceId''',
      ));
  String? confirmedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.confirmedAt''',
      ));
  String? processedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.processedAt''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailBillPaymentCancelPendingCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? code = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(code)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bill Payment Cancel Pending',
      apiUrl: '${baseUrl}/retail/bills-payment/${id}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referenceNumber''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  int? convenienceFee(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.convenienceFee''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  bool? requiresOtp(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.requiresOtp''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccount.accountNumber''',
      ));
  dynamic sourceAccount(dynamic response) => getJsonField(
        response,
        r'''$.sourceAccount''',
      );
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  int? totalAmount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalAmount''',
      ));
  String? providerReferenceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.providerReferenceId''',
      ));
  String? confirmedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.confirmedAt''',
      ));
  String? processedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.processedAt''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillsPaymentHistoryCall {
  Future<ApiCallResponse> call({
    String? fromDate = '',
    String? toDate = '',
    String? limit = '10',
    String? offset = '0',
    String? referenceNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail Bills Payment History',
        apiUrl: '${baseUrl}/retail/bills-payment/history',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {
          'fromDate': fromDate,
          'toDate': toDate,
          'limit': limit,
          'offset': offset,
          'referenceNumber': referenceNumber,
        },

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailBillsPaymentLimitsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bills Payment Limits',
      apiUrl: '${baseUrl}/retail/bills-payment/limits',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic limits(dynamic response) => getJsonField(
        response,
        r'''$.limits''',
      );
  int? dailyLimit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.limits.dailyLimit''',
      ));
  int? usedToday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.limits.usedToday''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.limits.remaining''',
      ));
  int? perTransactionMax(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.limits.perTransactionMax''',
      ));
  String? lastUpdated(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastUpdated''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSavedBillersAddCall {
  Future<ApiCallResponse> call({
    String? billerId = '',
    String? nickname = '',
    String? accountNumber = '',
    String? accountHolderName = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "billerId": "${escapeStringForJson(billerId)}",
  "nickname": "${escapeStringForJson(nickname)}",
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "accountHolderName": "${escapeStringForJson(accountHolderName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Saved Billers Add',
      apiUrl: '${baseUrl}/retail/saved-billers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nickname''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSavedBillersListCall {
  Future<ApiCallResponse> call({
    String? categoryId = '',
    String? search = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Saved Billers List',
      apiUrl: '${baseUrl}/retail/saved-billers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'categoryId': categoryId,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? savedBillers(dynamic response) => getJsonField(
        response,
        r'''$.savedBillers''',
        true,
      ) as List?;
  String? savedBillerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].id''',
      ));
  dynamic savedBiller(dynamic response) => getJsonField(
        response,
        r'''$.savedBillers[:].biller''',
      );
  String? savedBillerBillerId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].biller.id''',
      ));
  String? savedBillerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].biller.code''',
      ));
  String? savedBillerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].biller.name''',
      ));
  String? savedBillerCategory(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].biller.category''',
      ));
  String? savedBillerNickname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].nickname''',
      ));
  String? savedBillerAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].accountNumber''',
      ));
  String? savedBillerAccountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].accountHolderName''',
      ));
  String? savedBillerCreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.savedBillers[:].createdAt''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSavedBillerDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Saved Biller Details',
      apiUrl: '${baseUrl}/retail/saved-billers/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nickname''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSavedBillerUpdateCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? nickname = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "nickname": "${escapeStringForJson(nickname)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Saved Biller Update',
      apiUrl: '${baseUrl}/retail/saved-billers/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  dynamic biller(dynamic response) => getJsonField(
        response,
        r'''$.biller''',
      );
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.id''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nickname''',
      ));
  String? billerCategory(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.category''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.name''',
      ));
  String? billerCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.biller.code''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSavedBillerDeleteCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Saved Biller Delete',
      apiUrl: '${baseUrl}/retail/saved-billers/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailAuthBiometricRegisterCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? deviceName = '',
    String? publicKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "deviceName": "${escapeStringForJson(deviceName)}",
  "publicKey": "${escapeStringForJson(publicKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Biometric Register',
      apiUrl: '${baseUrl}/auth/retail/biometric/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? deviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceId''',
      ));
  bool? enrolled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.enrolled''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailAuthBiometricLoginCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? signature = '',
    String? challenge = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "signature": "${escapeStringForJson(signature)}",
  "challenge": "${escapeStringForJson(challenge)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Biometric Login',
      apiUrl: '${baseUrl}/auth/retail/biometric/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailAuthBiometricChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Biometric Challenge',
      apiUrl: '${baseUrl}/auth/retail/biometric/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailAuthBiometricDevicesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Biometric Devices',
      apiUrl: '${baseUrl}/auth/retail/biometric/devices',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deviceId(dynamic response) => (getJsonField(
        response,
        r'''$[:].deviceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deviceName(dynamic response) => (getJsonField(
        response,
        r'''$[:].deviceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isEnabled(dynamic response) => (getJsonField(
        response,
        r'''$[:].enabled''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? lastUsedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].lastUsedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? devices(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailAuthBiometricDeleteDeviceCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Biometric Delete Device',
      apiUrl: '${baseUrl}/auth/retail/biometric/devices/${deviceId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? revoked(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.revoked''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile',
      apiUrl: '${baseUrl}/profile',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class PatchProfileCall {
  Future<ApiCallResponse> call({
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
{
  "firstName": "Maria",
  "lastName": "Santos",
  "phone": "09189876543",
  "avatar": "https://static.vecteezy.com/system/resources/previews/007/468/938/non_2x/colorful-simple-flat-of-business-man-icon-or-symbol-people-concept-illustration-vector.jpg"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Patch Profile',
      apiUrl: '${baseUrl}/profile',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentDecodeCall {
  Future<ApiCallResponse> call({
    String? qrData = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "qrData": "${escapeStringForJson(qrData)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Decode',
      apiUrl: '${baseUrl}/retail/qr-payment/decode',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  dynamic recipient(dynamic response) => getJsonField(
        response,
        r'''$.recipient''',
      );
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipient.name''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipient.accountNumber''',
      ));
  String? bankCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipient.bankCode''',
      ));
  String? merchantId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipient.merchantId''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentInitiateCall {
  Future<ApiCallResponse> call({
    dynamic paymentBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final paymentBody = _serializeJson(paymentBodyJson);
    final ffApiRequestBody = '''
${paymentBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Initiate',
      apiUrl: '${baseUrl}/retail/qr-payment',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referenceNumber''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  bool? requiresSigning(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.requiresSigning''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccount.accountNumber''',
      ));
  dynamic sourceAccount(dynamic response) => getJsonField(
        response,
        r'''$.sourceAccount''',
      );
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? recipientBankCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.recipient.bankCode''',
      ));
  String? recipientAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.recipient.accountNumber''',
      ));
  String? recipientNme(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipient.name''',
      ));
  dynamic recipient(dynamic response) => getJsonField(
        response,
        r'''$.recipient''',
      );
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Details',
      apiUrl: '${baseUrl}/retail/qr-payment/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentOTPConfirmCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment OTP Confirm',
      apiUrl: '${baseUrl}/retail/qr-payment/${id}/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailQRPaymentSigningChallengeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Signing Challenge',
      apiUrl: '${baseUrl}/retail/qr-payment/${id}/signing-challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentMpinBioSigningCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment MpinBio Signing',
      apiUrl: '${baseUrl}/retail/qr-payment/${id}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentPasskeySigningCall {
  Future<ApiCallResponse> call({
    String? id = '',
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Passkey Signing',
      apiUrl: '${baseUrl}/retail/qr-payment/${id}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailQRPaymentCancelCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Cancel',
      apiUrl: '${baseUrl}/retail/qr-payment/${id}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentHistoryCall {
  Future<ApiCallResponse> call({
    int? limit,
    int? offset,
    String? qrType = '',
    String? status = '',
    String? fromDate = '',
    String? toDate = '',
    String? referenceNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail QR Payment History',
        apiUrl: '${baseUrl}/retail/qr-payment/history',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {
          'limit': limit,
          'offset': offset,
          'qrType': qrType,
          'fromDate': fromDate,
          'toDate': toDate,
          'referenceNumber': referenceNumber,
        },

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  bool? hasMore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.pagination.hasMore''',
      ));
  int? totalItems(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.total''',
      ));
  int? limit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.limit''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentLimitsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Limits',
      apiUrl: '${baseUrl}/retail/qr-payment/limits',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  String? qrType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrType''',
      ));
  bool? amountEditable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.amountEditable''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailQRPaymentGenerateCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    double? amount,
    String? referenceNumber = '',
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "amount": ${amount},
  "reference": "${escapeStringForJson(referenceNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail QR Payment Generate',
      apiUrl: '${baseUrl}/retail/qr-payment/generate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? qrCodeData(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrCodeData''',
      ));
  String? qrCodeImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.qrCodeImage''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  String? accountName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountName''',
      ));
  int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? ref(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reference''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPSigningChallengeCall {
  Future<ApiCallResponse> call({
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Signing Challenge',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment/signing-challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Details',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerId''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? maxOccurrences(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.maxOccurrences''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPEditCall {
  Future<ApiCallResponse> call({
    String? id = '',
    double? amount,
    String? remarks = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "amount": ${amount},
  "remarks": "${escapeStringForJson(remarks)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Edit',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerId''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? maxOccurrences(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.maxOccurrences''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPCancelCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Cancel',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerId''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? maxOccurrences(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.maxOccurrences''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPPauseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Pause',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment/${id}/pause',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerId''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? maxOccurrences(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.maxOccurrences''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPResumeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Resume',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment/${id}/resume',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? billerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerId''',
      ));
  String? sourceAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.sourceAccountNumber''',
      ));
  String? accountHolderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountHolderName''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  int? maxOccurrences(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.maxOccurrences''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPCreateCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Create',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledBPCreatePasskeySigningCall {
  Future<ApiCallResponse> call({
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP Create Passkey Signing',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailScheduledBPListCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled BP List',
      apiUrl: '${baseUrl}/retail/scheduled-bills-payment',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? nextRunAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nextRunAt''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? billerName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.billerName''',
      ));
  String? accountNumberMasked(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.accountNumberMasked''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? frequencyDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.frequencyDescription''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailDashboardCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Dashboard',
      apiUrl: '${baseUrl}/retail/dashboard/overview',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailDashboardAccountsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Dashboard Accounts',
      apiUrl: '${baseUrl}/retail/dashboard/accounts',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? accounts(dynamic response) => getJsonField(
        response,
        r'''$.accounts''',
        true,
      ) as List?;
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailDashboardAccountTransactionsCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    int? limit,
    int? offset,
    String? fromDate = '',
    String? toDate = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Dashboard Account Transactions',
      apiUrl:
          '${baseUrl}/retail/dashboard/accounts/${accountNumber}/transactions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'fromDate': fromDate,
        'toDate': toDate,
        'limit': limit,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? transactions(dynamic response) => getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?;
  dynamic pagination(dynamic response) => getJsonField(
        response,
        r'''$.pagination''',
      );
  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.total''',
      ));
  int? limit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.limit''',
      ));
  int? offset(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pagination.offset''',
      ));
  bool? hasMore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.pagination.hasMore''',
      ));
  String? accountNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accountNumber''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List<String>? transactionId(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? transactionDate(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transactionDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? valueDate(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].valueDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? currency(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].currency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? direction(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].direction''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? referenceNumber(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].referenceNumber''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? runningBalance(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].runningBalance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? category(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class InitiateFundTransferCall {
  Future<ApiCallResponse> call({
    String? transferTypeE = '',
    String? sourceAccountNumber = '',
    String? destinationAccountNumber = '',
    String? destinationBankCode = '',
    double? amount,
    String? currency = '',
    String? remarks = '',
    String? destinationAccountHolderName = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "transferType": "${escapeStringForJson(transferTypeE)}",
  "sourceAccountNumber": "${escapeStringForJson(sourceAccountNumber)}",
  "destinationAccountNumber": "${escapeStringForJson(destinationAccountNumber)}",
  "destinationAccountHolderName": "${escapeStringForJson(destinationAccountHolderName)}",
  "destinationBankCode": "${escapeStringForJson(destinationBankCode)}",
  "amount": ${amount},
  "currency": "${escapeStringForJson(currency)}",
  "remarks": "${escapeStringForJson(remarks)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Initiate Fund Transfer',
      apiUrl: '${baseUrl}/retail/transfers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetTransferHistoryCall {
  Future<ApiCallResponse> call({
    String? search = '',
    String? endDate = '',
    String? startDate = '',
    String? status = '',
    String? transferType = '',
    int? limit,
    int? page,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Get Transfer History',
        apiUrl: '${baseUrl}/retail/transfers',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {
          'search': search,
          'endDate': endDate,
          'startDate': startDate,
          'status': status,
          'transferType': transferType,
          'limit': limit,
          'page': page,
        },

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class ConfirmTransactionCall {
  Future<ApiCallResponse> call({
    String? transferId = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm Transaction',
      apiUrl: '${baseUrl}/retail/transfers/${transferId}/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class CancelTransactionCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Cancel Transaction',
      apiUrl: '${baseUrl}/retail/transfers/${id}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class GetTransferDetailsByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transfer Details By ID',
      apiUrl: '${baseUrl}/retail/transfers/{id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetTransferTypesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transfer Types',
      apiUrl: '${baseUrl}/retail/transfers/types',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? transactionType(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetTransferLimitsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transfer Limits',
      apiUrl: '${baseUrl}/retail/transfers/limits',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? transactionLimits(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class ValidateAccountCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? bankCode = '',
    String? transferType = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "bankCode": "${escapeStringForJson(bankCode)}",
  "transferType": "${escapeStringForJson(transferType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Validate Account',
      apiUrl: '${baseUrl}/retail/transfers/validate-account',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?;
  dynamic isValid(dynamic response) => getJsonField(
        response,
        r'''$.isValid''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetSupportedBanksCall {
  Future<ApiCallResponse> call({
    String? network = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Supported Banks',
      apiUrl: '${baseUrl}/retail/transfers/banks',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class DashboardQuickActionsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Dashboard Quick Actions',
      apiUrl: '${baseUrl}/retail/dashboard/quick-actions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class GetBanksCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Banks',
      apiUrl: '${baseUrl}/retail/transfers/banks',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? bankResponse(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsProfileDetailsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Profile Details',
      apiUrl: '${baseUrl}/retail/settings/profile',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsProfileUpdateCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? phone = '',
    String? avatar = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "firstName": "${escapeStringForJson(firstName)}",
  "lastName": "${escapeStringForJson(lastName)}",
  "phone": "${escapeStringForJson(phone)}",
  "avatar": "${escapeStringForJson(avatar)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Profile Update',
      apiUrl: '${baseUrl}/retail/settings/profile',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? customerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updatedAt''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdAt''',
      ));
  String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsPasswordChangeCall {
  Future<ApiCallResponse> call({
    String? currentPassword = '',
    String? newPassword = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "currentPassword": "${escapeStringForJson(currentPassword)}",
  "newPassword": "${escapeStringForJson(newPassword)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Password Change',
      apiUrl: '${baseUrl}/retail/settings/password/change',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionId''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsPasswordChangeChallengeCall {
  Future<ApiCallResponse> call({
    String? currentPassword = '',
    String? newPassword = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "currentPassword": "${escapeStringForJson(currentPassword)}",
  "newPassword": "${escapeStringForJson(newPassword)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Password Change Challenge',
      apiUrl: '${baseUrl}/retail/settings/password/change/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionId''',
      ));
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  List<String>? messageasw(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsPasswordChangeConfirmOtpCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? sessionId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}",
  "sessionId": "${escapeStringForJson(sessionId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Password Change Confirm Otp',
      apiUrl: '${baseUrl}/retail/settings/password/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsPasswordChangeConfirmChallengeCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Password Change Confirm Challenge',
      apiUrl: '${baseUrl}/retail/settings/password/change/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailAuthUsernameRecoveryInitiateCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? idLastFourDigits = '',
    String? dateOfBirth = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "idLastFourDigits": "${escapeStringForJson(idLastFourDigits)}",
  "dateOfBirth": "${escapeStringForJson(dateOfBirth)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Username Recovery Initiate',
      apiUrl: '${baseUrl}/auth/retail/recovery/username/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpChannel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpChannel''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  int? retryAfter(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.retryAfter''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailAuthUsernameRecoveryVerifyOtpCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Username Recovery Verify Otp',
      apiUrl: '${baseUrl}/auth/retail/recovery/username/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? maskedUsername(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.maskedUsername''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RetailAuthPasswordRecoveryInitiateCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? accountNumber = '',
    String? email = '',
    String? dateOfBirth = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "email": "${escapeStringForJson(email)}",
  "dateOfBirth": "${escapeStringForJson(dateOfBirth)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Password Recovery Initiate',
      apiUrl: '${baseUrl}/auth/retail/recovery/password/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? retryAfter(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.retryAfter''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpChannel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpChannel''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailAuthMpinRecoveryInitiateCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? accountNumber = '',
    String? email = '',
    String? dateOfBirth = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "email": "${escapeStringForJson(email)}",
  "dateOfBirth": "${escapeStringForJson(dateOfBirth)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Mpin Recovery Initiate',
      apiUrl: '${baseUrl}/auth/retail/recovery/mpin/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? retryAfter(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.retryAfter''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpChannel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.otpChannel''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
}

class RetailAuthPasswordRecoveryVerifyOtpCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Password Recovery Verify Otp',
      apiUrl: '${baseUrl}/auth/retail/recovery/password/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? resetToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resetToken''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RetailAuthMpinRecoveryVerifyOtpCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Mpin Recovery Verify Otp',
      apiUrl: '${baseUrl}/auth/retail/recovery/mpin/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? resetToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resetToken''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RetailAuthPasswordRecoveryResetCall {
  Future<ApiCallResponse> call({
    String? resetToken = '',
    String? newPassword = '',
    String? confirmPassword = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "resetToken": "${escapeStringForJson(resetToken)}",
  "newPassword": "${escapeStringForJson(newPassword)}",
  "confirmPassword": "${escapeStringForJson(confirmPassword)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Password Recovery Reset',
      apiUrl: '${baseUrl}/auth/retail/recovery/password/reset',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RetailAuthMpinRecoveryResetCall {
  Future<ApiCallResponse> call({
    String? resetToken = '',
    String? newMpin = '',
    String? confirmMpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "resetToken": "${escapeStringForJson(resetToken)}",
  "newMpin": "${escapeStringForJson(newMpin)}",
  "confirmMpin": "${escapeStringForJson(confirmMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Mpin Recovery Reset',
      apiUrl: '${baseUrl}/auth/retail/recovery/mpin/reset',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RetailSettingsMpinStatusCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Mpin Status',
      apiUrl: '${baseUrl}/retail/settings/mpin/status',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isSet(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isSet''',
      ));
  bool? canChange(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.canChange''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailAuthMpinLoginCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? mpin = '',
    String? challenge = '',
    String? signature = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "mpin": "${escapeStringForJson(mpin)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Mpin Login',
      apiUrl: '${baseUrl}/auth/retail/mpin/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.accessToken''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refreshToken''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? unlockAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.unlockAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailAuthMpinChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Auth Mpin Challenge',
      apiUrl: '${baseUrl}/auth/retail/mpin/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailConfigMpinCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Config Mpin',
      apiUrl: '${baseUrl}/retail/config/mpin',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? mpinLength(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mpinLength''',
      ));
}

class RetailSettingsMpinSetCall {
  Future<ApiCallResponse> call({
    String? mpin = '',
    String? confirmMpin = '',
    bool? isTrustDevice,
    String? devicePublicKey = '',
    dynamic jsonBodyJson,
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final jsonBody = _serializeJson(jsonBodyJson);
    final ffApiRequestBody = '''
{
  "mpin": "${escapeStringForJson(mpin)}",
  "confirmMpin": "${escapeStringForJson(confirmMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Mpin Set',
      apiUrl: '${baseUrl}/retail/settings/mpin/set',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
        'X-Device-ID': '${deviceId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isDeviceTrusted(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.deviceTrusted''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsMpinChangeCall {
  Future<ApiCallResponse> call({
    String? currentMpin = '',
    String? newMpin = '',
    String? confirmNewMpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "currentMpin": "${escapeStringForJson(currentMpin)}",
  "newMpin": "${escapeStringForJson(newMpin)}",
  "confirmNewMpin": "${escapeStringForJson(confirmNewMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Mpin Change',
      apiUrl: '${baseUrl}/retail/settings/mpin/change',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsMpinVerifyCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? currentMpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "currentMpin": "${escapeStringForJson(currentMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Mpin Verify',
      apiUrl: '${baseUrl}/retail/settings/mpin/change/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsBiometricCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Biometric',
      apiUrl: '${baseUrl}/retail/settings/biometric',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
        'x-device-id': '${deviceId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  bool? isEnabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.enabled''',
      ));
  bool? isRegistered(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isRegistered''',
      ));
  bool? isBiometricEnrolled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isBiometricEnrolled''',
      ));
  String? deviceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceName''',
      ));
  String? deviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceId''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsBiometricToggleCall {
  Future<ApiCallResponse> call({
    bool? enabled,
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "enabled": ${enabled}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Biometric Toggle',
      apiUrl: '${baseUrl}/retail/settings/biometric',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
        'x-device-id': '${deviceId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  bool? isValid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.valid''',
      ));
  bool? isEnabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.enabled''',
      ));
  bool? isRegistered(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isRegistered''',
      ));
  dynamic isBiometricEnrolled(dynamic response) => getJsonField(
        response,
        r'''$.isBiometricEnrolled''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsNotificationsPreferencesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Notifications Preferences',
      apiUrl: '${baseUrl}/retail/settings/notifications',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? categories(dynamic response) => getJsonField(
        response,
        r'''$.categories''',
        true,
      ) as List?;
  List<String>? key(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].key''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? anme(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? alertCount(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].alertCount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? eventTypes(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].eventTypes''',
        true,
      ) as List?;
  List<String>? eventTypesName(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? eventTypesKey(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].key''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? eventTypesDescription(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? eventTypesEnabled(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].enabled''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? eventTypesSms(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].sms''',
        true,
      ) as List?;
  List<bool>? eventTypesSMSEnabled(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].sms.enabled''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? eventTypesSMSAvailable(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].sms.available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? eventTypesEmail(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].email''',
        true,
      ) as List?;
  List<bool>? eventTypesEmailAvailable(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].email.available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? eventTypesEmailEnabled(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].email.enabled''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List? eventTypesPush(dynamic response) => getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].push''',
        true,
      ) as List?;
  List<bool>? eventTypesPushAvailable(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].push.available''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? eventTypesPushEnabled(dynamic response) => (getJsonField(
        response,
        r'''$.categories[:].eventTypes[:].push.enabled''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsNotificationPreferencesUpdateCall {
  Future<ApiCallResponse> call({
    String? eventType = '',
    bool? enabled,
    bool? smsEnabled,
    bool? emailEnabled,
    bool? pushEnabled,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "preferences": [
    {
      "eventType": "${escapeStringForJson(eventType)}",
      "enabled": ${enabled},
      "smsEnabled": ${smsEnabled},
      "emailEnabled": ${emailEnabled},
      "pushEnabled": ${pushEnabled}
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Notification Preferences Update',
      apiUrl: '${baseUrl}/retail/settings/notifications',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDevicesListCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Devices List',
      apiUrl: '${baseUrl}/retail/settings/devices',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deviceId(dynamic response) => (getJsonField(
        response,
        r'''$[:].deviceId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? deviceName(dynamic response) => (getJsonField(
        response,
        r'''$[:].deviceName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? enabled(dynamic response) => (getJsonField(
        response,
        r'''$[:].enabled''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? hasBiometric(dynamic response) => (getJsonField(
        response,
        r'''$[:].hasBiometric''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? trusted(dynamic response) => (getJsonField(
        response,
        r'''$[:].trusted''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? lastUsedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].lastUsedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? registeredAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].registeredAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isCurrent(dynamic response) => (getJsonField(
        response,
        r'''$[:].isCurrent''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<bool>? hasDeviceKey(dynamic response) => (getJsonField(
        response,
        r'''$[:].hasDeviceKey''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceDetailsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Details',
      apiUrl: '${baseUrl}/retail/settings/devices/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? deviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceId''',
      ));
  String? deviceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceName''',
      ));
  bool? enabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.enabled''',
      ));
  bool? hasBiometric(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.hasBiometric''',
      ));
  bool? trusted(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.trusted''',
      ));
  String? registeredAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.registeredAt''',
      ));
  bool? isCurrent(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isCurrent''',
      ));
  bool? hasDeviceKey(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.hasDeviceKey''',
      ));
  String? lastUsedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastUsedAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceRemoveCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Remove',
      apiUrl: '${baseUrl}/retail/settings/devices/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsDeviceRemoveConfirmOTPCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? otp = '',
    String? sessionId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}",
  "sessionId": "${escapeStringForJson(sessionId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Remove Confirm OTP',
      apiUrl: '${baseUrl}/retail/settings/devices/${id}/confirm-remove',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsDeviceRegisterCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? deviceName = '',
    String? pushToken = '',
    String? pushPlatform = '',
    String? deviceType = '',
    String? osVersion = '',
    String? appVersion = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "deviceName": "${escapeStringForJson(deviceName)}",
  "pushToken": "${escapeStringForJson(pushToken)}",
  "pushPlatform": "${escapeStringForJson(pushPlatform)}",
  "deviceType": "${escapeStringForJson(deviceType)}",
  "osVersion": "${escapeStringForJson(osVersion)}",
  "appVersion": "${escapeStringForJson(appVersion)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Register',
      apiUrl: '${baseUrl}/retail/settings/devices/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? deviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceId''',
      ));
  String? deviceName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deviceName''',
      ));
  bool? isEnabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.enabled''',
      ));
  bool? hasBiometric(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.hasBiometric''',
      ));
  bool? trusted(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.trusted''',
      ));
  String? registeredAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.registeredAt''',
      ));
  bool? hasDeviceKey(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.hasDeviceKey''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDevicePushNotifTokenCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? pushToken = '',
    String? pushPlatform = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "pushToken": "${escapeStringForJson(pushToken)}",
  "pushPlatform": "${escapeStringForJson(pushPlatform)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Push Notif Token',
      apiUrl: '${baseUrl}/retail/settings/devices/${deviceId}/push-token',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceInitiateTrustCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Initiate Trust',
      apiUrl: '${baseUrl}/retail/settings/devices/${deviceId}/trust',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionId''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceInitiateTrustConfirmOtpCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? sessionId = '',
    String? otp = '',
    String? devicePublicKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionId": "${escapeStringForJson(sessionId)}",
  "otp": "${escapeStringForJson(otp)}",
  "devicePublicKey": "${escapeStringForJson(devicePublicKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Initiate Trust Confirm Otp',
      apiUrl: '${baseUrl}/retail/settings/devices/${deviceId}/trust/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceRevokeTrustCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Revoke Trust',
      apiUrl: '${baseUrl}/retail/settings/devices/${deviceId}/trust',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceTrustRequestCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? devicePublicKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "devicePublicKey": "${escapeStringForJson(devicePublicKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Trust Request',
      apiUrl: '${baseUrl}/retail/settings/devices/${deviceId}/trust/request',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailSettingsListPendingDeviceTrustRequestsCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings List Pending Device Trust Requests',
      apiUrl: '${baseUrl}/retail/settings/device-trust-requests/pending',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
        'X-Device-ID': '${deviceId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailSettingsSigningChallengeForDeviceTrustApprovalCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Signing Challenge For Device Trust Approval',
      apiUrl:
          '${baseUrl}/retail/settings/device-trust-requests/${id}/approve/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  dynamic passkeyAvailable(dynamic response) => getJsonField(
        response,
        r'''$.passkeyAvailable''',
      );
  dynamic requestingDevice(dynamic response) => getJsonField(
        response,
        r'''$.requestingDevice''',
      );
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RetailSettingsDeviceTrustConfirmSigningCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Trust Confirm Signing',
      apiUrl:
          '${baseUrl}/retail/settings/device-trust-requests/${id}/approve/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailSettingsActivityCall {
  Future<ApiCallResponse> call({
    int? take,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Activity',
      apiUrl: '${baseUrl}/retail/settings/activity',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'take': take,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.meta''',
      );
  int? page(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.page''',
      ));
  int? take(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.take''',
      ));
  int? itemCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.itemCount''',
      ));
  int? pageCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.pageCount''',
      ));
  bool? hasPreviousPage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.meta.hasPreviousPage''',
      ));
  bool? hasNextPage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.meta.hasNextPage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsLoginHistoryCall {
  Future<ApiCallResponse> call({
    int? page,
    int? take,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Login History',
      apiUrl: '${baseUrl}/retail/settings/login-history',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'page': page,
        'take': take,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.meta''',
      );
  int? page(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.page''',
      ));
  int? take(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.take''',
      ));
  int? itemCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.itemCount''',
      ));
  int? pageCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.pageCount''',
      ));
  bool? hasPreviousPage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.meta.hasPreviousPage''',
      ));
  bool? hasNextPage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.meta.hasNextPage''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsTransactionLimitsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Transaction Limits',
      apiUrl: '${baseUrl}/retail/settings/limits',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic dailyTransferLimit(dynamic response) => getJsonField(
        response,
        r'''$.dailyTransferLimit''',
      );
  int? dailyTransferLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.current''',
      ));
  int? dailyBillsPaymentLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.maximum''',
      ));
  int? dailyBillsPaymentLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.default''',
      ));
  int? dailyBillsPaymentLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.current''',
      ));
  dynamic dailyBillsPaymentLimit(dynamic response) => getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit''',
      );
  int? perTransactionLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.maximum''',
      ));
  int? perTransactionLimitPerTransactionLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.default''',
      ));
  int? perTransactionLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.current''',
      ));
  dynamic perTransactionLimit(dynamic response) => getJsonField(
        response,
        r'''$.perTransactionLimit''',
      );
  int? dailyTransferLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.maximum''',
      ));
  int? dailyTransferLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.default''',
      ));
  dynamic body(dynamic response) => getJsonField(
        response,
        r'''$.body''',
      );
  dynamic limits(dynamic response) => getJsonField(
        response,
        r'''$.limits''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsTransactionLimitsUpdateCall {
  Future<ApiCallResponse> call({
    dynamic updatesJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final updates = _serializeJson(updatesJson, true);
    final ffApiRequestBody = '''
{
  "updates": 
 ${updates}
   
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Transaction Limits Update',
      apiUrl: '${baseUrl}/retail/settings/limits',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic dailyTransferLimit(dynamic response) => getJsonField(
        response,
        r'''$.dailyTransferLimit''',
      );
  int? dailyTransferLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.current''',
      ));
  int? dailyBillsPaymentLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.maximum''',
      ));
  int? dailyBillsPaymentLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.default''',
      ));
  int? dailyBillsPaymentLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.current''',
      ));
  dynamic dailyBillsPaymentLimit(dynamic response) => getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit''',
      );
  int? perTransactionLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.maximum''',
      ));
  int? perTransactionLimitPerTransactionLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.default''',
      ));
  int? perTransactionLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.current''',
      ));
  dynamic perTransactionLimit(dynamic response) => getJsonField(
        response,
        r'''$.perTransactionLimit''',
      );
  int? dailyTransferLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.maximum''',
      ));
  int? dailyTransferLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.default''',
      ));
  dynamic limits(dynamic response) => getJsonField(
        response,
        r'''$.limits''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsTransactionLimitsUpdateConfirmOtpCall {
  Future<ApiCallResponse> call({
    String? otp = '',
    String? sessionId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "otp": "${escapeStringForJson(otp)}",
  "sessionId": "${escapeStringForJson(sessionId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Transaction Limits Update Confirm Otp',
      apiUrl: '${baseUrl}/retail/settings/limits/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic dailyTransferLimit(dynamic response) => getJsonField(
        response,
        r'''$.dailyTransferLimit''',
      );
  int? dailyTransferLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.current''',
      ));
  int? dailyBillsPaymentLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.maximum''',
      ));
  int? dailyBillsPaymentLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.default''',
      ));
  int? dailyBillsPaymentLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit.current''',
      ));
  dynamic dailyBillsPaymentLimit(dynamic response) => getJsonField(
        response,
        r'''$.dailyBillsPaymentLimit''',
      );
  int? perTransactionLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.maximum''',
      ));
  int? perTransactionLimitPerTransactionLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.default''',
      ));
  int? perTransactionLimitCurrent(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.perTransactionLimit.current''',
      ));
  dynamic perTransactionLimit(dynamic response) => getJsonField(
        response,
        r'''$.perTransactionLimit''',
      );
  int? dailyTransferLimitMaximum(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.maximum''',
      ));
  int? dailyTransferLimitDefault(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.dailyTransferLimit.default''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeactivateAccountCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Deactivate Account',
      apiUrl: '${baseUrl}/retail/settings/deactivate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? sessionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionId''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailSettingsDeactivateAccountConfirmCall {
  Future<ApiCallResponse> call({
    String? reason = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "reason": "${escapeStringForJson(reason)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Deactivate Account Confirm',
      apiUrl: '${baseUrl}/retail/settings/deactivate/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailInboxNotificationsCall {
  Future<ApiCallResponse> call({
    String? order = 'DESC',
    int? page = 1,
    int? take = 10,
    int? q,
    bool? unreadOnly,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Inbox Notifications',
      apiUrl: '${baseUrl}/retail/inbox',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'order': order,
        'page': page,
        'take': take,
        'q': q,
        'unreadOnly': unreadOnly,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  dynamic meta(dynamic response) => getJsonField(
        response,
        r'''$.meta''',
      );
  int? page(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.page''',
      ));
  int? take(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.take''',
      ));
  int? itemCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.itemCount''',
      ));
  int? pageCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meta.pageCount''',
      ));
  bool? hasPreviousPage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.meta.hasPreviousPage''',
      ));
  bool? hasNextPage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.meta.hasNextPage''',
      ));
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? kind(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].kind''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? severity(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].severity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? source(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].source''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? expiresAt(dynamic response) => getJsonField(
        response,
        r'''$.data[:].expiresAt''',
        true,
      ) as List?;
  List? readAt(dynamic response) => getJsonField(
        response,
        r'''$.data[:].readAt''',
        true,
      ) as List?;
  List? action(dynamic response) => getJsonField(
        response,
        r'''$.data[:].action''',
        true,
      ) as List?;
  List<String>? body(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].body''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetAllFeatureFlagsCall {
  Future<ApiCallResponse> call({
    String? customerType = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Feature Flags',
      apiUrl: '${baseUrl}/feature-flags',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'customerType': customerType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic flags(dynamic response) => getJsonField(
        response,
        r'''$.flags''',
      );
  dynamic flagDetails(dynamic response) => getJsonField(
        response,
        r'''$.flagDetails''',
      );
  String? fetchedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.fetchedAt''',
      ));
  int? ttl(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ttl''',
      ));
  bool? instantTransfers(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.instant_transfers''',
      ));
  bool? mobileBanking(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.mobile_banking''',
      ));
  bool? retailAccountPreferences(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_account_preferences''',
      ));
  bool? retailBillPayments(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_bill_payments''',
      ));
  bool? retailBillsPayment(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_bills_payment''',
      ));
  bool? retailBillsPaymentSaveBiller(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_bills_payment_save_biller''',
      ));
  bool? retailBillsPaymentSigning(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_bills_payment_signing''',
      ));
  bool? retailBiometricLogin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_biometric_login''',
      ));
  bool? retailCustomerInbox(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_customer_inbox''',
      ));
  bool? retailDashboard(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_dashboard''',
      ));
  bool? retailDeviceRegistration(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_device_registration''',
      ));
  bool? retailLogin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_login''',
      ));
  bool? retailMpinEnabled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_mpin_enabled''',
      ));
  bool? retailMpinLogin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_mpin_login''',
      ));
  bool? retailNotificationPreferences(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_notification_preferences''',
      ));
  bool? retailOnboarding(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_onboarding''',
      ));
  bool? retailPasswordReset(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_password_reset''',
      ));
  bool? retailPushNotifications(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_push_notifications''',
      ));
  bool? retailQrPayments(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_qr_payments''',
      ));
  bool? retailQuickTransfers(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_quick_transfers''',
      ));
  bool? retailSelfRegistration(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_self_registration''',
      ));
  bool? retailTransferInstapay(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_transfer_instapay''',
      ));
  bool? retailTransferOtherPbb(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_transfer_other_pbb''',
      ));
  bool? retailTransferOwnAccount(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_transfer_own_account''',
      ));
  bool? retailTransferPesonet(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_transfer_pesonet''',
      ));
  bool? retailTransfers(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_transfers''',
      ));
  bool? retailTransferSigning(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_transfer_signing''',
      ));
  bool? retailUsernameRecovery(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_username_recovery''',
      ));
  bool? retailUserSettings(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.flags.retail_user_settings''',
      ));
  bool? unifiedTransactionLimits(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.flags.unified_transaction_limits''',
      ));
}

class RetailCryptoWalletCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Crypto Wallet',
      apiUrl: '${baseUrl}/crypto/wallet',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailCryptoWalletStatusCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Crypto Wallet Status',
      apiUrl: '${baseUrl}/crypto/wallet/status',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailCryptoTransactionsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Crypto Transactions',
      apiUrl: '${baseUrl}/crypto/transactions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetTransactionByHashCall {
  Future<ApiCallResponse> call({
    String? txHash = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Transaction By Hash',
      apiUrl: '${baseUrl}/crypto/transactions/${txHash}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class TransferCryptoToOthersCall {
  Future<ApiCallResponse> call({
    String? toUsername = '',
    String? currency = '',
    String? amount = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "toUsername": "${escapeStringForJson(toUsername)}",
  "currency": "${escapeStringForJson(currency)}",
  "amount": "${escapeStringForJson(amount)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Transfer Crypto To Others',
      apiUrl: '${baseUrl}/crypto/wallet/transfer',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class GetBeneficiariesCall {
  Future<ApiCallResponse> call({
    String? transferType = '',
    String? bankCode = '',
    String? search = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Beneficiaries',
      apiUrl: '${baseUrl}/retail/beneficiaries',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'transferType': transferType,
        'bankCode': bankCode,
        'search': search,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class AddBeneficiariyCall {
  Future<ApiCallResponse> call({
    String? nickname = '',
    String? accountNumber = '',
    String? accountHolderName = '',
    String? bankCode = '',
    String? bankName = '',
    String? transferType = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "nickname": "${escapeStringForJson(nickname)}",
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "accountHolderName": "${escapeStringForJson(accountHolderName)}",
  "bankCode": "${escapeStringForJson(bankCode)}",
  "bankName": "${escapeStringForJson(bankName)}",
  "transferType": "${escapeStringForJson(transferType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Beneficiariy',
      apiUrl: '${baseUrl}/retail/beneficiaries',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class AccountPreferencesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Account Preferences',
      apiUrl: '${baseUrl}/retail/accounts/preferences',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class PatchAliasCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? alias = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{"alias": "${escapeStringForJson(alias)}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Patch Alias',
      apiUrl: '${baseUrl}/retail/accounts/${accountNumber}/alias',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class AccountCardReorderCall {
  Future<ApiCallResponse> call({
    List<String>? accountNumbersList,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );
    final accountNumbers = _serializeList(accountNumbersList);

    final ffApiRequestBody = '''
{
  "accountNumbers": ${accountNumbers}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Account Card Reorder',
      apiUrl: '${baseUrl}/retail/accounts/reorder',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class AccountNumberVisibilityCall {
  Future<ApiCallResponse> call({
    bool? isVisible,
    String? accountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "isVisible": ${isVisible}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Account Number Visibility',
      apiUrl: '${baseUrl}/retail/accounts/${accountNumber}/visibility',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class GetBalanceByAccountNumberCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Balance By Account Number',
      apiUrl: '${baseUrl}/retail/accounts/${accountNumber}/balance',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic body(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  int? availableBalance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.availableBalance''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailTransfersSigningChallengeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Transfers Signing Challenge',
      apiUrl: '${baseUrl}/retail/transfers/${id}/signing-challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailTransfersConfirmSigningCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? credentialId = '',
    dynamic authenticatorResponseJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final authenticatorResponse = _serializeJson(authenticatorResponseJson);
    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "credentialId": "${escapeStringForJson(credentialId)}",
  "authenticatorResponse": ${authenticatorResponse}
 
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail Transfers Confirm Signing',
        apiUrl: '${baseUrl}/retail/transfers/${id}/confirm-signing',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class LimitsChallengeCall {
  Future<ApiCallResponse> call({
    dynamic updatesJson,
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final updates = _serializeJson(updatesJson, true);
    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "updates": ${updates}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Limits Challenge',
      apiUrl: '${baseUrl}/retail/settings/limits/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class LimitsChallengeConfirmCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Limits Challenge Confirm',
      apiUrl: '${baseUrl}/retail/settings/limits/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?;
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceRemoveChallengeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Remove Challenge',
      apiUrl: '${baseUrl}/retail/settings/devices/${id}/remove/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  dynamic targetDevice(dynamic response) => getJsonField(
        response,
        r'''$.targetDevice''',
      );
  String? targetDeviceId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.targetDevice.id''',
      ));
  String? targetDeviceDeviceName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.targetDevice.deviceName''',
      ));
  String? targetDeviceDeviceId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.targetDevice.deviceId''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailSettingsDeviceRemoveConfirmCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Device Remove Confirm',
      apiUrl: '${baseUrl}/retail/settings/devices/${id}/remove/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class MpinChangeChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Mpin Change Challenge',
        apiUrl: '${baseUrl}/retail/settings/mpin/change/challenge',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class MpinChangeConfirmCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? currentMpin = '',
    String? newMpin = '',
    String? confirmMpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "currentMpin": "${escapeStringForJson(currentMpin)}",
  "newMpin": "${escapeStringForJson(newMpin)}",
  "confirmMpin": "${escapeStringForJson(confirmMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mpin Change Confirm',
      apiUrl: '${baseUrl}/retail/settings/mpin/change/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
        true,
      ) as List?;
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class ScheduleTransferSigningChallengeCall {
  Future<ApiCallResponse> call({
    String? transferType = '',
    String? sourceAccountNumber = '',
    String? destinationAccountNumber = '',
    String? destinationBankCode = '',
    double? amount,
    String? currency = '',
    String? remarks = '',
    String? frequency = '',
    String? startDate = '',
    String? endCondition = '',
    String? endDate = '',
    int? maxOccurrences,
    String? deviceId = '',
    String? destinationAccountHolderName = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "transferType": "${escapeStringForJson(transferType)}",
  "sourceAccountNumber": "${escapeStringForJson(sourceAccountNumber)}",
  "destinationAccountNumber": "${escapeStringForJson(destinationAccountNumber)}",
  "destinationBankCode": "${escapeStringForJson(destinationBankCode)}",
  "amount": ${amount},
  "currency": "${escapeStringForJson(currency)}",
  "remarks": "${escapeStringForJson(remarks)}",
  "frequency": "${escapeStringForJson(frequency)}",
  "startDate": "${escapeStringForJson(startDate)}",
  "endCondition": "${escapeStringForJson(endCondition)}",
  "endDate": "${escapeStringForJson(endDate)}",
  "destinationAccountHolderName": "${escapeStringForJson(destinationAccountHolderName)}",
  "maxOccurrences": ${maxOccurrences},
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Schedule Transfer Signing Challenge',
        apiUrl: '${baseUrl}/retail/scheduled-transfers/signing-challenge',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  String? challenge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.challenge''',
      ));
  String? operationId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.operationId''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailScheduledTransferConfirmCall {
  Future<ApiCallResponse> call({
    String? mpin = '',
    String? signature = '',
    String? challenge = '',
    String? deviceId = '',
    String? method = '',
    String? operationId = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? credentialId = '',
    dynamic authenticatorResponseJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final authenticatorResponse = _serializeJson(authenticatorResponseJson);
    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}",
  "operationId": "${escapeStringForJson(operationId)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "credentialId": "${escapeStringForJson(credentialId)}",
  "authenticatorResponse": ${authenticatorResponse}
  
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail Scheduled Transfer Confirm',
        apiUrl: '${baseUrl}/retail/scheduled-transfers',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  String? errorName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledTransfersCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled Transfers',
      apiUrl: '${baseUrl}/retail/scheduled-transfers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledTransfersIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled Transfers Id',
      apiUrl: '${baseUrl}/retail/scheduled-transfers/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailScheduledTransfersIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: ' Retail Scheduled Transfers ID',
      apiUrl: '${baseUrl}/retail/scheduled-transfers/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailScheduledTransfersIDPauseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled Transfers ID Pause',
      apiUrl: '${baseUrl}/retail/scheduled-transfers/${id}/pause',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailScheduledTransfersIDResumeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled Transfers ID Resume',
      apiUrl: '${baseUrl}/retail/scheduled-transfers/${id}/resume',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
}

class RetailLoansCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loans',
      apiUrl: '${baseUrl}/retail/loans',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  List? loans(dynamic response) => getJsonField(
        response,
        r'''$.loans''',
        true,
      ) as List?;
  String? retrievedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.retrievedAt''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailLoansTransactionsCall {
  Future<ApiCallResponse> call({
    String? loanAccountNumber = '',
    int? limit,
    int? offset,
    String? fromDate = '',
    String? toDate = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loans Transactions',
      apiUrl: '${baseUrl}/retail/loans/${loanAccountNumber}/transactions',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'limit': limit,
        'offset': offset,
        'fromDate': fromDate,
        'toDate': toDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  dynamic pagination(dynamic response) => getJsonField(
        response,
        r'''$.pagination''',
      );
  List? transactions(dynamic response) => getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?;
  String? loanAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.loanAccountNumber''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailLoansDetailsCall {
  Future<ApiCallResponse> call({
    String? loanAccountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loans Details',
      apiUrl: '${baseUrl}/retail/loans/${loanAccountNumber}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? statusCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.statusCode''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? retrievedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.retrievedAt''',
      ));
  dynamic loan(dynamic response) => getJsonField(
        response,
        r'''$.loan''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
}

class RetailLoansPaymentCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? sourceAccountNumber = '',
    String? sourceAccountName = '',
    String? currency = '',
    String? remarks = '',
    String? idempotencyKey = '',
    String? loanAccountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "amount": ${amount},
  "sourceAccountNumber": "${escapeStringForJson(sourceAccountNumber)}",
  "sourceAccountName": "${escapeStringForJson(sourceAccountName)}",
  "currency": "${escapeStringForJson(currency)}",
  "remarks": "${escapeStringForJson(remarks)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loans Payment',
      apiUrl: '${baseUrl}/retail/loans/${loanAccountNumber}/payments',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailLoanPaymentSigningChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? loanAccountNumber = '',
    String? paymentId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loan Payment Signing Challenge',
      apiUrl:
          '${baseUrl}/retail/loans/${loanAccountNumber}/payments/${paymentId}/signing-challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RetailLoanConfirmPaymentCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? loanAccountNumber = '',
    String? paymentId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loan Confirm Payment ',
      apiUrl:
          '${baseUrl}/retail/loans/${loanAccountNumber}/payments/${paymentId}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailLoanConfirmPaymentPasskeyCall {
  Future<ApiCallResponse> call({
    String? loanAccountNumber = '',
    String? paymentId = '',
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loan Confirm Payment Passkey',
      apiUrl:
          '${baseUrl}/retail/loans/${loanAccountNumber}/payments/${paymentId}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referenceNumber''',
      ));
  double? amount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.amount''',
      ));
  String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  String? loanAccountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.loanAccountNumber''',
      ));
  String? remarks(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.remarks''',
      ));
  String? cbsTransactionId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cbsTransactionId''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
}

class RetailLoanPaymentCancelCall {
  Future<ApiCallResponse> call({
    String? loanAccountNumber = '',
    String? paymentId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "loanAccountNumber ": "${escapeStringForJson(loanAccountNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loan Payment Cancel',
      apiUrl:
          '${baseUrl}/retail/loans/${loanAccountNumber}/payments/${paymentId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailLoanRepaymentScheduleCall {
  Future<ApiCallResponse> call({
    String? loanAccountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loan Repayment Schedule',
      apiUrl: '${baseUrl}/retail/loans/${loanAccountNumber}/repayment-schedule',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailTimeDepositProductsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Time Deposit Products',
      apiUrl: '${baseUrl}/retail/time-deposit-products',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailTimeDepositsConfirmCall {
  Future<ApiCallResponse> call({
    String? openingId = '',
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    dynamic authenticatorResponseJson,
    String? credentialId = '',
    String? transactionHash = '',
    String? stepupToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final authenticatorResponse = _serializeJson(authenticatorResponseJson);
    final ffApiRequestBody = '''
{
  "openingId": "${escapeStringForJson(openingId)}",
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "credentialId": "${escapeStringForJson(credentialId)}",
  "authenticatorResponse": ${authenticatorResponse}

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Time Deposits Confirm',
      apiUrl: '${baseUrl}/retail/time-deposits/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailTimeDepositsChallengeCall {
  Future<ApiCallResponse> call({
    String? productCode = '',
    double? amount,
    int? termDays,
    String? sourceAccountNumber = '',
    String? deviceId = '',
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "productCode": "${escapeStringForJson(productCode)}",
  "amount": ${amount},
  "termDays": ${termDays},
  "sourceAccountNumber": "${escapeStringForJson(sourceAccountNumber)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Time Deposits Challenge',
      apiUrl: '${baseUrl}/retail/time-deposits/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailTimeDepositsAccountNumberCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Time Deposits Account Number',
      apiUrl: '${baseUrl}/retail/time-deposits/${accountNumber}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailTimeDepositsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Time Deposits',
      apiUrl: '${baseUrl}/retail/time-deposits',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailGenPasskeyRegistrationOptionsCall {
  Future<ApiCallResponse> call({
    String? passkeyName = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "passkeyName": "${escapeStringForJson(passkeyName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Gen Passkey Registration Options',
      apiUrl: '${baseUrl}/retail/passkey/register/options',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailVerifyPasskeyRegistrationCall {
  Future<ApiCallResponse> call({
    String? passkeyName = '',
    String? id = '',
    String? rawId = '',
    String? type = '',
    dynamic responseJson,
    String? authenticatorAttachment = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final response = _serializeJson(responseJson);
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
  "rawId": "${escapeStringForJson(rawId)}",
  "type": "${escapeStringForJson(type)}",
  "response": ${response},
  "authenticatorAttachment": "${escapeStringForJson(authenticatorAttachment)}",
  "passkeyName": "${escapeStringForJson(passkeyName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Verify Passkey Registration',
      apiUrl: '${baseUrl}/retail/passkey/register/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailGenPasskeyAuthOptionsCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Gen Passkey Auth Options',
      apiUrl: '${baseUrl}/retail/passkey/authenticate/options',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailVerifyPasskeyAuthCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? rawId = '',
    String? type = '',
    dynamic responseJson,
    String? authenticatorAttachment = '',
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final response = _serializeJson(responseJson);
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
  "rawId": "${escapeStringForJson(rawId)}",
  "type": "${escapeStringForJson(type)}",
  "response": ${response},
  "authenticatorAttachment": "${escapeStringForJson(authenticatorAttachment)}",
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Verify Passkey Auth',
      apiUrl: '${baseUrl}/retail/passkey/authenticate/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  dynamic stepUpRequired(dynamic response) => getJsonField(
        response,
        r'''$.stepUpRequired''',
      );
  String? pendingLoginToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.pendingLoginToken''',
      ));
  List<String>? availableMethods(dynamic response) => (getJsonField(
        response,
        r'''$.availableMethods''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? preferredMethod(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.preferredMethod''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  dynamic verified(dynamic response) => getJsonField(
        response,
        r'''$.verified''',
      );
  dynamic tokens(dynamic response) => getJsonField(
        response,
        r'''$.tokens''',
      );
}

class RetailListPasskeyCredentialsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail List Passkey Credentials',
      apiUrl: '${baseUrl}/retail/passkey/credentials',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailRenamePasskeyCredentialCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? name = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Rename Passkey Credential',
      apiUrl: '${baseUrl}/retail/passkey/credentials/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailRevokePasskeyCredentialCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Revoke Passkey Credential',
      apiUrl: '${baseUrl}/retail/passkey/credentials/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailGenStepupAuthOptionsCall {
  Future<ApiCallResponse> call({
    String? transactionType = '',
    String? transactionId = '',
    double? amount,
    String? currency = '',
    String? context = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "transactionType": "${escapeStringForJson(transactionType)}",
  "transactionId": "${escapeStringForJson(transactionId)}",
  "amount": ${amount},
  "currency": "${escapeStringForJson(currency)}",
  "context": "${escapeStringForJson(context)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail Gen Stepup Auth Options',
        apiUrl: '${baseUrl}/retail/passkey/stepup/options',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailGenStepupAuthOptionsJsonBodyCall {
  Future<ApiCallResponse> call({
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail Gen Stepup Auth Options Json Body',
        apiUrl: '${baseUrl}/retail/passkey/stepup/options',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailVerifyStepupAuthCall {
  Future<ApiCallResponse> call({
    dynamic payloadJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final payload = _serializeJson(payloadJson);
    final ffApiRequestBody = '''
${payload}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Verify Stepup Auth',
      apiUrl: '${baseUrl}/retail/passkey/stepup/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  dynamic verified(dynamic response) => getJsonField(
        response,
        r'''$.verified''',
      );
  String? stepupToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.stepupToken''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class RetailGenPasskeyRecoveryOptionsCall {
  Future<ApiCallResponse> call({
    String? passkeyName = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "passkeyName": "${escapeStringForJson(passkeyName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Gen Passkey Recovery Options',
      apiUrl: '${baseUrl}/retail/passkey/recovery/register/options',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailVerifyPasskeyRecoveryCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "id": "string",
  "rawId": "string",
  "type": "string",
  "response": {
    "attestationObject": "string",
    "clientDataJSON": "string",
    "transports": [
      "string"
    ],
    "publicKey": "string",
    "publicKeyAlgorithm": 0,
    "authenticatorData": "string"
  },
  "authenticatorAttachment": "string",
  "passkeyName": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Verify Passkey Recovery',
      apiUrl: '${baseUrl}/retail/passkey/recovery/register/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailGenPasskeyRecoveryCodesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Gen Passkey Recovery Codes',
      apiUrl: '${baseUrl}/retail/passkey/recovery/codes/generate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  List<String>? codes(dynamic response) => (getJsonField(
        response,
        r'''$.codes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class RetailAcknowPasskeyRecoveryCodesCall {
  Future<ApiCallResponse> call({
    bool? acknowledged = false,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "acknowledged": ${acknowledged}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Acknow Passkey Recovery Codes',
      apiUrl: '${baseUrl}/retail/passkey/recovery/codes/acknowledge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailPasskeyRecoveryCodeStatusCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Recovery Code Status',
      apiUrl: '${baseUrl}/retail/passkey/recovery/codes/status',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  bool? hasRecoveryCodes(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.hasRecoveryCodes''',
      ));
  int? codesRemaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.codesRemaining''',
      ));
  bool? acknowledged(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.acknowledged''',
      ));
  String? generatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.generatedAt''',
      ));
}

class RetailPasskeyLoginWithRecoveryCodeCall {
  Future<ApiCallResponse> call({
    String? identifier = '',
    String? recoveryCode = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "identifier": "${escapeStringForJson(identifier)}",
  "recoveryCode": "${escapeStringForJson(recoveryCode)}",
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Login With Recovery Code',
      apiUrl: '${baseUrl}/retail/passkey/recovery/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailPasskeyRecoveryInitiateCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? username = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "username": "${escapeStringForJson(username)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Recovery Initiate',
      apiUrl: '${baseUrl}/retail/passkey/recovery/initiate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpDeliveryMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.otpDeliveryMethod''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class RetailPasskeyRecoveryVerifyOTPCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Recovery Verify OTP',
      apiUrl: '${baseUrl}/retail/passkey/recovery/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpDeliveryMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.otpDeliveryMethod''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class RetailPasskeyRecoveryVerifyCodeCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? otp = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "sessionToken": "${escapeStringForJson(sessionToken)}",
  "otp": "${escapeStringForJson(otp)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Recovery Verify Code',
      apiUrl: '${baseUrl}/retail/passkey/recovery/verify-code',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpDeliveryMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.otpDeliveryMethod''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class RetailPasskeyRecoveryResendOTPCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Recovery Resend OTP',
      apiUrl: '${baseUrl}/retail/passkey/recovery/resend-otp',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpDeliveryMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.otpDeliveryMethod''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class RetailPasskeyRecoverySessionStatusCall {
  Future<ApiCallResponse> call({
    String? sessionToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Recovery Session Status',
      apiUrl: '${baseUrl}/retail/passkey/recovery/status',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'sessionToken': sessionToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? sessionToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sessionToken''',
      ));
  String? otpDeliveryMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.otpDeliveryMethod''',
      ));
  String? maskedDestination(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.maskedDestination''',
      ));
  String? expiresAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.expiresAt''',
      ));
  int? expiresIn(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class RetailPasskeyAuthLoginStepupOptionsCall {
  Future<ApiCallResponse> call({
    String? pendingLoginToken = '',
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "pendingLoginToken": "${escapeStringForJson(pendingLoginToken)}",
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Auth Login Stepup Options',
      apiUrl: '${baseUrl}/auth/retail/login/step-up/options',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailPasskeyAuthLoginStepupConfirmCall {
  Future<ApiCallResponse> call({
    String? pendingLoginToken = '',
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? id = '',
    String? rawId = '',
    String? type = '',
    dynamic responseJson,
    String? authenticatorAttachment = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final response = _serializeJson(responseJson);
    final ffApiRequestBody = '''
{
  "pendingLoginToken": "${escapeStringForJson(pendingLoginToken)}",
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}",
  "id": "${escapeStringForJson(id)}",
  "rawId": "${escapeStringForJson(rawId)}",
  "type": "${escapeStringForJson(type)}",
  "response": ${response},
  "authenticatorAttachment": "${escapeStringForJson(authenticatorAttachment)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Auth Login Stepup Confirm',
      apiUrl: '${baseUrl}/auth/retail/login/step-up/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailBankAdvisoriesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Bank Advisories',
      apiUrl: '${baseUrl}/retail/advisories',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  List? advisories(dynamic response) => getJsonField(
        response,
        r'''$.advisories''',
        true,
      ) as List?;
}

class RetailChequebookEligibleAccountsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Eligible Accounts',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/eligible-accounts',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  List? accounts(dynamic response) => getJsonField(
        response,
        r'''$.accounts''',
        true,
      ) as List?;
}

class RetailChequebookLimitsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Limits',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/limits',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailChequebookPrepareCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    int? bookletCount,
    String? deliveryBranch = '',
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "bookletCount": ${bookletCount},
  "deliveryBranch": "${escapeStringForJson(deliveryBranch)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Prepare',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/prepare',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailChequebookConfirmSigningCall {
  Future<ApiCallResponse> call({
    String? pendingRequestId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "pendingRequestId": "${escapeStringForJson(pendingRequestId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Confirm Signing',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailChequebookRequestsCall {
  Future<ApiCallResponse> call({
    int? page,
    int? limit,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Requests',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/requests',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  List? requests(dynamic response) => getJsonField(
        response,
        r'''$.requests''',
        true,
      ) as List?;
}

class RetailChequebookRequestSubmitCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    int? bookletCount,
    String? remarks = '',
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "bookletCount": ${bookletCount},
  "remarks": "${escapeStringForJson(remarks)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Request Submit',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/requests',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class RetailChequebookRequestByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Chequebook Request by ID',
      apiUrl: '${baseUrl}/retail/cheque/chequebook/requests/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailKillSwitchStatusCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Kill Switch Status',
      apiUrl: '${baseUrl}/retail/kill-switch/status',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailKillSwitchActivateChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Kill Switch Activate Challenge',
      apiUrl: '${baseUrl}/retail/kill-switch/activate/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailKillSwitchActivateConfirmCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? credentialId = '',
    dynamic authenticatorResponseJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final authenticatorResponse = _serializeJson(authenticatorResponseJson);
    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "credentialId": "${escapeStringForJson(credentialId)}",
  "authenticatorResponse": ${authenticatorResponse}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Kill Switch Activate Confirm',
      apiUrl: '${baseUrl}/retail/kill-switch/activate/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailInvestmentsCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Investments',
      apiUrl: '${baseUrl}/retail/investments',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailInvestmentsStatementCall {
  Future<ApiCallResponse> call({
    String? fromDate = '',
    String? toDate = '',
    String? isinSeriesNo = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail Investments Statement',
        apiUrl: '${baseUrl}/retail/investments/statement',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {
          'fromDate': fromDate,
          'toDate': toDate,
          'isinSeriesNo': isinSeriesNo,
        },

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailReportSuspiciousReportCall {
  Future<ApiCallResponse> call({
    String? reportType = '',
    String? description = '',
    String? submissionSource = '',
    dynamic attachmentUrlsJson,
    String? idempotencyKey = '',
    String? xClientChannel = '',
    String? xAppVersion = '',
    String? xOsVersion = '',
    String? xDeviceId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final attachmentUrls = _serializeJson(attachmentUrlsJson);
    final ffApiRequestBody = '''
{
  "reportType": "${escapeStringForJson(reportType)}",
  "description": "${escapeStringForJson(description)}",
  "submissionSource": "${escapeStringForJson(submissionSource)}",
  "attachmentUrls": [
    ${attachmentUrls}
  ],
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Report Suspicious Report',
      apiUrl:
          '${baseUrl}/retail/suspicious-activity-reports?x-client-channel=${xClientChannel}&x-app-version=${xAppVersion}&x-os-version=${xOsVersion}&x-device-id =${xDeviceId}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailChequeInquiryCall {
  Future<ApiCallResponse> call({
    String? accountNo = '',
    String? searchBy = '',
    String? chequeNo = '',
    String? fromDate = '',
    String? toDate = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Cheque Inquiry',
      apiUrl: '${baseUrl}/retail/cheques',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {
        'accountNo': accountNo,
        'searchBy': searchBy,
        'chequeNo': chequeNo,
        'fromDate': fromDate,
        'toDate': toDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailContentHubCategoriesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Content Hub Categories',
      apiUrl: '${baseUrl}/retail/content-hub/categories',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailContentHubArticlesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Content Hub Articles',
      apiUrl: '${baseUrl}/retail/content-hub/articles',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailContentHubArticlesSlugCall {
  Future<ApiCallResponse> call({
    String? slug = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Content Hub Articles Slug',
      apiUrl: '${baseUrl}/retail/content-hub/articles/${slug}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic body(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailContentHubArticleEventsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    int? dwellMs,
    String? eventType = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "eventType": "${escapeStringForJson(eventType)}",
  "dwellMs": ${dwellMs}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Content Hub Article Events',
      apiUrl: '${baseUrl}/retail/content-hub/articles/${id}/events',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailReportDisputesChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? transactionType = '',
    String? transactionReference = '',
    String? category = '',
    String? description = '',
    dynamic evidenceUrlsJson,
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final evidenceUrls = _serializeJson(evidenceUrlsJson);
    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "transactionType": "${escapeStringForJson(transactionType)}",
  "transactionReference": "${escapeStringForJson(transactionReference)}",
  "category": "${escapeStringForJson(category)}",
  "description": "${escapeStringForJson(description)}",
  "evidenceUrls": [
    ${evidenceUrls}
  ],
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Report Disputes Challenge',
      apiUrl: '${baseUrl}/retail/disputes/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailReportDisputesChallengeWithTransactionIDCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? transactionType = '',
    String? transactionReference = '',
    String? category = '',
    String? description = '',
    dynamic evidenceUrlsJson,
    String? idempotencyKey = '',
    String? transactionId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final evidenceUrls = _serializeJson(evidenceUrlsJson);
    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}",
  "transactionType": "${escapeStringForJson(transactionType)}",
  "transactionId": "${escapeStringForJson(transactionId)}",
  "transactionReference": "${escapeStringForJson(transactionReference)}",
  "category": "${escapeStringForJson(category)}",
  "description": "${escapeStringForJson(description)}",
  "evidenceUrls": [
    ${evidenceUrls}
  ],
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Report Disputes Challenge With TransactionID',
      apiUrl: '${baseUrl}/retail/disputes/challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailReportDisputeChallengeSigningCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Report Dispute Challenge Signing',
      apiUrl: '${baseUrl}/retail/disputes/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailContentHubArticlesPinnedCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Content Hub Articles Pinned',
      apiUrl: '${baseUrl}/retail/content-hub/articles/pinned',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailContentHubArticlesRecentCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Content Hub Articles Recent',
      apiUrl: '${baseUrl}/retail/content-hub/articles/recent',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailStopChequePrepareCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? chequeNumber = '',
    String? reason = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "chequeNumber": "${escapeStringForJson(chequeNumber)}",
  "reason": "${escapeStringForJson(reason)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Stop Cheque Prepare',
      apiUrl: '${baseUrl}/retail/cheque/stop/prepare',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailStopChequeSigningChallengeCall {
  Future<ApiCallResponse> call({
    String? deviceId = '',
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "deviceId": "${escapeStringForJson(deviceId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Stop Cheque Signing Challenge',
      apiUrl: '${baseUrl}/retail/cheque/stop/${id}/signing-challenge',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailStopChequeConfirmSigningCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? challenge = '',
    String? signature = '',
    String? mpin = '',
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "challenge": "${escapeStringForJson(challenge)}",
  "signature": "${escapeStringForJson(signature)}",
  "mpin": "${escapeStringForJson(mpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Stop Cheque Confirm Signing',
      apiUrl: '${baseUrl}/retail/cheque/stop/${id}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailConfirmSigningPasskeyCall {
  Future<ApiCallResponse> call({
    String? transactionHash = '',
    String? stepupToken = '',
    String? deviceId = '',
    String? method = '',
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Confirm Signing Passkey',
      apiUrl: '${baseUrl}/retail/transfers/${id}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailTimeDepositsConfirmPasskeyCall {
  Future<ApiCallResponse> call({
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
${requestBody}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Time Deposits Confirm Passkey',
      apiUrl: '${baseUrl}/retail/time-deposits/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailScheduledTransferConfirmPasskeyCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? operationId = '',
    String? stepupToken = '',
    String? transactionHash = '',
    dynamic requestBodyJson,
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final requestBody = _serializeJson(requestBodyJson);
    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "operationId": "${escapeStringForJson(operationId)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Scheduled Transfer Confirm Passkey',
      apiUrl: '${baseUrl}/retail/scheduled-transfers',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MpinChangeConfirmPasskeyCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? currentMpin = '',
    String? newMpin = '',
    String? confirmMpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "currentMpin": "${escapeStringForJson(currentMpin)}",
  "newMpin": "${escapeStringForJson(newMpin)}",
  "confirmMpin": "${escapeStringForJson(confirmMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mpin Change Confirm Passkey',
      apiUrl: '${baseUrl}/retail/settings/mpin/change/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailKillSwitchActivateConfirmPasskeyCall {
  Future<ApiCallResponse> call({
    String? transactionHash = '',
    String? stepupToken = '',
    String? deviceId = '',
    String? method = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Kill Switch Activate Confirm Passkey',
      apiUrl: '${baseUrl}/retail/kill-switch/activate/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LimitsChallengeConfirmPasskeyCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? deviceId = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? operationId = '-',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "operationId": "${escapeStringForJson(operationId)}"
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'Limits Challenge Confirm Passkey',
      apiUrl: '${baseUrl}/retail/settings/limits/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailConfirmLoanPaymentPasskeyCall {
  Future<ApiCallResponse> call({
    String? biometric = '',
    String? stepupToken = '',
    String? transactionHash = '',
    String? loanAccountNumber = '',
    String? paymentId = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(biometric)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "loanAccountNumber": "${escapeStringForJson(loanAccountNumber)}",
  "paymentId": "${escapeStringForJson(paymentId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Confirm Loan Payment Passkey',
      apiUrl:
          '${baseUrl}/retail/loans/${loanAccountNumber}/payments/${paymentId}/confirm-signing',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailSettingsPasswordChangeConfirmPasskeyCall {
  Future<ApiCallResponse> call({
    String? method = '',
    String? transactionHash = '',
    String? stepupToken = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "method": "${escapeStringForJson(method)}",
  "transactionHash": "${escapeStringForJson(transactionHash)}",
  "stepupToken": "${escapeStringForJson(stepupToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Settings Password Change Confirm  Passkey',
      apiUrl: '${baseUrl}/retail/settings/password/change/confirm',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailSafetyDepositBoxRequestsCall {
  Future<ApiCallResponse> call({
    String? idempotencyKey = '',
    String? accountNumber = '',
    String? branchId = '',
    String? boxSize = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "branchId": "${escapeStringForJson(branchId)}",
  "boxSize": "${escapeStringForJson(boxSize)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Safety Deposit Box Requests',
      apiUrl: '${baseUrl}/retail/safety-deposit-box-requests',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailSafetyDepositBoxRequestsGetCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Safety Deposit Box Requests Get',
      apiUrl: '${baseUrl}/retail/safety-deposit-box-requests',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailSafetyDepositBoxRequestsBranchesCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Safety Deposit Box Requests Branches',
      apiUrl: '${baseUrl}/retail/safety-deposit-box-requests/branches',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailSafetyDepositBoxRequestsIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Safety Deposit Box Requests Id',
      apiUrl: '${baseUrl}/retail/safety-deposit-box-requests/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailCardReplacementRequestsCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? cardNumber = '',
    String? replacementReason = '',
    String? cardHolderName = '',
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "cardNumber": "${escapeStringForJson(cardNumber)}",
  "cardHolderName": "${escapeStringForJson(cardHolderName)}",
  "replacementReason": "${escapeStringForJson(replacementReason)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Card Replacement Requests',
      apiUrl: '${baseUrl}/retail/card-replacement-requests',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailCardReplacementRequestsGetCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Card Replacement Requests Get',
      apiUrl: '${baseUrl}/retail/card-replacement-requests',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailCardReplacementRequestsByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Card Replacement Requests By Id',
      apiUrl: '${baseUrl}/retail/card-replacement-requests/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailLoanInquireSRCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? loanType = '',
    bool? hasPBBLoan,
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "loanType": "${escapeStringForJson(loanType)}",
  "hasPbbLoan": ${hasPBBLoan},
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Loan Inquire SR',
      apiUrl: '${baseUrl}/retail/service-requests/loan-applications',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailServiceRequestTrustProductCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Service Request Trust Product',
      apiUrl: '${baseUrl}/retail/trust-product-requests/field-options',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailServiceRequestTrackerCall {
  Future<ApiCallResponse> call({
    String? statusCategory = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Retail  Service Request Tracker',
        apiUrl: '${baseUrl}/retail/service-requests',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Content-Type': 'application/json',
          'accept': 'application/json',
          'user-agent': 'user-agent',
          'Authorization': 'Bearer ${accessToken}',
          'x-fms-session-id': '${fmsSessionId}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {
          'statusCategory': statusCategory,
        },

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      interceptors,
    );
  }

  static final interceptors = [
    OmitEmptyParamsInterceptor(),
  ];

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
}

class RetailServiceRequestTrustProductSubmitCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? nationality = '',
    String? investibleFunds = '',
    String? investmentObjective = '',
    String? investmentHorizon = '',
    String? investmentAllocation = '',
    String? riskTolerance = '',
    String? netWorthLast2Years = '',
    String? idempotencyKey = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}",
  "nationality": "${escapeStringForJson(nationality)}",
  "investibleFunds": "${escapeStringForJson(investibleFunds)}",
  "investmentObjective": "${escapeStringForJson(investmentObjective)}",
  "investmentHorizon": "${escapeStringForJson(investmentHorizon)}",
  "investmentAllocation": "${escapeStringForJson(investmentAllocation)}",
  "riskTolerance": "${escapeStringForJson(riskTolerance)}",
  "netWorthLast2Years": "${escapeStringForJson(netWorthLast2Years)}",
  "idempotencyKey": "${escapeStringForJson(idempotencyKey)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Service Request Trust ProductSubmit',
      apiUrl: '${baseUrl}/retail/trust-product-requests',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailAndroidAssetLinksCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Android Asset Links',
      apiUrl: '${baseUrl}/.well-known/assetlinks.json',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailAppleAppSiteAassociationCopyCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Apple App Site Aassociation Copy',
      apiUrl: '${baseUrl}/.well-known/apple-app-site-association',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailPasskeyConfigCheckCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Passkey Config Check',
      apiUrl: '${baseUrl}/.well-known/passkey-config-check',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailConfigSessionCall {
  Future<ApiCallResponse> call({
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Retail Config Session',
      apiUrl: '${baseUrl}/retail/config/session-configurations',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  String? detail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? instance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance''',
      ));
  int? sessionWarning(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sessionWarning''',
      ));
  int? sessionAutoLogout(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.sessionAutoLogout''',
      ));
}

class MpinChangeSetNewPinCall {
  Future<ApiCallResponse> call({
    String? changeToken = '',
    String? deviceId = '',
    String? newMpin = '',
    String? confirmMpin = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "changeToken": "${escapeStringForJson(changeToken)}",
  "deviceId": "${escapeStringForJson(deviceId)}",
  "newMpin": "${escapeStringForJson(newMpin)}",
  "confirmMpin": "${escapeStringForJson(confirmMpin)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mpin Change Set New Pin',
      apiUrl: '${baseUrl}/retail/settings/mpin/change/set',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateBeneficiaryCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? nickname = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "nickname": "${escapeStringForJson(nickname)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Beneficiary',
      apiUrl: '${baseUrl}/retail/beneficiaries/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteBeneficiaryCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Beneficiary',
      apiUrl: '${baseUrl}/retail/beneficiaries/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetailTransfersValidateAccountCall {
  Future<ApiCallResponse> call({
    String? accountNumber = '',
    String? baseURL = 'https://whitebank-retail-core-dev.fly.dev',
    String? apiKey = '',
    String? accessToken = '',
    String? refreshToken = '',
    String? fmsSessionId = '',
  }) async {
    final baseUrl = WhitebankGroupAPIGroup.getBaseUrl(
      baseURL: baseURL,
      apiKey: apiKey,
      accessToken: accessToken,
      refreshToken: refreshToken,
      fmsSessionId: fmsSessionId,
    );

    final ffApiRequestBody = '''
{
  "accountNumber": "${escapeStringForJson(accountNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Retail Transfers Validate Account',
      apiUrl: '${baseUrl}/retail/transfers/account-detail',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'user-agent': 'user-agent',
        'Authorization': 'Bearer ${accessToken}',
        'x-fms-session-id': '${fmsSessionId}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Whitebank Group API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
