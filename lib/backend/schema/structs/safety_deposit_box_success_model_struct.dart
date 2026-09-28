// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SafetyDepositBoxSuccessModelStruct extends BaseStruct {
  SafetyDepositBoxSuccessModelStruct({
    String? referenceNumber,
    String? maskedAccountNumber,
    String? branchId,
    String? preferredBranch,
    String? boxSize,
    int? annualRentalFee,
    String? dateApplied,
    String? estimatedProcessingTime,
  })  : _referenceNumber = referenceNumber,
        _maskedAccountNumber = maskedAccountNumber,
        _branchId = branchId,
        _preferredBranch = preferredBranch,
        _boxSize = boxSize,
        _annualRentalFee = annualRentalFee,
        _dateApplied = dateApplied,
        _estimatedProcessingTime = estimatedProcessingTime;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "maskedAccountNumber" field.
  String? _maskedAccountNumber;
  String get maskedAccountNumber => _maskedAccountNumber ?? '';
  set maskedAccountNumber(String? val) => _maskedAccountNumber = val;

  bool hasMaskedAccountNumber() => _maskedAccountNumber != null;

  // "branchId" field.
  String? _branchId;
  String get branchId => _branchId ?? '';
  set branchId(String? val) => _branchId = val;

  bool hasBranchId() => _branchId != null;

  // "preferredBranch" field.
  String? _preferredBranch;
  String get preferredBranch => _preferredBranch ?? '';
  set preferredBranch(String? val) => _preferredBranch = val;

  bool hasPreferredBranch() => _preferredBranch != null;

  // "boxSize" field.
  String? _boxSize;
  String get boxSize => _boxSize ?? '';
  set boxSize(String? val) => _boxSize = val;

  bool hasBoxSize() => _boxSize != null;

  // "annualRentalFee" field.
  int? _annualRentalFee;
  int get annualRentalFee => _annualRentalFee ?? 0;
  set annualRentalFee(int? val) => _annualRentalFee = val;

  void incrementAnnualRentalFee(int amount) =>
      annualRentalFee = annualRentalFee + amount;

  bool hasAnnualRentalFee() => _annualRentalFee != null;

  // "dateApplied" field.
  String? _dateApplied;
  String get dateApplied => _dateApplied ?? '';
  set dateApplied(String? val) => _dateApplied = val;

  bool hasDateApplied() => _dateApplied != null;

  // "estimatedProcessingTime" field.
  String? _estimatedProcessingTime;
  String get estimatedProcessingTime => _estimatedProcessingTime ?? '';
  set estimatedProcessingTime(String? val) => _estimatedProcessingTime = val;

  bool hasEstimatedProcessingTime() => _estimatedProcessingTime != null;

  static SafetyDepositBoxSuccessModelStruct fromMap(
          Map<String, dynamic> data) =>
      SafetyDepositBoxSuccessModelStruct(
        referenceNumber: data['referenceNumber'] as String?,
        maskedAccountNumber: data['maskedAccountNumber'] as String?,
        branchId: data['branchId'] as String?,
        preferredBranch: data['preferredBranch'] as String?,
        boxSize: data['boxSize'] as String?,
        annualRentalFee: castToType<int>(data['annualRentalFee']),
        dateApplied: data['dateApplied'] as String?,
        estimatedProcessingTime: data['estimatedProcessingTime'] as String?,
      );

  static SafetyDepositBoxSuccessModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? SafetyDepositBoxSuccessModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'referenceNumber': _referenceNumber,
        'maskedAccountNumber': _maskedAccountNumber,
        'branchId': _branchId,
        'preferredBranch': _preferredBranch,
        'boxSize': _boxSize,
        'annualRentalFee': _annualRentalFee,
        'dateApplied': _dateApplied,
        'estimatedProcessingTime': _estimatedProcessingTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'maskedAccountNumber': serializeParam(
          _maskedAccountNumber,
          ParamType.String,
        ),
        'branchId': serializeParam(
          _branchId,
          ParamType.String,
        ),
        'preferredBranch': serializeParam(
          _preferredBranch,
          ParamType.String,
        ),
        'boxSize': serializeParam(
          _boxSize,
          ParamType.String,
        ),
        'annualRentalFee': serializeParam(
          _annualRentalFee,
          ParamType.int,
        ),
        'dateApplied': serializeParam(
          _dateApplied,
          ParamType.String,
        ),
        'estimatedProcessingTime': serializeParam(
          _estimatedProcessingTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static SafetyDepositBoxSuccessModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SafetyDepositBoxSuccessModelStruct(
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        maskedAccountNumber: deserializeParam(
          data['maskedAccountNumber'],
          ParamType.String,
          false,
        ),
        branchId: deserializeParam(
          data['branchId'],
          ParamType.String,
          false,
        ),
        preferredBranch: deserializeParam(
          data['preferredBranch'],
          ParamType.String,
          false,
        ),
        boxSize: deserializeParam(
          data['boxSize'],
          ParamType.String,
          false,
        ),
        annualRentalFee: deserializeParam(
          data['annualRentalFee'],
          ParamType.int,
          false,
        ),
        dateApplied: deserializeParam(
          data['dateApplied'],
          ParamType.String,
          false,
        ),
        estimatedProcessingTime: deserializeParam(
          data['estimatedProcessingTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SafetyDepositBoxSuccessModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SafetyDepositBoxSuccessModelStruct &&
        referenceNumber == other.referenceNumber &&
        maskedAccountNumber == other.maskedAccountNumber &&
        branchId == other.branchId &&
        preferredBranch == other.preferredBranch &&
        boxSize == other.boxSize &&
        annualRentalFee == other.annualRentalFee &&
        dateApplied == other.dateApplied &&
        estimatedProcessingTime == other.estimatedProcessingTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        referenceNumber,
        maskedAccountNumber,
        branchId,
        preferredBranch,
        boxSize,
        annualRentalFee,
        dateApplied,
        estimatedProcessingTime
      ]);
}

SafetyDepositBoxSuccessModelStruct createSafetyDepositBoxSuccessModelStruct({
  String? referenceNumber,
  String? maskedAccountNumber,
  String? branchId,
  String? preferredBranch,
  String? boxSize,
  int? annualRentalFee,
  String? dateApplied,
  String? estimatedProcessingTime,
}) =>
    SafetyDepositBoxSuccessModelStruct(
      referenceNumber: referenceNumber,
      maskedAccountNumber: maskedAccountNumber,
      branchId: branchId,
      preferredBranch: preferredBranch,
      boxSize: boxSize,
      annualRentalFee: annualRentalFee,
      dateApplied: dateApplied,
      estimatedProcessingTime: estimatedProcessingTime,
    );
