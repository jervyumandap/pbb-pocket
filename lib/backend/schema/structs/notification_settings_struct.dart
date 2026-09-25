// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationSettingsStruct extends BaseStruct {
  NotificationSettingsStruct({
    List<NotificationCategoriesStruct>? categories,
  }) : _categories = categories;

  // "categories" field.
  List<NotificationCategoriesStruct>? _categories;
  List<NotificationCategoriesStruct> get categories => _categories ?? const [];
  set categories(List<NotificationCategoriesStruct>? val) => _categories = val;

  void updateCategories(Function(List<NotificationCategoriesStruct>) updateFn) {
    updateFn(_categories ??= []);
  }

  bool hasCategories() => _categories != null;

  static NotificationSettingsStruct fromMap(Map<String, dynamic> data) =>
      NotificationSettingsStruct(
        categories: getStructList(
          data['categories'],
          NotificationCategoriesStruct.fromMap,
        ),
      );

  static NotificationSettingsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationSettingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'categories': _categories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'categories': serializeParam(
          _categories,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NotificationSettingsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationSettingsStruct(
        categories: deserializeStructParam<NotificationCategoriesStruct>(
          data['categories'],
          ParamType.DataStruct,
          true,
          structBuilder: NotificationCategoriesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NotificationSettingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NotificationSettingsStruct &&
        listEquality.equals(categories, other.categories);
  }

  @override
  int get hashCode => const ListEquality().hash([categories]);
}

NotificationSettingsStruct createNotificationSettingsStruct() =>
    NotificationSettingsStruct();
