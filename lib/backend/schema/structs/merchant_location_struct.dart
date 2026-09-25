// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantLocationStruct extends BaseStruct {
  MerchantLocationStruct({
    String? merchantAdrLine1,
    String? merchantCity,
    String? merchantAdrState,
    String? merchantPostalCode,
    String? merchantCtry,
    String? merchantLatitude,
    String? merchantLongitude,
  })  : _merchantAdrLine1 = merchantAdrLine1,
        _merchantCity = merchantCity,
        _merchantAdrState = merchantAdrState,
        _merchantPostalCode = merchantPostalCode,
        _merchantCtry = merchantCtry,
        _merchantLatitude = merchantLatitude,
        _merchantLongitude = merchantLongitude;

  // "MerchantAdrLine1" field.
  String? _merchantAdrLine1;
  String get merchantAdrLine1 => _merchantAdrLine1 ?? '';
  set merchantAdrLine1(String? val) => _merchantAdrLine1 = val;

  bool hasMerchantAdrLine1() => _merchantAdrLine1 != null;

  // "MerchantCity" field.
  String? _merchantCity;
  String get merchantCity => _merchantCity ?? '';
  set merchantCity(String? val) => _merchantCity = val;

  bool hasMerchantCity() => _merchantCity != null;

  // "MerchantAdrState" field.
  String? _merchantAdrState;
  String get merchantAdrState => _merchantAdrState ?? '';
  set merchantAdrState(String? val) => _merchantAdrState = val;

  bool hasMerchantAdrState() => _merchantAdrState != null;

  // "MerchantPostalCode" field.
  String? _merchantPostalCode;
  String get merchantPostalCode => _merchantPostalCode ?? '';
  set merchantPostalCode(String? val) => _merchantPostalCode = val;

  bool hasMerchantPostalCode() => _merchantPostalCode != null;

  // "MerchantCtry" field.
  String? _merchantCtry;
  String get merchantCtry => _merchantCtry ?? '';
  set merchantCtry(String? val) => _merchantCtry = val;

  bool hasMerchantCtry() => _merchantCtry != null;

  // "MerchantLatitude" field.
  String? _merchantLatitude;
  String get merchantLatitude => _merchantLatitude ?? '';
  set merchantLatitude(String? val) => _merchantLatitude = val;

  bool hasMerchantLatitude() => _merchantLatitude != null;

  // "MerchantLongitude" field.
  String? _merchantLongitude;
  String get merchantLongitude => _merchantLongitude ?? '';
  set merchantLongitude(String? val) => _merchantLongitude = val;

  bool hasMerchantLongitude() => _merchantLongitude != null;

  static MerchantLocationStruct fromMap(Map<String, dynamic> data) =>
      MerchantLocationStruct(
        merchantAdrLine1: data['MerchantAdrLine1'] as String?,
        merchantCity: data['MerchantCity'] as String?,
        merchantAdrState: data['MerchantAdrState'] as String?,
        merchantPostalCode: data['MerchantPostalCode'] as String?,
        merchantCtry: data['MerchantCtry'] as String?,
        merchantLatitude: data['MerchantLatitude'] as String?,
        merchantLongitude: data['MerchantLongitude'] as String?,
      );

  static MerchantLocationStruct? maybeFromMap(dynamic data) => data is Map
      ? MerchantLocationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'MerchantAdrLine1': _merchantAdrLine1,
        'MerchantCity': _merchantCity,
        'MerchantAdrState': _merchantAdrState,
        'MerchantPostalCode': _merchantPostalCode,
        'MerchantCtry': _merchantCtry,
        'MerchantLatitude': _merchantLatitude,
        'MerchantLongitude': _merchantLongitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'MerchantAdrLine1': serializeParam(
          _merchantAdrLine1,
          ParamType.String,
        ),
        'MerchantCity': serializeParam(
          _merchantCity,
          ParamType.String,
        ),
        'MerchantAdrState': serializeParam(
          _merchantAdrState,
          ParamType.String,
        ),
        'MerchantPostalCode': serializeParam(
          _merchantPostalCode,
          ParamType.String,
        ),
        'MerchantCtry': serializeParam(
          _merchantCtry,
          ParamType.String,
        ),
        'MerchantLatitude': serializeParam(
          _merchantLatitude,
          ParamType.String,
        ),
        'MerchantLongitude': serializeParam(
          _merchantLongitude,
          ParamType.String,
        ),
      }.withoutNulls;

  static MerchantLocationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MerchantLocationStruct(
        merchantAdrLine1: deserializeParam(
          data['MerchantAdrLine1'],
          ParamType.String,
          false,
        ),
        merchantCity: deserializeParam(
          data['MerchantCity'],
          ParamType.String,
          false,
        ),
        merchantAdrState: deserializeParam(
          data['MerchantAdrState'],
          ParamType.String,
          false,
        ),
        merchantPostalCode: deserializeParam(
          data['MerchantPostalCode'],
          ParamType.String,
          false,
        ),
        merchantCtry: deserializeParam(
          data['MerchantCtry'],
          ParamType.String,
          false,
        ),
        merchantLatitude: deserializeParam(
          data['MerchantLatitude'],
          ParamType.String,
          false,
        ),
        merchantLongitude: deserializeParam(
          data['MerchantLongitude'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MerchantLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MerchantLocationStruct &&
        merchantAdrLine1 == other.merchantAdrLine1 &&
        merchantCity == other.merchantCity &&
        merchantAdrState == other.merchantAdrState &&
        merchantPostalCode == other.merchantPostalCode &&
        merchantCtry == other.merchantCtry &&
        merchantLatitude == other.merchantLatitude &&
        merchantLongitude == other.merchantLongitude;
  }

  @override
  int get hashCode => const ListEquality().hash([
        merchantAdrLine1,
        merchantCity,
        merchantAdrState,
        merchantPostalCode,
        merchantCtry,
        merchantLatitude,
        merchantLongitude
      ]);
}

MerchantLocationStruct createMerchantLocationStruct({
  String? merchantAdrLine1,
  String? merchantCity,
  String? merchantAdrState,
  String? merchantPostalCode,
  String? merchantCtry,
  String? merchantLatitude,
  String? merchantLongitude,
}) =>
    MerchantLocationStruct(
      merchantAdrLine1: merchantAdrLine1,
      merchantCity: merchantCity,
      merchantAdrState: merchantAdrState,
      merchantPostalCode: merchantPostalCode,
      merchantCtry: merchantCtry,
      merchantLatitude: merchantLatitude,
      merchantLongitude: merchantLongitude,
    );
