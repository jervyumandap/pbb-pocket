// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnrollingUserStruct extends BaseStruct {
  EnrollingUserStruct({
    String? sessionToken,
    UserV3Struct? user,
  })  : _sessionToken = sessionToken,
        _user = user;

  // "sessionToken" field.
  String? _sessionToken;
  String get sessionToken => _sessionToken ?? '';
  set sessionToken(String? val) => _sessionToken = val;

  bool hasSessionToken() => _sessionToken != null;

  // "user" field.
  UserV3Struct? _user;
  UserV3Struct get user => _user ?? UserV3Struct();
  set user(UserV3Struct? val) => _user = val;

  void updateUser(Function(UserV3Struct) updateFn) {
    updateFn(_user ??= UserV3Struct());
  }

  bool hasUser() => _user != null;

  static EnrollingUserStruct fromMap(Map<String, dynamic> data) =>
      EnrollingUserStruct(
        sessionToken: data['sessionToken'] as String?,
        user: data['user'] is UserV3Struct
            ? data['user']
            : UserV3Struct.maybeFromMap(data['user']),
      );

  static EnrollingUserStruct? maybeFromMap(dynamic data) => data is Map
      ? EnrollingUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sessionToken': _sessionToken,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sessionToken': serializeParam(
          _sessionToken,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static EnrollingUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnrollingUserStruct(
        sessionToken: deserializeParam(
          data['sessionToken'],
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
  String toString() => 'EnrollingUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnrollingUserStruct &&
        sessionToken == other.sessionToken &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([sessionToken, user]);
}

EnrollingUserStruct createEnrollingUserStruct({
  String? sessionToken,
  UserV3Struct? user,
}) =>
    EnrollingUserStruct(
      sessionToken: sessionToken,
      user: user ?? UserV3Struct(),
    );
