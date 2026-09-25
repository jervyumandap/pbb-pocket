// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChangePasswordModelStruct extends BaseStruct {
  ChangePasswordModelStruct({
    String? currentPassword,
    String? newPassword,
  })  : _currentPassword = currentPassword,
        _newPassword = newPassword;

  // "currentPassword" field.
  String? _currentPassword;
  String get currentPassword => _currentPassword ?? '';
  set currentPassword(String? val) => _currentPassword = val;

  bool hasCurrentPassword() => _currentPassword != null;

  // "newPassword" field.
  String? _newPassword;
  String get newPassword => _newPassword ?? '';
  set newPassword(String? val) => _newPassword = val;

  bool hasNewPassword() => _newPassword != null;

  static ChangePasswordModelStruct fromMap(Map<String, dynamic> data) =>
      ChangePasswordModelStruct(
        currentPassword: data['currentPassword'] as String?,
        newPassword: data['newPassword'] as String?,
      );

  static ChangePasswordModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ChangePasswordModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'currentPassword': _currentPassword,
        'newPassword': _newPassword,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'currentPassword': serializeParam(
          _currentPassword,
          ParamType.String,
        ),
        'newPassword': serializeParam(
          _newPassword,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChangePasswordModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChangePasswordModelStruct(
        currentPassword: deserializeParam(
          data['currentPassword'],
          ParamType.String,
          false,
        ),
        newPassword: deserializeParam(
          data['newPassword'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChangePasswordModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordModelStruct &&
        currentPassword == other.currentPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode => const ListEquality().hash([currentPassword, newPassword]);
}

ChangePasswordModelStruct createChangePasswordModelStruct({
  String? currentPassword,
  String? newPassword,
}) =>
    ChangePasswordModelStruct(
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
