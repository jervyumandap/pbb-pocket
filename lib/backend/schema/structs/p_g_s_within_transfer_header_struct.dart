// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PGSWithinTransferHeaderStruct extends BaseStruct {
  PGSWithinTransferHeaderStruct({
    String? transactionDateTime,
    String? referenceNumber,
    String? userId,
    String? channelCode,
    String? transferType,
  })  : _transactionDateTime = transactionDateTime,
        _referenceNumber = referenceNumber,
        _userId = userId,
        _channelCode = channelCode,
        _transferType = transferType;

  // "TransactionDateTime" field.
  String? _transactionDateTime;
  String get transactionDateTime => _transactionDateTime ?? '';
  set transactionDateTime(String? val) => _transactionDateTime = val;

  bool hasTransactionDateTime() => _transactionDateTime != null;

  // "ReferenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "ChannelCode" field.
  String? _channelCode;
  String get channelCode => _channelCode ?? '';
  set channelCode(String? val) => _channelCode = val;

  bool hasChannelCode() => _channelCode != null;

  // "TransferType" field.
  String? _transferType;
  String get transferType => _transferType ?? '';
  set transferType(String? val) => _transferType = val;

  bool hasTransferType() => _transferType != null;

  static PGSWithinTransferHeaderStruct fromMap(Map<String, dynamic> data) =>
      PGSWithinTransferHeaderStruct(
        transactionDateTime: data['TransactionDateTime'] as String?,
        referenceNumber: data['ReferenceNumber'] as String?,
        userId: data['UserId'] as String?,
        channelCode: data['ChannelCode'] as String?,
        transferType: data['TransferType'] as String?,
      );

  static PGSWithinTransferHeaderStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PGSWithinTransferHeaderStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'TransactionDateTime': _transactionDateTime,
        'ReferenceNumber': _referenceNumber,
        'UserId': _userId,
        'ChannelCode': _channelCode,
        'TransferType': _transferType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TransactionDateTime': serializeParam(
          _transactionDateTime,
          ParamType.String,
        ),
        'ReferenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'UserId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'ChannelCode': serializeParam(
          _channelCode,
          ParamType.String,
        ),
        'TransferType': serializeParam(
          _transferType,
          ParamType.String,
        ),
      }.withoutNulls;

  static PGSWithinTransferHeaderStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PGSWithinTransferHeaderStruct(
        transactionDateTime: deserializeParam(
          data['TransactionDateTime'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['ReferenceNumber'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['UserId'],
          ParamType.String,
          false,
        ),
        channelCode: deserializeParam(
          data['ChannelCode'],
          ParamType.String,
          false,
        ),
        transferType: deserializeParam(
          data['TransferType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PGSWithinTransferHeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PGSWithinTransferHeaderStruct &&
        transactionDateTime == other.transactionDateTime &&
        referenceNumber == other.referenceNumber &&
        userId == other.userId &&
        channelCode == other.channelCode &&
        transferType == other.transferType;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactionDateTime,
        referenceNumber,
        userId,
        channelCode,
        transferType
      ]);
}

PGSWithinTransferHeaderStruct createPGSWithinTransferHeaderStruct({
  String? transactionDateTime,
  String? referenceNumber,
  String? userId,
  String? channelCode,
  String? transferType,
}) =>
    PGSWithinTransferHeaderStruct(
      transactionDateTime: transactionDateTime,
      referenceNumber: referenceNumber,
      userId: userId,
      channelCode: channelCode,
      transferType: transferType,
    );
