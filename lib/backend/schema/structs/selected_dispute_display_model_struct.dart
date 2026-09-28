// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedDisputeDisplayModelStruct extends BaseStruct {
  SelectedDisputeDisplayModelStruct({
    String? issue,
    String? accountName,
    String? transactionTypeName,
  })  : _issue = issue,
        _accountName = accountName,
        _transactionTypeName = transactionTypeName;

  // "issue" field.
  String? _issue;
  String get issue => _issue ?? '';
  set issue(String? val) => _issue = val;

  bool hasIssue() => _issue != null;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "transactionTypeName" field.
  String? _transactionTypeName;
  String get transactionTypeName => _transactionTypeName ?? '';
  set transactionTypeName(String? val) => _transactionTypeName = val;

  bool hasTransactionTypeName() => _transactionTypeName != null;

  static SelectedDisputeDisplayModelStruct fromMap(Map<String, dynamic> data) =>
      SelectedDisputeDisplayModelStruct(
        issue: data['issue'] as String?,
        accountName: data['accountName'] as String?,
        transactionTypeName: data['transactionTypeName'] as String?,
      );

  static SelectedDisputeDisplayModelStruct? maybeFromMap(dynamic data) => data
          is Map
      ? SelectedDisputeDisplayModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'issue': _issue,
        'accountName': _accountName,
        'transactionTypeName': _transactionTypeName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'issue': serializeParam(
          _issue,
          ParamType.String,
        ),
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'transactionTypeName': serializeParam(
          _transactionTypeName,
          ParamType.String,
        ),
      }.withoutNulls;

  static SelectedDisputeDisplayModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SelectedDisputeDisplayModelStruct(
        issue: deserializeParam(
          data['issue'],
          ParamType.String,
          false,
        ),
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        transactionTypeName: deserializeParam(
          data['transactionTypeName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SelectedDisputeDisplayModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelectedDisputeDisplayModelStruct &&
        issue == other.issue &&
        accountName == other.accountName &&
        transactionTypeName == other.transactionTypeName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([issue, accountName, transactionTypeName]);
}

SelectedDisputeDisplayModelStruct createSelectedDisputeDisplayModelStruct({
  String? issue,
  String? accountName,
  String? transactionTypeName,
}) =>
    SelectedDisputeDisplayModelStruct(
      issue: issue,
      accountName: accountName,
      transactionTypeName: transactionTypeName,
    );
