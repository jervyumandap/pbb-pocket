// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RefreshTokenResponseStruct extends BaseStruct {
  RefreshTokenResponseStruct({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _expiresIn = expiresIn;

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

  // "expiresIn" field.
  int? _expiresIn;
  int get expiresIn => _expiresIn ?? 0;
  set expiresIn(int? val) => _expiresIn = val;

  void incrementExpiresIn(int amount) => expiresIn = expiresIn + amount;

  bool hasExpiresIn() => _expiresIn != null;

  static RefreshTokenResponseStruct fromMap(Map<String, dynamic> data) =>
      RefreshTokenResponseStruct(
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
      );

  static RefreshTokenResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? RefreshTokenResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'expiresIn': _expiresIn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'expiresIn': serializeParam(
          _expiresIn,
          ParamType.int,
        ),
      }.withoutNulls;

  static RefreshTokenResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RefreshTokenResponseStruct(
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
        expiresIn: deserializeParam(
          data['expiresIn'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RefreshTokenResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RefreshTokenResponseStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, refreshToken, expiresIn]);
}

RefreshTokenResponseStruct createRefreshTokenResponseStruct({
  String? accessToken,
  String? refreshToken,
  int? expiresIn,
}) =>
    RefreshTokenResponseStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
    );
