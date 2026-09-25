// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LimitsStruct extends BaseStruct {
  LimitsStruct({
    String? typeKey,
    String? displayName,
    String? category,
    bool? isCustomizable,
    BankLimitsStruct? bankLimits,
    CustomerLimitsStruct? customerLimits,
    EffectiveStruct? effective,
    bool? isCustomized,
    bool? isMaxedInvalid,
    bool? isDailyInvalid,
  })  : _typeKey = typeKey,
        _displayName = displayName,
        _category = category,
        _isCustomizable = isCustomizable,
        _bankLimits = bankLimits,
        _customerLimits = customerLimits,
        _effective = effective,
        _isCustomized = isCustomized,
        _isMaxedInvalid = isMaxedInvalid,
        _isDailyInvalid = isDailyInvalid;

  // "typeKey" field.
  String? _typeKey;
  String get typeKey => _typeKey ?? '';
  set typeKey(String? val) => _typeKey = val;

  bool hasTypeKey() => _typeKey != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "isCustomizable" field.
  bool? _isCustomizable;
  bool get isCustomizable => _isCustomizable ?? false;
  set isCustomizable(bool? val) => _isCustomizable = val;

  bool hasIsCustomizable() => _isCustomizable != null;

  // "bankLimits" field.
  BankLimitsStruct? _bankLimits;
  BankLimitsStruct get bankLimits => _bankLimits ?? BankLimitsStruct();
  set bankLimits(BankLimitsStruct? val) => _bankLimits = val;

  void updateBankLimits(Function(BankLimitsStruct) updateFn) {
    updateFn(_bankLimits ??= BankLimitsStruct());
  }

  bool hasBankLimits() => _bankLimits != null;

  // "customerLimits" field.
  CustomerLimitsStruct? _customerLimits;
  CustomerLimitsStruct get customerLimits =>
      _customerLimits ?? CustomerLimitsStruct();
  set customerLimits(CustomerLimitsStruct? val) => _customerLimits = val;

  void updateCustomerLimits(Function(CustomerLimitsStruct) updateFn) {
    updateFn(_customerLimits ??= CustomerLimitsStruct());
  }

  bool hasCustomerLimits() => _customerLimits != null;

  // "effective" field.
  EffectiveStruct? _effective;
  EffectiveStruct get effective => _effective ?? EffectiveStruct();
  set effective(EffectiveStruct? val) => _effective = val;

  void updateEffective(Function(EffectiveStruct) updateFn) {
    updateFn(_effective ??= EffectiveStruct());
  }

  bool hasEffective() => _effective != null;

  // "isCustomized" field.
  bool? _isCustomized;
  bool get isCustomized => _isCustomized ?? false;
  set isCustomized(bool? val) => _isCustomized = val;

  bool hasIsCustomized() => _isCustomized != null;

  // "isMaxedInvalid" field.
  bool? _isMaxedInvalid;
  bool get isMaxedInvalid => _isMaxedInvalid ?? false;
  set isMaxedInvalid(bool? val) => _isMaxedInvalid = val;

  bool hasIsMaxedInvalid() => _isMaxedInvalid != null;

  // "isDailyInvalid" field.
  bool? _isDailyInvalid;
  bool get isDailyInvalid => _isDailyInvalid ?? false;
  set isDailyInvalid(bool? val) => _isDailyInvalid = val;

  bool hasIsDailyInvalid() => _isDailyInvalid != null;

  static LimitsStruct fromMap(Map<String, dynamic> data) => LimitsStruct(
        typeKey: data['typeKey'] as String?,
        displayName: data['displayName'] as String?,
        category: data['category'] as String?,
        isCustomizable: data['isCustomizable'] as bool?,
        bankLimits: data['bankLimits'] is BankLimitsStruct
            ? data['bankLimits']
            : BankLimitsStruct.maybeFromMap(data['bankLimits']),
        customerLimits: data['customerLimits'] is CustomerLimitsStruct
            ? data['customerLimits']
            : CustomerLimitsStruct.maybeFromMap(data['customerLimits']),
        effective: data['effective'] is EffectiveStruct
            ? data['effective']
            : EffectiveStruct.maybeFromMap(data['effective']),
        isCustomized: data['isCustomized'] as bool?,
        isMaxedInvalid: data['isMaxedInvalid'] as bool?,
        isDailyInvalid: data['isDailyInvalid'] as bool?,
      );

  static LimitsStruct? maybeFromMap(dynamic data) =>
      data is Map ? LimitsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'typeKey': _typeKey,
        'displayName': _displayName,
        'category': _category,
        'isCustomizable': _isCustomizable,
        'bankLimits': _bankLimits?.toMap(),
        'customerLimits': _customerLimits?.toMap(),
        'effective': _effective?.toMap(),
        'isCustomized': _isCustomized,
        'isMaxedInvalid': _isMaxedInvalid,
        'isDailyInvalid': _isDailyInvalid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'typeKey': serializeParam(
          _typeKey,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'isCustomizable': serializeParam(
          _isCustomizable,
          ParamType.bool,
        ),
        'bankLimits': serializeParam(
          _bankLimits,
          ParamType.DataStruct,
        ),
        'customerLimits': serializeParam(
          _customerLimits,
          ParamType.DataStruct,
        ),
        'effective': serializeParam(
          _effective,
          ParamType.DataStruct,
        ),
        'isCustomized': serializeParam(
          _isCustomized,
          ParamType.bool,
        ),
        'isMaxedInvalid': serializeParam(
          _isMaxedInvalid,
          ParamType.bool,
        ),
        'isDailyInvalid': serializeParam(
          _isDailyInvalid,
          ParamType.bool,
        ),
      }.withoutNulls;

  static LimitsStruct fromSerializableMap(Map<String, dynamic> data) =>
      LimitsStruct(
        typeKey: deserializeParam(
          data['typeKey'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        isCustomizable: deserializeParam(
          data['isCustomizable'],
          ParamType.bool,
          false,
        ),
        bankLimits: deserializeStructParam(
          data['bankLimits'],
          ParamType.DataStruct,
          false,
          structBuilder: BankLimitsStruct.fromSerializableMap,
        ),
        customerLimits: deserializeStructParam(
          data['customerLimits'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerLimitsStruct.fromSerializableMap,
        ),
        effective: deserializeStructParam(
          data['effective'],
          ParamType.DataStruct,
          false,
          structBuilder: EffectiveStruct.fromSerializableMap,
        ),
        isCustomized: deserializeParam(
          data['isCustomized'],
          ParamType.bool,
          false,
        ),
        isMaxedInvalid: deserializeParam(
          data['isMaxedInvalid'],
          ParamType.bool,
          false,
        ),
        isDailyInvalid: deserializeParam(
          data['isDailyInvalid'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'LimitsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LimitsStruct &&
        typeKey == other.typeKey &&
        displayName == other.displayName &&
        category == other.category &&
        isCustomizable == other.isCustomizable &&
        bankLimits == other.bankLimits &&
        customerLimits == other.customerLimits &&
        effective == other.effective &&
        isCustomized == other.isCustomized &&
        isMaxedInvalid == other.isMaxedInvalid &&
        isDailyInvalid == other.isDailyInvalid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        typeKey,
        displayName,
        category,
        isCustomizable,
        bankLimits,
        customerLimits,
        effective,
        isCustomized,
        isMaxedInvalid,
        isDailyInvalid
      ]);
}

LimitsStruct createLimitsStruct({
  String? typeKey,
  String? displayName,
  String? category,
  bool? isCustomizable,
  BankLimitsStruct? bankLimits,
  CustomerLimitsStruct? customerLimits,
  EffectiveStruct? effective,
  bool? isCustomized,
  bool? isMaxedInvalid,
  bool? isDailyInvalid,
}) =>
    LimitsStruct(
      typeKey: typeKey,
      displayName: displayName,
      category: category,
      isCustomizable: isCustomizable,
      bankLimits: bankLimits ?? BankLimitsStruct(),
      customerLimits: customerLimits ?? CustomerLimitsStruct(),
      effective: effective ?? EffectiveStruct(),
      isCustomized: isCustomized,
      isMaxedInvalid: isMaxedInvalid,
      isDailyInvalid: isDailyInvalid,
    );
