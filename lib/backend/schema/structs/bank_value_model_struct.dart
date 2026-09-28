// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankValueModelStruct extends BaseStruct {
  BankValueModelStruct({
    String? label,
    String? value,
  })  : _label = label,
        _value = value;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  static BankValueModelStruct fromMap(Map<String, dynamic> data) =>
      BankValueModelStruct(
        label: data['label'] as String?,
        value: data['value'] as String?,
      );

  static BankValueModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BankValueModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static BankValueModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankValueModelStruct(
        label: deserializeParam(
          data['label'],
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
  String toString() => 'BankValueModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankValueModelStruct &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([label, value]);
}

BankValueModelStruct createBankValueModelStruct({
  String? label,
  String? value,
}) =>
    BankValueModelStruct(
      label: label,
      value: value,
    );
