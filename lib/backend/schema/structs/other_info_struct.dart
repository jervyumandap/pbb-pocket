// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OtherInfoStruct extends BaseStruct {
  OtherInfoStruct({
    String? branch,
    String? otherCharges,
  })  : _branch = branch,
        _otherCharges = otherCharges;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  set branch(String? val) => _branch = val;

  bool hasBranch() => _branch != null;

  // "OtherCharges" field.
  String? _otherCharges;
  String get otherCharges => _otherCharges ?? '';
  set otherCharges(String? val) => _otherCharges = val;

  bool hasOtherCharges() => _otherCharges != null;

  static OtherInfoStruct fromMap(Map<String, dynamic> data) => OtherInfoStruct(
        branch: data['branch'] as String?,
        otherCharges: data['OtherCharges'] as String?,
      );

  static OtherInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? OtherInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'branch': _branch,
        'OtherCharges': _otherCharges,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'branch': serializeParam(
          _branch,
          ParamType.String,
        ),
        'OtherCharges': serializeParam(
          _otherCharges,
          ParamType.String,
        ),
      }.withoutNulls;

  static OtherInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      OtherInfoStruct(
        branch: deserializeParam(
          data['branch'],
          ParamType.String,
          false,
        ),
        otherCharges: deserializeParam(
          data['OtherCharges'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OtherInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OtherInfoStruct &&
        branch == other.branch &&
        otherCharges == other.otherCharges;
  }

  @override
  int get hashCode => const ListEquality().hash([branch, otherCharges]);
}

OtherInfoStruct createOtherInfoStruct({
  String? branch,
  String? otherCharges,
}) =>
    OtherInfoStruct(
      branch: branch,
      otherCharges: otherCharges,
    );
