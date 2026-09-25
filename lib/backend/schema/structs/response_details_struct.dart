// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseDetailsStruct extends BaseStruct {
  ResponseDetailsStruct({
    String? message,
    String? dateReceived,
    String? idcBatchnum,
    String? origInvoicenum,
    String? bankCode,
    String? bankName,
    AccountInfoStruct? accountInfo,
    CardInfoStruct? cardInfo,
    OtherInfoStruct? otherInfo,
  })  : _message = message,
        _dateReceived = dateReceived,
        _idcBatchnum = idcBatchnum,
        _origInvoicenum = origInvoicenum,
        _bankCode = bankCode,
        _bankName = bankName,
        _accountInfo = accountInfo,
        _cardInfo = cardInfo,
        _otherInfo = otherInfo;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "date_received" field.
  String? _dateReceived;
  String get dateReceived => _dateReceived ?? '';
  set dateReceived(String? val) => _dateReceived = val;

  bool hasDateReceived() => _dateReceived != null;

  // "idc_batchnum" field.
  String? _idcBatchnum;
  String get idcBatchnum => _idcBatchnum ?? '';
  set idcBatchnum(String? val) => _idcBatchnum = val;

  bool hasIdcBatchnum() => _idcBatchnum != null;

  // "orig_invoicenum" field.
  String? _origInvoicenum;
  String get origInvoicenum => _origInvoicenum ?? '';
  set origInvoicenum(String? val) => _origInvoicenum = val;

  bool hasOrigInvoicenum() => _origInvoicenum != null;

  // "bank_code" field.
  String? _bankCode;
  String get bankCode => _bankCode ?? '';
  set bankCode(String? val) => _bankCode = val;

  bool hasBankCode() => _bankCode != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "AccountInfo" field.
  AccountInfoStruct? _accountInfo;
  AccountInfoStruct get accountInfo => _accountInfo ?? AccountInfoStruct();
  set accountInfo(AccountInfoStruct? val) => _accountInfo = val;

  void updateAccountInfo(Function(AccountInfoStruct) updateFn) {
    updateFn(_accountInfo ??= AccountInfoStruct());
  }

  bool hasAccountInfo() => _accountInfo != null;

  // "CardInfo" field.
  CardInfoStruct? _cardInfo;
  CardInfoStruct get cardInfo => _cardInfo ?? CardInfoStruct();
  set cardInfo(CardInfoStruct? val) => _cardInfo = val;

  void updateCardInfo(Function(CardInfoStruct) updateFn) {
    updateFn(_cardInfo ??= CardInfoStruct());
  }

  bool hasCardInfo() => _cardInfo != null;

  // "OtherInfo" field.
  OtherInfoStruct? _otherInfo;
  OtherInfoStruct get otherInfo => _otherInfo ?? OtherInfoStruct();
  set otherInfo(OtherInfoStruct? val) => _otherInfo = val;

  void updateOtherInfo(Function(OtherInfoStruct) updateFn) {
    updateFn(_otherInfo ??= OtherInfoStruct());
  }

  bool hasOtherInfo() => _otherInfo != null;

  static ResponseDetailsStruct fromMap(Map<String, dynamic> data) =>
      ResponseDetailsStruct(
        message: data['message'] as String?,
        dateReceived: data['date_received'] as String?,
        idcBatchnum: data['idc_batchnum'] as String?,
        origInvoicenum: data['orig_invoicenum'] as String?,
        bankCode: data['bank_code'] as String?,
        bankName: data['bank_name'] as String?,
        accountInfo: data['AccountInfo'] is AccountInfoStruct
            ? data['AccountInfo']
            : AccountInfoStruct.maybeFromMap(data['AccountInfo']),
        cardInfo: data['CardInfo'] is CardInfoStruct
            ? data['CardInfo']
            : CardInfoStruct.maybeFromMap(data['CardInfo']),
        otherInfo: data['OtherInfo'] is OtherInfoStruct
            ? data['OtherInfo']
            : OtherInfoStruct.maybeFromMap(data['OtherInfo']),
      );

  static ResponseDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ResponseDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
        'date_received': _dateReceived,
        'idc_batchnum': _idcBatchnum,
        'orig_invoicenum': _origInvoicenum,
        'bank_code': _bankCode,
        'bank_name': _bankName,
        'AccountInfo': _accountInfo?.toMap(),
        'CardInfo': _cardInfo?.toMap(),
        'OtherInfo': _otherInfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'date_received': serializeParam(
          _dateReceived,
          ParamType.String,
        ),
        'idc_batchnum': serializeParam(
          _idcBatchnum,
          ParamType.String,
        ),
        'orig_invoicenum': serializeParam(
          _origInvoicenum,
          ParamType.String,
        ),
        'bank_code': serializeParam(
          _bankCode,
          ParamType.String,
        ),
        'bank_name': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'AccountInfo': serializeParam(
          _accountInfo,
          ParamType.DataStruct,
        ),
        'CardInfo': serializeParam(
          _cardInfo,
          ParamType.DataStruct,
        ),
        'OtherInfo': serializeParam(
          _otherInfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResponseDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseDetailsStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        dateReceived: deserializeParam(
          data['date_received'],
          ParamType.String,
          false,
        ),
        idcBatchnum: deserializeParam(
          data['idc_batchnum'],
          ParamType.String,
          false,
        ),
        origInvoicenum: deserializeParam(
          data['orig_invoicenum'],
          ParamType.String,
          false,
        ),
        bankCode: deserializeParam(
          data['bank_code'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['bank_name'],
          ParamType.String,
          false,
        ),
        accountInfo: deserializeStructParam(
          data['AccountInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountInfoStruct.fromSerializableMap,
        ),
        cardInfo: deserializeStructParam(
          data['CardInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: CardInfoStruct.fromSerializableMap,
        ),
        otherInfo: deserializeStructParam(
          data['OtherInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: OtherInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseDetailsStruct &&
        message == other.message &&
        dateReceived == other.dateReceived &&
        idcBatchnum == other.idcBatchnum &&
        origInvoicenum == other.origInvoicenum &&
        bankCode == other.bankCode &&
        bankName == other.bankName &&
        accountInfo == other.accountInfo &&
        cardInfo == other.cardInfo &&
        otherInfo == other.otherInfo;
  }

  @override
  int get hashCode => const ListEquality().hash([
        message,
        dateReceived,
        idcBatchnum,
        origInvoicenum,
        bankCode,
        bankName,
        accountInfo,
        cardInfo,
        otherInfo
      ]);
}

ResponseDetailsStruct createResponseDetailsStruct({
  String? message,
  String? dateReceived,
  String? idcBatchnum,
  String? origInvoicenum,
  String? bankCode,
  String? bankName,
  AccountInfoStruct? accountInfo,
  CardInfoStruct? cardInfo,
  OtherInfoStruct? otherInfo,
}) =>
    ResponseDetailsStruct(
      message: message,
      dateReceived: dateReceived,
      idcBatchnum: idcBatchnum,
      origInvoicenum: origInvoicenum,
      bankCode: bankCode,
      bankName: bankName,
      accountInfo: accountInfo ?? AccountInfoStruct(),
      cardInfo: cardInfo ?? CardInfoStruct(),
      otherInfo: otherInfo ?? OtherInfoStruct(),
    );
