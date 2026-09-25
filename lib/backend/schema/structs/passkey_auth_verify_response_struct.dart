// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyAuthVerifyResponseStruct extends BaseStruct {
  PasskeyAuthVerifyResponseStruct({
    bool? verified,
    PasskeyAuthTokensStruct? tokens,
    String? message,
  })  : _verified = verified,
        _tokens = tokens,
        _message = message;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  set verified(bool? val) => _verified = val;

  bool hasVerified() => _verified != null;

  // "tokens" field.
  PasskeyAuthTokensStruct? _tokens;
  PasskeyAuthTokensStruct get tokens => _tokens ?? PasskeyAuthTokensStruct();
  set tokens(PasskeyAuthTokensStruct? val) => _tokens = val;

  void updateTokens(Function(PasskeyAuthTokensStruct) updateFn) {
    updateFn(_tokens ??= PasskeyAuthTokensStruct());
  }

  bool hasTokens() => _tokens != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static PasskeyAuthVerifyResponseStruct fromMap(Map<String, dynamic> data) =>
      PasskeyAuthVerifyResponseStruct(
        verified: data['verified'] as bool?,
        tokens: data['tokens'] is PasskeyAuthTokensStruct
            ? data['tokens']
            : PasskeyAuthTokensStruct.maybeFromMap(data['tokens']),
        message: data['message'] as String?,
      );

  static PasskeyAuthVerifyResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? PasskeyAuthVerifyResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'verified': _verified,
        'tokens': _tokens?.toMap(),
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'verified': serializeParam(
          _verified,
          ParamType.bool,
        ),
        'tokens': serializeParam(
          _tokens,
          ParamType.DataStruct,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyAuthVerifyResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyAuthVerifyResponseStruct(
        verified: deserializeParam(
          data['verified'],
          ParamType.bool,
          false,
        ),
        tokens: deserializeStructParam(
          data['tokens'],
          ParamType.DataStruct,
          false,
          structBuilder: PasskeyAuthTokensStruct.fromSerializableMap,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyAuthVerifyResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyAuthVerifyResponseStruct &&
        verified == other.verified &&
        tokens == other.tokens &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([verified, tokens, message]);
}

PasskeyAuthVerifyResponseStruct createPasskeyAuthVerifyResponseStruct({
  bool? verified,
  PasskeyAuthTokensStruct? tokens,
  String? message,
}) =>
    PasskeyAuthVerifyResponseStruct(
      verified: verified,
      tokens: tokens ?? PasskeyAuthTokensStruct(),
      message: message,
    );
