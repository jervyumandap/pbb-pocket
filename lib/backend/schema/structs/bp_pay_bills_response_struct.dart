// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BpPayBillsResponseStruct extends BaseStruct {
  BpPayBillsResponseStruct({
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

  static BpPayBillsResponseStruct fromMap(Map<String, dynamic> data) =>
      BpPayBillsResponseStruct(
        status: data['status'] as String?,
        description: data['description'] as String?,
        responseDetails: data['response_details'] is ResponseDetailsStruct
            ? data['response_details']
            : ResponseDetailsStruct.maybeFromMap(data['response_details']),
      );

  static BpPayBillsResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? BpPayBillsResponseStruct.fromMap(data.cast<String, dynamic>())
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

  static BpPayBillsResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BpPayBillsResponseStruct(
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
  String toString() => 'BpPayBillsResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BpPayBillsResponseStruct &&
        status == other.status &&
        description == other.description &&
        responseDetails == other.responseDetails;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, description, responseDetails]);
}

BpPayBillsResponseStruct createBpPayBillsResponseStruct({
  String? status,
  String? description,
  ResponseDetailsStruct? responseDetails,
}) =>
    BpPayBillsResponseStruct(
      status: status,
      description: description,
      responseDetails: responseDetails ?? ResponseDetailsStruct(),
    );
