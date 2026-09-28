// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillerListInfoStruct extends BaseStruct {
  BillerListInfoStruct({
    String? id,
    String? billerCode,
    String? name,
    String? shortName,
    String? description,
    WBBillerCategoryStruct? category,
    String? accountNumberLabel,
    bool? supportsValidation,
    int? minAmount,
    int? maxAmount,
    int? convenienceFee,
    bool? isActive,
  })  : _id = id,
        _billerCode = billerCode,
        _name = name,
        _shortName = shortName,
        _description = description,
        _category = category,
        _accountNumberLabel = accountNumberLabel,
        _supportsValidation = supportsValidation,
        _minAmount = minAmount,
        _maxAmount = maxAmount,
        _convenienceFee = convenienceFee,
        _isActive = isActive;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "billerCode" field.
  String? _billerCode;
  String get billerCode => _billerCode ?? '';
  set billerCode(String? val) => _billerCode = val;

  bool hasBillerCode() => _billerCode != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "shortName" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  set shortName(String? val) => _shortName = val;

  bool hasShortName() => _shortName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "category" field.
  WBBillerCategoryStruct? _category;
  WBBillerCategoryStruct get category => _category ?? WBBillerCategoryStruct();
  set category(WBBillerCategoryStruct? val) => _category = val;

  void updateCategory(Function(WBBillerCategoryStruct) updateFn) {
    updateFn(_category ??= WBBillerCategoryStruct());
  }

  bool hasCategory() => _category != null;

  // "accountNumberLabel" field.
  String? _accountNumberLabel;
  String get accountNumberLabel => _accountNumberLabel ?? '';
  set accountNumberLabel(String? val) => _accountNumberLabel = val;

  bool hasAccountNumberLabel() => _accountNumberLabel != null;

  // "supportsValidation" field.
  bool? _supportsValidation;
  bool get supportsValidation => _supportsValidation ?? false;
  set supportsValidation(bool? val) => _supportsValidation = val;

  bool hasSupportsValidation() => _supportsValidation != null;

  // "minAmount" field.
  int? _minAmount;
  int get minAmount => _minAmount ?? 0;
  set minAmount(int? val) => _minAmount = val;

  void incrementMinAmount(int amount) => minAmount = minAmount + amount;

  bool hasMinAmount() => _minAmount != null;

  // "maxAmount" field.
  int? _maxAmount;
  int get maxAmount => _maxAmount ?? 0;
  set maxAmount(int? val) => _maxAmount = val;

  void incrementMaxAmount(int amount) => maxAmount = maxAmount + amount;

  bool hasMaxAmount() => _maxAmount != null;

  // "convenienceFee" field.
  int? _convenienceFee;
  int get convenienceFee => _convenienceFee ?? 0;
  set convenienceFee(int? val) => _convenienceFee = val;

  void incrementConvenienceFee(int amount) =>
      convenienceFee = convenienceFee + amount;

  bool hasConvenienceFee() => _convenienceFee != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  static BillerListInfoStruct fromMap(Map<String, dynamic> data) =>
      BillerListInfoStruct(
        id: data['id'] as String?,
        billerCode: data['billerCode'] as String?,
        name: data['name'] as String?,
        shortName: data['shortName'] as String?,
        description: data['description'] as String?,
        category: data['category'] is WBBillerCategoryStruct
            ? data['category']
            : WBBillerCategoryStruct.maybeFromMap(data['category']),
        accountNumberLabel: data['accountNumberLabel'] as String?,
        supportsValidation: data['supportsValidation'] as bool?,
        minAmount: castToType<int>(data['minAmount']),
        maxAmount: castToType<int>(data['maxAmount']),
        convenienceFee: castToType<int>(data['convenienceFee']),
        isActive: data['isActive'] as bool?,
      );

  static BillerListInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? BillerListInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'billerCode': _billerCode,
        'name': _name,
        'shortName': _shortName,
        'description': _description,
        'category': _category?.toMap(),
        'accountNumberLabel': _accountNumberLabel,
        'supportsValidation': _supportsValidation,
        'minAmount': _minAmount,
        'maxAmount': _maxAmount,
        'convenienceFee': _convenienceFee,
        'isActive': _isActive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'billerCode': serializeParam(
          _billerCode,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'shortName': serializeParam(
          _shortName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
        ),
        'accountNumberLabel': serializeParam(
          _accountNumberLabel,
          ParamType.String,
        ),
        'supportsValidation': serializeParam(
          _supportsValidation,
          ParamType.bool,
        ),
        'minAmount': serializeParam(
          _minAmount,
          ParamType.int,
        ),
        'maxAmount': serializeParam(
          _maxAmount,
          ParamType.int,
        ),
        'convenienceFee': serializeParam(
          _convenienceFee,
          ParamType.int,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BillerListInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillerListInfoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        billerCode: deserializeParam(
          data['billerCode'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        shortName: deserializeParam(
          data['shortName'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: WBBillerCategoryStruct.fromSerializableMap,
        ),
        accountNumberLabel: deserializeParam(
          data['accountNumberLabel'],
          ParamType.String,
          false,
        ),
        supportsValidation: deserializeParam(
          data['supportsValidation'],
          ParamType.bool,
          false,
        ),
        minAmount: deserializeParam(
          data['minAmount'],
          ParamType.int,
          false,
        ),
        maxAmount: deserializeParam(
          data['maxAmount'],
          ParamType.int,
          false,
        ),
        convenienceFee: deserializeParam(
          data['convenienceFee'],
          ParamType.int,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BillerListInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillerListInfoStruct &&
        id == other.id &&
        billerCode == other.billerCode &&
        name == other.name &&
        shortName == other.shortName &&
        description == other.description &&
        category == other.category &&
        accountNumberLabel == other.accountNumberLabel &&
        supportsValidation == other.supportsValidation &&
        minAmount == other.minAmount &&
        maxAmount == other.maxAmount &&
        convenienceFee == other.convenienceFee &&
        isActive == other.isActive;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        billerCode,
        name,
        shortName,
        description,
        category,
        accountNumberLabel,
        supportsValidation,
        minAmount,
        maxAmount,
        convenienceFee,
        isActive
      ]);
}

BillerListInfoStruct createBillerListInfoStruct({
  String? id,
  String? billerCode,
  String? name,
  String? shortName,
  String? description,
  WBBillerCategoryStruct? category,
  String? accountNumberLabel,
  bool? supportsValidation,
  int? minAmount,
  int? maxAmount,
  int? convenienceFee,
  bool? isActive,
}) =>
    BillerListInfoStruct(
      id: id,
      billerCode: billerCode,
      name: name,
      shortName: shortName,
      description: description,
      category: category ?? WBBillerCategoryStruct(),
      accountNumberLabel: accountNumberLabel,
      supportsValidation: supportsValidation,
      minAmount: minAmount,
      maxAmount: maxAmount,
      convenienceFee: convenienceFee,
      isActive: isActive,
    );
