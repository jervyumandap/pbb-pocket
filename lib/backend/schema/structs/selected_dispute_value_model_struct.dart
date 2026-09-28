// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedDisputeValueModelStruct extends BaseStruct {
  SelectedDisputeValueModelStruct({
    String? category,
    String? accountNumber,
    String? transactionType,
  })  : _category = category,
        _accountNumber = accountNumber,
        _transactionType = transactionType;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  static SelectedDisputeValueModelStruct fromMap(Map<String, dynamic> data) =>
      SelectedDisputeValueModelStruct(
        category: data['category'] as String?,
        accountNumber: data['accountNumber'] as String?,
        transactionType: data['transactionType'] as String?,
      );

  static SelectedDisputeValueModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? SelectedDisputeValueModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'accountNumber': _accountNumber,
        'transactionType': _transactionType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'transactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelectedDisputeValueModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SelectedDisputeValueModelStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['transactionType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelectedDisputeValueModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedDisputeValueModelStruct &&
        category == other.category &&
        accountNumber == other.accountNumber &&
        transactionType == other.transactionType;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([category, accountNumber, transactionType]);
}

SelectedDisputeValueModelStruct createSelectedDisputeValueModelStruct({
  String? category,
  String? accountNumber,
  String? transactionType,
}) =>
    SelectedDisputeValueModelStruct(
      category: category,
      accountNumber: accountNumber,
      transactionType: transactionType,
    );
