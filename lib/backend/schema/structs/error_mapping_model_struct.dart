// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// title, message
class ErrorMappingModelStruct extends BaseStruct {
  ErrorMappingModelStruct({
    String? title,
    String? message,
  })  : _title = title,
        _message = message;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ErrorMappingModelStruct fromMap(Map<String, dynamic> data) =>
      ErrorMappingModelStruct(
        title: data['title'] as String?,
        message: data['message'] as String?,
      );

  static ErrorMappingModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ErrorMappingModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static ErrorMappingModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ErrorMappingModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ErrorMappingModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ErrorMappingModelStruct &&
        title == other.title &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([title, message]);
}

ErrorMappingModelStruct createErrorMappingModelStruct({
  String? title,
  String? message,
}) =>
    ErrorMappingModelStruct(
      title: title,
      message: message,
    );
