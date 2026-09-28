// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyRegistrationOptionsResponseStruct extends BaseStruct {
  PasskeyRegistrationOptionsResponseStruct({
    String? challenge,
    PasskeyRpStruct? rp,
    PasskeyUserStruct? user,
    List<PasskeyPubKeyCredParamsStruct>? pubKeyCredParams,
    int? timeout,
    String? attestation,
    List<String>? excludeCredentials,
    PasskeyAuthenticatorSelectionStruct? authenticatorSelection,
    PasskeyExtensionsStruct? extensions,
    List<String>? hints,
  })  : _challenge = challenge,
        _rp = rp,
        _user = user,
        _pubKeyCredParams = pubKeyCredParams,
        _timeout = timeout,
        _attestation = attestation,
        _excludeCredentials = excludeCredentials,
        _authenticatorSelection = authenticatorSelection,
        _extensions = extensions,
        _hints = hints;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "rp" field.
  PasskeyRpStruct? _rp;
  PasskeyRpStruct get rp => _rp ?? PasskeyRpStruct();
  set rp(PasskeyRpStruct? val) => _rp = val;

  void updateRp(Function(PasskeyRpStruct) updateFn) {
    updateFn(_rp ??= PasskeyRpStruct());
  }

  bool hasRp() => _rp != null;

  // "user" field.
  PasskeyUserStruct? _user;
  PasskeyUserStruct get user => _user ?? PasskeyUserStruct();
  set user(PasskeyUserStruct? val) => _user = val;

  void updateUser(Function(PasskeyUserStruct) updateFn) {
    updateFn(_user ??= PasskeyUserStruct());
  }

  bool hasUser() => _user != null;

  // "pubKeyCredParams" field.
  List<PasskeyPubKeyCredParamsStruct>? _pubKeyCredParams;
  List<PasskeyPubKeyCredParamsStruct> get pubKeyCredParams =>
      _pubKeyCredParams ?? const [];
  set pubKeyCredParams(List<PasskeyPubKeyCredParamsStruct>? val) =>
      _pubKeyCredParams = val;

  void updatePubKeyCredParams(
      Function(List<PasskeyPubKeyCredParamsStruct>) updateFn) {
    updateFn(_pubKeyCredParams ??= []);
  }

  bool hasPubKeyCredParams() => _pubKeyCredParams != null;

  // "timeout" field.
  int? _timeout;
  int get timeout => _timeout ?? 0;
  set timeout(int? val) => _timeout = val;

  void incrementTimeout(int amount) => timeout = timeout + amount;

  bool hasTimeout() => _timeout != null;

  // "attestation" field.
  String? _attestation;
  String get attestation => _attestation ?? '';
  set attestation(String? val) => _attestation = val;

  bool hasAttestation() => _attestation != null;

  // "excludeCredentials" field.
  List<String>? _excludeCredentials;
  List<String> get excludeCredentials => _excludeCredentials ?? const [];
  set excludeCredentials(List<String>? val) => _excludeCredentials = val;

  void updateExcludeCredentials(Function(List<String>) updateFn) {
    updateFn(_excludeCredentials ??= []);
  }

  bool hasExcludeCredentials() => _excludeCredentials != null;

  // "authenticatorSelection" field.
  PasskeyAuthenticatorSelectionStruct? _authenticatorSelection;
  PasskeyAuthenticatorSelectionStruct get authenticatorSelection =>
      _authenticatorSelection ?? PasskeyAuthenticatorSelectionStruct();
  set authenticatorSelection(PasskeyAuthenticatorSelectionStruct? val) =>
      _authenticatorSelection = val;

  void updateAuthenticatorSelection(
      Function(PasskeyAuthenticatorSelectionStruct) updateFn) {
    updateFn(_authenticatorSelection ??= PasskeyAuthenticatorSelectionStruct());
  }

  bool hasAuthenticatorSelection() => _authenticatorSelection != null;

  // "extensions" field.
  PasskeyExtensionsStruct? _extensions;
  PasskeyExtensionsStruct get extensions =>
      _extensions ?? PasskeyExtensionsStruct();
  set extensions(PasskeyExtensionsStruct? val) => _extensions = val;

  void updateExtensions(Function(PasskeyExtensionsStruct) updateFn) {
    updateFn(_extensions ??= PasskeyExtensionsStruct());
  }

  bool hasExtensions() => _extensions != null;

  // "hints" field.
  List<String>? _hints;
  List<String> get hints => _hints ?? const [];
  set hints(List<String>? val) => _hints = val;

  void updateHints(Function(List<String>) updateFn) {
    updateFn(_hints ??= []);
  }

  bool hasHints() => _hints != null;

  static PasskeyRegistrationOptionsResponseStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationOptionsResponseStruct(
        challenge: data['challenge'] as String?,
        rp: data['rp'] is PasskeyRpStruct
            ? data['rp']
            : PasskeyRpStruct.maybeFromMap(data['rp']),
        user: data['user'] is PasskeyUserStruct
            ? data['user']
            : PasskeyUserStruct.maybeFromMap(data['user']),
        pubKeyCredParams: getStructList(
          data['pubKeyCredParams'],
          PasskeyPubKeyCredParamsStruct.fromMap,
        ),
        timeout: castToType<int>(data['timeout']),
        attestation: data['attestation'] as String?,
        excludeCredentials: getDataList(data['excludeCredentials']),
        authenticatorSelection: data['authenticatorSelection']
                is PasskeyAuthenticatorSelectionStruct
            ? data['authenticatorSelection']
            : PasskeyAuthenticatorSelectionStruct.maybeFromMap(
                data['authenticatorSelection']),
        extensions: data['extensions'] is PasskeyExtensionsStruct
            ? data['extensions']
            : PasskeyExtensionsStruct.maybeFromMap(data['extensions']),
        hints: getDataList(data['hints']),
      );

  static PasskeyRegistrationOptionsResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? PasskeyRegistrationOptionsResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'rp': _rp?.toMap(),
        'user': _user?.toMap(),
        'pubKeyCredParams': _pubKeyCredParams?.map((e) => e.toMap()).toList(),
        'timeout': _timeout,
        'attestation': _attestation,
        'excludeCredentials': _excludeCredentials,
        'authenticatorSelection': _authenticatorSelection?.toMap(),
        'extensions': _extensions?.toMap(),
        'hints': _hints,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'rp': serializeParam(
          _rp,
          ParamType.DataStruct,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'pubKeyCredParams': serializeParam(
          _pubKeyCredParams,
          ParamType.DataStruct,
          isList: true,
        ),
        'timeout': serializeParam(
          _timeout,
          ParamType.int,
        ),
        'attestation': serializeParam(
          _attestation,
          ParamType.String,
        ),
        'excludeCredentials': serializeParam(
          _excludeCredentials,
          ParamType.String,
          isList: true,
        ),
        'authenticatorSelection': serializeParam(
          _authenticatorSelection,
          ParamType.DataStruct,
        ),
        'extensions': serializeParam(
          _extensions,
          ParamType.DataStruct,
        ),
        'hints': serializeParam(
          _hints,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static PasskeyRegistrationOptionsResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyRegistrationOptionsResponseStruct(
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        rp: deserializeStructParam(
          data['rp'],
          ParamType.DataStruct,
          false,
          structBuilder: PasskeyRpStruct.fromSerializableMap,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: PasskeyUserStruct.fromSerializableMap,
        ),
        pubKeyCredParams: deserializeStructParam<PasskeyPubKeyCredParamsStruct>(
          data['pubKeyCredParams'],
          ParamType.DataStruct,
          true,
          structBuilder: PasskeyPubKeyCredParamsStruct.fromSerializableMap,
        ),
        timeout: deserializeParam(
          data['timeout'],
          ParamType.int,
          false,
        ),
        attestation: deserializeParam(
          data['attestation'],
          ParamType.String,
          false,
        ),
        excludeCredentials: deserializeParam<String>(
          data['excludeCredentials'],
          ParamType.String,
          true,
        ),
        authenticatorSelection: deserializeStructParam(
          data['authenticatorSelection'],
          ParamType.DataStruct,
          false,
          structBuilder:
              PasskeyAuthenticatorSelectionStruct.fromSerializableMap,
        ),
        extensions: deserializeStructParam(
          data['extensions'],
          ParamType.DataStruct,
          false,
          structBuilder: PasskeyExtensionsStruct.fromSerializableMap,
        ),
        hints: deserializeParam<String>(
          data['hints'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PasskeyRegistrationOptionsResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PasskeyRegistrationOptionsResponseStruct &&
        challenge == other.challenge &&
        rp == other.rp &&
        user == other.user &&
        listEquality.equals(pubKeyCredParams, other.pubKeyCredParams) &&
        timeout == other.timeout &&
        attestation == other.attestation &&
        listEquality.equals(excludeCredentials, other.excludeCredentials) &&
        authenticatorSelection == other.authenticatorSelection &&
        extensions == other.extensions &&
        listEquality.equals(hints, other.hints);
  }

  @override
  int get hashCode => const ListEquality().hash([
        challenge,
        rp,
        user,
        pubKeyCredParams,
        timeout,
        attestation,
        excludeCredentials,
        authenticatorSelection,
        extensions,
        hints
      ]);
}

PasskeyRegistrationOptionsResponseStruct
    createPasskeyRegistrationOptionsResponseStruct({
  String? challenge,
  PasskeyRpStruct? rp,
  PasskeyUserStruct? user,
  int? timeout,
  String? attestation,
  PasskeyAuthenticatorSelectionStruct? authenticatorSelection,
  PasskeyExtensionsStruct? extensions,
}) =>
        PasskeyRegistrationOptionsResponseStruct(
          challenge: challenge,
          rp: rp ?? PasskeyRpStruct(),
          user: user ?? PasskeyUserStruct(),
          timeout: timeout,
          attestation: attestation,
          authenticatorSelection:
              authenticatorSelection ?? PasskeyAuthenticatorSelectionStruct(),
          extensions: extensions ?? PasskeyExtensionsStruct(),
        );
