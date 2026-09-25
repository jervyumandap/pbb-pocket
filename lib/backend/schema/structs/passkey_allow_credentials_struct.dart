// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyAllowCredentialsStruct extends BaseStruct {
  PasskeyAllowCredentialsStruct({
    String? type,
    String? id,
    List<String>? transports,
  })  : _type = type,
        _id = id,
        _transports = transports;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "transports" field.
  List<String>? _transports;
  List<String> get transports => _transports ?? const [];
  set transports(List<String>? val) => _transports = val;

  void updateTransports(Function(List<String>) updateFn) {
    updateFn(_transports ??= []);
  }

  bool hasTransports() => _transports != null;

  static PasskeyAllowCredentialsStruct fromMap(Map<String, dynamic> data) =>
      PasskeyAllowCredentialsStruct(
        type: data['type'] as String?,
        id: data['id'] as String?,
        transports: getDataList(data['transports']),
      );

  static PasskeyAllowCredentialsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyAllowCredentialsStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'id': _id,
        'transports': _transports,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'transports': serializeParam(
          _transports,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static PasskeyAllowCredentialsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyAllowCredentialsStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        transports: deserializeParam<String>(
          data['transports'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PasskeyAllowCredentialsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PasskeyAllowCredentialsStruct &&
        type == other.type &&
        id == other.id &&
        listEquality.equals(transports, other.transports);
  }

  @override
  int get hashCode => const ListEquality().hash([type, id, transports]);
}

PasskeyAllowCredentialsStruct createPasskeyAllowCredentialsStruct({
  String? type,
  String? id,
}) =>
    PasskeyAllowCredentialsStruct(
      type: type,
      id: id,
    );
