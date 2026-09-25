// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuickActionsStruct extends BaseStruct {
  QuickActionsStruct({
    String? actionKey,
    String? displayName,
    String? description,
    String? icon,
    String? route,
    bool? isEnabled,
  })  : _actionKey = actionKey,
        _displayName = displayName,
        _description = description,
        _icon = icon,
        _route = route,
        _isEnabled = isEnabled;

  // "actionKey" field.
  String? _actionKey;
  String get actionKey => _actionKey ?? '';
  set actionKey(String? val) => _actionKey = val;

  bool hasActionKey() => _actionKey != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "route" field.
  String? _route;
  String get route => _route ?? '';
  set route(String? val) => _route = val;

  bool hasRoute() => _route != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  set isEnabled(bool? val) => _isEnabled = val;

  bool hasIsEnabled() => _isEnabled != null;

  static QuickActionsStruct fromMap(Map<String, dynamic> data) =>
      QuickActionsStruct(
        actionKey: data['actionKey'] as String?,
        displayName: data['displayName'] as String?,
        description: data['description'] as String?,
        icon: data['icon'] as String?,
        route: data['route'] as String?,
        isEnabled: data['isEnabled'] as bool?,
      );

  static QuickActionsStruct? maybeFromMap(dynamic data) => data is Map
      ? QuickActionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'actionKey': _actionKey,
        'displayName': _displayName,
        'description': _description,
        'icon': _icon,
        'route': _route,
        'isEnabled': _isEnabled,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'actionKey': serializeParam(
          _actionKey,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'route': serializeParam(
          _route,
          ParamType.String,
        ),
        'isEnabled': serializeParam(
          _isEnabled,
          ParamType.bool,
        ),
      }.withoutNulls;

  static QuickActionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuickActionsStruct(
        actionKey: deserializeParam(
          data['actionKey'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        route: deserializeParam(
          data['route'],
          ParamType.String,
          false,
        ),
        isEnabled: deserializeParam(
          data['isEnabled'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'QuickActionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuickActionsStruct &&
        actionKey == other.actionKey &&
        displayName == other.displayName &&
        description == other.description &&
        icon == other.icon &&
        route == other.route &&
        isEnabled == other.isEnabled;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([actionKey, displayName, description, icon, route, isEnabled]);
}

QuickActionsStruct createQuickActionsStruct({
  String? actionKey,
  String? displayName,
  String? description,
  String? icon,
  String? route,
  bool? isEnabled,
}) =>
    QuickActionsStruct(
      actionKey: actionKey,
      displayName: displayName,
      description: description,
      icon: icon,
      route: route,
      isEnabled: isEnabled,
    );
