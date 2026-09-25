// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PBBAPIDataTypeStruct extends BaseStruct {
  PBBAPIDataTypeStruct({
    String? status,
    String? description,
    ResponseDetailsStruct? responseDetails,
  })  : _status = status,
        _description = description,
        _responseDetails = responseDetails;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "response_details" field.
  ResponseDetailsStruct? _responseDetails;
  ResponseDetailsStruct get responseDetails =>
      _responseDetails ?? ResponseDetailsStruct();
  set responseDetails(ResponseDetailsStruct? val) => _responseDetails = val;

  void updateResponseDetails(Function(ResponseDetailsStruct) updateFn) {
    updateFn(_responseDetails ??= ResponseDetailsStruct());
  }

  bool hasResponseDetails() => _responseDetails != null;

  static PBBAPIDataTypeStruct fromMap(Map<String, dynamic> data) =>
      PBBAPIDataTypeStruct(
        status: data['status'] as String?,
        description: data['description'] as String?,
        responseDetails: data['response_details'] is ResponseDetailsStruct
            ? data['response_details']
            : ResponseDetailsStruct.maybeFromMap(data['response_details']),
      );

  static PBBAPIDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? PBBAPIDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'description': _description,
        'response_details': _responseDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'response_details': serializeParam(
          _responseDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PBBAPIDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PBBAPIDataTypeStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        responseDetails: deserializeStructParam(
          data['response_details'],
          ParamType.DataStruct,
          false,
          structBuilder: ResponseDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PBBAPIDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PBBAPIDataTypeStruct &&
        status == other.status &&
        description == other.description &&
        responseDetails == other.responseDetails;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, description, responseDetails]);
}

PBBAPIDataTypeStruct createPBBAPIDataTypeStruct({
  String? status,
  String? description,
  ResponseDetailsStruct? responseDetails,
}) =>
    PBBAPIDataTypeStruct(
      status: status,
      description: description,
      responseDetails: responseDetails ?? ResponseDetailsStruct(),
    );
