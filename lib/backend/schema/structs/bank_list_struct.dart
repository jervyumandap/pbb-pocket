// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankListStruct extends BaseStruct {
  BankListStruct({
    String? status,
    String? description,
    List<ResponseDetailsStruct>? responseDetails,
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
  List<ResponseDetailsStruct>? _responseDetails;
  List<ResponseDetailsStruct> get responseDetails =>
      _responseDetails ?? const [];
  set responseDetails(List<ResponseDetailsStruct>? val) =>
      _responseDetails = val;

  void updateResponseDetails(Function(List<ResponseDetailsStruct>) updateFn) {
    updateFn(_responseDetails ??= []);
  }

  bool hasResponseDetails() => _responseDetails != null;

  static BankListStruct fromMap(Map<String, dynamic> data) => BankListStruct(
        status: data['status'] as String?,
        description: data['description'] as String?,
        responseDetails: getStructList(
          data['response_details'],
          ResponseDetailsStruct.fromMap,
        ),
      );

  static BankListStruct? maybeFromMap(dynamic data) =>
      data is Map ? BankListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'description': _description,
        'response_details': _responseDetails?.map((e) => e.toMap()).toList(),
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
          isList: true,
        ),
      }.withoutNulls;

  static BankListStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankListStruct(
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
        responseDetails: deserializeStructParam<ResponseDetailsStruct>(
          data['response_details'],
          ParamType.DataStruct,
          true,
          structBuilder: ResponseDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BankListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BankListStruct &&
        status == other.status &&
        description == other.description &&
        listEquality.equals(responseDetails, other.responseDetails);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([status, description, responseDetails]);
}

BankListStruct createBankListStruct({
  String? status,
  String? description,
}) =>
    BankListStruct(
      status: status,
      description: description,
    );
