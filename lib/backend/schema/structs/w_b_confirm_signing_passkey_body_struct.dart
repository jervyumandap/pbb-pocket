// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBConfirmSigningPasskeyBodyStruct extends BaseStruct {
  WBConfirmSigningPasskeyBodyStruct({
    String? method,
    String? operationId,
    String? stepupToken,
    String? transactionHash,
    String? openingId,
  })  : _method = method,
        _operationId = operationId,
        _stepupToken = stepupToken,
        _transactionHash = transactionHash,
        _openingId = openingId;

  // "method" field.
  String? _method;
  String get method => _method ?? '';
  set method(String? val) => _method = val;

  bool hasMethod() => _method != null;

  // "operationId" field.
  String? _operationId;
  String get operationId => _operationId ?? '';
  set operationId(String? val) => _operationId = val;

  bool hasOperationId() => _operationId != null;

  // "stepupToken" field.
  String? _stepupToken;
  String get stepupToken => _stepupToken ?? '';
  set stepupToken(String? val) => _stepupToken = val;

  bool hasStepupToken() => _stepupToken != null;

  // "transactionHash" field.
  String? _transactionHash;
  String get transactionHash => _transactionHash ?? '';
  set transactionHash(String? val) => _transactionHash = val;

  bool hasTransactionHash() => _transactionHash != null;

  // "openingId" field.
  String? _openingId;
  String get openingId => _openingId ?? '';
  set openingId(String? val) => _openingId = val;

  bool hasOpeningId() => _openingId != null;

  static WBConfirmSigningPasskeyBodyStruct fromMap(Map<String, dynamic> data) =>
      WBConfirmSigningPasskeyBodyStruct(
        method: data['method'] as String?,
        operationId: data['operationId'] as String?,
        stepupToken: data['stepupToken'] as String?,
        transactionHash: data['transactionHash'] as String?,
        openingId: data['openingId'] as String?,
      );

  static WBConfirmSigningPasskeyBodyStruct? maybeFromMap(dynamic data) => data
          is Map
      ? WBConfirmSigningPasskeyBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'method': _method,
        'operationId': _operationId,
        'stepupToken': _stepupToken,
        'transactionHash': _transactionHash,
        'openingId': _openingId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'method': serializeParam(
          _method,
          ParamType.String,
        ),
        'operationId': serializeParam(
          _operationId,
          ParamType.String,
        ),
        'stepupToken': serializeParam(
          _stepupToken,
          ParamType.String,
        ),
        'transactionHash': serializeParam(
          _transactionHash,
          ParamType.String,
        ),
        'openingId': serializeParam(
          _openingId,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBConfirmSigningPasskeyBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBConfirmSigningPasskeyBodyStruct(
        method: deserializeParam(
          data['method'],
          ParamType.String,
          false,
        ),
        operationId: deserializeParam(
          data['operationId'],
          ParamType.String,
          false,
        ),
        stepupToken: deserializeParam(
          data['stepupToken'],
          ParamType.String,
          false,
        ),
        transactionHash: deserializeParam(
          data['transactionHash'],
          ParamType.String,
          false,
        ),
        openingId: deserializeParam(
          data['openingId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBConfirmSigningPasskeyBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBConfirmSigningPasskeyBodyStruct &&
        method == other.method &&
        operationId == other.operationId &&
        stepupToken == other.stepupToken &&
        transactionHash == other.transactionHash &&
        openingId == other.openingId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([method, operationId, stepupToken, transactionHash, openingId]);
}

WBConfirmSigningPasskeyBodyStruct createWBConfirmSigningPasskeyBodyStruct({
  String? method,
  String? operationId,
  String? stepupToken,
  String? transactionHash,
  String? openingId,
}) =>
    WBConfirmSigningPasskeyBodyStruct(
      method: method,
      operationId: operationId,
      stepupToken: stepupToken,
      transactionHash: transactionHash,
      openingId: openingId,
    );
