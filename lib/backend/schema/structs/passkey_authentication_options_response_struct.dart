// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyAuthenticationOptionsResponseStruct extends BaseStruct {
  PasskeyAuthenticationOptionsResponseStruct({
    String? challenge,
    int? timeout,
    String? rpId,
    String? userVerification,
    PasskeyAllowCredentialsStruct? allowCredentials,
  })  : _challenge = challenge,
        _timeout = timeout,
        _rpId = rpId,
        _userVerification = userVerification,
        _allowCredentials = allowCredentials;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "timeout" field.
  int? _timeout;
  int get timeout => _timeout ?? 0;
  set timeout(int? val) => _timeout = val;

  void incrementTimeout(int amount) => timeout = timeout + amount;

  bool hasTimeout() => _timeout != null;

  // "rpId" field.
  String? _rpId;
  String get rpId => _rpId ?? '';
  set rpId(String? val) => _rpId = val;

  bool hasRpId() => _rpId != null;

  // "userVerification" field.
  String? _userVerification;
  String get userVerification => _userVerification ?? '';
  set userVerification(String? val) => _userVerification = val;

  bool hasUserVerification() => _userVerification != null;

  // "allowCredentials" field.
  PasskeyAllowCredentialsStruct? _allowCredentials;
  PasskeyAllowCredentialsStruct get allowCredentials =>
      _allowCredentials ?? PasskeyAllowCredentialsStruct();
  set allowCredentials(PasskeyAllowCredentialsStruct? val) =>
      _allowCredentials = val;

  void updateAllowCredentials(
      Function(PasskeyAllowCredentialsStruct) updateFn) {
    updateFn(_allowCredentials ??= PasskeyAllowCredentialsStruct());
  }

  bool hasAllowCredentials() => _allowCredentials != null;

  static PasskeyAuthenticationOptionsResponseStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyAuthenticationOptionsResponseStruct(
        challenge: data['challenge'] as String?,
        timeout: castToType<int>(data['timeout']),
        rpId: data['rpId'] as String?,
        userVerification: data['userVerification'] as String?,
        allowCredentials:
            data['allowCredentials'] is PasskeyAllowCredentialsStruct
                ? data['allowCredentials']
                : PasskeyAllowCredentialsStruct.maybeFromMap(
                    data['allowCredentials']),
      );

  static PasskeyAuthenticationOptionsResponseStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? PasskeyAuthenticationOptionsResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'timeout': _timeout,
        'rpId': _rpId,
        'userVerification': _userVerification,
        'allowCredentials': _allowCredentials?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'timeout': serializeParam(
          _timeout,
          ParamType.int,
        ),
        'rpId': serializeParam(
          _rpId,
          ParamType.String,
        ),
        'userVerification': serializeParam(
          _userVerification,
          ParamType.String,
        ),
        'allowCredentials': serializeParam(
          _allowCredentials,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PasskeyAuthenticationOptionsResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyAuthenticationOptionsResponseStruct(
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        timeout: deserializeParam(
          data['timeout'],
          ParamType.int,
          false,
        ),
        rpId: deserializeParam(
          data['rpId'],
          ParamType.String,
          false,
        ),
        userVerification: deserializeParam(
          data['userVerification'],
          ParamType.String,
          false,
        ),
        allowCredentials: deserializeStructParam(
          data['allowCredentials'],
          ParamType.DataStruct,
          false,
          structBuilder: PasskeyAllowCredentialsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PasskeyAuthenticationOptionsResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyAuthenticationOptionsResponseStruct &&
        challenge == other.challenge &&
        timeout == other.timeout &&
        rpId == other.rpId &&
        userVerification == other.userVerification &&
        allowCredentials == other.allowCredentials;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([challenge, timeout, rpId, userVerification, allowCredentials]);
}

PasskeyAuthenticationOptionsResponseStruct
    createPasskeyAuthenticationOptionsResponseStruct({
  String? challenge,
  int? timeout,
  String? rpId,
  String? userVerification,
  PasskeyAllowCredentialsStruct? allowCredentials,
}) =>
        PasskeyAuthenticationOptionsResponseStruct(
          challenge: challenge,
          timeout: timeout,
          rpId: rpId,
          userVerification: userVerification,
          allowCredentials: allowCredentials ?? PasskeyAllowCredentialsStruct(),
        );
