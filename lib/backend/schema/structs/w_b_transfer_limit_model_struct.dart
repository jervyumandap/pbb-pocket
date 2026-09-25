// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBTransferLimitModelStruct extends BaseStruct {
  WBTransferLimitModelStruct({
    List<LimitsStruct>? limits,
  }) : _limits = limits;

  // "limits" field.
  List<LimitsStruct>? _limits;
  List<LimitsStruct> get limits => _limits ?? const [];
  set limits(List<LimitsStruct>? val) => _limits = val;

  void updateLimits(Function(List<LimitsStruct>) updateFn) {
    updateFn(_limits ??= []);
  }

  bool hasLimits() => _limits != null;

  static WBTransferLimitModelStruct fromMap(Map<String, dynamic> data) =>
      WBTransferLimitModelStruct(
        limits: getStructList(
          data['limits'],
          LimitsStruct.fromMap,
        ),
      );

  static WBTransferLimitModelStruct? maybeFromMap(dynamic data) => data is Map
      ? WBTransferLimitModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'limits': _limits?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'limits': serializeParam(
          _limits,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static WBTransferLimitModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBTransferLimitModelStruct(
        limits: deserializeStructParam<LimitsStruct>(
          data['limits'],
          ParamType.DataStruct,
          true,
          structBuilder: LimitsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'WBTransferLimitModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WBTransferLimitModelStruct &&
        listEquality.equals(limits, other.limits);
  }

  @override
  int get hashCode => const ListEquality().hash([limits]);
}

WBTransferLimitModelStruct createWBTransferLimitModelStruct() =>
    WBTransferLimitModelStruct();
