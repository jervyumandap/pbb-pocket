// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetaStruct extends BaseStruct {
  MetaStruct({
    int? page,
    int? take,
    int? itemCount,
    int? pageCount,
    bool? hasPreviousPage,
    bool? hasNextPage,
  })  : _page = page,
        _take = take,
        _itemCount = itemCount,
        _pageCount = pageCount,
        _hasPreviousPage = hasPreviousPage,
        _hasNextPage = hasNextPage;

  // "page" field.
  int? _page;
  int get page => _page ?? 0;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "take" field.
  int? _take;
  int get take => _take ?? 0;
  set take(int? val) => _take = val;

  void incrementTake(int amount) => take = take + amount;

  bool hasTake() => _take != null;

  // "itemCount" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  set itemCount(int? val) => _itemCount = val;

  void incrementItemCount(int amount) => itemCount = itemCount + amount;

  bool hasItemCount() => _itemCount != null;

  // "pageCount" field.
  int? _pageCount;
  int get pageCount => _pageCount ?? 0;
  set pageCount(int? val) => _pageCount = val;

  void incrementPageCount(int amount) => pageCount = pageCount + amount;

  bool hasPageCount() => _pageCount != null;

  // "hasPreviousPage" field.
  bool? _hasPreviousPage;
  bool get hasPreviousPage => _hasPreviousPage ?? false;
  set hasPreviousPage(bool? val) => _hasPreviousPage = val;

  bool hasHasPreviousPage() => _hasPreviousPage != null;

  // "hasNextPage" field.
  bool? _hasNextPage;
  bool get hasNextPage => _hasNextPage ?? false;
  set hasNextPage(bool? val) => _hasNextPage = val;

  bool hasHasNextPage() => _hasNextPage != null;

  static MetaStruct fromMap(Map<String, dynamic> data) => MetaStruct(
        page: castToType<int>(data['page']),
        take: castToType<int>(data['take']),
        itemCount: castToType<int>(data['itemCount']),
        pageCount: castToType<int>(data['pageCount']),
        hasPreviousPage: data['hasPreviousPage'] as bool?,
        hasNextPage: data['hasNextPage'] as bool?,
      );

  static MetaStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'page': _page,
        'take': _take,
        'itemCount': _itemCount,
        'pageCount': _pageCount,
        'hasPreviousPage': _hasPreviousPage,
        'hasNextPage': _hasNextPage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'take': serializeParam(
          _take,
          ParamType.int,
        ),
        'itemCount': serializeParam(
          _itemCount,
          ParamType.int,
        ),
        'pageCount': serializeParam(
          _pageCount,
          ParamType.int,
        ),
        'hasPreviousPage': serializeParam(
          _hasPreviousPage,
          ParamType.bool,
        ),
        'hasNextPage': serializeParam(
          _hasNextPage,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MetaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetaStruct(
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        take: deserializeParam(
          data['take'],
          ParamType.int,
          false,
        ),
        itemCount: deserializeParam(
          data['itemCount'],
          ParamType.int,
          false,
        ),
        pageCount: deserializeParam(
          data['pageCount'],
          ParamType.int,
          false,
        ),
        hasPreviousPage: deserializeParam(
          data['hasPreviousPage'],
          ParamType.bool,
          false,
        ),
        hasNextPage: deserializeParam(
          data['hasNextPage'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MetaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetaStruct &&
        page == other.page &&
        take == other.take &&
        itemCount == other.itemCount &&
        pageCount == other.pageCount &&
        hasPreviousPage == other.hasPreviousPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([page, take, itemCount, pageCount, hasPreviousPage, hasNextPage]);
}

MetaStruct createMetaStruct({
  int? page,
  int? take,
  int? itemCount,
  int? pageCount,
  bool? hasPreviousPage,
  bool? hasNextPage,
}) =>
    MetaStruct(
      page: page,
      take: take,
      itemCount: itemCount,
      pageCount: pageCount,
      hasPreviousPage: hasPreviousPage,
      hasNextPage: hasNextPage,
    );
