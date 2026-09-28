// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RadioSelectedItemStruct extends BaseStruct {
  RadioSelectedItemStruct({
    bool? isSelected,
    String? selectedItem,
  })  : _isSelected = isSelected,
        _selectedItem = selectedItem;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  // "selectedItem" field.
  String? _selectedItem;
  String get selectedItem => _selectedItem ?? '';
  set selectedItem(String? val) => _selectedItem = val;

  bool hasSelectedItem() => _selectedItem != null;

  static RadioSelectedItemStruct fromMap(Map<String, dynamic> data) =>
      RadioSelectedItemStruct(
        isSelected: data['isSelected'] as bool?,
        selectedItem: data['selectedItem'] as String?,
      );

  static RadioSelectedItemStruct? maybeFromMap(dynamic data) => data is Map
      ? RadioSelectedItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isSelected': _isSelected,
        'selectedItem': _selectedItem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
        'selectedItem': serializeParam(
          _selectedItem,
          ParamType.String,
        ),
      }.withoutNulls;

  static RadioSelectedItemStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RadioSelectedItemStruct(
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
        selectedItem: deserializeParam(
          data['selectedItem'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RadioSelectedItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RadioSelectedItemStruct &&
        isSelected == other.isSelected &&
        selectedItem == other.selectedItem;
  }

  @override
  int get hashCode => const ListEquality().hash([isSelected, selectedItem]);
}

RadioSelectedItemStruct createRadioSelectedItemStruct({
  bool? isSelected,
  String? selectedItem,
}) =>
    RadioSelectedItemStruct(
      isSelected: isSelected,
      selectedItem: selectedItem,
    );
