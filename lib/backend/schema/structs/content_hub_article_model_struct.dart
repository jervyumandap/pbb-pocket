// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentHubArticleModelStruct extends BaseStruct {
  ContentHubArticleModelStruct({
    List<DataStruct>? data,
    MetaStruct? meta,
  })  : _data = data,
        _meta = meta;

  // "data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;

  void updateData(Function(List<DataStruct>) updateFn) {
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

  static ContentHubArticleModelStruct fromMap(Map<String, dynamic> data) =>
      ContentHubArticleModelStruct(
        data: getStructList(
          data['data'],
          DataStruct.fromMap,
        ),
        meta: data['meta'] is MetaStruct
            ? data['meta']
            : MetaStruct.maybeFromMap(data['meta']),
      );

  static ContentHubArticleModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ContentHubArticleModelStruct.fromMap(data.cast<String, dynamic>())
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

  static ContentHubArticleModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ContentHubArticleModelStruct(
        data: deserializeStructParam<DataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
        ),
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ContentHubArticleModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ContentHubArticleModelStruct &&
        listEquality.equals(data, other.data) &&
        meta == other.meta;
  }

  @override
  int get hashCode => const ListEquality().hash([data, meta]);
}

ContentHubArticleModelStruct createContentHubArticleModelStruct({
  MetaStruct? meta,
}) =>
    ContentHubArticleModelStruct(
      meta: meta ?? MetaStruct(),
    );
