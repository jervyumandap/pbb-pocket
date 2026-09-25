// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestmentSummaryStruct extends BaseStruct {
  InvestmentSummaryStruct({
    String? totalPortfolioValue,
    String? currency,
    bool? multiCurrency,
    String? asOf,
    List<HoldingsStruct>? holdings,
    List<CategoriesStruct>? categories,
  })  : _totalPortfolioValue = totalPortfolioValue,
        _currency = currency,
        _multiCurrency = multiCurrency,
        _asOf = asOf,
        _holdings = holdings,
        _categories = categories;

  // "totalPortfolioValue" field.
  String? _totalPortfolioValue;
  String get totalPortfolioValue => _totalPortfolioValue ?? '';
  set totalPortfolioValue(String? val) => _totalPortfolioValue = val;

  bool hasTotalPortfolioValue() => _totalPortfolioValue != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "multiCurrency" field.
  bool? _multiCurrency;
  bool get multiCurrency => _multiCurrency ?? false;
  set multiCurrency(bool? val) => _multiCurrency = val;

  bool hasMultiCurrency() => _multiCurrency != null;

  // "asOf" field.
  String? _asOf;
  String get asOf => _asOf ?? '';
  set asOf(String? val) => _asOf = val;

  bool hasAsOf() => _asOf != null;

  // "holdings" field.
  List<HoldingsStruct>? _holdings;
  List<HoldingsStruct> get holdings => _holdings ?? const [];
  set holdings(List<HoldingsStruct>? val) => _holdings = val;

  void updateHoldings(Function(List<HoldingsStruct>) updateFn) {
    updateFn(_holdings ??= []);
  }

  bool hasHoldings() => _holdings != null;

  // "categories" field.
  List<CategoriesStruct>? _categories;
  List<CategoriesStruct> get categories => _categories ?? const [];
  set categories(List<CategoriesStruct>? val) => _categories = val;

  void updateCategories(Function(List<CategoriesStruct>) updateFn) {
    updateFn(_categories ??= []);
  }

  bool hasCategories() => _categories != null;

  static InvestmentSummaryStruct fromMap(Map<String, dynamic> data) =>
      InvestmentSummaryStruct(
        totalPortfolioValue: data['totalPortfolioValue'] as String?,
        currency: data['currency'] as String?,
        multiCurrency: data['multiCurrency'] as bool?,
        asOf: data['asOf'] as String?,
        holdings: getStructList(
          data['holdings'],
          HoldingsStruct.fromMap,
        ),
        categories: getStructList(
          data['categories'],
          CategoriesStruct.fromMap,
        ),
      );

  static InvestmentSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? InvestmentSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'totalPortfolioValue': _totalPortfolioValue,
        'currency': _currency,
        'multiCurrency': _multiCurrency,
        'asOf': _asOf,
        'holdings': _holdings?.map((e) => e.toMap()).toList(),
        'categories': _categories?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'totalPortfolioValue': serializeParam(
          _totalPortfolioValue,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'multiCurrency': serializeParam(
          _multiCurrency,
          ParamType.bool,
        ),
        'asOf': serializeParam(
          _asOf,
          ParamType.String,
        ),
        'holdings': serializeParam(
          _holdings,
          ParamType.DataStruct,
          isList: true,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static InvestmentSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InvestmentSummaryStruct(
        totalPortfolioValue: deserializeParam(
          data['totalPortfolioValue'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        multiCurrency: deserializeParam(
          data['multiCurrency'],
          ParamType.bool,
          false,
        ),
        asOf: deserializeParam(
          data['asOf'],
          ParamType.String,
          false,
        ),
        holdings: deserializeStructParam<HoldingsStruct>(
          data['holdings'],
          ParamType.DataStruct,
          true,
          structBuilder: HoldingsStruct.fromSerializableMap,
        ),
        categories: deserializeStructParam<CategoriesStruct>(
          data['categories'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoriesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'InvestmentSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InvestmentSummaryStruct &&
        totalPortfolioValue == other.totalPortfolioValue &&
        currency == other.currency &&
        multiCurrency == other.multiCurrency &&
        asOf == other.asOf &&
        listEquality.equals(holdings, other.holdings) &&
        listEquality.equals(categories, other.categories);
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalPortfolioValue,
        currency,
        multiCurrency,
        asOf,
        holdings,
        categories
      ]);
}

InvestmentSummaryStruct createInvestmentSummaryStruct({
  String? totalPortfolioValue,
  String? currency,
  bool? multiCurrency,
  String? asOf,
}) =>
    InvestmentSummaryStruct(
      totalPortfolioValue: totalPortfolioValue,
      currency: currency,
      multiCurrency: multiCurrency,
      asOf: asOf,
    );
