// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotifDetailsStruct extends BaseStruct {
  NotifDetailsStruct({
    NotificationDetailsStruct? notificationDetails,
  }) : _notificationDetails = notificationDetails;

  // "NotificationDetails" field.
  NotificationDetailsStruct? _notificationDetails;
  NotificationDetailsStruct get notificationDetails =>
      _notificationDetails ?? NotificationDetailsStruct();
  set notificationDetails(NotificationDetailsStruct? val) =>
      _notificationDetails = val;

  void updateNotificationDetails(Function(NotificationDetailsStruct) updateFn) {
    updateFn(_notificationDetails ??= NotificationDetailsStruct());
  }

  bool hasNotificationDetails() => _notificationDetails != null;

  static NotifDetailsStruct fromMap(Map<String, dynamic> data) =>
      NotifDetailsStruct(
        notificationDetails:
            data['NotificationDetails'] is NotificationDetailsStruct
                ? data['NotificationDetails']
                : NotificationDetailsStruct.maybeFromMap(
                    data['NotificationDetails']),
      );

  static NotifDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotifDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'NotificationDetails': _notificationDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'NotificationDetails': serializeParam(
          _notificationDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static NotifDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotifDetailsStruct(
        notificationDetails: deserializeStructParam(
          data['NotificationDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: NotificationDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NotifDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotifDetailsStruct &&
        notificationDetails == other.notificationDetails;
  }

  @override
  int get hashCode => const ListEquality().hash([notificationDetails]);
}

NotifDetailsStruct createNotifDetailsStruct({
  NotificationDetailsStruct? notificationDetails,
}) =>
    NotifDetailsStruct(
      notificationDetails: notificationDetails ?? NotificationDetailsStruct(),
    );
