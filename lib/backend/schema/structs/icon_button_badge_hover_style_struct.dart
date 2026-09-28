// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IconButtonBadgeHoverStyleStruct extends BaseStruct {
  IconButtonBadgeHoverStyleStruct({
    Color? hoverColor,
    Color? iconColor,
    Color? defaultIconColor,
  })  : _hoverColor = hoverColor,
        _iconColor = iconColor,
        _defaultIconColor = defaultIconColor;

  // "hoverColor" field.
  Color? _hoverColor;
  Color get hoverColor => _hoverColor ?? const Color(0xFF00A8CF);
  set hoverColor(Color? val) => _hoverColor = val;

  bool hasHoverColor() => _hoverColor != null;

  // "iconColor" field.
  Color? _iconColor;
  Color get iconColor => _iconColor ?? Colors.white;
  set iconColor(Color? val) => _iconColor = val;

  bool hasIconColor() => _iconColor != null;

  // "defaultIconColor" field.
  Color? _defaultIconColor;
  Color get defaultIconColor => _defaultIconColor ?? Colors.white;
  set defaultIconColor(Color? val) => _defaultIconColor = val;

  bool hasDefaultIconColor() => _defaultIconColor != null;

  static IconButtonBadgeHoverStyleStruct fromMap(Map<String, dynamic> data) =>
      IconButtonBadgeHoverStyleStruct(
        hoverColor: getSchemaColor(data['hoverColor']),
        iconColor: getSchemaColor(data['iconColor']),
        defaultIconColor: getSchemaColor(data['defaultIconColor']),
      );

  static IconButtonBadgeHoverStyleStruct? maybeFromMap(dynamic data) => data
          is Map
      ? IconButtonBadgeHoverStyleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'hoverColor': _hoverColor,
        'iconColor': _iconColor,
        'defaultIconColor': _defaultIconColor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hoverColor': serializeParam(
          _hoverColor,
          ParamType.Color,
        ),
        'iconColor': serializeParam(
          _iconColor,
          ParamType.Color,
        ),
        'defaultIconColor': serializeParam(
          _defaultIconColor,
          ParamType.Color,
        ),
      }.withoutNulls;

  static IconButtonBadgeHoverStyleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IconButtonBadgeHoverStyleStruct(
        hoverColor: deserializeParam(
          data['hoverColor'],
          ParamType.Color,
          false,
        ),
        iconColor: deserializeParam(
          data['iconColor'],
          ParamType.Color,
          false,
        ),
        defaultIconColor: deserializeParam(
          data['defaultIconColor'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'IconButtonBadgeHoverStyleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IconButtonBadgeHoverStyleStruct &&
        hoverColor == other.hoverColor &&
        iconColor == other.iconColor &&
        defaultIconColor == other.defaultIconColor;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([hoverColor, iconColor, defaultIconColor]);
}

IconButtonBadgeHoverStyleStruct createIconButtonBadgeHoverStyleStruct({
  Color? hoverColor,
  Color? iconColor,
  Color? defaultIconColor,
}) =>
    IconButtonBadgeHoverStyleStruct(
      hoverColor: hoverColor,
      iconColor: iconColor,
      defaultIconColor: defaultIconColor,
    );
