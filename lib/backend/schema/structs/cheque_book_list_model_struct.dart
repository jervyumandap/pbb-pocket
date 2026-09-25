// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeBookListModelStruct extends BaseStruct {
  ChequeBookListModelStruct({
    List<RequestsStruct>? requests,
    MetaStruct? meta,
  })  : _requests = requests,
        _meta = meta;

  // "requests" field.
  List<RequestsStruct>? _requests;
  List<RequestsStruct> get requests => _requests ?? const [];
  set requests(List<RequestsStruct>? val) => _requests = val;

  void updateRequests(Function(List<RequestsStruct>) updateFn) {
    updateFn(_requests ??= []);
  }

  bool hasRequests() => _requests != null;

  // "meta" field.
  MetaStruct? _meta;
  MetaStruct get meta => _meta ?? MetaStruct();
  set meta(MetaStruct? val) => _meta = val;

  void updateMeta(Function(MetaStruct) updateFn) {
    updateFn(_meta ??= MetaStruct());
  }

  bool hasMeta() => _meta != null;

  static ChequeBookListModelStruct fromMap(Map<String, dynamic> data) =>
      ChequeBookListModelStruct(
        requests: getStructList(
          data['requests'],
          RequestsStruct.fromMap,
        ),
        meta: data['meta'] is MetaStruct
            ? data['meta']
            : MetaStruct.maybeFromMap(data['meta']),
      );

  static ChequeBookListModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChequeBookListModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'requests': _requests?.map((e) => e.toMap()).toList(),
        'meta': _meta?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'requests': serializeParam(
          _requests,
          ParamType.DataStruct,
          isList: true,
        ),
        'meta': serializeParam(
          _meta,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ChequeBookListModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequeBookListModelStruct(
        requests: deserializeStructParam<RequestsStruct>(
          data['requests'],
          ParamType.DataStruct,
          true,
          structBuilder: RequestsStruct.fromSerializableMap,
        ),
        meta: deserializeStructParam(
          data['meta'],
          ParamType.DataStruct,
          false,
          structBuilder: MetaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ChequeBookListModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChequeBookListModelStruct &&
        listEquality.equals(requests, other.requests) &&
        meta == other.meta;
  }

  @override
  int get hashCode => const ListEquality().hash([requests, meta]);
}

ChequeBookListModelStruct createChequeBookListModelStruct({
  MetaStruct? meta,
}) =>
    ChequeBookListModelStruct(
      meta: meta ?? MetaStruct(),
    );
