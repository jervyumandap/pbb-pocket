// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OAuthTokenDataTypeStruct extends BaseStruct {
  OAuthTokenDataTypeStruct({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
  })  : _accessToken = accessToken,
        _tokenType = tokenType,
        _expiresIn = expiresIn;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "token_type" field.
  String? _tokenType;
  String get tokenType => _tokenType ?? '';
  set tokenType(String? val) => _tokenType = val;

  bool hasTokenType() => _tokenType != null;

  // "expires_in" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  static OAuthTokenDataTypeStruct fromMap(Map<String, dynamic> data) =>
      OAuthTokenDataTypeStruct(
        accessToken: data['access_token'] as String?,
        tokenType: data['token_type'] as String?,
        expiresIn: castToType<int>(data['expires_in']),
      );

  static OAuthTokenDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? OAuthTokenDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'token_type': _tokenType,
        'expires_in': _expiresIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'token_type': serializeParam(
          _tokenType,
          ParamType.String,
        ),
        'expires_in': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
      }.withoutNulls;

  static OAuthTokenDataTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OAuthTokenDataTypeStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        tokenType: deserializeParam(
          data['token_type'],
          ParamType.String,
          false,
        ),
        expiresIn: deserializeParam(
          data['expires_in'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OAuthTokenDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OAuthTokenDataTypeStruct &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, tokenType, expiresIn]);
}

OAuthTokenDataTypeStruct createOAuthTokenDataTypeStruct({
  String? accessToken,
  String? tokenType,
  int? expiresIn,
}) =>
    OAuthTokenDataTypeStruct(
      accessToken: accessToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
    );
