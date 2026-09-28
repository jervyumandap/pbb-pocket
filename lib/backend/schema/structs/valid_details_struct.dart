// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValidDetailsStruct extends BaseStruct {
  ValidDetailsStruct({
    ValidityDetailsStruct? validityDetails,
  }) : _validityDetails = validityDetails;

  // "ValidityDetails" field.
  ValidityDetailsStruct? _validityDetails;
  ValidityDetailsStruct get validityDetails =>
      _validityDetails ?? ValidityDetailsStruct();
  set validityDetails(ValidityDetailsStruct? val) => _validityDetails = val;

  void updateValidityDetails(Function(ValidityDetailsStruct) updateFn) {
    updateFn(_validityDetails ??= ValidityDetailsStruct());
  }

  bool hasValidityDetails() => _validityDetails != null;

  static ValidDetailsStruct fromMap(Map<String, dynamic> data) =>
      ValidDetailsStruct(
        validityDetails: data['ValidityDetails'] is ValidityDetailsStruct
            ? data['ValidityDetails']
            : ValidityDetailsStruct.maybeFromMap(data['ValidityDetails']),
      );

  static ValidDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ValidDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ValidityDetails': _validityDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ValidityDetails': serializeParam(
          _validityDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ValidDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ValidDetailsStruct(
        validityDetails: deserializeStructParam(
          data['ValidityDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: ValidityDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ValidDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ValidDetailsStruct &&
        validityDetails == other.validityDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([validityDetails]);
}

ValidDetailsStruct createValidDetailsStruct({
  ValidityDetailsStruct? validityDetails,
}) =>
    ValidDetailsStruct(
      validityDetails: validityDetails ?? ValidityDetailsStruct(),
    );
