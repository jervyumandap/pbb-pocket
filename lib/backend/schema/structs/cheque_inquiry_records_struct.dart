// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeInquiryRecordsStruct extends BaseStruct {
  ChequeInquiryRecordsStruct({
    String? chequeNumber,
    String? chequeAmount,
    String? chequeDate,
    String? chequeStatus,
    String? payeeName,
    String? accountNo,
    String? accountName,
    String? currency,
  })  : _chequeNumber = chequeNumber,
        _chequeAmount = chequeAmount,
        _chequeDate = chequeDate,
        _chequeStatus = chequeStatus,
        _payeeName = payeeName,
        _accountNo = accountNo,
        _accountName = accountName,
        _currency = currency;

  // "chequeNumber" field.
  String? _chequeNumber;
  String get chequeNumber => _chequeNumber ?? '';
  set chequeNumber(String? val) => _chequeNumber = val;

  bool hasChequeNumber() => _chequeNumber != null;

  // "chequeAmount" field.
  String? _chequeAmount;
  String get chequeAmount => _chequeAmount ?? '';
  set chequeAmount(String? val) => _chequeAmount = val;

  bool hasChequeAmount() => _chequeAmount != null;

  // "chequeDate" field.
  String? _chequeDate;
  String get chequeDate => _chequeDate ?? '';
  set chequeDate(String? val) => _chequeDate = val;

  bool hasChequeDate() => _chequeDate != null;

  // "chequeStatus" field.
  String? _chequeStatus;
  String get chequeStatus => _chequeStatus ?? '';
  set chequeStatus(String? val) => _chequeStatus = val;

  bool hasChequeStatus() => _chequeStatus != null;

  // "payeeName" field.
  String? _payeeName;
  String get payeeName => _payeeName ?? '';
  set payeeName(String? val) => _payeeName = val;

  bool hasPayeeName() => _payeeName != null;

  // "accountNo" field.
  String? _accountNo;
  String get accountNo => _accountNo ?? '';
  set accountNo(String? val) => _accountNo = val;

  bool hasAccountNo() => _accountNo != null;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  static ChequeInquiryRecordsStruct fromMap(Map<String, dynamic> data) =>
      ChequeInquiryRecordsStruct(
        chequeNumber: data['chequeNumber'] as String?,
        chequeAmount: data['chequeAmount'] as String?,
        chequeDate: data['chequeDate'] as String?,
        chequeStatus: data['chequeStatus'] as String?,
        payeeName: data['payeeName'] as String?,
        accountNo: data['accountNo'] as String?,
        accountName: data['accountName'] as String?,
        currency: data['currency'] as String?,
      );

  static ChequeInquiryRecordsStruct? maybeFromMap(dynamic data) => data is Map
      ? ChequeInquiryRecordsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chequeNumber': _chequeNumber,
        'chequeAmount': _chequeAmount,
        'chequeDate': _chequeDate,
        'chequeStatus': _chequeStatus,
        'payeeName': _payeeName,
        'accountNo': _accountNo,
        'accountName': _accountName,
        'currency': _currency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chequeNumber': serializeParam(
          _chequeNumber,
          ParamType.String,
        ),
        'chequeAmount': serializeParam(
          _chequeAmount,
          ParamType.String,
        ),
        'chequeDate': serializeParam(
          _chequeDate,
          ParamType.String,
        ),
        'chequeStatus': serializeParam(
          _chequeStatus,
          ParamType.String,
        ),
        'payeeName': serializeParam(
          _payeeName,
          ParamType.String,
        ),
        'accountNo': serializeParam(
          _accountNo,
          ParamType.String,
        ),
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeInquiryRecordsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequeInquiryRecordsStruct(
        chequeNumber: deserializeParam(
          data['chequeNumber'],
          ParamType.String,
          false,
        ),
        chequeAmount: deserializeParam(
          data['chequeAmount'],
          ParamType.String,
          false,
        ),
        chequeDate: deserializeParam(
          data['chequeDate'],
          ParamType.String,
          false,
        ),
        chequeStatus: deserializeParam(
          data['chequeStatus'],
          ParamType.String,
          false,
        ),
        payeeName: deserializeParam(
          data['payeeName'],
          ParamType.String,
          false,
        ),
        accountNo: deserializeParam(
          data['accountNo'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeInquiryRecordsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChequeInquiryRecordsStruct &&
        chequeNumber == other.chequeNumber &&
        chequeAmount == other.chequeAmount &&
        chequeDate == other.chequeDate &&
        chequeStatus == other.chequeStatus &&
        payeeName == other.payeeName &&
        accountNo == other.accountNo &&
        accountName == other.accountName &&
        currency == other.currency;
  }

  @override
  int get hashCode => const ListEquality().hash([
        chequeNumber,
        chequeAmount,
        chequeDate,
        chequeStatus,
        payeeName,
        accountNo,
        accountName,
        currency
      ]);
}

ChequeInquiryRecordsStruct createChequeInquiryRecordsStruct({
  String? chequeNumber,
  String? chequeAmount,
  String? chequeDate,
  String? chequeStatus,
  String? payeeName,
  String? accountNo,
  String? accountName,
  String? currency,
}) =>
    ChequeInquiryRecordsStruct(
      chequeNumber: chequeNumber,
      chequeAmount: chequeAmount,
      chequeDate: chequeDate,
      chequeStatus: chequeStatus,
      payeeName: payeeName,
      accountNo: accountNo,
      accountName: accountName,
      currency: currency,
    );
