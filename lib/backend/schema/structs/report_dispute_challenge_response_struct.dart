// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDisputeChallengeResponseStruct extends BaseStruct {
  ReportDisputeChallengeResponseStruct({
    String? challenge,
    String? expiresAt,
    int? expiresIn,
    List<String>? availableMethods,
    String? preferredMethod,
    bool? passkeyAvailable,
  })  : _challenge = challenge,
        _expiresAt = expiresAt,
        _expiresIn = expiresIn,
        _availableMethods = availableMethods,
        _preferredMethod = preferredMethod,
        _passkeyAvailable = passkeyAvailable;

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

  // "passkeyAvailable" field.
  bool? _passkeyAvailable;
  bool get passkeyAvailable => _passkeyAvailable ?? false;
  set passkeyAvailable(bool? val) => _passkeyAvailable = val;

  bool hasPasskeyAvailable() => _passkeyAvailable != null;

  static ReportDisputeChallengeResponseStruct fromMap(
          Map<String, dynamic> data) =>
      ReportDisputeChallengeResponseStruct(
        challenge: data['challenge'] as String?,
        expiresAt: data['expiresAt'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
        availableMethods: getDataList(data['availableMethods']),
        preferredMethod: data['preferredMethod'] as String?,
        passkeyAvailable: data['passkeyAvailable'] as bool?,
      );

  static ReportDisputeChallengeResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ReportDisputeChallengeResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'expiresAt': _expiresAt,
        'expiresIn': _expiresIn,
        'availableMethods': _availableMethods,
        'preferredMethod': _preferredMethod,
        'passkeyAvailable': _passkeyAvailable,
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
        'passkeyAvailable': serializeParam(
          _passkeyAvailable,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ReportDisputeChallengeResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportDisputeChallengeResponseStruct(
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
        passkeyAvailable: deserializeParam(
          data['passkeyAvailable'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ReportDisputeChallengeResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReportDisputeChallengeResponseStruct &&
        challenge == other.challenge &&
        expiresAt == other.expiresAt &&
        expiresIn == other.expiresIn &&
        listEquality.equals(availableMethods, other.availableMethods) &&
        preferredMethod == other.preferredMethod &&
        passkeyAvailable == other.passkeyAvailable;
  }

  @override
  int get hashCode => const ListEquality().hash([
        challenge,
        expiresAt,
        expiresIn,
        availableMethods,
        preferredMethod,
        passkeyAvailable
      ]);
}

ReportDisputeChallengeResponseStruct
    createReportDisputeChallengeResponseStruct({
  String? challenge,
  String? expiresAt,
  int? expiresIn,
  String? preferredMethod,
  bool? passkeyAvailable,
}) =>
        ReportDisputeChallengeResponseStruct(
          challenge: challenge,
          expiresAt: expiresAt,
          expiresIn: expiresIn,
          preferredMethod: preferredMethod,
          passkeyAvailable: passkeyAvailable,
        );
