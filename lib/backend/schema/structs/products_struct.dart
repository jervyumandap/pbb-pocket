// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends BaseStruct {
  ProductsStruct({
    String? productCode,
    String? displayName,
    String? currency,
    int? minAmount,
    double? interestRateAnnual,
    List<int>? tenorDays,
    String? description,
  })  : _productCode = productCode,
        _displayName = displayName,
        _currency = currency,
        _minAmount = minAmount,
        _interestRateAnnual = interestRateAnnual,
        _tenorDays = tenorDays,
        _description = description;

  // "productCode" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "minAmount" field.
  int? _minAmount;
  int get minAmount => _minAmount ?? 0;
  set minAmount(int? val) => _minAmount = val;

  void incrementMinAmount(int amount) => minAmount = minAmount + amount;

  bool hasMinAmount() => _minAmount != null;

  // "interestRateAnnual" field.
  double? _interestRateAnnual;
  double get interestRateAnnual => _interestRateAnnual ?? 0.0;
  set interestRateAnnual(double? val) => _interestRateAnnual = val;

  void incrementInterestRateAnnual(double amount) =>
      interestRateAnnual = interestRateAnnual + amount;

  bool hasInterestRateAnnual() => _interestRateAnnual != null;

  // "tenorDays" field.
  List<int>? _tenorDays;
  List<int> get tenorDays => _tenorDays ?? const [];
  set tenorDays(List<int>? val) => _tenorDays = val;

  void updateTenorDays(Function(List<int>) updateFn) {
    updateFn(_tenorDays ??= []);
  }

  bool hasTenorDays() => _tenorDays != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        productCode: data['productCode'] as String?,
        displayName: data['displayName'] as String?,
        currency: data['currency'] as String?,
        minAmount: castToType<int>(data['minAmount']),
        interestRateAnnual: castToType<double>(data['interestRateAnnual']),
        tenorDays: getDataList(data['tenorDays']),
        description: data['description'] as String?,
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productCode': _productCode,
        'displayName': _displayName,
        'currency': _currency,
        'minAmount': _minAmount,
        'interestRateAnnual': _interestRateAnnual,
        'tenorDays': _tenorDays,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productCode': serializeParam(
          _productCode,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'minAmount': serializeParam(
          _minAmount,
          ParamType.int,
        ),
        'interestRateAnnual': serializeParam(
          _interestRateAnnual,
          ParamType.double,
        ),
        'tenorDays': serializeParam(
          _tenorDays,
          ParamType.int,
          isList: true,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsStruct(
        productCode: deserializeParam(
          data['productCode'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        minAmount: deserializeParam(
          data['minAmount'],
          ParamType.int,
          false,
        ),
        interestRateAnnual: deserializeParam(
          data['interestRateAnnual'],
          ParamType.double,
          false,
        ),
        tenorDays: deserializeParam<int>(
          data['tenorDays'],
          ParamType.int,
          true,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductsStruct &&
        productCode == other.productCode &&
        displayName == other.displayName &&
        currency == other.currency &&
        minAmount == other.minAmount &&
        interestRateAnnual == other.interestRateAnnual &&
        listEquality.equals(tenorDays, other.tenorDays) &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productCode,
        displayName,
        currency,
        minAmount,
        interestRateAnnual,
        tenorDays,
        description
      ]);
}

ProductsStruct createProductsStruct({
  String? productCode,
  String? displayName,
  String? currency,
  int? minAmount,
  double? interestRateAnnual,
  String? description,
}) =>
    ProductsStruct(
      productCode: productCode,
      displayName: displayName,
      currency: currency,
      minAmount: minAmount,
      interestRateAnnual: interestRateAnnual,
      description: description,
    );
