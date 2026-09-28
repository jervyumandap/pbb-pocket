// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionCheckpointDetailsStruct extends BaseStruct {
  TransactionCheckpointDetailsStruct({
    String? timeStamp,
    String? transactionType,
    double? amount,
    String? curType,
    String? destinationId,
    String? thirdPartyBankCode,
    String? thirdPartyAccNum,
    String? thirdPartyAccName,
    String? thirdPartyAccType,
    String? bankTranType,
    String? tranDesc,
    String? isDeviceVerified,
    String? sourceCtry,
    String? destinationCtry,
    String? tranDtls,
    String? tranMode,
    String? tranSts,
    String? tranStsRsn,
    String? orgnlCcy,
    double? orgnlAmt,
    UserDtlsStruct? userDtls,
    ShippingAddressStruct? shippingAddress,
    BillingAddressStruct? billingAddress,
    PaymentStruct? payment,
    BankAccountDetailsStruct? bankAccountDetails,
    CardMetaDataStruct? cardMetaData,
    MerchantStruct? merchant,
    AuthorizationResponseStruct? authorizationResponse,
    OtherRequiredDetailsStruct? otherRequiredDetails,
  })  : _timeStamp = timeStamp,
        _transactionType = transactionType,
        _amount = amount,
        _curType = curType,
        _destinationId = destinationId,
        _thirdPartyBankCode = thirdPartyBankCode,
        _thirdPartyAccNum = thirdPartyAccNum,
        _thirdPartyAccName = thirdPartyAccName,
        _thirdPartyAccType = thirdPartyAccType,
        _bankTranType = bankTranType,
        _tranDesc = tranDesc,
        _isDeviceVerified = isDeviceVerified,
        _sourceCtry = sourceCtry,
        _destinationCtry = destinationCtry,
        _tranDtls = tranDtls,
        _tranMode = tranMode,
        _tranSts = tranSts,
        _tranStsRsn = tranStsRsn,
        _orgnlCcy = orgnlCcy,
        _orgnlAmt = orgnlAmt,
        _userDtls = userDtls,
        _shippingAddress = shippingAddress,
        _billingAddress = billingAddress,
        _payment = payment,
        _bankAccountDetails = bankAccountDetails,
        _cardMetaData = cardMetaData,
        _merchant = merchant,
        _authorizationResponse = authorizationResponse,
        _otherRequiredDetails = otherRequiredDetails;

  // "TimeStamp" field.
  String? _timeStamp;
  String get timeStamp => _timeStamp ?? '';
  set timeStamp(String? val) => _timeStamp = val;

  bool hasTimeStamp() => _timeStamp != null;

  // "TransactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "Amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "CurType" field.
  String? _curType;
  String get curType => _curType ?? '';
  set curType(String? val) => _curType = val;

  bool hasCurType() => _curType != null;

  // "DestinationId" field.
  String? _destinationId;
  String get destinationId => _destinationId ?? '';
  set destinationId(String? val) => _destinationId = val;

  bool hasDestinationId() => _destinationId != null;

  // "ThirdPartyBankCode" field.
  String? _thirdPartyBankCode;
  String get thirdPartyBankCode => _thirdPartyBankCode ?? '';
  set thirdPartyBankCode(String? val) => _thirdPartyBankCode = val;

  bool hasThirdPartyBankCode() => _thirdPartyBankCode != null;

  // "ThirdPartyAccNum" field.
  String? _thirdPartyAccNum;
  String get thirdPartyAccNum => _thirdPartyAccNum ?? '';
  set thirdPartyAccNum(String? val) => _thirdPartyAccNum = val;

  bool hasThirdPartyAccNum() => _thirdPartyAccNum != null;

  // "ThirdPartyAccName" field.
  String? _thirdPartyAccName;
  String get thirdPartyAccName => _thirdPartyAccName ?? '';
  set thirdPartyAccName(String? val) => _thirdPartyAccName = val;

  bool hasThirdPartyAccName() => _thirdPartyAccName != null;

  // "ThirdPartyAccType" field.
  String? _thirdPartyAccType;
  String get thirdPartyAccType => _thirdPartyAccType ?? '';
  set thirdPartyAccType(String? val) => _thirdPartyAccType = val;

  bool hasThirdPartyAccType() => _thirdPartyAccType != null;

  // "BankTranType" field.
  String? _bankTranType;
  String get bankTranType => _bankTranType ?? '';
  set bankTranType(String? val) => _bankTranType = val;

  bool hasBankTranType() => _bankTranType != null;

  // "TranDesc" field.
  String? _tranDesc;
  String get tranDesc => _tranDesc ?? '';
  set tranDesc(String? val) => _tranDesc = val;

  bool hasTranDesc() => _tranDesc != null;

  // "IsDeviceVerified" field.
  String? _isDeviceVerified;
  String get isDeviceVerified => _isDeviceVerified ?? '';
  set isDeviceVerified(String? val) => _isDeviceVerified = val;

  bool hasIsDeviceVerified() => _isDeviceVerified != null;

  // "SourceCtry" field.
  String? _sourceCtry;
  String get sourceCtry => _sourceCtry ?? '';
  set sourceCtry(String? val) => _sourceCtry = val;

  bool hasSourceCtry() => _sourceCtry != null;

  // "DestinationCtry" field.
  String? _destinationCtry;
  String get destinationCtry => _destinationCtry ?? '';
  set destinationCtry(String? val) => _destinationCtry = val;

  bool hasDestinationCtry() => _destinationCtry != null;

  // "TranDtls" field.
  String? _tranDtls;
  String get tranDtls => _tranDtls ?? '';
  set tranDtls(String? val) => _tranDtls = val;

  bool hasTranDtls() => _tranDtls != null;

  // "TranMode" field.
  String? _tranMode;
  String get tranMode => _tranMode ?? '';
  set tranMode(String? val) => _tranMode = val;

  bool hasTranMode() => _tranMode != null;

  // "TranSts" field.
  String? _tranSts;
  String get tranSts => _tranSts ?? '';
  set tranSts(String? val) => _tranSts = val;

  bool hasTranSts() => _tranSts != null;

  // "TranStsRsn" field.
  String? _tranStsRsn;
  String get tranStsRsn => _tranStsRsn ?? '';
  set tranStsRsn(String? val) => _tranStsRsn = val;

  bool hasTranStsRsn() => _tranStsRsn != null;

  // "OrgnlCcy" field.
  String? _orgnlCcy;
  String get orgnlCcy => _orgnlCcy ?? '';
  set orgnlCcy(String? val) => _orgnlCcy = val;

  bool hasOrgnlCcy() => _orgnlCcy != null;

  // "OrgnlAmt" field.
  double? _orgnlAmt;
  double get orgnlAmt => _orgnlAmt ?? 0.0;
  set orgnlAmt(double? val) => _orgnlAmt = val;

  void incrementOrgnlAmt(double amount) => orgnlAmt = orgnlAmt + amount;

  bool hasOrgnlAmt() => _orgnlAmt != null;

  // "UserDtls" field.
  UserDtlsStruct? _userDtls;
  UserDtlsStruct get userDtls => _userDtls ?? UserDtlsStruct();
  set userDtls(UserDtlsStruct? val) => _userDtls = val;

  void updateUserDtls(Function(UserDtlsStruct) updateFn) {
    updateFn(_userDtls ??= UserDtlsStruct());
  }

  bool hasUserDtls() => _userDtls != null;

  // "ShippingAddress" field.
  ShippingAddressStruct? _shippingAddress;
  ShippingAddressStruct get shippingAddress =>
      _shippingAddress ?? ShippingAddressStruct();
  set shippingAddress(ShippingAddressStruct? val) => _shippingAddress = val;

  void updateShippingAddress(Function(ShippingAddressStruct) updateFn) {
    updateFn(_shippingAddress ??= ShippingAddressStruct());
  }

  bool hasShippingAddress() => _shippingAddress != null;

  // "BillingAddress" field.
  BillingAddressStruct? _billingAddress;
  BillingAddressStruct get billingAddress =>
      _billingAddress ?? BillingAddressStruct();
  set billingAddress(BillingAddressStruct? val) => _billingAddress = val;

  void updateBillingAddress(Function(BillingAddressStruct) updateFn) {
    updateFn(_billingAddress ??= BillingAddressStruct());
  }

  bool hasBillingAddress() => _billingAddress != null;

  // "Payment" field.
  PaymentStruct? _payment;
  PaymentStruct get payment => _payment ?? PaymentStruct();
  set payment(PaymentStruct? val) => _payment = val;

  void updatePayment(Function(PaymentStruct) updateFn) {
    updateFn(_payment ??= PaymentStruct());
  }

  bool hasPayment() => _payment != null;

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

  static TransactionCheckpointDetailsStruct fromMap(
          Map<String, dynamic> data) =>
      TransactionCheckpointDetailsStruct(
        timeStamp: data['TimeStamp'] as String?,
        transactionType: data['TransactionType'] as String?,
        amount: castToType<double>(data['Amount']),
        curType: data['CurType'] as String?,
        destinationId: data['DestinationId'] as String?,
        thirdPartyBankCode: data['ThirdPartyBankCode'] as String?,
        thirdPartyAccNum: data['ThirdPartyAccNum'] as String?,
        thirdPartyAccName: data['ThirdPartyAccName'] as String?,
        thirdPartyAccType: data['ThirdPartyAccType'] as String?,
        bankTranType: data['BankTranType'] as String?,
        tranDesc: data['TranDesc'] as String?,
        isDeviceVerified: data['IsDeviceVerified'] as String?,
        sourceCtry: data['SourceCtry'] as String?,
        destinationCtry: data['DestinationCtry'] as String?,
        tranDtls: data['TranDtls'] as String?,
        tranMode: data['TranMode'] as String?,
        tranSts: data['TranSts'] as String?,
        tranStsRsn: data['TranStsRsn'] as String?,
        orgnlCcy: data['OrgnlCcy'] as String?,
        orgnlAmt: castToType<double>(data['OrgnlAmt']),
        userDtls: data['UserDtls'] is UserDtlsStruct
            ? data['UserDtls']
            : UserDtlsStruct.maybeFromMap(data['UserDtls']),
        shippingAddress: data['ShippingAddress'] is ShippingAddressStruct
            ? data['ShippingAddress']
            : ShippingAddressStruct.maybeFromMap(data['ShippingAddress']),
        billingAddress: data['BillingAddress'] is BillingAddressStruct
            ? data['BillingAddress']
            : BillingAddressStruct.maybeFromMap(data['BillingAddress']),
        payment: data['Payment'] is PaymentStruct
            ? data['Payment']
            : PaymentStruct.maybeFromMap(data['Payment']),
        bankAccountDetails: data['BankAccountDetails']
                is BankAccountDetailsStruct
            ? data['BankAccountDetails']
            : BankAccountDetailsStruct.maybeFromMap(data['BankAccountDetails']),
        cardMetaData: data['CardMetaData'] is CardMetaDataStruct
            ? data['CardMetaData']
            : CardMetaDataStruct.maybeFromMap(data['CardMetaData']),
        merchant: data['Merchant'] is MerchantStruct
            ? data['Merchant']
            : MerchantStruct.maybeFromMap(data['Merchant']),
        authorizationResponse:
            data['AuthorizationResponse'] is AuthorizationResponseStruct
                ? data['AuthorizationResponse']
                : AuthorizationResponseStruct.maybeFromMap(
                    data['AuthorizationResponse']),
        otherRequiredDetails:
            data['OtherRequiredDetails'] is OtherRequiredDetailsStruct
                ? data['OtherRequiredDetails']
                : OtherRequiredDetailsStruct.maybeFromMap(
                    data['OtherRequiredDetails']),
      );

  static TransactionCheckpointDetailsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TransactionCheckpointDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TimeStamp': _timeStamp,
        'TransactionType': _transactionType,
        'Amount': _amount,
        'CurType': _curType,
        'DestinationId': _destinationId,
        'ThirdPartyBankCode': _thirdPartyBankCode,
        'ThirdPartyAccNum': _thirdPartyAccNum,
        'ThirdPartyAccName': _thirdPartyAccName,
        'ThirdPartyAccType': _thirdPartyAccType,
        'BankTranType': _bankTranType,
        'TranDesc': _tranDesc,
        'IsDeviceVerified': _isDeviceVerified,
        'SourceCtry': _sourceCtry,
        'DestinationCtry': _destinationCtry,
        'TranDtls': _tranDtls,
        'TranMode': _tranMode,
        'TranSts': _tranSts,
        'TranStsRsn': _tranStsRsn,
        'OrgnlCcy': _orgnlCcy,
        'OrgnlAmt': _orgnlAmt,
        'UserDtls': _userDtls?.toMap(),
        'ShippingAddress': _shippingAddress?.toMap(),
        'BillingAddress': _billingAddress?.toMap(),
        'Payment': _payment?.toMap(),
        'BankAccountDetails': _bankAccountDetails?.toMap(),
        'CardMetaData': _cardMetaData?.toMap(),
        'Merchant': _merchant?.toMap(),
        'AuthorizationResponse': _authorizationResponse?.toMap(),
        'OtherRequiredDetails': _otherRequiredDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TimeStamp': serializeParam(
          _timeStamp,
          ParamType.String,
        ),
        'TransactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'Amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'CurType': serializeParam(
          _curType,
          ParamType.String,
        ),
        'DestinationId': serializeParam(
          _destinationId,
          ParamType.String,
        ),
        'ThirdPartyBankCode': serializeParam(
          _thirdPartyBankCode,
          ParamType.String,
        ),
        'ThirdPartyAccNum': serializeParam(
          _thirdPartyAccNum,
          ParamType.String,
        ),
        'ThirdPartyAccName': serializeParam(
          _thirdPartyAccName,
          ParamType.String,
        ),
        'ThirdPartyAccType': serializeParam(
          _thirdPartyAccType,
          ParamType.String,
        ),
        'BankTranType': serializeParam(
          _bankTranType,
          ParamType.String,
        ),
        'TranDesc': serializeParam(
          _tranDesc,
          ParamType.String,
        ),
        'IsDeviceVerified': serializeParam(
          _isDeviceVerified,
          ParamType.String,
        ),
        'SourceCtry': serializeParam(
          _sourceCtry,
          ParamType.String,
        ),
        'DestinationCtry': serializeParam(
          _destinationCtry,
          ParamType.String,
        ),
        'TranDtls': serializeParam(
          _tranDtls,
          ParamType.String,
        ),
        'TranMode': serializeParam(
          _tranMode,
          ParamType.String,
        ),
        'TranSts': serializeParam(
          _tranSts,
          ParamType.String,
        ),
        'TranStsRsn': serializeParam(
          _tranStsRsn,
          ParamType.String,
        ),
        'OrgnlCcy': serializeParam(
          _orgnlCcy,
          ParamType.String,
        ),
        'OrgnlAmt': serializeParam(
          _orgnlAmt,
          ParamType.double,
        ),
        'UserDtls': serializeParam(
          _userDtls,
          ParamType.DataStruct,
        ),
        'ShippingAddress': serializeParam(
          _shippingAddress,
          ParamType.DataStruct,
        ),
        'BillingAddress': serializeParam(
          _billingAddress,
          ParamType.DataStruct,
        ),
        'Payment': serializeParam(
          _payment,
          ParamType.DataStruct,
        ),
        'BankAccountDetails': serializeParam(
          _bankAccountDetails,
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
        'AuthorizationResponse': serializeParam(
          _authorizationResponse,
          ParamType.DataStruct,
        ),
        'OtherRequiredDetails': serializeParam(
          _otherRequiredDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TransactionCheckpointDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransactionCheckpointDetailsStruct(
        timeStamp: deserializeParam(
          data['TimeStamp'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['TransactionType'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['Amount'],
          ParamType.double,
          false,
        ),
        curType: deserializeParam(
          data['CurType'],
          ParamType.String,
          false,
        ),
        destinationId: deserializeParam(
          data['DestinationId'],
          ParamType.String,
          false,
        ),
        thirdPartyBankCode: deserializeParam(
          data['ThirdPartyBankCode'],
          ParamType.String,
          false,
        ),
        thirdPartyAccNum: deserializeParam(
          data['ThirdPartyAccNum'],
          ParamType.String,
          false,
        ),
        thirdPartyAccName: deserializeParam(
          data['ThirdPartyAccName'],
          ParamType.String,
          false,
        ),
        thirdPartyAccType: deserializeParam(
          data['ThirdPartyAccType'],
          ParamType.String,
          false,
        ),
        bankTranType: deserializeParam(
          data['BankTranType'],
          ParamType.String,
          false,
        ),
        tranDesc: deserializeParam(
          data['TranDesc'],
          ParamType.String,
          false,
        ),
        isDeviceVerified: deserializeParam(
          data['IsDeviceVerified'],
          ParamType.String,
          false,
        ),
        sourceCtry: deserializeParam(
          data['SourceCtry'],
          ParamType.String,
          false,
        ),
        destinationCtry: deserializeParam(
          data['DestinationCtry'],
          ParamType.String,
          false,
        ),
        tranDtls: deserializeParam(
          data['TranDtls'],
          ParamType.String,
          false,
        ),
        tranMode: deserializeParam(
          data['TranMode'],
          ParamType.String,
          false,
        ),
        tranSts: deserializeParam(
          data['TranSts'],
          ParamType.String,
          false,
        ),
        tranStsRsn: deserializeParam(
          data['TranStsRsn'],
          ParamType.String,
          false,
        ),
        orgnlCcy: deserializeParam(
          data['OrgnlCcy'],
          ParamType.String,
          false,
        ),
        orgnlAmt: deserializeParam(
          data['OrgnlAmt'],
          ParamType.double,
          false,
        ),
        userDtls: deserializeStructParam(
          data['UserDtls'],
          ParamType.DataStruct,
          false,
          structBuilder: UserDtlsStruct.fromSerializableMap,
        ),
        shippingAddress: deserializeStructParam(
          data['ShippingAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: ShippingAddressStruct.fromSerializableMap,
        ),
        billingAddress: deserializeStructParam(
          data['BillingAddress'],
          ParamType.DataStruct,
          false,
          structBuilder: BillingAddressStruct.fromSerializableMap,
        ),
        payment: deserializeStructParam(
          data['Payment'],
          ParamType.DataStruct,
          false,
          structBuilder: PaymentStruct.fromSerializableMap,
        ),
        bankAccountDetails: deserializeStructParam(
          data['BankAccountDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: BankAccountDetailsStruct.fromSerializableMap,
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
        authorizationResponse: deserializeStructParam(
          data['AuthorizationResponse'],
          ParamType.DataStruct,
          false,
          structBuilder: AuthorizationResponseStruct.fromSerializableMap,
        ),
        otherRequiredDetails: deserializeStructParam(
          data['OtherRequiredDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: OtherRequiredDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TransactionCheckpointDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionCheckpointDetailsStruct &&
        timeStamp == other.timeStamp &&
        transactionType == other.transactionType &&
        amount == other.amount &&
        curType == other.curType &&
        destinationId == other.destinationId &&
        thirdPartyBankCode == other.thirdPartyBankCode &&
        thirdPartyAccNum == other.thirdPartyAccNum &&
        thirdPartyAccName == other.thirdPartyAccName &&
        thirdPartyAccType == other.thirdPartyAccType &&
        bankTranType == other.bankTranType &&
        tranDesc == other.tranDesc &&
        isDeviceVerified == other.isDeviceVerified &&
        sourceCtry == other.sourceCtry &&
        destinationCtry == other.destinationCtry &&
        tranDtls == other.tranDtls &&
        tranMode == other.tranMode &&
        tranSts == other.tranSts &&
        tranStsRsn == other.tranStsRsn &&
        orgnlCcy == other.orgnlCcy &&
        orgnlAmt == other.orgnlAmt &&
        userDtls == other.userDtls &&
        shippingAddress == other.shippingAddress &&
        billingAddress == other.billingAddress &&
        payment == other.payment &&
        bankAccountDetails == other.bankAccountDetails &&
        cardMetaData == other.cardMetaData &&
        merchant == other.merchant &&
        authorizationResponse == other.authorizationResponse &&
        otherRequiredDetails == other.otherRequiredDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([
        timeStamp,
        transactionType,
        amount,
        curType,
        destinationId,
        thirdPartyBankCode,
        thirdPartyAccNum,
        thirdPartyAccName,
        thirdPartyAccType,
        bankTranType,
        tranDesc,
        isDeviceVerified,
        sourceCtry,
        destinationCtry,
        tranDtls,
        tranMode,
        tranSts,
        tranStsRsn,
        orgnlCcy,
        orgnlAmt,
        userDtls,
        shippingAddress,
        billingAddress,
        payment,
        bankAccountDetails,
        cardMetaData,
        merchant,
        authorizationResponse,
        otherRequiredDetails
      ]);
}

TransactionCheckpointDetailsStruct createTransactionCheckpointDetailsStruct({
  String? timeStamp,
  String? transactionType,
  double? amount,
  String? curType,
  String? destinationId,
  String? thirdPartyBankCode,
  String? thirdPartyAccNum,
  String? thirdPartyAccName,
  String? thirdPartyAccType,
  String? bankTranType,
  String? tranDesc,
  String? isDeviceVerified,
  String? sourceCtry,
  String? destinationCtry,
  String? tranDtls,
  String? tranMode,
  String? tranSts,
  String? tranStsRsn,
  String? orgnlCcy,
  double? orgnlAmt,
  UserDtlsStruct? userDtls,
  ShippingAddressStruct? shippingAddress,
  BillingAddressStruct? billingAddress,
  PaymentStruct? payment,
  BankAccountDetailsStruct? bankAccountDetails,
  CardMetaDataStruct? cardMetaData,
  MerchantStruct? merchant,
  AuthorizationResponseStruct? authorizationResponse,
  OtherRequiredDetailsStruct? otherRequiredDetails,
}) =>
    TransactionCheckpointDetailsStruct(
      timeStamp: timeStamp,
      transactionType: transactionType,
      amount: amount,
      curType: curType,
      destinationId: destinationId,
      thirdPartyBankCode: thirdPartyBankCode,
      thirdPartyAccNum: thirdPartyAccNum,
      thirdPartyAccName: thirdPartyAccName,
      thirdPartyAccType: thirdPartyAccType,
      bankTranType: bankTranType,
      tranDesc: tranDesc,
      isDeviceVerified: isDeviceVerified,
      sourceCtry: sourceCtry,
      destinationCtry: destinationCtry,
      tranDtls: tranDtls,
      tranMode: tranMode,
      tranSts: tranSts,
      tranStsRsn: tranStsRsn,
      orgnlCcy: orgnlCcy,
      orgnlAmt: orgnlAmt,
      userDtls: userDtls ?? UserDtlsStruct(),
      shippingAddress: shippingAddress ?? ShippingAddressStruct(),
      billingAddress: billingAddress ?? BillingAddressStruct(),
      payment: payment ?? PaymentStruct(),
      bankAccountDetails: bankAccountDetails ?? BankAccountDetailsStruct(),
      cardMetaData: cardMetaData ?? CardMetaDataStruct(),
      merchant: merchant ?? MerchantStruct(),
      authorizationResponse:
          authorizationResponse ?? AuthorizationResponseStruct(),
      otherRequiredDetails:
          otherRequiredDetails ?? OtherRequiredDetailsStruct(),
    );
