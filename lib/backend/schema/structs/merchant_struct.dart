// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantStruct extends BaseStruct {
  MerchantStruct({
    String? merchantMcc,
    String? merchantId,
    String? merchantName,
    MerchantLocationStruct? merchantLocation,
  })  : _merchantMcc = merchantMcc,
        _merchantId = merchantId,
        _merchantName = merchantName,
        _merchantLocation = merchantLocation;

  // "MerchantMcc" field.
  String? _merchantMcc;
  String get merchantMcc => _merchantMcc ?? '';
  set merchantMcc(String? val) => _merchantMcc = val;

  bool hasMerchantMcc() => _merchantMcc != null;

  // "MerchantId" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  // "MerchantName" field.
  String? _merchantName;
  String get merchantName => _merchantName ?? '';
  set merchantName(String? val) => _merchantName = val;

  bool hasMerchantName() => _merchantName != null;

  // "MerchantLocation" field.
  MerchantLocationStruct? _merchantLocation;
  MerchantLocationStruct get merchantLocation =>
      _merchantLocation ?? MerchantLocationStruct();
  set merchantLocation(MerchantLocationStruct? val) => _merchantLocation = val;

  void updateMerchantLocation(Function(MerchantLocationStruct) updateFn) {
    updateFn(_merchantLocation ??= MerchantLocationStruct());
  }

  bool hasMerchantLocation() => _merchantLocation != null;

  static MerchantStruct fromMap(Map<String, dynamic> data) => MerchantStruct(
        merchantMcc: data['MerchantMcc'] as String?,
        merchantId: data['MerchantId'] as String?,
        merchantName: data['MerchantName'] as String?,
        merchantLocation: data['MerchantLocation'] is MerchantLocationStruct
            ? data['MerchantLocation']
            : MerchantLocationStruct.maybeFromMap(data['MerchantLocation']),
      );

  static MerchantStruct? maybeFromMap(dynamic data) =>
      data is Map ? MerchantStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'MerchantMcc': _merchantMcc,
        'MerchantId': _merchantId,
        'MerchantName': _merchantName,
        'MerchantLocation': _merchantLocation?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'MerchantMcc': serializeParam(
          _merchantMcc,
          ParamType.String,
        ),
        'MerchantId': serializeParam(
          _merchantId,
          ParamType.String,
        ),
        'MerchantName': serializeParam(
          _merchantName,
          ParamType.String,
        ),
        'MerchantLocation': serializeParam(
          _merchantLocation,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MerchantStruct fromSerializableMap(Map<String, dynamic> data) =>
      MerchantStruct(
        merchantMcc: deserializeParam(
          data['MerchantMcc'],
          ParamType.String,
          false,
        ),
        merchantId: deserializeParam(
          data['MerchantId'],
          ParamType.String,
          false,
        ),
        merchantName: deserializeParam(
          data['MerchantName'],
          ParamType.String,
          false,
        ),
        merchantLocation: deserializeStructParam(
          data['MerchantLocation'],
          ParamType.DataStruct,
          false,
          structBuilder: MerchantLocationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MerchantStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MerchantStruct &&
        merchantMcc == other.merchantMcc &&
        merchantId == other.merchantId &&
        merchantName == other.merchantName &&
        merchantLocation == other.merchantLocation;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([merchantMcc, merchantId, merchantName, merchantLocation]);
}

MerchantStruct createMerchantStruct({
  String? merchantMcc,
  String? merchantId,
  String? merchantName,
  MerchantLocationStruct? merchantLocation,
}) =>
    MerchantStruct(
      merchantMcc: merchantMcc,
      merchantId: merchantId,
      merchantName: merchantName,
      merchantLocation: merchantLocation ?? MerchantLocationStruct(),
    );
