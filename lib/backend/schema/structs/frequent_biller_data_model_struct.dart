// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FrequentBillerDataModelStruct extends BaseStruct {
  FrequentBillerDataModelStruct({
    int? id,
    String? name,
    String? billerName,
    String? code,
    String? serviceId,
    String? accountNumber,
    List<FrequentBillerFieldStruct>? fields,
    String? createdBy,
    String? createdDate,
    AccountsV2Struct? accounts,
    String? shortName,
    String? category,
    String? currency,
  })  : _id = id,
        _name = name,
        _billerName = billerName,
        _code = code,
        _serviceId = serviceId,
        _accountNumber = accountNumber,
        _fields = fields,
        _createdBy = createdBy,
        _createdDate = createdDate,
        _accounts = accounts,
        _shortName = shortName,
        _category = category,
        _currency = currency;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "billerName" field.
  String? _billerName;
  String get billerName => _billerName ?? '';
  set billerName(String? val) => _billerName = val;

  bool hasBillerName() => _billerName != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "serviceId" field.
  String? _serviceId;
  String get serviceId => _serviceId ?? '';
  set serviceId(String? val) => _serviceId = val;

  bool hasServiceId() => _serviceId != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "fields" field.
  List<FrequentBillerFieldStruct>? _fields;
  List<FrequentBillerFieldStruct> get fields => _fields ?? const [];
  set fields(List<FrequentBillerFieldStruct>? val) => _fields = val;

  void updateFields(Function(List<FrequentBillerFieldStruct>) updateFn) {
    updateFn(_fields ??= []);
  }

  bool hasFields() => _fields != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "createdDate" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "accounts" field.
  AccountsV2Struct? _accounts;
  AccountsV2Struct get accounts => _accounts ?? AccountsV2Struct();
  set accounts(AccountsV2Struct? val) => _accounts = val;

  void updateAccounts(Function(AccountsV2Struct) updateFn) {
    updateFn(_accounts ??= AccountsV2Struct());
  }

  bool hasAccounts() => _accounts != null;

  // "shortName" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  set shortName(String? val) => _shortName = val;

  bool hasShortName() => _shortName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  static FrequentBillerDataModelStruct fromMap(Map<String, dynamic> data) =>
      FrequentBillerDataModelStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        billerName: data['billerName'] as String?,
        code: data['code'] as String?,
        serviceId: data['serviceId'] as String?,
        accountNumber: data['accountNumber'] as String?,
        fields: getStructList(
          data['fields'],
          FrequentBillerFieldStruct.fromMap,
        ),
        createdBy: data['createdBy'] as String?,
        createdDate: data['createdDate'] as String?,
        accounts: data['accounts'] is AccountsV2Struct
            ? data['accounts']
            : AccountsV2Struct.maybeFromMap(data['accounts']),
        shortName: data['shortName'] as String?,
        category: data['category'] as String?,
        currency: data['currency'] as String?,
      );

  static FrequentBillerDataModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FrequentBillerDataModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'billerName': _billerName,
        'code': _code,
        'serviceId': _serviceId,
        'accountNumber': _accountNumber,
        'fields': _fields?.map((e) => e.toMap()).toList(),
        'createdBy': _createdBy,
        'createdDate': _createdDate,
        'accounts': _accounts?.toMap(),
        'shortName': _shortName,
        'category': _category,
        'currency': _currency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'billerName': serializeParam(
          _billerName,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'serviceId': serializeParam(
          _serviceId,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'fields': serializeParam(
          _fields,
          ParamType.DataStruct,
          isList: true,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'createdDate': serializeParam(
          _createdDate,
          ParamType.String,
        ),
        'accounts': serializeParam(
          _accounts,
          ParamType.DataStruct,
        ),
        'shortName': serializeParam(
          _shortName,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
      }.withoutNulls;

  static FrequentBillerDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FrequentBillerDataModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        billerName: deserializeParam(
          data['billerName'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        serviceId: deserializeParam(
          data['serviceId'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        fields: deserializeStructParam<FrequentBillerFieldStruct>(
          data['fields'],
          ParamType.DataStruct,
          true,
          structBuilder: FrequentBillerFieldStruct.fromSerializableMap,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.String,
          false,
        ),
        accounts: deserializeStructParam(
          data['accounts'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountsV2Struct.fromSerializableMap,
        ),
        shortName: deserializeParam(
          data['shortName'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FrequentBillerDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FrequentBillerDataModelStruct &&
        id == other.id &&
        name == other.name &&
        billerName == other.billerName &&
        code == other.code &&
        serviceId == other.serviceId &&
        accountNumber == other.accountNumber &&
        listEquality.equals(fields, other.fields) &&
        createdBy == other.createdBy &&
        createdDate == other.createdDate &&
        accounts == other.accounts &&
        shortName == other.shortName &&
        category == other.category &&
        currency == other.currency;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        billerName,
        code,
        serviceId,
        accountNumber,
        fields,
        createdBy,
        createdDate,
        accounts,
        shortName,
        category,
        currency
      ]);
}

FrequentBillerDataModelStruct createFrequentBillerDataModelStruct({
  int? id,
  String? name,
  String? billerName,
  String? code,
  String? serviceId,
  String? accountNumber,
  String? createdBy,
  String? createdDate,
  AccountsV2Struct? accounts,
  String? shortName,
  String? category,
  String? currency,
}) =>
    FrequentBillerDataModelStruct(
      id: id,
      name: name,
      billerName: billerName,
      code: code,
      serviceId: serviceId,
      accountNumber: accountNumber,
      createdBy: createdBy,
      createdDate: createdDate,
      accounts: accounts ?? AccountsV2Struct(),
      shortName: shortName,
      category: category,
      currency: currency,
    );
