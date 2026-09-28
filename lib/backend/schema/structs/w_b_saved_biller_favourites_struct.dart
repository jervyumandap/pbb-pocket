// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBSavedBillerFavouritesStruct extends BaseStruct {
  WBSavedBillerFavouritesStruct({
    List<WBSavedBillerStruct>? savedBillers,
    int? count,
  })  : _savedBillers = savedBillers,
        _count = count;

  // "savedBillers" field.
  List<WBSavedBillerStruct>? _savedBillers;
  List<WBSavedBillerStruct> get savedBillers => _savedBillers ?? const [];
  set savedBillers(List<WBSavedBillerStruct>? val) => _savedBillers = val;

  void updateSavedBillers(Function(List<WBSavedBillerStruct>) updateFn) {
    updateFn(_savedBillers ??= []);
  }

  bool hasSavedBillers() => _savedBillers != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static WBSavedBillerFavouritesStruct fromMap(Map<String, dynamic> data) =>
      WBSavedBillerFavouritesStruct(
        savedBillers: getStructList(
          data['savedBillers'],
          WBSavedBillerStruct.fromMap,
        ),
        count: castToType<int>(data['count']),
      );

  static WBSavedBillerFavouritesStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? WBSavedBillerFavouritesStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'savedBillers': _savedBillers?.map((e) => e.toMap()).toList(),
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'savedBillers': serializeParam(
          _savedBillers,
          ParamType.DataStruct,
          isList: true,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static WBSavedBillerFavouritesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBSavedBillerFavouritesStruct(
        savedBillers: deserializeStructParam<WBSavedBillerStruct>(
          data['savedBillers'],
          ParamType.DataStruct,
          true,
          structBuilder: WBSavedBillerStruct.fromSerializableMap,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WBSavedBillerFavouritesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WBSavedBillerFavouritesStruct &&
        listEquality.equals(savedBillers, other.savedBillers) &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([savedBillers, count]);
}

WBSavedBillerFavouritesStruct createWBSavedBillerFavouritesStruct({
  int? count,
}) =>
    WBSavedBillerFavouritesStruct(
      count: count,
    );
