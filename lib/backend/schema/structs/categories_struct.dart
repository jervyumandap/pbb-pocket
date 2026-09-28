// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesStruct extends BaseStruct {
  CategoriesStruct({
    String? assetClass,
    String? label,
    String? subtotalValue,
    List<HoldingsStruct>? holdings,
  })  : _assetClass = assetClass,
        _label = label,
        _subtotalValue = subtotalValue,
        _holdings = holdings;

  // "assetClass" field.
  String? _assetClass;
  String get assetClass => _assetClass ?? '';
  set assetClass(String? val) => _assetClass = val;

  bool hasAssetClass() => _assetClass != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "subtotalValue" field.
  String? _subtotalValue;
  String get subtotalValue => _subtotalValue ?? '';
  set subtotalValue(String? val) => _subtotalValue = val;

  bool hasSubtotalValue() => _subtotalValue != null;

  // "holdings" field.
  List<HoldingsStruct>? _holdings;
  List<HoldingsStruct> get holdings => _holdings ?? const [];
  set holdings(List<HoldingsStruct>? val) => _holdings = val;

  void updateHoldings(Function(List<HoldingsStruct>) updateFn) {
    updateFn(_holdings ??= []);
  }

  bool hasHoldings() => _holdings != null;

  static CategoriesStruct fromMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        assetClass: data['assetClass'] as String?,
        label: data['label'] as String?,
        subtotalValue: data['subtotalValue'] as String?,
        holdings: getStructList(
          data['holdings'],
          HoldingsStruct.fromMap,
        ),
      );

  static CategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assetClass': _assetClass,
        'label': _label,
        'subtotalValue': _subtotalValue,
        'holdings': _holdings?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assetClass': serializeParam(
          _assetClass,
          ParamType.String,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'subtotalValue': serializeParam(
          _subtotalValue,
          ParamType.String,
        ),
        'holdings': serializeParam(
          _holdings,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CategoriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesStruct(
        assetClass: deserializeParam(
          data['assetClass'],
          ParamType.String,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        subtotalValue: deserializeParam(
          data['subtotalValue'],
          ParamType.String,
          false,
        ),
        holdings: deserializeStructParam<HoldingsStruct>(
          data['holdings'],
          ParamType.DataStruct,
          true,
          structBuilder: HoldingsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoriesStruct &&
        assetClass == other.assetClass &&
        label == other.label &&
        subtotalValue == other.subtotalValue &&
        listEquality.equals(holdings, other.holdings);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([assetClass, label, subtotalValue, holdings]);
}

CategoriesStruct createCategoriesStruct({
  String? assetClass,
  String? label,
  String? subtotalValue,
}) =>
    CategoriesStruct(
      assetClass: assetClass,
      label: label,
      subtotalValue: subtotalValue,
    );
