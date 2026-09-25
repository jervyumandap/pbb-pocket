// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OtpDetailsStruct extends BaseStruct {
  OtpDetailsStruct({
    OTPDetailsStruct? oTPDetails,
  }) : _oTPDetails = oTPDetails;

  // "OTPDetails" field.
  OTPDetailsStruct? _oTPDetails;
  OTPDetailsStruct get oTPDetails => _oTPDetails ?? OTPDetailsStruct();
  set oTPDetails(OTPDetailsStruct? val) => _oTPDetails = val;

  void updateOTPDetails(Function(OTPDetailsStruct) updateFn) {
    updateFn(_oTPDetails ??= OTPDetailsStruct());
  }

  bool hasOTPDetails() => _oTPDetails != null;

  static OtpDetailsStruct fromMap(Map<String, dynamic> data) =>
      OtpDetailsStruct(
        oTPDetails: data['OTPDetails'] is OTPDetailsStruct
            ? data['OTPDetails']
            : OTPDetailsStruct.maybeFromMap(data['OTPDetails']),
      );

  static OtpDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? OtpDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'OTPDetails': _oTPDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OTPDetails': serializeParam(
          _oTPDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OtpDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OtpDetailsStruct(
        oTPDetails: deserializeStructParam(
          data['OTPDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: OTPDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OtpDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OtpDetailsStruct && oTPDetails == other.oTPDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([oTPDetails]);
}

OtpDetailsStruct createOtpDetailsStruct({
  OTPDetailsStruct? oTPDetails,
}) =>
    OtpDetailsStruct(
      oTPDetails: oTPDetails ?? OTPDetailsStruct(),
    );
