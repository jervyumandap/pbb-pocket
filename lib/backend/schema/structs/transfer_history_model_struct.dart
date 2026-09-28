// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransferHistoryModelStruct extends BaseStruct {
  TransferHistoryModelStruct({
    List<ItemsStruct>? items,
    int? total,
    int? page,
    int? limit,
    int? totalPages,
  })  : _items = items,
        _total = total,
        _page = page,
        _limit = limit,
        _totalPages = totalPages;

  // "items" field.
  List<ItemsStruct>? _items;
  List<ItemsStruct> get items => _items ?? const [];
  set items(List<ItemsStruct>? val) => _items = val;

  void updateItems(Function(List<ItemsStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "page" field.
  int? _page;
  int get page => _page ?? 0;
  set page(int? val) => _page = val;

  void incrementPage(int amount) => page = page + amount;

  bool hasPage() => _page != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;

  void incrementLimit(int amount) => limit = limit + amount;

  bool hasLimit() => _limit != null;

  // "totalPages" field.
  int? _totalPages;
  int get totalPages => _totalPages ?? 0;
  set totalPages(int? val) => _totalPages = val;

  void incrementTotalPages(int amount) => totalPages = totalPages + amount;

  bool hasTotalPages() => _totalPages != null;

  static TransferHistoryModelStruct fromMap(Map<String, dynamic> data) =>
      TransferHistoryModelStruct(
        items: getStructList(
          data['items'],
          ItemsStruct.fromMap,
        ),
        total: castToType<int>(data['total']),
        page: castToType<int>(data['page']),
        limit: castToType<int>(data['limit']),
        totalPages: castToType<int>(data['totalPages']),
      );

  static TransferHistoryModelStruct? maybeFromMap(dynamic data) => data is Map
      ? TransferHistoryModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'items': _items?.map((e) => e.toMap()).toList(),
        'total': _total,
        'page': _page,
        'limit': _limit,
        'totalPages': _totalPages,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'page': serializeParam(
          _page,
          ParamType.int,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
        'totalPages': serializeParam(
          _totalPages,
          ParamType.int,
        ),
      }.withoutNulls;

  static TransferHistoryModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TransferHistoryModelStruct(
        items: deserializeStructParam<ItemsStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: ItemsStruct.fromSerializableMap,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        page: deserializeParam(
          data['page'],
          ParamType.int,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
        totalPages: deserializeParam(
          data['totalPages'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TransferHistoryModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TransferHistoryModelStruct &&
        listEquality.equals(items, other.items) &&
        total == other.total &&
        page == other.page &&
        limit == other.limit &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([items, total, page, limit, totalPages]);
}

TransferHistoryModelStruct createTransferHistoryModelStruct({
  int? total,
  int? page,
  int? limit,
  int? totalPages,
}) =>
    TransferHistoryModelStruct(
      total: total,
      page: page,
      limit: limit,
      totalPages: totalPages,
    );
