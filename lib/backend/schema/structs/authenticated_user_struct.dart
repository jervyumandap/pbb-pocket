// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthenticatedUserStruct extends BaseStruct {
  AuthenticatedUserStruct({
    String? accessToken,
    String? refreshToken,
    int? expiresIn,
    String? fmsSessionId,
    UserV3Struct? user,
  })  : _accessToken = accessToken,
        _refreshToken = refreshToken,
        _expiresIn = expiresIn,
        _fmsSessionId = fmsSessionId,
        _user = user;

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

  // "fmsSessionId" field.
  String? _fmsSessionId;
  String get fmsSessionId => _fmsSessionId ?? '';
  set fmsSessionId(String? val) => _fmsSessionId = val;

  bool hasFmsSessionId() => _fmsSessionId != null;

  // "user" field.
  UserV3Struct? _user;
  UserV3Struct get user => _user ?? UserV3Struct();
  set user(UserV3Struct? val) => _user = val;

  void updateUser(Function(UserV3Struct) updateFn) {
    updateFn(_user ??= UserV3Struct());
  }

  bool hasUser() => _user != null;

  static AuthenticatedUserStruct fromMap(Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        expiresIn: castToType<int>(data['expiresIn']),
        fmsSessionId: data['fmsSessionId'] as String?,
        user: data['user'] is UserV3Struct
            ? data['user']
            : UserV3Struct.maybeFromMap(data['user']),
      );

  static AuthenticatedUserStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthenticatedUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'expiresIn': _expiresIn,
        'fmsSessionId': _fmsSessionId,
        'user': _user?.toMap(),
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
        'fmsSessionId': serializeParam(
          _fmsSessionId,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AuthenticatedUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AuthenticatedUserStruct(
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
        fmsSessionId: deserializeParam(
          data['fmsSessionId'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserV3Struct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AuthenticatedUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthenticatedUserStruct &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiresIn == other.expiresIn &&
        fmsSessionId == other.fmsSessionId &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([accessToken, refreshToken, expiresIn, fmsSessionId, user]);
}

AuthenticatedUserStruct createAuthenticatedUserStruct({
  String? accessToken,
  String? refreshToken,
  int? expiresIn,
  String? fmsSessionId,
  UserV3Struct? user,
}) =>
    AuthenticatedUserStruct(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
      fmsSessionId: fmsSessionId,
      user: user ?? UserV3Struct(),
    );
