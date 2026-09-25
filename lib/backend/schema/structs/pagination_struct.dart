// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaginationStruct extends BaseStruct {
  PaginationStruct({
    int? total,
    int? limit,
    int? offset,
    bool? hasMore,
  })  : _total = total,
        _limit = limit,
        _offset = offset,
        _hasMore = hasMore;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;

  void incrementLimit(int amount) => limit = limit + amount;

  bool hasLimit() => _limit != null;

  // "offset" field.
  int? _offset;
  int get offset => _offset ?? 0;
  set offset(int? val) => _offset = val;

  void incrementOffset(int amount) => offset = offset + amount;

  bool hasOffset() => _offset != null;

  // "hasMore" field.
  bool? _hasMore;
  bool get hasMore => _hasMore ?? false;
  set hasMore(bool? val) => _hasMore = val;

  bool hasHasMore() => _hasMore != null;

  static PaginationStruct fromMap(Map<String, dynamic> data) =>
      PaginationStruct(
        total: castToType<int>(data['total']),
        limit: castToType<int>(data['limit']),
        offset: castToType<int>(data['offset']),
        hasMore: data['hasMore'] as bool?,
      );

  static PaginationStruct? maybeFromMap(dynamic data) => data is Map
      ? PaginationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total': _total,
        'limit': _limit,
        'offset': _offset,
        'hasMore': _hasMore,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.int,
        ),
        'hasMore': serializeParam(
          _hasMore,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PaginationStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaginationStruct(
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.int,
          false,
        ),
        hasMore: deserializeParam(
          data['hasMore'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PaginationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaginationStruct &&
        total == other.total &&
        limit == other.limit &&
        offset == other.offset &&
        hasMore == other.hasMore;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([total, limit, offset, hasMore]);
}

PaginationStruct createPaginationStruct({
  int? total,
  int? limit,
  int? offset,
  bool? hasMore,
}) =>
    PaginationStruct(
      total: total,
      limit: limit,
      offset: offset,
      hasMore: hasMore,
    );
