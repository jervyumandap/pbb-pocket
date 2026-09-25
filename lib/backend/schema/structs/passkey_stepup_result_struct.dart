// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyStepupResultStruct extends BaseStruct {
  PasskeyStepupResultStruct({
    bool? success,
    String? stepupToken,
    String? transactionHash,
    int? expiresIn,
  })  : _success = success,
        _stepupToken = stepupToken,
        _transactionHash = transactionHash,
        _expiresIn = expiresIn;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

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

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  static PasskeyStepupResultStruct fromMap(Map<String, dynamic> data) =>
      PasskeyStepupResultStruct(
        success: data['success'] as bool?,
        stepupToken: data['stepupToken'] as String?,
        transactionHash: data['transactionHash'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
      );

  static PasskeyStepupResultStruct? maybeFromMap(dynamic data) => data is Map
      ? PasskeyStepupResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'stepupToken': _stepupToken,
        'transactionHash': _transactionHash,
        'expiresIn': _expiresIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'stepupToken': serializeParam(
          _stepupToken,
          ParamType.String,
        ),
        'transactionHash': serializeParam(
          _transactionHash,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
      }.withoutNulls;

  static PasskeyStepupResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyStepupResultStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
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
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyStepupResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyStepupResultStruct &&
        success == other.success &&
        stepupToken == other.stepupToken &&
        transactionHash == other.transactionHash &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([success, stepupToken, transactionHash, expiresIn]);
}

PasskeyStepupResultStruct createPasskeyStepupResultStruct({
  bool? success,
  String? stepupToken,
  String? transactionHash,
  int? expiresIn,
}) =>
    PasskeyStepupResultStruct(
      success: success,
      stepupToken: stepupToken,
      transactionHash: transactionHash,
      expiresIn: expiresIn,
    );
