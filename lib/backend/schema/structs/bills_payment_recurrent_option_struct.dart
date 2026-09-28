// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsPaymentRecurrentOptionStruct extends BaseStruct {
  BillsPaymentRecurrentOptionStruct({
    int? id,
    String? label,
    String? value,
    int? sortOrder,
  })  : _id = id,
        _label = label,
        _value = value,
        _sortOrder = sortOrder;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  // "sort_order" field.
  int? _sortOrder;
  int get sortOrder => _sortOrder ?? 0;
  set sortOrder(int? val) => _sortOrder = val;

  void incrementSortOrder(int amount) => sortOrder = sortOrder + amount;

  bool hasSortOrder() => _sortOrder != null;

  static BillsPaymentRecurrentOptionStruct fromMap(Map<String, dynamic> data) =>
      BillsPaymentRecurrentOptionStruct(
        id: castToType<int>(data['id']),
        label: data['label'] as String?,
        value: data['value'] as String?,
        sortOrder: castToType<int>(data['sort_order']),
      );

  static BillsPaymentRecurrentOptionStruct? maybeFromMap(dynamic data) => data
          is Map
      ? BillsPaymentRecurrentOptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'label': _label,
        'value': _value,
        'sort_order': _sortOrder,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
        'sort_order': serializeParam(
          _sortOrder,
          ParamType.int,
        ),
      }.withoutNulls;

  static BillsPaymentRecurrentOptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BillsPaymentRecurrentOptionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
        sortOrder: deserializeParam(
          data['sort_order'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BillsPaymentRecurrentOptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillsPaymentRecurrentOptionStruct &&
        id == other.id &&
        label == other.label &&
        value == other.value &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode => const ListEquality().hash([id, label, value, sortOrder]);
}

BillsPaymentRecurrentOptionStruct createBillsPaymentRecurrentOptionStruct({
  int? id,
  String? label,
  String? value,
  int? sortOrder,
}) =>
    BillsPaymentRecurrentOptionStruct(
      id: id,
      label: label,
      value: value,
      sortOrder: sortOrder,
    );
