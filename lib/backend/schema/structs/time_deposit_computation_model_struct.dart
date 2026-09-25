// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeDepositComputationModelStruct extends BaseStruct {
  TimeDepositComputationModelStruct({
    double? principal,
    double? grossInterest,
    double? withholdingTax,
    double? netInterest,
    double? maturityValue,
    String? displayPrincipal,
    String? displayRate,
    String? displayTerm,
    String? displayGrossInterest,
    String? displayWithholdingTax,
    String? displayNetInterest,
    String? displayMaturityValue,
    int? basis,
    String? currency,
    String? displayTermLong,
    String? displayMaturityDate,
    String? productCode,
    String? openingID,
  })  : _principal = principal,
        _grossInterest = grossInterest,
        _withholdingTax = withholdingTax,
        _netInterest = netInterest,
        _maturityValue = maturityValue,
        _displayPrincipal = displayPrincipal,
        _displayRate = displayRate,
        _displayTerm = displayTerm,
        _displayGrossInterest = displayGrossInterest,
        _displayWithholdingTax = displayWithholdingTax,
        _displayNetInterest = displayNetInterest,
        _displayMaturityValue = displayMaturityValue,
        _basis = basis,
        _currency = currency,
        _displayTermLong = displayTermLong,
        _displayMaturityDate = displayMaturityDate,
        _productCode = productCode,
        _openingID = openingID;

  // "principal" field.
  double? _principal;
  double get principal => _principal ?? 0.0;
  set principal(double? val) => _principal = val;

  void incrementPrincipal(double amount) => principal = principal + amount;

  bool hasPrincipal() => _principal != null;

  // "grossInterest" field.
  double? _grossInterest;
  double get grossInterest => _grossInterest ?? 0.0;
  set grossInterest(double? val) => _grossInterest = val;

  void incrementGrossInterest(double amount) =>
      grossInterest = grossInterest + amount;

  bool hasGrossInterest() => _grossInterest != null;

  // "withholdingTax" field.
  double? _withholdingTax;
  double get withholdingTax => _withholdingTax ?? 0.0;
  set withholdingTax(double? val) => _withholdingTax = val;

  void incrementWithholdingTax(double amount) =>
      withholdingTax = withholdingTax + amount;

  bool hasWithholdingTax() => _withholdingTax != null;

  // "netInterest" field.
  double? _netInterest;
  double get netInterest => _netInterest ?? 0.0;
  set netInterest(double? val) => _netInterest = val;

  void incrementNetInterest(double amount) =>
      netInterest = netInterest + amount;

  bool hasNetInterest() => _netInterest != null;

  // "maturityValue" field.
  double? _maturityValue;
  double get maturityValue => _maturityValue ?? 0.0;
  set maturityValue(double? val) => _maturityValue = val;

  void incrementMaturityValue(double amount) =>
      maturityValue = maturityValue + amount;

  bool hasMaturityValue() => _maturityValue != null;

  // "displayPrincipal" field.
  String? _displayPrincipal;
  String get displayPrincipal => _displayPrincipal ?? '';
  set displayPrincipal(String? val) => _displayPrincipal = val;

  bool hasDisplayPrincipal() => _displayPrincipal != null;

  // "displayRate" field.
  String? _displayRate;
  String get displayRate => _displayRate ?? '';
  set displayRate(String? val) => _displayRate = val;

  bool hasDisplayRate() => _displayRate != null;

  // "displayTerm" field.
  String? _displayTerm;
  String get displayTerm => _displayTerm ?? '';
  set displayTerm(String? val) => _displayTerm = val;

  bool hasDisplayTerm() => _displayTerm != null;

  // "displayGrossInterest" field.
  String? _displayGrossInterest;
  String get displayGrossInterest => _displayGrossInterest ?? '';
  set displayGrossInterest(String? val) => _displayGrossInterest = val;

  bool hasDisplayGrossInterest() => _displayGrossInterest != null;

  // "displayWithholdingTax" field.
  String? _displayWithholdingTax;
  String get displayWithholdingTax => _displayWithholdingTax ?? '';
  set displayWithholdingTax(String? val) => _displayWithholdingTax = val;

  bool hasDisplayWithholdingTax() => _displayWithholdingTax != null;

  // "displayNetInterest" field.
  String? _displayNetInterest;
  String get displayNetInterest => _displayNetInterest ?? '';
  set displayNetInterest(String? val) => _displayNetInterest = val;

  bool hasDisplayNetInterest() => _displayNetInterest != null;

  // "displayMaturityValue" field.
  String? _displayMaturityValue;
  String get displayMaturityValue => _displayMaturityValue ?? '';
  set displayMaturityValue(String? val) => _displayMaturityValue = val;

  bool hasDisplayMaturityValue() => _displayMaturityValue != null;

  // "basis" field.
  int? _basis;
  int get basis => _basis ?? 0;
  set basis(int? val) => _basis = val;

  void incrementBasis(int amount) => basis = basis + amount;

  bool hasBasis() => _basis != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "displayTermLong" field.
  String? _displayTermLong;
  String get displayTermLong => _displayTermLong ?? '';
  set displayTermLong(String? val) => _displayTermLong = val;

  bool hasDisplayTermLong() => _displayTermLong != null;

  // "displayMaturityDate" field.
  String? _displayMaturityDate;
  String get displayMaturityDate => _displayMaturityDate ?? '';
  set displayMaturityDate(String? val) => _displayMaturityDate = val;

  bool hasDisplayMaturityDate() => _displayMaturityDate != null;

  // "productCode" field.
  String? _productCode;
  String get productCode => _productCode ?? '';
  set productCode(String? val) => _productCode = val;

  bool hasProductCode() => _productCode != null;

  // "openingID" field.
  String? _openingID;
  String get openingID => _openingID ?? '';
  set openingID(String? val) => _openingID = val;

  bool hasOpeningID() => _openingID != null;

  static TimeDepositComputationModelStruct fromMap(Map<String, dynamic> data) =>
      TimeDepositComputationModelStruct(
        principal: castToType<double>(data['principal']),
        grossInterest: castToType<double>(data['grossInterest']),
        withholdingTax: castToType<double>(data['withholdingTax']),
        netInterest: castToType<double>(data['netInterest']),
        maturityValue: castToType<double>(data['maturityValue']),
        displayPrincipal: data['displayPrincipal'] as String?,
        displayRate: data['displayRate'] as String?,
        displayTerm: data['displayTerm'] as String?,
        displayGrossInterest: data['displayGrossInterest'] as String?,
        displayWithholdingTax: data['displayWithholdingTax'] as String?,
        displayNetInterest: data['displayNetInterest'] as String?,
        displayMaturityValue: data['displayMaturityValue'] as String?,
        basis: castToType<int>(data['basis']),
        currency: data['currency'] as String?,
        displayTermLong: data['displayTermLong'] as String?,
        displayMaturityDate: data['displayMaturityDate'] as String?,
        productCode: data['productCode'] as String?,
        openingID: data['openingID'] as String?,
      );

  static TimeDepositComputationModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? TimeDepositComputationModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'principal': _principal,
        'grossInterest': _grossInterest,
        'withholdingTax': _withholdingTax,
        'netInterest': _netInterest,
        'maturityValue': _maturityValue,
        'displayPrincipal': _displayPrincipal,
        'displayRate': _displayRate,
        'displayTerm': _displayTerm,
        'displayGrossInterest': _displayGrossInterest,
        'displayWithholdingTax': _displayWithholdingTax,
        'displayNetInterest': _displayNetInterest,
        'displayMaturityValue': _displayMaturityValue,
        'basis': _basis,
        'currency': _currency,
        'displayTermLong': _displayTermLong,
        'displayMaturityDate': _displayMaturityDate,
        'productCode': _productCode,
        'openingID': _openingID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'principal': serializeParam(
          _principal,
          ParamType.double,
        ),
        'grossInterest': serializeParam(
          _grossInterest,
          ParamType.double,
        ),
        'withholdingTax': serializeParam(
          _withholdingTax,
          ParamType.double,
        ),
        'netInterest': serializeParam(
          _netInterest,
          ParamType.double,
        ),
        'maturityValue': serializeParam(
          _maturityValue,
          ParamType.double,
        ),
        'displayPrincipal': serializeParam(
          _displayPrincipal,
          ParamType.String,
        ),
        'displayRate': serializeParam(
          _displayRate,
          ParamType.String,
        ),
        'displayTerm': serializeParam(
          _displayTerm,
          ParamType.String,
        ),
        'displayGrossInterest': serializeParam(
          _displayGrossInterest,
          ParamType.String,
        ),
        'displayWithholdingTax': serializeParam(
          _displayWithholdingTax,
          ParamType.String,
        ),
        'displayNetInterest': serializeParam(
          _displayNetInterest,
          ParamType.String,
        ),
        'displayMaturityValue': serializeParam(
          _displayMaturityValue,
          ParamType.String,
        ),
        'basis': serializeParam(
          _basis,
          ParamType.int,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'displayTermLong': serializeParam(
          _displayTermLong,
          ParamType.String,
        ),
        'displayMaturityDate': serializeParam(
          _displayMaturityDate,
          ParamType.String,
        ),
        'productCode': serializeParam(
          _productCode,
          ParamType.String,
        ),
        'openingID': serializeParam(
          _openingID,
          ParamType.String,
        ),
      }.withoutNulls;

  static TimeDepositComputationModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TimeDepositComputationModelStruct(
        principal: deserializeParam(
          data['principal'],
          ParamType.double,
          false,
        ),
        grossInterest: deserializeParam(
          data['grossInterest'],
          ParamType.double,
          false,
        ),
        withholdingTax: deserializeParam(
          data['withholdingTax'],
          ParamType.double,
          false,
        ),
        netInterest: deserializeParam(
          data['netInterest'],
          ParamType.double,
          false,
        ),
        maturityValue: deserializeParam(
          data['maturityValue'],
          ParamType.double,
          false,
        ),
        displayPrincipal: deserializeParam(
          data['displayPrincipal'],
          ParamType.String,
          false,
        ),
        displayRate: deserializeParam(
          data['displayRate'],
          ParamType.String,
          false,
        ),
        displayTerm: deserializeParam(
          data['displayTerm'],
          ParamType.String,
          false,
        ),
        displayGrossInterest: deserializeParam(
          data['displayGrossInterest'],
          ParamType.String,
          false,
        ),
        displayWithholdingTax: deserializeParam(
          data['displayWithholdingTax'],
          ParamType.String,
          false,
        ),
        displayNetInterest: deserializeParam(
          data['displayNetInterest'],
          ParamType.String,
          false,
        ),
        displayMaturityValue: deserializeParam(
          data['displayMaturityValue'],
          ParamType.String,
          false,
        ),
        basis: deserializeParam(
          data['basis'],
          ParamType.int,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        displayTermLong: deserializeParam(
          data['displayTermLong'],
          ParamType.String,
          false,
        ),
        displayMaturityDate: deserializeParam(
          data['displayMaturityDate'],
          ParamType.String,
          false,
        ),
        productCode: deserializeParam(
          data['productCode'],
          ParamType.String,
          false,
        ),
        openingID: deserializeParam(
          data['openingID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TimeDepositComputationModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeDepositComputationModelStruct &&
        principal == other.principal &&
        grossInterest == other.grossInterest &&
        withholdingTax == other.withholdingTax &&
        netInterest == other.netInterest &&
        maturityValue == other.maturityValue &&
        displayPrincipal == other.displayPrincipal &&
        displayRate == other.displayRate &&
        displayTerm == other.displayTerm &&
        displayGrossInterest == other.displayGrossInterest &&
        displayWithholdingTax == other.displayWithholdingTax &&
        displayNetInterest == other.displayNetInterest &&
        displayMaturityValue == other.displayMaturityValue &&
        basis == other.basis &&
        currency == other.currency &&
        displayTermLong == other.displayTermLong &&
        displayMaturityDate == other.displayMaturityDate &&
        productCode == other.productCode &&
        openingID == other.openingID;
  }

  @override
  int get hashCode => const ListEquality().hash([
        principal,
        grossInterest,
        withholdingTax,
        netInterest,
        maturityValue,
        displayPrincipal,
        displayRate,
        displayTerm,
        displayGrossInterest,
        displayWithholdingTax,
        displayNetInterest,
        displayMaturityValue,
        basis,
        currency,
        displayTermLong,
        displayMaturityDate,
        productCode,
        openingID
      ]);
}

TimeDepositComputationModelStruct createTimeDepositComputationModelStruct({
  double? principal,
  double? grossInterest,
  double? withholdingTax,
  double? netInterest,
  double? maturityValue,
  String? displayPrincipal,
  String? displayRate,
  String? displayTerm,
  String? displayGrossInterest,
  String? displayWithholdingTax,
  String? displayNetInterest,
  String? displayMaturityValue,
  int? basis,
  String? currency,
  String? displayTermLong,
  String? displayMaturityDate,
  String? productCode,
  String? openingID,
}) =>
    TimeDepositComputationModelStruct(
      principal: principal,
      grossInterest: grossInterest,
      withholdingTax: withholdingTax,
      netInterest: netInterest,
      maturityValue: maturityValue,
      displayPrincipal: displayPrincipal,
      displayRate: displayRate,
      displayTerm: displayTerm,
      displayGrossInterest: displayGrossInterest,
      displayWithholdingTax: displayWithholdingTax,
      displayNetInterest: displayNetInterest,
      displayMaturityValue: displayMaturityValue,
      basis: basis,
      currency: currency,
      displayTermLong: displayTermLong,
      displayMaturityDate: displayMaturityDate,
      productCode: productCode,
      openingID: openingID,
    );
