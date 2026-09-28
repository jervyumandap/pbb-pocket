// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailDataTypeStruct extends BaseStruct {
  EmailDataTypeStruct({
    HeaderStruct? header,
    BodyStruct? body,
  })  : _header = header,
        _body = body;

  // "Header" field.
  HeaderStruct? _header;
  HeaderStruct get header => _header ?? HeaderStruct();
  set header(HeaderStruct? val) => _header = val;

  void updateHeader(Function(HeaderStruct) updateFn) {
    updateFn(_header ??= HeaderStruct());
  }

  bool hasHeader() => _header != null;

  // "Body" field.
  BodyStruct? _body;
  BodyStruct get body => _body ?? BodyStruct();
  set body(BodyStruct? val) => _body = val;

  void updateBody(Function(BodyStruct) updateFn) {
    updateFn(_body ??= BodyStruct());
  }

  bool hasBody() => _body != null;

  static EmailDataTypeStruct fromMap(Map<String, dynamic> data) =>
      EmailDataTypeStruct(
        header: data['Header'] is HeaderStruct
            ? data['Header']
            : HeaderStruct.maybeFromMap(data['Header']),
        body: data['Body'] is BodyStruct
            ? data['Body']
            : BodyStruct.maybeFromMap(data['Body']),
      );

  static EmailDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? EmailDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Header': _header?.toMap(),
        'Body': _body?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Header': serializeParam(
          _header,
          ParamType.DataStruct,
        ),
        'Body': serializeParam(
          _body,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static EmailDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmailDataTypeStruct(
        header: deserializeStructParam(
          data['Header'],
          ParamType.DataStruct,
          false,
          structBuilder: HeaderStruct.fromSerializableMap,
        ),
        body: deserializeStructParam(
          data['Body'],
          ParamType.DataStruct,
          false,
          structBuilder: BodyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'EmailDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmailDataTypeStruct &&
        header == other.header &&
        body == other.body;
  }

  @override
  int get hashCode => const ListEquality().hash([header, body]);
}

EmailDataTypeStruct createEmailDataTypeStruct({
  HeaderStruct? header,
  BodyStruct? body,
}) =>
    EmailDataTypeStruct(
      header: header ?? HeaderStruct(),
      body: body ?? BodyStruct(),
    );
