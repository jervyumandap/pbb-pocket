// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservedValuesStruct extends BaseStruct {
  ReservedValuesStruct({
    String? reserve1,
    String? reserve2,
    String? reserve3,
    String? reserve4,
    String? reserve5,
    String? reserve6,
    String? reserve7,
    String? reserve8,
    String? reserve9,
    String? reserve10,
  })  : _reserve1 = reserve1,
        _reserve2 = reserve2,
        _reserve3 = reserve3,
        _reserve4 = reserve4,
        _reserve5 = reserve5,
        _reserve6 = reserve6,
        _reserve7 = reserve7,
        _reserve8 = reserve8,
        _reserve9 = reserve9,
        _reserve10 = reserve10;

  // "Reserve1" field.
  String? _reserve1;
  String get reserve1 => _reserve1 ?? '';
  set reserve1(String? val) => _reserve1 = val;

  bool hasReserve1() => _reserve1 != null;

  // "Reserve2" field.
  String? _reserve2;
  String get reserve2 => _reserve2 ?? '';
  set reserve2(String? val) => _reserve2 = val;

  bool hasReserve2() => _reserve2 != null;

  // "Reserve3" field.
  String? _reserve3;
  String get reserve3 => _reserve3 ?? '';
  set reserve3(String? val) => _reserve3 = val;

  bool hasReserve3() => _reserve3 != null;

  // "Reserve4" field.
  String? _reserve4;
  String get reserve4 => _reserve4 ?? '';
  set reserve4(String? val) => _reserve4 = val;

  bool hasReserve4() => _reserve4 != null;

  // "Reserve5" field.
  String? _reserve5;
  String get reserve5 => _reserve5 ?? '';
  set reserve5(String? val) => _reserve5 = val;

  bool hasReserve5() => _reserve5 != null;

  // "Reserve6" field.
  String? _reserve6;
  String get reserve6 => _reserve6 ?? '';
  set reserve6(String? val) => _reserve6 = val;

  bool hasReserve6() => _reserve6 != null;

  // "Reserve7" field.
  String? _reserve7;
  String get reserve7 => _reserve7 ?? '';
  set reserve7(String? val) => _reserve7 = val;

  bool hasReserve7() => _reserve7 != null;

  // "Reserve8" field.
  String? _reserve8;
  String get reserve8 => _reserve8 ?? '';
  set reserve8(String? val) => _reserve8 = val;

  bool hasReserve8() => _reserve8 != null;

  // "Reserve9" field.
  String? _reserve9;
  String get reserve9 => _reserve9 ?? '';
  set reserve9(String? val) => _reserve9 = val;

  bool hasReserve9() => _reserve9 != null;

  // "Reserve10" field.
  String? _reserve10;
  String get reserve10 => _reserve10 ?? '';
  set reserve10(String? val) => _reserve10 = val;

  bool hasReserve10() => _reserve10 != null;

  static ReservedValuesStruct fromMap(Map<String, dynamic> data) =>
      ReservedValuesStruct(
        reserve1: data['Reserve1'] as String?,
        reserve2: data['Reserve2'] as String?,
        reserve3: data['Reserve3'] as String?,
        reserve4: data['Reserve4'] as String?,
        reserve5: data['Reserve5'] as String?,
        reserve6: data['Reserve6'] as String?,
        reserve7: data['Reserve7'] as String?,
        reserve8: data['Reserve8'] as String?,
        reserve9: data['Reserve9'] as String?,
        reserve10: data['Reserve10'] as String?,
      );

  static ReservedValuesStruct? maybeFromMap(dynamic data) => data is Map
      ? ReservedValuesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Reserve1': _reserve1,
        'Reserve2': _reserve2,
        'Reserve3': _reserve3,
        'Reserve4': _reserve4,
        'Reserve5': _reserve5,
        'Reserve6': _reserve6,
        'Reserve7': _reserve7,
        'Reserve8': _reserve8,
        'Reserve9': _reserve9,
        'Reserve10': _reserve10,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Reserve1': serializeParam(
          _reserve1,
          ParamType.String,
        ),
        'Reserve2': serializeParam(
          _reserve2,
          ParamType.String,
        ),
        'Reserve3': serializeParam(
          _reserve3,
          ParamType.String,
        ),
        'Reserve4': serializeParam(
          _reserve4,
          ParamType.String,
        ),
        'Reserve5': serializeParam(
          _reserve5,
          ParamType.String,
        ),
        'Reserve6': serializeParam(
          _reserve6,
          ParamType.String,
        ),
        'Reserve7': serializeParam(
          _reserve7,
          ParamType.String,
        ),
        'Reserve8': serializeParam(
          _reserve8,
          ParamType.String,
        ),
        'Reserve9': serializeParam(
          _reserve9,
          ParamType.String,
        ),
        'Reserve10': serializeParam(
          _reserve10,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReservedValuesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReservedValuesStruct(
        reserve1: deserializeParam(
          data['Reserve1'],
          ParamType.String,
          false,
        ),
        reserve2: deserializeParam(
          data['Reserve2'],
          ParamType.String,
          false,
        ),
        reserve3: deserializeParam(
          data['Reserve3'],
          ParamType.String,
          false,
        ),
        reserve4: deserializeParam(
          data['Reserve4'],
          ParamType.String,
          false,
        ),
        reserve5: deserializeParam(
          data['Reserve5'],
          ParamType.String,
          false,
        ),
        reserve6: deserializeParam(
          data['Reserve6'],
          ParamType.String,
          false,
        ),
        reserve7: deserializeParam(
          data['Reserve7'],
          ParamType.String,
          false,
        ),
        reserve8: deserializeParam(
          data['Reserve8'],
          ParamType.String,
          false,
        ),
        reserve9: deserializeParam(
          data['Reserve9'],
          ParamType.String,
          false,
        ),
        reserve10: deserializeParam(
          data['Reserve10'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReservedValuesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReservedValuesStruct &&
        reserve1 == other.reserve1 &&
        reserve2 == other.reserve2 &&
        reserve3 == other.reserve3 &&
        reserve4 == other.reserve4 &&
        reserve5 == other.reserve5 &&
        reserve6 == other.reserve6 &&
        reserve7 == other.reserve7 &&
        reserve8 == other.reserve8 &&
        reserve9 == other.reserve9 &&
        reserve10 == other.reserve10;
  }

  @override
  int get hashCode => const ListEquality().hash([
        reserve1,
        reserve2,
        reserve3,
        reserve4,
        reserve5,
        reserve6,
        reserve7,
        reserve8,
        reserve9,
        reserve10
      ]);
}

ReservedValuesStruct createReservedValuesStruct({
  String? reserve1,
  String? reserve2,
  String? reserve3,
  String? reserve4,
  String? reserve5,
  String? reserve6,
  String? reserve7,
  String? reserve8,
  String? reserve9,
  String? reserve10,
}) =>
    ReservedValuesStruct(
      reserve1: reserve1,
      reserve2: reserve2,
      reserve3: reserve3,
      reserve4: reserve4,
      reserve5: reserve5,
      reserve6: reserve6,
      reserve7: reserve7,
      reserve8: reserve8,
      reserve9: reserve9,
      reserve10: reserve10,
    );
