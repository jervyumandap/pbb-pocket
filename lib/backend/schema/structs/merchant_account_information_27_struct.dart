// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantAccountInformation27Struct extends BaseStruct {
  MerchantAccountInformation27Struct({
    String? globalUniqueIdentifier,
    String? merchantPan,
    String? merchantId,
    String? merchantCriteria,
    String? merchantPrincipalMastercard,
  })  : _globalUniqueIdentifier = globalUniqueIdentifier,
        _merchantPan = merchantPan,
        _merchantId = merchantId,
        _merchantCriteria = merchantCriteria,
        _merchantPrincipalMastercard = merchantPrincipalMastercard;

  // "global_unique_identifier" field.
  String? _globalUniqueIdentifier;
  String get globalUniqueIdentifier => _globalUniqueIdentifier ?? '';
  set globalUniqueIdentifier(String? val) => _globalUniqueIdentifier = val;

  bool hasGlobalUniqueIdentifier() => _globalUniqueIdentifier != null;

  // "merchant_pan" field.
  String? _merchantPan;
  String get merchantPan => _merchantPan ?? '';
  set merchantPan(String? val) => _merchantPan = val;

  bool hasMerchantPan() => _merchantPan != null;

  // "merchant_id" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  // "merchant_criteria" field.
  String? _merchantCriteria;
  String get merchantCriteria => _merchantCriteria ?? '';
  set merchantCriteria(String? val) => _merchantCriteria = val;

  bool hasMerchantCriteria() => _merchantCriteria != null;

  // "merchant_principal_mastercard" field.
  String? _merchantPrincipalMastercard;
  String get merchantPrincipalMastercard => _merchantPrincipalMastercard ?? '';
  set merchantPrincipalMastercard(String? val) =>
      _merchantPrincipalMastercard = val;

  bool hasMerchantPrincipalMastercard() => _merchantPrincipalMastercard != null;

  static MerchantAccountInformation27Struct fromMap(
          Map<String, dynamic> data) =>
      MerchantAccountInformation27Struct(
        globalUniqueIdentifier: data['global_unique_identifier'] as String?,
        merchantPan: data['merchant_pan'] as String?,
        merchantId: data['merchant_id'] as String?,
        merchantCriteria: data['merchant_criteria'] as String?,
        merchantPrincipalMastercard:
            data['merchant_principal_mastercard'] as String?,
      );

  static MerchantAccountInformation27Struct? maybeFromMap(dynamic data) => data
          is Map
      ? MerchantAccountInformation27Struct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'global_unique_identifier': _globalUniqueIdentifier,
        'merchant_pan': _merchantPan,
        'merchant_id': _merchantId,
        'merchant_criteria': _merchantCriteria,
        'merchant_principal_mastercard': _merchantPrincipalMastercard,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'global_unique_identifier': serializeParam(
          _globalUniqueIdentifier,
          ParamType.String,
        ),
        'merchant_pan': serializeParam(
          _merchantPan,
          ParamType.String,
        ),
        'merchant_id': serializeParam(
          _merchantId,
          ParamType.String,
        ),
        'merchant_criteria': serializeParam(
          _merchantCriteria,
          ParamType.String,
        ),
        'merchant_principal_mastercard': serializeParam(
          _merchantPrincipalMastercard,
          ParamType.String,
        ),
      }.withoutNulls;

  static MerchantAccountInformation27Struct fromSerializableMap(
          Map<String, dynamic> data) =>
      MerchantAccountInformation27Struct(
        globalUniqueIdentifier: deserializeParam(
          data['global_unique_identifier'],
          ParamType.String,
          false,
        ),
        merchantPan: deserializeParam(
          data['merchant_pan'],
          ParamType.String,
          false,
        ),
        merchantId: deserializeParam(
          data['merchant_id'],
          ParamType.String,
          false,
        ),
        merchantCriteria: deserializeParam(
          data['merchant_criteria'],
          ParamType.String,
          false,
        ),
        merchantPrincipalMastercard: deserializeParam(
          data['merchant_principal_mastercard'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MerchantAccountInformation27Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MerchantAccountInformation27Struct &&
        globalUniqueIdentifier == other.globalUniqueIdentifier &&
        merchantPan == other.merchantPan &&
        merchantId == other.merchantId &&
        merchantCriteria == other.merchantCriteria &&
        merchantPrincipalMastercard == other.merchantPrincipalMastercard;
  }

  @override
  int get hashCode => const ListEquality().hash([
        globalUniqueIdentifier,
        merchantPan,
        merchantId,
        merchantCriteria,
        merchantPrincipalMastercard
      ]);
}

MerchantAccountInformation27Struct createMerchantAccountInformation27Struct({
  String? globalUniqueIdentifier,
  String? merchantPan,
  String? merchantId,
  String? merchantCriteria,
  String? merchantPrincipalMastercard,
}) =>
    MerchantAccountInformation27Struct(
      globalUniqueIdentifier: globalUniqueIdentifier,
      merchantPan: merchantPan,
      merchantId: merchantId,
      merchantCriteria: merchantCriteria,
      merchantPrincipalMastercard: merchantPrincipalMastercard,
    );
