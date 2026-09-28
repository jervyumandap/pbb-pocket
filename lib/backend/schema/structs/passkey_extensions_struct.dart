// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PasskeyExtensionsStruct extends BaseStruct {
  PasskeyExtensionsStruct({
    bool? credProps,
  }) : _credProps = credProps;

  // "credProps" field.
  bool? _credProps;
  bool get credProps => _credProps ?? false;
  set credProps(bool? val) => _credProps = val;

  bool hasCredProps() => _credProps != null;

  static PasskeyExtensionsStruct fromMap(Map<String, dynamic> data) =>
      PasskeyExtensionsStruct(
        credProps: data['credProps'] as bool?,
      );

  static PasskeyExtensionsStruct? maybeFromMap(dynamic data) => data is Map
      ? PasskeyExtensionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'credProps': _credProps,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'credProps': serializeParam(
          _credProps,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PasskeyExtensionsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PasskeyExtensionsStruct(
        credProps: deserializeParam(
          data['credProps'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PasskeyExtensionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PasskeyExtensionsStruct && credProps == other.credProps;
  }

  @override
  int get hashCode => const ListEquality().hash([credProps]);
}

PasskeyExtensionsStruct createPasskeyExtensionsStruct({
  bool? credProps,
}) =>
    PasskeyExtensionsStruct(
      credProps: credProps,
    );
