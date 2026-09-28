// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyAuthTokensStruct extends BaseStruct {
  PasskeyAuthTokensStruct({
    int? expiresIn,
    String? accessToken,
    String? refreshToken,
  })  : _expiresIn = expiresIn,
        _accessToken = accessToken,
        _refreshToken = refreshToken;

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  static PasskeyAuthTokensStruct fromMap(Map<String, dynamic> data) =>
      PasskeyAuthTokensStruct(
        expiresIn: castToType<int>(data['expiresIn']),
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
      );

  static PasskeyAuthTokensStruct? maybeFromMap(dynamic data) => data is Map
      ? PasskeyAuthTokensStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'expiresIn': _expiresIn,
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static PasskeyAuthTokensStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyAuthTokensStruct(
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyAuthTokensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyAuthTokensStruct &&
        expiresIn == other.expiresIn &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([expiresIn, accessToken, refreshToken]);
}

PasskeyAuthTokensStruct createPasskeyAuthTokensStruct({
  int? expiresIn,
  String? accessToken,
  String? refreshToken,
}) =>
    PasskeyAuthTokensStruct(
      expiresIn: expiresIn,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
