// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationCategoriesStruct extends BaseStruct {
  NotificationCategoriesStruct({
    String? key,
    String? name,
    int? alertCount,
    List<NotificationEventTypesStruct>? eventTypes,
  })  : _key = key,
        _name = name,
        _alertCount = alertCount,
        _eventTypes = eventTypes;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "alertCount" field.
  int? _alertCount;
  int get alertCount => _alertCount ?? 0;
  set alertCount(int? val) => _alertCount = val;

  void incrementAlertCount(int amount) => alertCount = alertCount + amount;

  bool hasAlertCount() => _alertCount != null;

  // "eventTypes" field.
  List<NotificationEventTypesStruct>? _eventTypes;
  List<NotificationEventTypesStruct> get eventTypes => _eventTypes ?? const [];
  set eventTypes(List<NotificationEventTypesStruct>? val) => _eventTypes = val;

  void updateEventTypes(Function(List<NotificationEventTypesStruct>) updateFn) {
    updateFn(_eventTypes ??= []);
  }

  bool hasEventTypes() => _eventTypes != null;

  static NotificationCategoriesStruct fromMap(Map<String, dynamic> data) =>
      NotificationCategoriesStruct(
        key: data['key'] as String?,
        name: data['name'] as String?,
        alertCount: castToType<int>(data['alertCount']),
        eventTypes: getStructList(
          data['eventTypes'],
          NotificationEventTypesStruct.fromMap,
        ),
      );

  static NotificationCategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationCategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'name': _name,
        'alertCount': _alertCount,
        'eventTypes': _eventTypes?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'alertCount': serializeParam(
          _alertCount,
          ParamType.int,
        ),
        'eventTypes': serializeParam(
          _eventTypes,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NotificationCategoriesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationCategoriesStruct(
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        alertCount: deserializeParam(
          data['alertCount'],
          ParamType.int,
          false,
        ),
        eventTypes: deserializeStructParam<NotificationEventTypesStruct>(
          data['eventTypes'],
          ParamType.DataStruct,
          true,
          structBuilder: NotificationEventTypesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NotificationCategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NotificationCategoriesStruct &&
        key == other.key &&
        name == other.name &&
        alertCount == other.alertCount &&
        listEquality.equals(eventTypes, other.eventTypes);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([key, name, alertCount, eventTypes]);
}

NotificationCategoriesStruct createNotificationCategoriesStruct({
  String? key,
  String? name,
  int? alertCount,
}) =>
    NotificationCategoriesStruct(
      key: key,
      name: name,
      alertCount: alertCount,
    );
