// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestmentObjectiveStruct extends BaseStruct {
  InvestmentObjectiveStruct({
    String? label,
    List<String>? options,
  })  : _label = label,
        _options = options;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  set options(List<String>? val) => _options = val;

  void updateOptions(Function(List<String>) updateFn) {
    updateFn(_options ??= []);
  }

  bool hasOptions() => _options != null;

  static InvestmentObjectiveStruct fromMap(Map<String, dynamic> data) =>
      InvestmentObjectiveStruct(
        label: data['label'] as String?,
        options: getDataList(data['options']),
      );

  static InvestmentObjectiveStruct? maybeFromMap(dynamic data) => data is Map
      ? InvestmentObjectiveStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'options': _options,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'options': serializeParam(
          _options,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static InvestmentObjectiveStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InvestmentObjectiveStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        options: deserializeParam<String>(
          data['options'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'InvestmentObjectiveStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InvestmentObjectiveStruct &&
        label == other.label &&
        listEquality.equals(options, other.options);
  }

  @override
  int get hashCode => const ListEquality().hash([label, options]);
}

InvestmentObjectiveStruct createInvestmentObjectiveStruct({
  String? label,
}) =>
    InvestmentObjectiveStruct(
      label: label,
    );
