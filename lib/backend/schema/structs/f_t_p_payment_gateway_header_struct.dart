// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FTPPaymentGatewayHeaderStruct extends BaseStruct {
  FTPPaymentGatewayHeaderStruct({
    String? transactionDateTime,
    String? referenceNumber,
    String? fTChannel,
    String? fTClassification,
    String? userId,
    String? branchCode,
    String? channelCode,
  })  : _transactionDateTime = transactionDateTime,
        _referenceNumber = referenceNumber,
        _fTChannel = fTChannel,
        _fTClassification = fTClassification,
        _userId = userId,
        _branchCode = branchCode,
        _channelCode = channelCode;

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

  // "FTChannel" field.
  String? _fTChannel;
  String get fTChannel => _fTChannel ?? '';
  set fTChannel(String? val) => _fTChannel = val;

  bool hasFTChannel() => _fTChannel != null;

  // "FTClassification" field.
  String? _fTClassification;
  String get fTClassification => _fTClassification ?? '';
  set fTClassification(String? val) => _fTClassification = val;

  bool hasFTClassification() => _fTClassification != null;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "BranchCode" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  // "ChannelCode" field.
  String? _channelCode;
  String get channelCode => _channelCode ?? '';
  set channelCode(String? val) => _channelCode = val;

  bool hasChannelCode() => _channelCode != null;

  static FTPPaymentGatewayHeaderStruct fromMap(Map<String, dynamic> data) =>
      FTPPaymentGatewayHeaderStruct(
        transactionDateTime: data['TransactionDateTime'] as String?,
        referenceNumber: data['ReferenceNumber'] as String?,
        fTChannel: data['FTChannel'] as String?,
        fTClassification: data['FTClassification'] as String?,
        userId: data['UserId'] as String?,
        branchCode: data['BranchCode'] as String?,
        channelCode: data['ChannelCode'] as String?,
      );

  static FTPPaymentGatewayHeaderStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FTPPaymentGatewayHeaderStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'TransactionDateTime': _transactionDateTime,
        'ReferenceNumber': _referenceNumber,
        'FTChannel': _fTChannel,
        'FTClassification': _fTClassification,
        'UserId': _userId,
        'BranchCode': _branchCode,
        'ChannelCode': _channelCode,
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
        'FTChannel': serializeParam(
          _fTChannel,
          ParamType.String,
        ),
        'FTClassification': serializeParam(
          _fTClassification,
          ParamType.String,
        ),
        'UserId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'BranchCode': serializeParam(
          _branchCode,
          ParamType.String,
        ),
        'ChannelCode': serializeParam(
          _channelCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static FTPPaymentGatewayHeaderStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FTPPaymentGatewayHeaderStruct(
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
        fTChannel: deserializeParam(
          data['FTChannel'],
          ParamType.String,
          false,
        ),
        fTClassification: deserializeParam(
          data['FTClassification'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['UserId'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['BranchCode'],
          ParamType.String,
          false,
        ),
        channelCode: deserializeParam(
          data['ChannelCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FTPPaymentGatewayHeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FTPPaymentGatewayHeaderStruct &&
        transactionDateTime == other.transactionDateTime &&
        referenceNumber == other.referenceNumber &&
        fTChannel == other.fTChannel &&
        fTClassification == other.fTClassification &&
        userId == other.userId &&
        branchCode == other.branchCode &&
        channelCode == other.channelCode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactionDateTime,
        referenceNumber,
        fTChannel,
        fTClassification,
        userId,
        branchCode,
        channelCode
      ]);
}

FTPPaymentGatewayHeaderStruct createFTPPaymentGatewayHeaderStruct({
  String? transactionDateTime,
  String? referenceNumber,
  String? fTChannel,
  String? fTClassification,
  String? userId,
  String? branchCode,
  String? channelCode,
}) =>
    FTPPaymentGatewayHeaderStruct(
      transactionDateTime: transactionDateTime,
      referenceNumber: referenceNumber,
      fTChannel: fTChannel,
      fTClassification: fTClassification,
      userId: userId,
      branchCode: branchCode,
      channelCode: channelCode,
    );
