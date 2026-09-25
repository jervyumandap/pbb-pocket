// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RiskDetailsStruct extends BaseStruct {
  RiskDetailsStruct({
    String? status,
    String? statusMessage,
    String? additionalInfo,
    String? requestId,
    String? signedRisk,
    int? riskLevel,
    String? severity,
    int? riskScore,
    String? enforceAutoBlock,
  })  : _status = status,
        _statusMessage = statusMessage,
        _additionalInfo = additionalInfo,
        _requestId = requestId,
        _signedRisk = signedRisk,
        _riskLevel = riskLevel,
        _severity = severity,
        _riskScore = riskScore,
        _enforceAutoBlock = enforceAutoBlock;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "StatusMessage" field.
  String? _statusMessage;
  String get statusMessage => _statusMessage ?? '';
  set statusMessage(String? val) => _statusMessage = val;

  bool hasStatusMessage() => _statusMessage != null;

  // "AdditionalInfo" field.
  String? _additionalInfo;
  String get additionalInfo => _additionalInfo ?? '';
  set additionalInfo(String? val) => _additionalInfo = val;

  bool hasAdditionalInfo() => _additionalInfo != null;

  // "RequestId" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  set requestId(String? val) => _requestId = val;

  bool hasRequestId() => _requestId != null;

  // "SignedRisk" field.
  String? _signedRisk;
  String get signedRisk => _signedRisk ?? '';
  set signedRisk(String? val) => _signedRisk = val;

  bool hasSignedRisk() => _signedRisk != null;

  // "RiskLevel" field.
  int? _riskLevel;
  int get riskLevel => _riskLevel ?? 0;
  set riskLevel(int? val) => _riskLevel = val;

  void incrementRiskLevel(int amount) => riskLevel = riskLevel + amount;

  bool hasRiskLevel() => _riskLevel != null;

  // "Severity" field.
  String? _severity;
  String get severity => _severity ?? '';
  set severity(String? val) => _severity = val;

  bool hasSeverity() => _severity != null;

  // "RiskScore" field.
  int? _riskScore;
  int get riskScore => _riskScore ?? 0;
  set riskScore(int? val) => _riskScore = val;

  void incrementRiskScore(int amount) => riskScore = riskScore + amount;

  bool hasRiskScore() => _riskScore != null;

  // "EnforceAutoBlock" field.
  String? _enforceAutoBlock;
  String get enforceAutoBlock => _enforceAutoBlock ?? '';
  set enforceAutoBlock(String? val) => _enforceAutoBlock = val;

  bool hasEnforceAutoBlock() => _enforceAutoBlock != null;

  static RiskDetailsStruct fromMap(Map<String, dynamic> data) =>
      RiskDetailsStruct(
        status: data['Status'] as String?,
        statusMessage: data['StatusMessage'] as String?,
        additionalInfo: data['AdditionalInfo'] as String?,
        requestId: data['RequestId'] as String?,
        signedRisk: data['SignedRisk'] as String?,
        riskLevel: castToType<int>(data['RiskLevel']),
        severity: data['Severity'] as String?,
        riskScore: castToType<int>(data['RiskScore']),
        enforceAutoBlock: data['EnforceAutoBlock'] as String?,
      );

  static RiskDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? RiskDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Status': _status,
        'StatusMessage': _statusMessage,
        'AdditionalInfo': _additionalInfo,
        'RequestId': _requestId,
        'SignedRisk': _signedRisk,
        'RiskLevel': _riskLevel,
        'Severity': _severity,
        'RiskScore': _riskScore,
        'EnforceAutoBlock': _enforceAutoBlock,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Status': serializeParam(
          _status,
          ParamType.String,
        ),
        'StatusMessage': serializeParam(
          _statusMessage,
          ParamType.String,
        ),
        'AdditionalInfo': serializeParam(
          _additionalInfo,
          ParamType.String,
        ),
        'RequestId': serializeParam(
          _requestId,
          ParamType.String,
        ),
        'SignedRisk': serializeParam(
          _signedRisk,
          ParamType.String,
        ),
        'RiskLevel': serializeParam(
          _riskLevel,
          ParamType.int,
        ),
        'Severity': serializeParam(
          _severity,
          ParamType.String,
        ),
        'RiskScore': serializeParam(
          _riskScore,
          ParamType.int,
        ),
        'EnforceAutoBlock': serializeParam(
          _enforceAutoBlock,
          ParamType.String,
        ),
      }.withoutNulls;

  static RiskDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      RiskDetailsStruct(
        status: deserializeParam(
          data['Status'],
          ParamType.String,
          false,
        ),
        statusMessage: deserializeParam(
          data['StatusMessage'],
          ParamType.String,
          false,
        ),
        additionalInfo: deserializeParam(
          data['AdditionalInfo'],
          ParamType.String,
          false,
        ),
        requestId: deserializeParam(
          data['RequestId'],
          ParamType.String,
          false,
        ),
        signedRisk: deserializeParam(
          data['SignedRisk'],
          ParamType.String,
          false,
        ),
        riskLevel: deserializeParam(
          data['RiskLevel'],
          ParamType.int,
          false,
        ),
        severity: deserializeParam(
          data['Severity'],
          ParamType.String,
          false,
        ),
        riskScore: deserializeParam(
          data['RiskScore'],
          ParamType.int,
          false,
        ),
        enforceAutoBlock: deserializeParam(
          data['EnforceAutoBlock'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RiskDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RiskDetailsStruct &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        additionalInfo == other.additionalInfo &&
        requestId == other.requestId &&
        signedRisk == other.signedRisk &&
        riskLevel == other.riskLevel &&
        severity == other.severity &&
        riskScore == other.riskScore &&
        enforceAutoBlock == other.enforceAutoBlock;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        statusMessage,
        additionalInfo,
        requestId,
        signedRisk,
        riskLevel,
        severity,
        riskScore,
        enforceAutoBlock
      ]);
}

RiskDetailsStruct createRiskDetailsStruct({
  String? status,
  String? statusMessage,
  String? additionalInfo,
  String? requestId,
  String? signedRisk,
  int? riskLevel,
  String? severity,
  int? riskScore,
  String? enforceAutoBlock,
}) =>
    RiskDetailsStruct(
      status: status,
      statusMessage: statusMessage,
      additionalInfo: additionalInfo,
      requestId: requestId,
      signedRisk: signedRisk,
      riskLevel: riskLevel,
      severity: severity,
      riskScore: riskScore,
      enforceAutoBlock: enforceAutoBlock,
    );
