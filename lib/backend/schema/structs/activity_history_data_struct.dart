// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityHistoryDataStruct extends BaseStruct {
  ActivityHistoryDataStruct({
    List<DataActHisStruct>? data,
    MetaStruct? meta,
  })  : _data = data,
        _meta = meta;

  // "data" field.
  List<DataActHisStruct>? _data;
  List<DataActHisStruct> get data => _data ?? const [];
  set data(List<DataActHisStruct>? val) => _data = val;

  void updateData(Function(List<DataActHisStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  // "meta" field.
  MetaStruct? _meta;
  MetaStruct get meta => _meta ?? MetaStruct();
  set meta(MetaStruct? val) => _meta = val;

  void updateMeta(Function(MetaStruct) updateFn) {
    updateFn(_meta ??= MetaStruct());
  }

  bool hasMeta() => _meta != null;

  static ActivityHistoryDataStruct fromMap(Map<String, dynamic> data) =>
      ActivityHistoryDataStruct(
        data: getStructList(
          data['data'],
          DataActHisStruct.fromMap,
        ),
        meta: data['meta'] is MetaStruct
            ? data['meta']
            : MetaStruct.maybeFromMap(data['meta']),
      );

  static ActivityHistoryDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ActivityHistoryDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
        'meta': _meta?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
        'meta': serializeParam(
          _meta,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ActivityHistoryDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ActivityHistoryDataStruct(
        data: deserializeStructParam<DataActHisStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataActHisStruct.fromSerializableMap,
        ),
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ActivityHistoryDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ActivityHistoryDataStruct &&
        listEquality.equals(data, other.data) &&
        meta == other.meta;
  }

  @override
  int get hashCode => const ListEquality().hash([data, meta]);
}

ActivityHistoryDataStruct createActivityHistoryDataStruct({
  MetaStruct? meta,
}) =>
    ActivityHistoryDataStruct(
      meta: meta ?? MetaStruct(),
    );
