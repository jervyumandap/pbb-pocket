// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsHeaderStruct extends BaseStruct {
  BillsHeaderStruct({
    String? channelRefNumber,
    String? channelCode,
    String? billerCode,
    String? userId,
    int? branchId,
  })  : _channelRefNumber = channelRefNumber,
        _channelCode = channelCode,
        _billerCode = billerCode,
        _userId = userId,
        _branchId = branchId;

  // "ChannelRefNumber" field.
  String? _channelRefNumber;
  String get channelRefNumber => _channelRefNumber ?? '';
  set channelRefNumber(String? val) => _channelRefNumber = val;

  bool hasChannelRefNumber() => _channelRefNumber != null;

  // "ChannelCode" field.
  String? _channelCode;
  String get channelCode => _channelCode ?? '';
  set channelCode(String? val) => _channelCode = val;

  bool hasChannelCode() => _channelCode != null;

  // "BillerCode" field.
  String? _billerCode;
  String get billerCode => _billerCode ?? '';
  set billerCode(String? val) => _billerCode = val;

  bool hasBillerCode() => _billerCode != null;

  // "UserId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "BranchId" field.
  int? _branchId;
  int get branchId => _branchId ?? 0;
  set branchId(int? val) => _branchId = val;

  void incrementBranchId(int amount) => branchId = branchId + amount;

  bool hasBranchId() => _branchId != null;

  static BillsHeaderStruct fromMap(Map<String, dynamic> data) =>
      BillsHeaderStruct(
        channelRefNumber: data['ChannelRefNumber'] as String?,
        channelCode: data['ChannelCode'] as String?,
        billerCode: data['BillerCode'] as String?,
        userId: data['UserId'] as String?,
        branchId: castToType<int>(data['BranchId']),
      );

  static BillsHeaderStruct? maybeFromMap(dynamic data) => data is Map
      ? BillsHeaderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ChannelRefNumber': _channelRefNumber,
        'ChannelCode': _channelCode,
        'BillerCode': _billerCode,
        'UserId': _userId,
        'BranchId': _branchId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ChannelRefNumber': serializeParam(
          _channelRefNumber,
          ParamType.String,
        ),
        'ChannelCode': serializeParam(
          _channelCode,
          ParamType.String,
        ),
        'BillerCode': serializeParam(
          _billerCode,
          ParamType.String,
        ),
        'UserId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'BranchId': serializeParam(
          _branchId,
          ParamType.int,
        ),
      }.withoutNulls;

  static BillsHeaderStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillsHeaderStruct(
        channelRefNumber: deserializeParam(
          data['ChannelRefNumber'],
          ParamType.String,
          false,
        ),
        channelCode: deserializeParam(
          data['ChannelCode'],
          ParamType.String,
          false,
        ),
        billerCode: deserializeParam(
          data['BillerCode'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['UserId'],
          ParamType.String,
          false,
        ),
        branchId: deserializeParam(
          data['BranchId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BillsHeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillsHeaderStruct &&
        channelRefNumber == other.channelRefNumber &&
        channelCode == other.channelCode &&
        billerCode == other.billerCode &&
        userId == other.userId &&
        branchId == other.branchId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([channelRefNumber, channelCode, billerCode, userId, branchId]);
}

BillsHeaderStruct createBillsHeaderStruct({
  String? channelRefNumber,
  String? channelCode,
  String? billerCode,
  String? userId,
  int? branchId,
}) =>
    BillsHeaderStruct(
      channelRefNumber: channelRefNumber,
      channelCode: channelCode,
      billerCode: billerCode,
      userId: userId,
      branchId: branchId,
    );
