// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RefreshTokenDataTypeStruct extends BaseStruct {
  RefreshTokenDataTypeStruct({
    String? accessToken,
    String? refreshToken,
    int? userId,
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _userId = userId;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  static RefreshTokenDataTypeStruct fromMap(Map<String, dynamic> data) =>
      RefreshTokenDataTypeStruct(
        accessToken: data['access_token'] as String?,
        refreshToken: data['refresh_token'] as String?,
        userId: castToType<int>(data['user_id']),
      );

  static RefreshTokenDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? RefreshTokenDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'refresh_token': _refreshToken,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static RefreshTokenDataTypeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RefreshTokenDataTypeStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RefreshTokenDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RefreshTokenDataTypeStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        userId == other.userId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accessToken, refreshToken, userId]);
}

RefreshTokenDataTypeStruct createRefreshTokenDataTypeStruct({
  String? accessToken,
  String? refreshToken,
  int? userId,
}) =>
    RefreshTokenDataTypeStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      userId: userId,
    );
