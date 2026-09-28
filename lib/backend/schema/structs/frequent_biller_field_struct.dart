// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FrequentBillerFieldStruct extends BaseStruct {
  FrequentBillerFieldStruct({
    int? id,
    int? index,
    String? name,
    String? value,
  })  : _id = id,
        _index = index,
        _name = name,
        _value = value;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  static FrequentBillerFieldStruct fromMap(Map<String, dynamic> data) =>
      FrequentBillerFieldStruct(
        id: castToType<int>(data['id']),
        index: castToType<int>(data['index']),
        name: data['name'] as String?,
        value: data['value'] as String?,
      );

  static FrequentBillerFieldStruct? maybeFromMap(dynamic data) => data is Map
      ? FrequentBillerFieldStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'index': _index,
        'name': _name,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static FrequentBillerFieldStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FrequentBillerFieldStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FrequentBillerFieldStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FrequentBillerFieldStruct &&
        id == other.id &&
        index == other.index &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([id, index, name, value]);
}

FrequentBillerFieldStruct createFrequentBillerFieldStruct({
  int? id,
  int? index,
  String? name,
  String? value,
}) =>
    FrequentBillerFieldStruct(
      id: id,
      index: index,
      name: name,
      value: value,
    );
