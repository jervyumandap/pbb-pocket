// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HoldingsStruct extends BaseStruct {
  HoldingsStruct({
    String? productName,
    String? isinSeriesNo,
    String? assetClass,
    String? currentValue,
    String? initialAmount,
    String? gainLoss,
    double? gainLossPct,
    String? maturityDate,
    String? rate,
    String? units,
    String? currency,
    bool? hasValue,
  })  : _productName = productName,
        _isinSeriesNo = isinSeriesNo,
        _assetClass = assetClass,
        _currentValue = currentValue,
        _initialAmount = initialAmount,
        _gainLoss = gainLoss,
        _gainLossPct = gainLossPct,
        _maturityDate = maturityDate,
        _rate = rate,
        _units = units,
        _currency = currency,
        _hasValue = hasValue;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "isinSeriesNo" field.
  String? _isinSeriesNo;
  String get isinSeriesNo => _isinSeriesNo ?? '';
  set isinSeriesNo(String? val) => _isinSeriesNo = val;

  bool hasIsinSeriesNo() => _isinSeriesNo != null;

  // "assetClass" field.
  String? _assetClass;
  String get assetClass => _assetClass ?? '';
  set assetClass(String? val) => _assetClass = val;

  bool hasAssetClass() => _assetClass != null;

  // "currentValue" field.
  String? _currentValue;
  String get currentValue => _currentValue ?? '';
  set currentValue(String? val) => _currentValue = val;

  bool hasCurrentValue() => _currentValue != null;

  // "initialAmount" field.
  String? _initialAmount;
  String get initialAmount => _initialAmount ?? '';
  set initialAmount(String? val) => _initialAmount = val;

  bool hasInitialAmount() => _initialAmount != null;

  // "gainLoss" field.
  String? _gainLoss;
  String get gainLoss => _gainLoss ?? '';
  set gainLoss(String? val) => _gainLoss = val;

  bool hasGainLoss() => _gainLoss != null;

  // "gainLossPct" field.
  double? _gainLossPct;
  double get gainLossPct => _gainLossPct ?? 0.0;
  set gainLossPct(double? val) => _gainLossPct = val;

  void incrementGainLossPct(double amount) =>
      gainLossPct = gainLossPct + amount;

  bool hasGainLossPct() => _gainLossPct != null;

  // "maturityDate" field.
  String? _maturityDate;
  String get maturityDate => _maturityDate ?? '';
  set maturityDate(String? val) => _maturityDate = val;

  bool hasMaturityDate() => _maturityDate != null;

  // "rate" field.
  String? _rate;
  String get rate => _rate ?? '';
  set rate(String? val) => _rate = val;

  bool hasRate() => _rate != null;

  // "units" field.
  String? _units;
  String get units => _units ?? '';
  set units(String? val) => _units = val;

  bool hasUnits() => _units != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "hasValue" field.
  bool? _hasValue;
  bool get hasValue => _hasValue ?? false;
  set hasValue(bool? val) => _hasValue = val;

  bool hasHasValue() => _hasValue != null;

  static HoldingsStruct fromMap(Map<String, dynamic> data) => HoldingsStruct(
        productName: data['productName'] as String?,
        isinSeriesNo: data['isinSeriesNo'] as String?,
        assetClass: data['assetClass'] as String?,
        currentValue: data['currentValue'] as String?,
        initialAmount: data['initialAmount'] as String?,
        gainLoss: data['gainLoss'] as String?,
        gainLossPct: castToType<double>(data['gainLossPct']),
        maturityDate: data['maturityDate'] as String?,
        rate: data['rate'] as String?,
        units: data['units'] as String?,
        currency: data['currency'] as String?,
        hasValue: data['hasValue'] as bool?,
      );

  static HoldingsStruct? maybeFromMap(dynamic data) =>
      data is Map ? HoldingsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'productName': _productName,
        'isinSeriesNo': _isinSeriesNo,
        'assetClass': _assetClass,
        'currentValue': _currentValue,
        'initialAmount': _initialAmount,
        'gainLoss': _gainLoss,
        'gainLossPct': _gainLossPct,
        'maturityDate': _maturityDate,
        'rate': _rate,
        'units': _units,
        'currency': _currency,
        'hasValue': _hasValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'isinSeriesNo': serializeParam(
          _isinSeriesNo,
          ParamType.String,
        ),
        'assetClass': serializeParam(
          _assetClass,
          ParamType.String,
        ),
        'currentValue': serializeParam(
          _currentValue,
          ParamType.String,
        ),
        'initialAmount': serializeParam(
          _initialAmount,
          ParamType.String,
        ),
        'gainLoss': serializeParam(
          _gainLoss,
          ParamType.String,
        ),
        'gainLossPct': serializeParam(
          _gainLossPct,
          ParamType.double,
        ),
        'maturityDate': serializeParam(
          _maturityDate,
          ParamType.String,
        ),
        'rate': serializeParam(
          _rate,
          ParamType.String,
        ),
        'units': serializeParam(
          _units,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'hasValue': serializeParam(
          _hasValue,
          ParamType.bool,
        ),
      }.withoutNulls;

  static HoldingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      HoldingsStruct(
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        isinSeriesNo: deserializeParam(
          data['isinSeriesNo'],
          ParamType.String,
          false,
        ),
        assetClass: deserializeParam(
          data['assetClass'],
          ParamType.String,
          false,
        ),
        currentValue: deserializeParam(
          data['currentValue'],
          ParamType.String,
          false,
        ),
        initialAmount: deserializeParam(
          data['initialAmount'],
          ParamType.String,
          false,
        ),
        gainLoss: deserializeParam(
          data['gainLoss'],
          ParamType.String,
          false,
        ),
        gainLossPct: deserializeParam(
          data['gainLossPct'],
          ParamType.double,
          false,
        ),
        maturityDate: deserializeParam(
          data['maturityDate'],
          ParamType.String,
          false,
        ),
        rate: deserializeParam(
          data['rate'],
          ParamType.String,
          false,
        ),
        units: deserializeParam(
          data['units'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        hasValue: deserializeParam(
          data['hasValue'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'HoldingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HoldingsStruct &&
        productName == other.productName &&
        isinSeriesNo == other.isinSeriesNo &&
        assetClass == other.assetClass &&
        currentValue == other.currentValue &&
        initialAmount == other.initialAmount &&
        gainLoss == other.gainLoss &&
        gainLossPct == other.gainLossPct &&
        maturityDate == other.maturityDate &&
        rate == other.rate &&
        units == other.units &&
        currency == other.currency &&
        hasValue == other.hasValue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productName,
        isinSeriesNo,
        assetClass,
        currentValue,
        initialAmount,
        gainLoss,
        gainLossPct,
        maturityDate,
        rate,
        units,
        currency,
        hasValue
      ]);
}

HoldingsStruct createHoldingsStruct({
  String? productName,
  String? isinSeriesNo,
  String? assetClass,
  String? currentValue,
  String? initialAmount,
  String? gainLoss,
  double? gainLossPct,
  String? maturityDate,
  String? rate,
  String? units,
  String? currency,
  bool? hasValue,
}) =>
    HoldingsStruct(
      productName: productName,
      isinSeriesNo: isinSeriesNo,
      assetClass: assetClass,
      currentValue: currentValue,
      initialAmount: initialAmount,
      gainLoss: gainLoss,
      gainLossPct: gainLossPct,
      maturityDate: maturityDate,
      rate: rate,
      units: units,
      currency: currency,
      hasValue: hasValue,
    );
