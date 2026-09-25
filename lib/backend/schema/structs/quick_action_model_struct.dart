// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuickActionModelStruct extends BaseStruct {
  QuickActionModelStruct({
    List<QuickActionsStruct>? quickActions,
    bool? maintenanceMode,
  })  : _quickActions = quickActions,
        _maintenanceMode = maintenanceMode;

  // "quickActions" field.
  List<QuickActionsStruct>? _quickActions;
  List<QuickActionsStruct> get quickActions => _quickActions ?? const [];
  set quickActions(List<QuickActionsStruct>? val) => _quickActions = val;

  void updateQuickActions(Function(List<QuickActionsStruct>) updateFn) {
    updateFn(_quickActions ??= []);
  }

  bool hasQuickActions() => _quickActions != null;

  // "maintenanceMode" field.
  bool? _maintenanceMode;
  bool get maintenanceMode => _maintenanceMode ?? false;
  set maintenanceMode(bool? val) => _maintenanceMode = val;

  bool hasMaintenanceMode() => _maintenanceMode != null;

  static QuickActionModelStruct fromMap(Map<String, dynamic> data) =>
      QuickActionModelStruct(
        quickActions: getStructList(
          data['quickActions'],
          QuickActionsStruct.fromMap,
        ),
        maintenanceMode: data['maintenanceMode'] as bool?,
      );

  static QuickActionModelStruct? maybeFromMap(dynamic data) => data is Map
      ? QuickActionModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quickActions': _quickActions?.map((e) => e.toMap()).toList(),
        'maintenanceMode': _maintenanceMode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quickActions': serializeParam(
          _quickActions,
          ParamType.DataStruct,
          isList: true,
        ),
        'maintenanceMode': serializeParam(
          _maintenanceMode,
          ParamType.bool,
        ),
      }.withoutNulls;

  static QuickActionModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      QuickActionModelStruct(
        quickActions: deserializeStructParam<QuickActionsStruct>(
          data['quickActions'],
          ParamType.DataStruct,
          true,
          structBuilder: QuickActionsStruct.fromSerializableMap,
        ),
        maintenanceMode: deserializeParam(
          data['maintenanceMode'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'QuickActionModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuickActionModelStruct &&
        listEquality.equals(quickActions, other.quickActions) &&
        maintenanceMode == other.maintenanceMode;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([quickActions, maintenanceMode]);
}

QuickActionModelStruct createQuickActionModelStruct({
  bool? maintenanceMode,
}) =>
    QuickActionModelStruct(
      maintenanceMode: maintenanceMode,
    );
