// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionStruct extends BaseStruct {
  TransactionStruct({
    String? thirdPartyBankCode,
    String? transactionType,
    String? bankTranType,
    String? destinationId,
    BillingAddressStruct? billingAddress,
    CardMetaDataStruct? cardMetaData,
    MerchantStruct? merchant,
    BankAccountDetailsStruct? bankAccountDetails,
    String? sourceCtry,
    String? tranDtls,
    String? orgnlAmt,
    String? tranDesc,
    String? thirdPartyAccNum,
    String? amount,
    OtherRequiredDetailsStruct? otherRequiredDetails,
    String? tranStsRsn,
    String? curType,
    TerminalStruct? terminal,
    String? timeStamp,
    String? tranMode,
    AuthorizationResponseStruct? authorizationResponse,
    String? thirdPartyAccName,
    String? orgnlCcy,
    PaymentStruct? payment,
    ShippingAddressStruct? shippingAddress,
    String? tranSts,
    String? destinationCtry,
    String? thirdPartyAccType,
    String? isDeviceVerified,
  })  : _thirdPartyBankCode = thirdPartyBankCode,
        _transactionType = transactionType,
        _bankTranType = bankTranType,
        _destinationId = destinationId,
        _billingAddress = billingAddress,
        _cardMetaData = cardMetaData,
        _merchant = merchant,
        _bankAccountDetails = bankAccountDetails,
        _sourceCtry = sourceCtry,
        _tranDtls = tranDtls,
        _orgnlAmt = orgnlAmt,
        _tranDesc = tranDesc,
        _thirdPartyAccNum = thirdPartyAccNum,
        _amount = amount,
        _otherRequiredDetails = otherRequiredDetails,
        _tranStsRsn = tranStsRsn,
        _curType = curType,
        _terminal = terminal,
        _timeStamp = timeStamp,
        _tranMode = tranMode,
        _authorizationResponse = authorizationResponse,
        _thirdPartyAccName = thirdPartyAccName,
        _orgnlCcy = orgnlCcy,
        _payment = payment,
        _shippingAddress = shippingAddress,
        _tranSts = tranSts,
        _destinationCtry = destinationCtry,
        _thirdPartyAccType = thirdPartyAccType,
        _isDeviceVerified = isDeviceVerified;

  // "ThirdPartyBankCode" field.
  String? _thirdPartyBankCode;
  String get thirdPartyBankCode => _thirdPartyBankCode ?? '';
  set thirdPartyBankCode(String? val) => _thirdPartyBankCode = val;

  bool hasThirdPartyBankCode() => _thirdPartyBankCode != null;

  // "TransactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "BankTranType" field.
  String? _bankTranType;
  String get bankTranType => _bankTranType ?? '';
  set bankTranType(String? val) => _bankTranType = val;

  bool hasBankTranType() => _bankTranType != null;

  // "DestinationId" field.
  String? _destinationId;
  String get destinationId => _destinationId ?? '';
  set destinationId(String? val) => _destinationId = val;

  bool hasDestinationId() => _destinationId != null;

  // "BillingAddress" field.
  BillingAddressStruct? _billingAddress;
  BillingAddressStruct get billingAddress =>
      _billingAddress ?? BillingAddressStruct();
  set billingAddress(BillingAddressStruct? val) => _billingAddress = val;

  void updateBillingAddress(Function(BillingAddressStruct) updateFn) {
    updateFn(_billingAddress ??= BillingAddressStruct());
  }

  bool hasBillingAddress() => _billingAddress != null;

  // "CardMetaData" field.
  CardMetaDataStruct? _cardMetaData;
  CardMetaDataStruct get cardMetaData => _cardMetaData ?? CardMetaDataStruct();
  set cardMetaData(CardMetaDataStruct? val) => _cardMetaData = val;

  void updateCardMetaData(Function(CardMetaDataStruct) updateFn) {
    updateFn(_cardMetaData ??= CardMetaDataStruct());
  }

  bool hasCardMetaData() => _cardMetaData != null;

  // "Merchant" field.
  MerchantStruct? _merchant;
  MerchantStruct get merchant => _merchant ?? MerchantStruct();
  set merchant(MerchantStruct? val) => _merchant = val;

  void updateMerchant(Function(MerchantStruct) updateFn) {
    updateFn(_merchant ??= MerchantStruct());
  }

  bool hasMerchant() => _merchant != null;

  // "BankAccountDetails" field.
  BankAccountDetailsStruct? _bankAccountDetails;
  BankAccountDetailsStruct get bankAccountDetails =>
      _bankAccountDetails ?? BankAccountDetailsStruct();
  set bankAccountDetails(BankAccountDetailsStruct? val) =>
      _bankAccountDetails = val;

  void updateBankAccountDetails(Function(BankAccountDetailsStruct) updateFn) {
    updateFn(_bankAccountDetails ??= BankAccountDetailsStruct());
  }

  bool hasBankAccountDetails() => _bankAccountDetails != null;

  // "SourceCtry" field.
  String? _sourceCtry;
  String get sourceCtry => _sourceCtry ?? '';
  set sourceCtry(String? val) => _sourceCtry = val;

  bool hasSourceCtry() => _sourceCtry != null;

  // "TranDtls" field.
  String? _tranDtls;
  String get tranDtls => _tranDtls ?? '';
  set tranDtls(String? val) => _tranDtls = val;

  bool hasTranDtls() => _tranDtls != null;

  // "OrgnlAmt" field.
  String? _orgnlAmt;
  String get orgnlAmt => _orgnlAmt ?? '';
  set orgnlAmt(String? val) => _orgnlAmt = val;

  bool hasOrgnlAmt() => _orgnlAmt != null;

  // "TranDesc" field.
  String? _tranDesc;
  String get tranDesc => _tranDesc ?? '';
  set tranDesc(String? val) => _tranDesc = val;

  bool hasTranDesc() => _tranDesc != null;

  // "ThirdPartyAccNum" field.
  String? _thirdPartyAccNum;
  String get thirdPartyAccNum => _thirdPartyAccNum ?? '';
  set thirdPartyAccNum(String? val) => _thirdPartyAccNum = val;

  bool hasThirdPartyAccNum() => _thirdPartyAccNum != null;

  // "Amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  set amount(String? val) => _amount = val;

  bool hasAmount() => _amount != null;

  // "OtherRequiredDetails" field.
  OtherRequiredDetailsStruct? _otherRequiredDetails;
  OtherRequiredDetailsStruct get otherRequiredDetails =>
      _otherRequiredDetails ?? OtherRequiredDetailsStruct();
  set otherRequiredDetails(OtherRequiredDetailsStruct? val) =>
      _otherRequiredDetails = val;

  void updateOtherRequiredDetails(
      Function(OtherRequiredDetailsStruct) updateFn) {
    updateFn(_otherRequiredDetails ??= OtherRequiredDetailsStruct());
  }

  bool hasOtherRequiredDetails() => _otherRequiredDetails != null;

  // "TranStsRsn" field.
  String? _tranStsRsn;
  String get tranStsRsn => _tranStsRsn ?? '';
  set tranStsRsn(String? val) => _tranStsRsn = val;

  bool hasTranStsRsn() => _tranStsRsn != null;

  // "CurType" field.
  String? _curType;
  String get curType => _curType ?? '';
  set curType(String? val) => _curType = val;

  bool hasCurType() => _curType != null;

  // "Terminal" field.
  TerminalStruct? _terminal;
  TerminalStruct get terminal => _terminal ?? TerminalStruct();
  set terminal(TerminalStruct? val) => _terminal = val;

  void updateTerminal(Function(TerminalStruct) updateFn) {
    updateFn(_terminal ??= TerminalStruct());
  }

  bool hasTerminal() => _terminal != null;

  // "TimeStamp" field.
  String? _timeStamp;
  String get timeStamp => _timeStamp ?? '';
  set timeStamp(String? val) => _timeStamp = val;

  bool hasTimeStamp() => _timeStamp != null;

  // "TranMode" field.
  String? _tranMode;
  String get tranMode => _tranMode ?? '';
  set tranMode(String? val) => _tranMode = val;

  bool hasTranMode() => _tranMode != null;

  // "AuthorizationResponse" field.
  AuthorizationResponseStruct? _authorizationResponse;
  AuthorizationResponseStruct get authorizationResponse =>
      _authorizationResponse ?? AuthorizationResponseStruct();
  set authorizationResponse(AuthorizationResponseStruct? val) =>
      _authorizationResponse = val;

  void updateAuthorizationResponse(
      Function(AuthorizationResponseStruct) updateFn) {
    updateFn(_authorizationResponse ??= AuthorizationResponseStruct());
  }

  bool hasAuthorizationResponse() => _authorizationResponse != null;

  // "ThirdPartyAccName" field.
  String? _thirdPartyAccName;
  String get thirdPartyAccName => _thirdPartyAccName ?? '';
  set thirdPartyAccName(String? val) => _thirdPartyAccName = val;

  bool hasThirdPartyAccName() => _thirdPartyAccName != null;

  // "OrgnlCcy" field.
  String? _orgnlCcy;
  String get orgnlCcy => _orgnlCcy ?? '';
  set orgnlCcy(String? val) => _orgnlCcy = val;

  bool hasOrgnlCcy() => _orgnlCcy != null;

  // "Payment" field.
  PaymentStruct? _payment;
  PaymentStruct get payment => _payment ?? PaymentStruct();
  set payment(PaymentStruct? val) => _payment = val;

  void updatePayment(Function(PaymentStruct) updateFn) {
    updateFn(_payment ??= PaymentStruct());
  }

  bool hasPayment() => _payment != null;

  // "ShippingAddress" field.
  ShippingAddressStruct? _shippingAddress;
  ShippingAddressStruct get shippingAddress =>
      _shippingAddress ?? ShippingAddressStruct();
  set shippingAddress(ShippingAddressStruct? val) => _shippingAddress = val;

  void updateShippingAddress(Function(ShippingAddressStruct) updateFn) {
    updateFn(_shippingAddress ??= ShippingAddressStruct());
  }

  bool hasShippingAddress() => _shippingAddress != null;

  // "TranSts" field.
  String? _tranSts;
  String get tranSts => _tranSts ?? '';
  set tranSts(String? val) => _tranSts = val;

  bool hasTranSts() => _tranSts != null;

  // "DestinationCtry" field.
  String? _destinationCtry;
  String get destinationCtry => _destinationCtry ?? '';
  set destinationCtry(String? val) => _destinationCtry = val;

  bool hasDestinationCtry() => _destinationCtry != null;

  // "ThirdPartyAccType" field.
  String? _thirdPartyAccType;
  String get thirdPartyAccType => _thirdPartyAccType ?? '';
  set thirdPartyAccType(String? val) => _thirdPartyAccType = val;

  bool hasThirdPartyAccType() => _thirdPartyAccType != null;

  // "IsDeviceVerified" field.
  String? _isDeviceVerified;
  String get isDeviceVerified => _isDeviceVerified ?? '';
  set isDeviceVerified(String? val) => _isDeviceVerified = val;

  bool hasIsDeviceVerified() => _isDeviceVerified != null;

  static TransactionStruct fromMap(Map<String, dynamic> data) =>
      TransactionStruct(
        thirdPartyBankCode: data['ThirdPartyBankCode'] as String?,
        transactionType: data['TransactionType'] as String?,
        bankTranType: data['BankTranType'] as String?,
        destinationId: data['DestinationId'] as String?,
        billingAddress: data['BillingAddress'] is BillingAddressStruct
            ? data['BillingAddress']
            : BillingAddressStruct.maybeFromMap(data['BillingAddress']),
        cardMetaData: data['CardMetaData'] is CardMetaDataStruct
            ? data['CardMetaData']
            : CardMetaDataStruct.maybeFromMap(data['CardMetaData']),
        merchant: data['Merchant'] is MerchantStruct
            ? data['Merchant']
            : MerchantStruct.maybeFromMap(data['Merchant']),
        bankAccountDetails: data['BankAccountDetails']
                is BankAccountDetailsStruct
            ? data['BankAccountDetails']
            : BankAccountDetailsStruct.maybeFromMap(data['BankAccountDetails']),
        sourceCtry: data['SourceCtry'] as String?,
        tranDtls: data['TranDtls'] as String?,
        orgnlAmt: data['OrgnlAmt'] as String?,
        tranDesc: data['TranDesc'] as String?,
        thirdPartyAccNum: data['ThirdPartyAccNum'] as String?,
        amount: data['Amount'] as String?,
        otherRequiredDetails:
            data['OtherRequiredDetails'] is OtherRequiredDetailsStruct
                ? data['OtherRequiredDetails']
                : OtherRequiredDetailsStruct.maybeFromMap(
                    data['OtherRequiredDetails']),
        tranStsRsn: data['TranStsRsn'] as String?,
        curType: data['CurType'] as String?,
        terminal: data['Terminal'] is TerminalStruct
            ? data['Terminal']
            : TerminalStruct.maybeFromMap(data['Terminal']),
        timeStamp: data['TimeStamp'] as String?,
        tranMode: data['TranMode'] as String?,
        authorizationResponse:
            data['AuthorizationResponse'] is AuthorizationResponseStruct
                ? data['AuthorizationResponse']
                : AuthorizationResponseStruct.maybeFromMap(
                    data['AuthorizationResponse']),
        thirdPartyAccName: data['ThirdPartyAccName'] as String?,
        orgnlCcy: data['OrgnlCcy'] as String?,
        payment: data['Payment'] is PaymentStruct
            ? data['Payment']
            : PaymentStruct.maybeFromMap(data['Payment']),
        shippingAddress: data['ShippingAddress'] is ShippingAddressStruct
            ? data['ShippingAddress']
            : ShippingAddressStruct.maybeFromMap(data['ShippingAddress']),
        tranSts: data['TranSts'] as String?,
        destinationCtry: data['DestinationCtry'] as String?,
        thirdPartyAccType: data['ThirdPartyAccType'] as String?,
        isDeviceVerified: data['IsDeviceVerified'] as String?,
      );

  static TransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ThirdPartyBankCode': _thirdPartyBankCode,
        'TransactionType': _transactionType,
        'BankTranType': _bankTranType,
        'DestinationId': _destinationId,
        'BillingAddress': _billingAddress?.toMap(),
        'CardMetaData': _cardMetaData?.toMap(),
        'Merchant': _merchant?.toMap(),
        'BankAccountDetails': _bankAccountDetails?.toMap(),
        'SourceCtry': _sourceCtry,
        'TranDtls': _tranDtls,
        'OrgnlAmt': _orgnlAmt,
        'TranDesc': _tranDesc,
        'ThirdPartyAccNum': _thirdPartyAccNum,
        'Amount': _amount,
        'OtherRequiredDetails': _otherRequiredDetails?.toMap(),
        'TranStsRsn': _tranStsRsn,
        'CurType': _curType,
        'Terminal': _terminal?.toMap(),
        'TimeStamp': _timeStamp,
        'TranMode': _tranMode,
        'AuthorizationResponse': _authorizationResponse?.toMap(),
        'ThirdPartyAccName': _thirdPartyAccName,
        'OrgnlCcy': _orgnlCcy,
        'Payment': _payment?.toMap(),
        'ShippingAddress': _shippingAddress?.toMap(),
        'TranSts': _tranSts,
        'DestinationCtry': _destinationCtry,
        'ThirdPartyAccType': _thirdPartyAccType,
        'IsDeviceVerified': _isDeviceVerified,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ThirdPartyBankCode': serializeParam(
          _thirdPartyBankCode,
          ParamType.String,
        ),
        'TransactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'BankTranType': serializeParam(
          _bankTranType,
          ParamType.String,
        ),
        'DestinationId': serializeParam(
          _destinationId,
          ParamType.String,
        ),
        'BillingAddress': serializeParam(
          _billingAddress,
          ParamType.DataStruct,
        ),
        'CardMetaData': serializeParam(
          _cardMetaData,
          ParamType.DataStruct,
        ),
        'Merchant': serializeParam(
          _merchant,
          ParamType.DataStruct,
        ),
        'BankAccountDetails': serializeParam(
          _bankAccountDetails,
          ParamType.DataStruct,
        ),
        'SourceCtry': serializeParam(
          _sourceCtry,
          ParamType.String,
        ),
        'TranDtls': serializeParam(
          _tranDtls,
          ParamType.String,
        ),
        'OrgnlAmt': serializeParam(
          _orgnlAmt,
          ParamType.String,
        ),
        'TranDesc': serializeParam(
          _tranDesc,
          ParamType.String,
        ),
        'ThirdPartyAccNum': serializeParam(
          _thirdPartyAccNum,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.String,
        ),
        'OtherRequiredDetails': serializeParam(
          _otherRequiredDetails,
          ParamType.DataStruct,
        ),
        'TranStsRsn': serializeParam(
          _tranStsRsn,
          ParamType.String,
        ),
        'CurType': serializeParam(
          _curType,
          ParamType.String,
        ),
        'Terminal': serializeParam(
          _terminal,
          ParamType.DataStruct,
        ),
        'TimeStamp': serializeParam(
          _timeStamp,
          ParamType.String,
        ),
        'TranMode': serializeParam(
          _tranMode,
          ParamType.String,
        ),
        'AuthorizationResponse': serializeParam(
          _authorizationResponse,
          ParamType.DataStruct,
        ),
        'ThirdPartyAccName': serializeParam(
          _thirdPartyAccName,
          ParamType.String,
        ),
        'OrgnlCcy': serializeParam(
          _orgnlCcy,
          ParamType.String,
        ),
        'Payment': serializeParam(
          _payment,
          ParamType.DataStruct,
        ),
        'ShippingAddress': serializeParam(
          _shippingAddress,
          ParamType.DataStruct,
        ),
        'TranSts': serializeParam(
          _tranSts,
          ParamType.String,
        ),
        'DestinationCtry': serializeParam(
          _destinationCtry,
          ParamType.String,
        ),
        'ThirdPartyAccType': serializeParam(
          _thirdPartyAccType,
          ParamType.String,
        ),
        'IsDeviceVerified': serializeParam(
          _isDeviceVerified,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionStruct(
        thirdPartyBankCode: deserializeParam(
          data['ThirdPartyBankCode'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['TransactionType'],
          ParamType.String,
          false,
        ),
        bankTranType: deserializeParam(
          data['BankTranType'],
          ParamType.String,
          false,
        ),
        destinationId: deserializeParam(
          data['DestinationId'],
          ParamType.String,
          false,
        ),
        billingAddress: deserializeStructParam(
          data['BillingAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: BillingAddressStruct.fromSerializableMap,
        ),
        cardMetaData: deserializeStructParam(
          data['CardMetaData'],
          ParamType.DataStruct,
          false,
          structBuilder: CardMetaDataStruct.fromSerializableMap,
        ),
        merchant: deserializeStructParam(
          data['Merchant'],
          ParamType.DataStruct,
          false,
          structBuilder: MerchantStruct.fromSerializableMap,
        ),
        bankAccountDetails: deserializeStructParam(
          data['BankAccountDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: BankAccountDetailsStruct.fromSerializableMap,
        ),
        sourceCtry: deserializeParam(
          data['SourceCtry'],
          ParamType.String,
          false,
        ),
        tranDtls: deserializeParam(
          data['TranDtls'],
          ParamType.String,
          false,
        ),
        orgnlAmt: deserializeParam(
          data['OrgnlAmt'],
          ParamType.String,
          false,
        ),
        tranDesc: deserializeParam(
          data['TranDesc'],
          ParamType.String,
          false,
        ),
        thirdPartyAccNum: deserializeParam(
          data['ThirdPartyAccNum'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.String,
          false,
        ),
        otherRequiredDetails: deserializeStructParam(
          data['OtherRequiredDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: OtherRequiredDetailsStruct.fromSerializableMap,
        ),
        tranStsRsn: deserializeParam(
          data['TranStsRsn'],
          ParamType.String,
          false,
        ),
        curType: deserializeParam(
          data['CurType'],
          ParamType.String,
          false,
        ),
        terminal: deserializeStructParam(
          data['Terminal'],
          ParamType.DataStruct,
          false,
          structBuilder: TerminalStruct.fromSerializableMap,
        ),
        timeStamp: deserializeParam(
          data['TimeStamp'],
          ParamType.String,
          false,
        ),
        tranMode: deserializeParam(
          data['TranMode'],
          ParamType.String,
          false,
        ),
        authorizationResponse: deserializeStructParam(
          data['AuthorizationResponse'],
          ParamType.DataStruct,
          false,
          structBuilder: AuthorizationResponseStruct.fromSerializableMap,
        ),
        thirdPartyAccName: deserializeParam(
          data['ThirdPartyAccName'],
          ParamType.String,
          false,
        ),
        orgnlCcy: deserializeParam(
          data['OrgnlCcy'],
          ParamType.String,
          false,
        ),
        payment: deserializeStructParam(
          data['Payment'],
          ParamType.DataStruct,
          false,
          structBuilder: PaymentStruct.fromSerializableMap,
        ),
        shippingAddress: deserializeStructParam(
          data['ShippingAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: ShippingAddressStruct.fromSerializableMap,
        ),
        tranSts: deserializeParam(
          data['TranSts'],
          ParamType.String,
          false,
        ),
        destinationCtry: deserializeParam(
          data['DestinationCtry'],
          ParamType.String,
          false,
        ),
        thirdPartyAccType: deserializeParam(
          data['ThirdPartyAccType'],
          ParamType.String,
          false,
        ),
        isDeviceVerified: deserializeParam(
          data['IsDeviceVerified'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionStruct &&
        thirdPartyBankCode == other.thirdPartyBankCode &&
        transactionType == other.transactionType &&
        bankTranType == other.bankTranType &&
        destinationId == other.destinationId &&
        billingAddress == other.billingAddress &&
        cardMetaData == other.cardMetaData &&
        merchant == other.merchant &&
        bankAccountDetails == other.bankAccountDetails &&
        sourceCtry == other.sourceCtry &&
        tranDtls == other.tranDtls &&
        orgnlAmt == other.orgnlAmt &&
        tranDesc == other.tranDesc &&
        thirdPartyAccNum == other.thirdPartyAccNum &&
        amount == other.amount &&
        otherRequiredDetails == other.otherRequiredDetails &&
        tranStsRsn == other.tranStsRsn &&
        curType == other.curType &&
        terminal == other.terminal &&
        timeStamp == other.timeStamp &&
        tranMode == other.tranMode &&
        authorizationResponse == other.authorizationResponse &&
        thirdPartyAccName == other.thirdPartyAccName &&
        orgnlCcy == other.orgnlCcy &&
        payment == other.payment &&
        shippingAddress == other.shippingAddress &&
        tranSts == other.tranSts &&
        destinationCtry == other.destinationCtry &&
        thirdPartyAccType == other.thirdPartyAccType &&
        isDeviceVerified == other.isDeviceVerified;
  }

  @override
  int get hashCode => const ListEquality().hash([
        thirdPartyBankCode,
        transactionType,
        bankTranType,
        destinationId,
        billingAddress,
        cardMetaData,
        merchant,
        bankAccountDetails,
        sourceCtry,
        tranDtls,
        orgnlAmt,
        tranDesc,
        thirdPartyAccNum,
        amount,
        otherRequiredDetails,
        tranStsRsn,
        curType,
        terminal,
        timeStamp,
        tranMode,
        authorizationResponse,
        thirdPartyAccName,
        orgnlCcy,
        payment,
        shippingAddress,
        tranSts,
        destinationCtry,
        thirdPartyAccType,
        isDeviceVerified
      ]);
}

TransactionStruct createTransactionStruct({
  String? thirdPartyBankCode,
  String? transactionType,
  String? bankTranType,
  String? destinationId,
  BillingAddressStruct? billingAddress,
  CardMetaDataStruct? cardMetaData,
  MerchantStruct? merchant,
  BankAccountDetailsStruct? bankAccountDetails,
  String? sourceCtry,
  String? tranDtls,
  String? orgnlAmt,
  String? tranDesc,
  String? thirdPartyAccNum,
  String? amount,
  OtherRequiredDetailsStruct? otherRequiredDetails,
  String? tranStsRsn,
  String? curType,
  TerminalStruct? terminal,
  String? timeStamp,
  String? tranMode,
  AuthorizationResponseStruct? authorizationResponse,
  String? thirdPartyAccName,
  String? orgnlCcy,
  PaymentStruct? payment,
  ShippingAddressStruct? shippingAddress,
  String? tranSts,
  String? destinationCtry,
  String? thirdPartyAccType,
  String? isDeviceVerified,
}) =>
    TransactionStruct(
      thirdPartyBankCode: thirdPartyBankCode,
      transactionType: transactionType,
      bankTranType: bankTranType,
      destinationId: destinationId,
      billingAddress: billingAddress ?? BillingAddressStruct(),
      cardMetaData: cardMetaData ?? CardMetaDataStruct(),
      merchant: merchant ?? MerchantStruct(),
      bankAccountDetails: bankAccountDetails ?? BankAccountDetailsStruct(),
      sourceCtry: sourceCtry,
      tranDtls: tranDtls,
      orgnlAmt: orgnlAmt,
      tranDesc: tranDesc,
      thirdPartyAccNum: thirdPartyAccNum,
      amount: amount,
      otherRequiredDetails:
          otherRequiredDetails ?? OtherRequiredDetailsStruct(),
      tranStsRsn: tranStsRsn,
      curType: curType,
      terminal: terminal ?? TerminalStruct(),
      timeStamp: timeStamp,
      tranMode: tranMode,
      authorizationResponse:
          authorizationResponse ?? AuthorizationResponseStruct(),
      thirdPartyAccName: thirdPartyAccName,
      orgnlCcy: orgnlCcy,
      payment: payment ?? PaymentStruct(),
      shippingAddress: shippingAddress ?? ShippingAddressStruct(),
      tranSts: tranSts,
      destinationCtry: destinationCtry,
      thirdPartyAccType: thirdPartyAccType,
      isDeviceVerified: isDeviceVerified,
    );
