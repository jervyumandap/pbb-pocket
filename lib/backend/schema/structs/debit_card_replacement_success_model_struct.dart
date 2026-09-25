// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DebitCardReplacementSuccessModelStruct extends BaseStruct {
  DebitCardReplacementSuccessModelStruct({
    String? referenceNumber,
    String? estimatedProcessingTime,
    String? deliveryOption,
    String? dateApplied,
  })  : _referenceNumber = referenceNumber,
        _estimatedProcessingTime = estimatedProcessingTime,
        _deliveryOption = deliveryOption,
        _dateApplied = dateApplied;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "estimatedProcessingTime" field.
  String? _estimatedProcessingTime;
  String get estimatedProcessingTime => _estimatedProcessingTime ?? '';
  set estimatedProcessingTime(String? val) => _estimatedProcessingTime = val;

  bool hasEstimatedProcessingTime() => _estimatedProcessingTime != null;

  // "deliveryOption" field.
  String? _deliveryOption;
  String get deliveryOption => _deliveryOption ?? '';
  set deliveryOption(String? val) => _deliveryOption = val;

  bool hasDeliveryOption() => _deliveryOption != null;

  // "dateApplied" field.
  String? _dateApplied;
  String get dateApplied => _dateApplied ?? '';
  set dateApplied(String? val) => _dateApplied = val;

  bool hasDateApplied() => _dateApplied != null;

  static DebitCardReplacementSuccessModelStruct fromMap(
          Map<String, dynamic> data) =>
      DebitCardReplacementSuccessModelStruct(
        referenceNumber: data['referenceNumber'] as String?,
        estimatedProcessingTime: data['estimatedProcessingTime'] as String?,
        deliveryOption: data['deliveryOption'] as String?,
        dateApplied: data['dateApplied'] as String?,
      );

  static DebitCardReplacementSuccessModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DebitCardReplacementSuccessModelStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'referenceNumber': _referenceNumber,
        'estimatedProcessingTime': _estimatedProcessingTime,
        'deliveryOption': _deliveryOption,
        'dateApplied': _dateApplied,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'estimatedProcessingTime': serializeParam(
          _estimatedProcessingTime,
          ParamType.String,
        ),
        'deliveryOption': serializeParam(
          _deliveryOption,
          ParamType.String,
        ),
        'dateApplied': serializeParam(
          _dateApplied,
          ParamType.String,
        ),
      }.withoutNulls;

  static DebitCardReplacementSuccessModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DebitCardReplacementSuccessModelStruct(
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        estimatedProcessingTime: deserializeParam(
          data['estimatedProcessingTime'],
          ParamType.String,
          false,
        ),
        deliveryOption: deserializeParam(
          data['deliveryOption'],
          ParamType.String,
          false,
        ),
        dateApplied: deserializeParam(
          data['dateApplied'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DebitCardReplacementSuccessModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DebitCardReplacementSuccessModelStruct &&
        referenceNumber == other.referenceNumber &&
        estimatedProcessingTime == other.estimatedProcessingTime &&
        deliveryOption == other.deliveryOption &&
        dateApplied == other.dateApplied;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [referenceNumber, estimatedProcessingTime, deliveryOption, dateApplied]);
}

DebitCardReplacementSuccessModelStruct
    createDebitCardReplacementSuccessModelStruct({
  String? referenceNumber,
  String? estimatedProcessingTime,
  String? deliveryOption,
  String? dateApplied,
}) =>
        DebitCardReplacementSuccessModelStruct(
          referenceNumber: referenceNumber,
          estimatedProcessingTime: estimatedProcessingTime,
          deliveryOption: deliveryOption,
          dateApplied: dateApplied,
        );
