// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanPaymentSigningChallengeResponseStruct extends BaseStruct {
  LoanPaymentSigningChallengeResponseStruct({
    String? challenge,
    String? expiresAt,
    int? expiresIn,
    List<String>? availableMethods,
    String? preferredMethod,
  })  : _challenge = challenge,
        _expiresAt = expiresAt,
        _expiresIn = expiresIn,
        _availableMethods = availableMethods,
        _preferredMethod = preferredMethod;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  // "availableMethods" field.
  List<String>? _availableMethods;
  List<String> get availableMethods => _availableMethods ?? const [];
  set availableMethods(List<String>? val) => _availableMethods = val;

  void updateAvailableMethods(Function(List<String>) updateFn) {
    updateFn(_availableMethods ??= []);
  }

  bool hasAvailableMethods() => _availableMethods != null;

  // "preferredMethod" field.
  String? _preferredMethod;
  String get preferredMethod => _preferredMethod ?? '';
  set preferredMethod(String? val) => _preferredMethod = val;

  bool hasPreferredMethod() => _preferredMethod != null;

  static LoanPaymentSigningChallengeResponseStruct fromMap(
          Map<String, dynamic> data) =>
      LoanPaymentSigningChallengeResponseStruct(
        challenge: data['challenge'] as String?,
        expiresAt: data['expiresAt'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
        availableMethods: getDataList(data['availableMethods']),
        preferredMethod: data['preferredMethod'] as String?,
      );

  static LoanPaymentSigningChallengeResponseStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? LoanPaymentSigningChallengeResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'expiresAt': _expiresAt,
        'expiresIn': _expiresIn,
        'availableMethods': _availableMethods,
        'preferredMethod': _preferredMethod,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
        'availableMethods': serializeParam(
          _availableMethods,
          ParamType.String,
          isList: true,
        ),
        'preferredMethod': serializeParam(
          _preferredMethod,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanPaymentSigningChallengeResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanPaymentSigningChallengeResponseStruct(
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
        availableMethods: deserializeParam<String>(
          data['availableMethods'],
          ParamType.String,
          true,
        ),
        preferredMethod: deserializeParam(
          data['preferredMethod'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanPaymentSigningChallengeResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LoanPaymentSigningChallengeResponseStruct &&
        challenge == other.challenge &&
        expiresAt == other.expiresAt &&
        expiresIn == other.expiresIn &&
        listEquality.equals(availableMethods, other.availableMethods) &&
        preferredMethod == other.preferredMethod;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [challenge, expiresAt, expiresIn, availableMethods, preferredMethod]);
}

LoanPaymentSigningChallengeResponseStruct
    createLoanPaymentSigningChallengeResponseStruct({
  String? challenge,
  String? expiresAt,
  int? expiresIn,
  String? preferredMethod,
}) =>
        LoanPaymentSigningChallengeResponseStruct(
          challenge: challenge,
          expiresAt: expiresAt,
          expiresIn: expiresIn,
          preferredMethod: preferredMethod,
        );
