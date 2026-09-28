// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SafetyDepositBoxBranchModelStruct extends BaseStruct {
  SafetyDepositBoxBranchModelStruct({
    List<DataStruct>? data,
  }) : _data = data;

  // "data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;

  void updateData(Function(List<DataStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static SafetyDepositBoxBranchModelStruct fromMap(Map<String, dynamic> data) =>
      SafetyDepositBoxBranchModelStruct(
        data: getStructList(
          data['data'],
          DataStruct.fromMap,
        ),
      );

  static SafetyDepositBoxBranchModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? SafetyDepositBoxBranchModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SafetyDepositBoxBranchModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SafetyDepositBoxBranchModelStruct(
        data: deserializeStructParam<DataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SafetyDepositBoxBranchModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SafetyDepositBoxBranchModelStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

SafetyDepositBoxBranchModelStruct createSafetyDepositBoxBranchModelStruct() =>
    SafetyDepositBoxBranchModelStruct();
