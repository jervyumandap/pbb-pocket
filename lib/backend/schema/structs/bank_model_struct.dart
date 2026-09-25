// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankModelStruct extends BaseStruct {
  BankModelStruct({
    String? bankCode,
    String? bankName,
    String? shortName,
    bool? supportsInstapay,
    bool? supportsPesonet,
    bool? isActive,
  })  : _bankCode = bankCode,
        _bankName = bankName,
        _shortName = shortName,
        _supportsInstapay = supportsInstapay,
        _supportsPesonet = supportsPesonet,
        _isActive = isActive;

  // "bankCode" field.
  String? _bankCode;
  String get bankCode => _bankCode ?? '';
  set bankCode(String? val) => _bankCode = val;

  bool hasBankCode() => _bankCode != null;

  // "bankName" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "shortName" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  set shortName(String? val) => _shortName = val;

  bool hasShortName() => _shortName != null;

  // "supportsInstapay" field.
  bool? _supportsInstapay;
  bool get supportsInstapay => _supportsInstapay ?? false;
  set supportsInstapay(bool? val) => _supportsInstapay = val;

  bool hasSupportsInstapay() => _supportsInstapay != null;

  // "supportsPesonet" field.
  bool? _supportsPesonet;
  bool get supportsPesonet => _supportsPesonet ?? false;
  set supportsPesonet(bool? val) => _supportsPesonet = val;

  bool hasSupportsPesonet() => _supportsPesonet != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  static BankModelStruct fromMap(Map<String, dynamic> data) => BankModelStruct(
        bankCode: data['bankCode'] as String?,
        bankName: data['bankName'] as String?,
        shortName: data['shortName'] as String?,
        supportsInstapay: data['supportsInstapay'] as bool?,
        supportsPesonet: data['supportsPesonet'] as bool?,
        isActive: data['isActive'] as bool?,
      );

  static BankModelStruct? maybeFromMap(dynamic data) => data is Map
      ? BankModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'bankCode': _bankCode,
        'bankName': _bankName,
        'shortName': _shortName,
        'supportsInstapay': _supportsInstapay,
        'supportsPesonet': _supportsPesonet,
        'isActive': _isActive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bankCode': serializeParam(
          _bankCode,
          ParamType.String,
        ),
        'bankName': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'shortName': serializeParam(
          _shortName,
          ParamType.String,
        ),
        'supportsInstapay': serializeParam(
          _supportsInstapay,
          ParamType.bool,
        ),
        'supportsPesonet': serializeParam(
          _supportsPesonet,
          ParamType.bool,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BankModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankModelStruct(
        bankCode: deserializeParam(
          data['bankCode'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['bankName'],
          ParamType.String,
          false,
        ),
        shortName: deserializeParam(
          data['shortName'],
          ParamType.String,
          false,
        ),
        supportsInstapay: deserializeParam(
          data['supportsInstapay'],
          ParamType.bool,
          false,
        ),
        supportsPesonet: deserializeParam(
          data['supportsPesonet'],
          ParamType.bool,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BankModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankModelStruct &&
        bankCode == other.bankCode &&
        bankName == other.bankName &&
        shortName == other.shortName &&
        supportsInstapay == other.supportsInstapay &&
        supportsPesonet == other.supportsPesonet &&
        isActive == other.isActive;
  }

  @override
  int get hashCode => const ListEquality().hash([
        bankCode,
        bankName,
        shortName,
        supportsInstapay,
        supportsPesonet,
        isActive
      ]);
}

BankModelStruct createBankModelStruct({
  String? bankCode,
  String? bankName,
  String? shortName,
  bool? supportsInstapay,
  bool? supportsPesonet,
  bool? isActive,
}) =>
    BankModelStruct(
      bankCode: bankCode,
      bankName: bankName,
      shortName: shortName,
      supportsInstapay: supportsInstapay,
      supportsPesonet: supportsPesonet,
      isActive: isActive,
    );
