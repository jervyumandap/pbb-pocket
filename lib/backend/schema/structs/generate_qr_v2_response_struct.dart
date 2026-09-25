// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenerateQrV2ResponseStruct extends BaseStruct {
  GenerateQrV2ResponseStruct({
    QrImageStruct? qrImage,
  }) : _qrImage = qrImage;

  // "qr_image" field.
  QrImageStruct? _qrImage;
  QrImageStruct get qrImage => _qrImage ?? QrImageStruct();
  set qrImage(QrImageStruct? val) => _qrImage = val;

  void updateQrImage(Function(QrImageStruct) updateFn) {
    updateFn(_qrImage ??= QrImageStruct());
  }

  bool hasQrImage() => _qrImage != null;

  static GenerateQrV2ResponseStruct fromMap(Map<String, dynamic> data) =>
      GenerateQrV2ResponseStruct(
        qrImage: data['qr_image'] is QrImageStruct
            ? data['qr_image']
            : QrImageStruct.maybeFromMap(data['qr_image']),
      );

  static GenerateQrV2ResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? GenerateQrV2ResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'qr_image': _qrImage?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'qr_image': serializeParam(
          _qrImage,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GenerateQrV2ResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GenerateQrV2ResponseStruct(
        qrImage: deserializeStructParam(
          data['qr_image'],
          ParamType.DataStruct,
          false,
          structBuilder: QrImageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GenerateQrV2ResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GenerateQrV2ResponseStruct && qrImage == other.qrImage;
  }

  @override
  int get hashCode => const ListEquality().hash([qrImage]);
}

GenerateQrV2ResponseStruct createGenerateQrV2ResponseStruct({
  QrImageStruct? qrImage,
}) =>
    GenerateQrV2ResponseStruct(
      qrImage: qrImage ?? QrImageStruct(),
    );
