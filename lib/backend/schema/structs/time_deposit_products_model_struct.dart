// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeDepositProductsModelStruct extends BaseStruct {
  TimeDepositProductsModelStruct({
    List<ProductsStruct>? products,
  }) : _products = products;

  // "products" field.
  List<ProductsStruct>? _products;
  List<ProductsStruct> get products => _products ?? const [];
  set products(List<ProductsStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductsStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  static TimeDepositProductsModelStruct fromMap(Map<String, dynamic> data) =>
      TimeDepositProductsModelStruct(
        products: getStructList(
          data['products'],
          ProductsStruct.fromMap,
        ),
      );

  static TimeDepositProductsModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? TimeDepositProductsModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'products': _products?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static TimeDepositProductsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TimeDepositProductsModelStruct(
        products: deserializeStructParam<ProductsStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TimeDepositProductsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TimeDepositProductsModelStruct &&
        listEquality.equals(products, other.products);
  }

  @override
  int get hashCode => const ListEquality().hash([products]);
}

TimeDepositProductsModelStruct createTimeDepositProductsModelStruct() =>
    TimeDepositProductsModelStruct();
