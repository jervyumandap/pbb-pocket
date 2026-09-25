// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateQrResponseStruct extends BaseStruct {
  CreateQrResponseStruct({
    String? response,
  }) : _response = response;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  set response(String? val) => _response = val;

  bool hasResponse() => _response != null;

  static CreateQrResponseStruct fromMap(Map<String, dynamic> data) =>
      CreateQrResponseStruct(
        response: data['response'] as String?,
      );

  static CreateQrResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateQrResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'response': _response,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'response': serializeParam(
          _response,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreateQrResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreateQrResponseStruct(
        response: deserializeParam(
          data['response'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreateQrResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateQrResponseStruct && response == other.response;
  }

  @override
  int get hashCode => const ListEquality().hash([response]);
}

CreateQrResponseStruct createCreateQrResponseStruct({
  String? response,
}) =>
    CreateQrResponseStruct(
      response: response,
    );
