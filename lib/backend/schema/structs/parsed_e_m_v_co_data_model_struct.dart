// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParsedEMVCoDataModelStruct extends BaseStruct {
  ParsedEMVCoDataModelStruct({
    String? payloadFormatIndicator,
    String? pointInitiationMethod,
    MerchantAccountInformation27Struct? merchantAccountInformation27,
    String? merchantCatergoryCode,
    String? transactionCurrencyCode,
    double? transactionAmount,
    String? countryCode,
    String? merchantName,
    String? merchantCity,
    String? merchantPostalCode,
    String? crc,
  })  : _payloadFormatIndicator = payloadFormatIndicator,
        _pointInitiationMethod = pointInitiationMethod,
        _merchantAccountInformation27 = merchantAccountInformation27,
        _merchantCatergoryCode = merchantCatergoryCode,
        _transactionCurrencyCode = transactionCurrencyCode,
        _transactionAmount = transactionAmount,
        _countryCode = countryCode,
        _merchantName = merchantName,
        _merchantCity = merchantCity,
        _merchantPostalCode = merchantPostalCode,
        _crc = crc;

  // "payload_format_indicator" field.
  String? _payloadFormatIndicator;
  String get payloadFormatIndicator => _payloadFormatIndicator ?? '';
  set payloadFormatIndicator(String? val) => _payloadFormatIndicator = val;

  bool hasPayloadFormatIndicator() => _payloadFormatIndicator != null;

  // "point_initiation_method" field.
  String? _pointInitiationMethod;
  String get pointInitiationMethod => _pointInitiationMethod ?? '';
  set pointInitiationMethod(String? val) => _pointInitiationMethod = val;

  bool hasPointInitiationMethod() => _pointInitiationMethod != null;

  // "merchant_account_information_27" field.
  MerchantAccountInformation27Struct? _merchantAccountInformation27;
  MerchantAccountInformation27Struct get merchantAccountInformation27 =>
      _merchantAccountInformation27 ?? MerchantAccountInformation27Struct();
  set merchantAccountInformation27(MerchantAccountInformation27Struct? val) =>
      _merchantAccountInformation27 = val;

  void updateMerchantAccountInformation27(
      Function(MerchantAccountInformation27Struct) updateFn) {
    updateFn(
        _merchantAccountInformation27 ??= MerchantAccountInformation27Struct());
  }

  bool hasMerchantAccountInformation27() =>
      _merchantAccountInformation27 != null;

  // "merchant_catergory_code" field.
  String? _merchantCatergoryCode;
  String get merchantCatergoryCode => _merchantCatergoryCode ?? '';
  set merchantCatergoryCode(String? val) => _merchantCatergoryCode = val;

  bool hasMerchantCatergoryCode() => _merchantCatergoryCode != null;

  // "transaction_currency_code" field.
  String? _transactionCurrencyCode;
  String get transactionCurrencyCode => _transactionCurrencyCode ?? '';
  set transactionCurrencyCode(String? val) => _transactionCurrencyCode = val;

  bool hasTransactionCurrencyCode() => _transactionCurrencyCode != null;

  // "transaction_amount" field.
  double? _transactionAmount;
  double get transactionAmount => _transactionAmount ?? 0.0;
  set transactionAmount(double? val) => _transactionAmount = val;

  void incrementTransactionAmount(double amount) =>
      transactionAmount = transactionAmount + amount;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "merchant_name" field.
  String? _merchantName;
  String get merchantName => _merchantName ?? '';
  set merchantName(String? val) => _merchantName = val;

  bool hasMerchantName() => _merchantName != null;

  // "merchant_city" field.
  String? _merchantCity;
  String get merchantCity => _merchantCity ?? '';
  set merchantCity(String? val) => _merchantCity = val;

  bool hasMerchantCity() => _merchantCity != null;

  // "merchant_postal_code" field.
  String? _merchantPostalCode;
  String get merchantPostalCode => _merchantPostalCode ?? '';
  set merchantPostalCode(String? val) => _merchantPostalCode = val;

  bool hasMerchantPostalCode() => _merchantPostalCode != null;

  // "crc" field.
  String? _crc;
  String get crc => _crc ?? '';
  set crc(String? val) => _crc = val;

  bool hasCrc() => _crc != null;

  static ParsedEMVCoDataModelStruct fromMap(Map<String, dynamic> data) =>
      ParsedEMVCoDataModelStruct(
        payloadFormatIndicator: data['payload_format_indicator'] as String?,
        pointInitiationMethod: data['point_initiation_method'] as String?,
        merchantAccountInformation27: data['merchant_account_information_27']
                is MerchantAccountInformation27Struct
            ? data['merchant_account_information_27']
            : MerchantAccountInformation27Struct.maybeFromMap(
                data['merchant_account_information_27']),
        merchantCatergoryCode: data['merchant_catergory_code'] as String?,
        transactionCurrencyCode: data['transaction_currency_code'] as String?,
        transactionAmount: castToType<double>(data['transaction_amount']),
        countryCode: data['country_code'] as String?,
        merchantName: data['merchant_name'] as String?,
        merchantCity: data['merchant_city'] as String?,
        merchantPostalCode: data['merchant_postal_code'] as String?,
        crc: data['crc'] as String?,
      );

  static ParsedEMVCoDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ParsedEMVCoDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'payload_format_indicator': _payloadFormatIndicator,
        'point_initiation_method': _pointInitiationMethod,
        'merchant_account_information_27':
            _merchantAccountInformation27?.toMap(),
        'merchant_catergory_code': _merchantCatergoryCode,
        'transaction_currency_code': _transactionCurrencyCode,
        'transaction_amount': _transactionAmount,
        'country_code': _countryCode,
        'merchant_name': _merchantName,
        'merchant_city': _merchantCity,
        'merchant_postal_code': _merchantPostalCode,
        'crc': _crc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'payload_format_indicator': serializeParam(
          _payloadFormatIndicator,
          ParamType.String,
        ),
        'point_initiation_method': serializeParam(
          _pointInitiationMethod,
          ParamType.String,
        ),
        'merchant_account_information_27': serializeParam(
          _merchantAccountInformation27,
          ParamType.DataStruct,
        ),
        'merchant_catergory_code': serializeParam(
          _merchantCatergoryCode,
          ParamType.String,
        ),
        'transaction_currency_code': serializeParam(
          _transactionCurrencyCode,
          ParamType.String,
        ),
        'transaction_amount': serializeParam(
          _transactionAmount,
          ParamType.double,
        ),
        'country_code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'merchant_name': serializeParam(
          _merchantName,
          ParamType.String,
        ),
        'merchant_city': serializeParam(
          _merchantCity,
          ParamType.String,
        ),
        'merchant_postal_code': serializeParam(
          _merchantPostalCode,
          ParamType.String,
        ),
        'crc': serializeParam(
          _crc,
          ParamType.String,
        ),
      }.withoutNulls;

  static ParsedEMVCoDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ParsedEMVCoDataModelStruct(
        payloadFormatIndicator: deserializeParam(
          data['payload_format_indicator'],
          ParamType.String,
          false,
        ),
        pointInitiationMethod: deserializeParam(
          data['point_initiation_method'],
          ParamType.String,
          false,
        ),
        merchantAccountInformation27: deserializeStructParam(
          data['merchant_account_information_27'],
          ParamType.DataStruct,
          false,
          structBuilder: MerchantAccountInformation27Struct.fromSerializableMap,
        ),
        merchantCatergoryCode: deserializeParam(
          data['merchant_catergory_code'],
          ParamType.String,
          false,
        ),
        transactionCurrencyCode: deserializeParam(
          data['transaction_currency_code'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transaction_amount'],
          ParamType.double,
          false,
        ),
        countryCode: deserializeParam(
          data['country_code'],
          ParamType.String,
          false,
        ),
        merchantName: deserializeParam(
          data['merchant_name'],
          ParamType.String,
          false,
        ),
        merchantCity: deserializeParam(
          data['merchant_city'],
          ParamType.String,
          false,
        ),
        merchantPostalCode: deserializeParam(
          data['merchant_postal_code'],
          ParamType.String,
          false,
        ),
        crc: deserializeParam(
          data['crc'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ParsedEMVCoDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParsedEMVCoDataModelStruct &&
        payloadFormatIndicator == other.payloadFormatIndicator &&
        pointInitiationMethod == other.pointInitiationMethod &&
        merchantAccountInformation27 == other.merchantAccountInformation27 &&
        merchantCatergoryCode == other.merchantCatergoryCode &&
        transactionCurrencyCode == other.transactionCurrencyCode &&
        transactionAmount == other.transactionAmount &&
        countryCode == other.countryCode &&
        merchantName == other.merchantName &&
        merchantCity == other.merchantCity &&
        merchantPostalCode == other.merchantPostalCode &&
        crc == other.crc;
  }

  @override
  int get hashCode => const ListEquality().hash([
        payloadFormatIndicator,
        pointInitiationMethod,
        merchantAccountInformation27,
        merchantCatergoryCode,
        transactionCurrencyCode,
        transactionAmount,
        countryCode,
        merchantName,
        merchantCity,
        merchantPostalCode,
        crc
      ]);
}

ParsedEMVCoDataModelStruct createParsedEMVCoDataModelStruct({
  String? payloadFormatIndicator,
  String? pointInitiationMethod,
  MerchantAccountInformation27Struct? merchantAccountInformation27,
  String? merchantCatergoryCode,
  String? transactionCurrencyCode,
  double? transactionAmount,
  String? countryCode,
  String? merchantName,
  String? merchantCity,
  String? merchantPostalCode,
  String? crc,
}) =>
    ParsedEMVCoDataModelStruct(
      payloadFormatIndicator: payloadFormatIndicator,
      pointInitiationMethod: pointInitiationMethod,
      merchantAccountInformation27:
          merchantAccountInformation27 ?? MerchantAccountInformation27Struct(),
      merchantCatergoryCode: merchantCatergoryCode,
      transactionCurrencyCode: transactionCurrencyCode,
      transactionAmount: transactionAmount,
      countryCode: countryCode,
      merchantName: merchantName,
      merchantCity: merchantCity,
      merchantPostalCode: merchantPostalCode,
      crc: crc,
    );
