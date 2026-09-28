// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrImageStruct extends BaseStruct {
  QrImageStruct({
    String? qrData,
  }) : _qrData = qrData;

  // "qr_data" field.
  String? _qrData;
  String get qrData => _qrData ?? '';
  set qrData(String? val) => _qrData = val;

  bool hasQrData() => _qrData != null;

  static QrImageStruct fromMap(Map<String, dynamic> data) => QrImageStruct(
        qrData: data['qr_data'] as String?,
      );

  static QrImageStruct? maybeFromMap(dynamic data) =>
      data is Map ? QrImageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'qr_data': _qrData,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'qr_data': serializeParam(
          _qrData,
          ParamType.String,
        ),
      }.withoutNulls;

  static QrImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      QrImageStruct(
        qrData: deserializeParam(
          data['qr_data'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QrImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QrImageStruct && qrData == other.qrData;
  }

  @override
  int get hashCode => const ListEquality().hash([qrData]);
}

QrImageStruct createQrImageStruct({
  String? qrData,
}) =>
    QrImageStruct(
      qrData: qrData,
    );
