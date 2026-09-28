// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyStepupOptionsResponseStruct extends BaseStruct {
  PasskeyStepupOptionsResponseStruct({
    String? challenge,
    int? timeout,
    String? rpId,
    String? userVerification,
    PasskeyAllowCredentialsStruct? allowCredentials,
    String? transactionHash,
  })  : _challenge = challenge,
        _timeout = timeout,
        _rpId = rpId,
        _userVerification = userVerification,
        _allowCredentials = allowCredentials,
        _transactionHash = transactionHash;

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

  // "transactionHash" field.
  String? _transactionHash;
  String get transactionHash => _transactionHash ?? '';
  set transactionHash(String? val) => _transactionHash = val;

  bool hasTransactionHash() => _transactionHash != null;

  static PasskeyStepupOptionsResponseStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyStepupOptionsResponseStruct(
        challenge: data['challenge'] as String?,
        timeout: castToType<int>(data['timeout']),
        rpId: data['rpId'] as String?,
        userVerification: data['userVerification'] as String?,
        allowCredentials:
            data['allowCredentials'] is PasskeyAllowCredentialsStruct
                ? data['allowCredentials']
                : PasskeyAllowCredentialsStruct.maybeFromMap(
                    data['allowCredentials']),
        transactionHash: data['transactionHash'] as String?,
      );

  static PasskeyStepupOptionsResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? PasskeyStepupOptionsResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'challenge': _challenge,
        'timeout': _timeout,
        'rpId': _rpId,
        'userVerification': _userVerification,
        'allowCredentials': _allowCredentials?.toMap(),
        'transactionHash': _transactionHash,
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
        'transactionHash': serializeParam(
          _transactionHash,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyStepupOptionsResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyStepupOptionsResponseStruct(
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
        transactionHash: deserializeParam(
          data['transactionHash'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyStepupOptionsResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyStepupOptionsResponseStruct &&
        challenge == other.challenge &&
        timeout == other.timeout &&
        rpId == other.rpId &&
        userVerification == other.userVerification &&
        allowCredentials == other.allowCredentials &&
        transactionHash == other.transactionHash;
  }

  @override
  int get hashCode => const ListEquality().hash([
        challenge,
        timeout,
        rpId,
        userVerification,
        allowCredentials,
        transactionHash
      ]);
}

PasskeyStepupOptionsResponseStruct createPasskeyStepupOptionsResponseStruct({
  String? challenge,
  int? timeout,
  String? rpId,
  String? userVerification,
  PasskeyAllowCredentialsStruct? allowCredentials,
  String? transactionHash,
}) =>
    PasskeyStepupOptionsResponseStruct(
      challenge: challenge,
      timeout: timeout,
      rpId: rpId,
      userVerification: userVerification,
      allowCredentials: allowCredentials ?? PasskeyAllowCredentialsStruct(),
      transactionHash: transactionHash,
    );
