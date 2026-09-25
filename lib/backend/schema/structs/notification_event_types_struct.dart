// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationEventTypesStruct extends BaseStruct {
  NotificationEventTypesStruct({
    String? key,
    String? name,
    String? description,
    bool? enabled,
    SmsStruct? sms,
    EmailStruct? email,
    PushStruct? push,
  })  : _key = key,
        _name = name,
        _description = description,
        _enabled = enabled,
        _sms = sms,
        _email = email,
        _push = push;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "enabled" field.
  bool? _enabled;
  bool get enabled => _enabled ?? false;
  set enabled(bool? val) => _enabled = val;

  bool hasEnabled() => _enabled != null;

  // "sms" field.
  SmsStruct? _sms;
  SmsStruct get sms => _sms ?? SmsStruct();
  set sms(SmsStruct? val) => _sms = val;

  void updateSms(Function(SmsStruct) updateFn) {
    updateFn(_sms ??= SmsStruct());
  }

  bool hasSms() => _sms != null;

  // "email" field.
  EmailStruct? _email;
  EmailStruct get email => _email ?? EmailStruct();
  set email(EmailStruct? val) => _email = val;

  void updateEmail(Function(EmailStruct) updateFn) {
    updateFn(_email ??= EmailStruct());
  }

  bool hasEmail() => _email != null;

  // "push" field.
  PushStruct? _push;
  PushStruct get push => _push ?? PushStruct();
  set push(PushStruct? val) => _push = val;

  void updatePush(Function(PushStruct) updateFn) {
    updateFn(_push ??= PushStruct());
  }

  bool hasPush() => _push != null;

  static NotificationEventTypesStruct fromMap(Map<String, dynamic> data) =>
      NotificationEventTypesStruct(
        key: data['key'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        enabled: data['enabled'] as bool?,
        sms: data['sms'] is SmsStruct
            ? data['sms']
            : SmsStruct.maybeFromMap(data['sms']),
        email: data['email'] is EmailStruct
            ? data['email']
            : EmailStruct.maybeFromMap(data['email']),
        push: data['push'] is PushStruct
            ? data['push']
            : PushStruct.maybeFromMap(data['push']),
      );

  static NotificationEventTypesStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationEventTypesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'key': _key,
        'name': _name,
        'description': _description,
        'enabled': _enabled,
        'sms': _sms?.toMap(),
        'email': _email?.toMap(),
        'push': _push?.toMap(),
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'enabled': serializeParam(
          _enabled,
          ParamType.bool,
        ),
        'sms': serializeParam(
          _sms,
          ParamType.DataStruct,
        ),
        'email': serializeParam(
          _email,
          ParamType.DataStruct,
        ),
        'push': serializeParam(
          _push,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static NotificationEventTypesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NotificationEventTypesStruct(
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        enabled: deserializeParam(
          data['enabled'],
          ParamType.bool,
          false,
        ),
        sms: deserializeStructParam(
          data['sms'],
          ParamType.DataStruct,
          false,
          structBuilder: SmsStruct.fromSerializableMap,
        ),
        email: deserializeStructParam(
          data['email'],
          ParamType.DataStruct,
          false,
          structBuilder: EmailStruct.fromSerializableMap,
        ),
        push: deserializeStructParam(
          data['push'],
          ParamType.DataStruct,
          false,
          structBuilder: PushStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NotificationEventTypesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationEventTypesStruct &&
        key == other.key &&
        name == other.name &&
        description == other.description &&
        enabled == other.enabled &&
        sms == other.sms &&
        email == other.email &&
        push == other.push;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([key, name, description, enabled, sms, email, push]);
}

NotificationEventTypesStruct createNotificationEventTypesStruct({
  String? key,
  String? name,
  String? description,
  bool? enabled,
  SmsStruct? sms,
  EmailStruct? email,
  PushStruct? push,
}) =>
    NotificationEventTypesStruct(
      key: key,
      name: name,
      description: description,
      enabled: enabled,
      sms: sms ?? SmsStruct(),
      email: email ?? EmailStruct(),
      push: push ?? PushStruct(),
    );
