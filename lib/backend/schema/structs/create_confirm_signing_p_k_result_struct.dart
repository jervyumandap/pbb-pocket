// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateConfirmSigningPKResultStruct extends BaseStruct {
  CreateConfirmSigningPKResultStruct({
    bool? success,
    String? errorMessage,
    WBConfirmSigningPasskeyBodyStruct? data,
  })  : _success = success,
        _errorMessage = errorMessage,
        _data = data;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "errorMessage" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  // "data" field.
  WBConfirmSigningPasskeyBodyStruct? _data;
  WBConfirmSigningPasskeyBodyStruct get data =>
      _data ?? WBConfirmSigningPasskeyBodyStruct();
  set data(WBConfirmSigningPasskeyBodyStruct? val) => _data = val;

  void updateData(Function(WBConfirmSigningPasskeyBodyStruct) updateFn) {
    updateFn(_data ??= WBConfirmSigningPasskeyBodyStruct());
  }

  bool hasData() => _data != null;

  static CreateConfirmSigningPKResultStruct fromMap(
          Map<String, dynamic> data) =>
      CreateConfirmSigningPKResultStruct(
        success: data['success'] as bool?,
        errorMessage: data['errorMessage'] as String?,
        data: data['data'] is WBConfirmSigningPasskeyBodyStruct
            ? data['data']
            : WBConfirmSigningPasskeyBodyStruct.maybeFromMap(data['data']),
      );

  static CreateConfirmSigningPKResultStruct? maybeFromMap(dynamic data) => data
          is Map
      ? CreateConfirmSigningPKResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'errorMessage': _errorMessage,
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'errorMessage': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CreateConfirmSigningPKResultStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreateConfirmSigningPKResultStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        errorMessage: deserializeParam(
          data['errorMessage'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: WBConfirmSigningPasskeyBodyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CreateConfirmSigningPKResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateConfirmSigningPKResultStruct &&
        success == other.success &&
        errorMessage == other.errorMessage &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([success, errorMessage, data]);
}

CreateConfirmSigningPKResultStruct createCreateConfirmSigningPKResultStruct({
  bool? success,
  String? errorMessage,
  WBConfirmSigningPasskeyBodyStruct? data,
}) =>
    CreateConfirmSigningPKResultStruct(
      success: success,
      errorMessage: errorMessage,
      data: data ?? WBConfirmSigningPasskeyBodyStruct(),
    );
