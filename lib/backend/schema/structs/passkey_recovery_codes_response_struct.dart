// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyRecoveryCodesResponseStruct extends BaseStruct {
  PasskeyRecoveryCodesResponseStruct({
    List<String>? codes,
    int? count,
  })  : _codes = codes,
        _count = count;

  // "codes" field.
  List<String>? _codes;
  List<String> get codes => _codes ?? const [];
  set codes(List<String>? val) => _codes = val;

  void updateCodes(Function(List<String>) updateFn) {
    updateFn(_codes ??= []);
  }

  bool hasCodes() => _codes != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static PasskeyRecoveryCodesResponseStruct fromMap(
          Map<String, dynamic> data) =>
      PasskeyRecoveryCodesResponseStruct(
        codes: getDataList(data['codes']),
        count: castToType<int>(data['count']),
      );

  static PasskeyRecoveryCodesResponseStruct? maybeFromMap(dynamic data) => data
          is Map
      ? PasskeyRecoveryCodesResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'codes': _codes,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'codes': serializeParam(
          _codes,
          ParamType.String,
          isList: true,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static PasskeyRecoveryCodesResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyRecoveryCodesResponseStruct(
        codes: deserializeParam<String>(
          data['codes'],
          ParamType.String,
          true,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyRecoveryCodesResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PasskeyRecoveryCodesResponseStruct &&
        listEquality.equals(codes, other.codes) &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([codes, count]);
}

PasskeyRecoveryCodesResponseStruct createPasskeyRecoveryCodesResponseStruct({
  int? count,
}) =>
    PasskeyRecoveryCodesResponseStruct(
      count: count,
    );
