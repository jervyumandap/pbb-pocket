// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FMSFraudCheckResponseStruct extends BaseStruct {
  FMSFraudCheckResponseStruct({
    String? checkpoint,
    String? dateProcessed,
    String? riskStatus,
    RiskDetailsStruct? riskDetails,
  })  : _checkpoint = checkpoint,
        _dateProcessed = dateProcessed,
        _riskStatus = riskStatus,
        _riskDetails = riskDetails;

  // "Checkpoint" field.
  String? _checkpoint;
  String get checkpoint => _checkpoint ?? '';
  set checkpoint(String? val) => _checkpoint = val;

  bool hasCheckpoint() => _checkpoint != null;

  // "DateProcessed" field.
  String? _dateProcessed;
  String get dateProcessed => _dateProcessed ?? '';
  set dateProcessed(String? val) => _dateProcessed = val;

  bool hasDateProcessed() => _dateProcessed != null;

  // "RiskStatus" field.
  String? _riskStatus;
  String get riskStatus => _riskStatus ?? '';
  set riskStatus(String? val) => _riskStatus = val;

  bool hasRiskStatus() => _riskStatus != null;

  // "RiskDetails" field.
  RiskDetailsStruct? _riskDetails;
  RiskDetailsStruct get riskDetails => _riskDetails ?? RiskDetailsStruct();
  set riskDetails(RiskDetailsStruct? val) => _riskDetails = val;

  void updateRiskDetails(Function(RiskDetailsStruct) updateFn) {
    updateFn(_riskDetails ??= RiskDetailsStruct());
  }

  bool hasRiskDetails() => _riskDetails != null;

  static FMSFraudCheckResponseStruct fromMap(Map<String, dynamic> data) =>
      FMSFraudCheckResponseStruct(
        checkpoint: data['Checkpoint'] as String?,
        dateProcessed: data['DateProcessed'] as String?,
        riskStatus: data['RiskStatus'] as String?,
        riskDetails: data['RiskDetails'] is RiskDetailsStruct
            ? data['RiskDetails']
            : RiskDetailsStruct.maybeFromMap(data['RiskDetails']),
      );

  static FMSFraudCheckResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? FMSFraudCheckResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Checkpoint': _checkpoint,
        'DateProcessed': _dateProcessed,
        'RiskStatus': _riskStatus,
        'RiskDetails': _riskDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Checkpoint': serializeParam(
          _checkpoint,
          ParamType.String,
        ),
        'DateProcessed': serializeParam(
          _dateProcessed,
          ParamType.String,
        ),
        'RiskStatus': serializeParam(
          _riskStatus,
          ParamType.String,
        ),
        'RiskDetails': serializeParam(
          _riskDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FMSFraudCheckResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FMSFraudCheckResponseStruct(
        checkpoint: deserializeParam(
          data['Checkpoint'],
          ParamType.String,
          false,
        ),
        dateProcessed: deserializeParam(
          data['DateProcessed'],
          ParamType.String,
          false,
        ),
        riskStatus: deserializeParam(
          data['RiskStatus'],
          ParamType.String,
          false,
        ),
        riskDetails: deserializeStructParam(
          data['RiskDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: RiskDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FMSFraudCheckResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FMSFraudCheckResponseStruct &&
        checkpoint == other.checkpoint &&
        dateProcessed == other.dateProcessed &&
        riskStatus == other.riskStatus &&
        riskDetails == other.riskDetails;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([checkpoint, dateProcessed, riskStatus, riskDetails]);
}

FMSFraudCheckResponseStruct createFMSFraudCheckResponseStruct({
  String? checkpoint,
  String? dateProcessed,
  String? riskStatus,
  RiskDetailsStruct? riskDetails,
}) =>
    FMSFraudCheckResponseStruct(
      checkpoint: checkpoint,
      dateProcessed: dateProcessed,
      riskStatus: riskStatus,
      riskDetails: riskDetails ?? RiskDetailsStruct(),
    );
