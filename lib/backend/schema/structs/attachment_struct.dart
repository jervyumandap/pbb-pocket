// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttachmentStruct extends BaseStruct {
  AttachmentStruct({
    String? attachmentFileName,
    String? attachmentBase64,
    String? attachmentContentType,
  })  : _attachmentFileName = attachmentFileName,
        _attachmentBase64 = attachmentBase64,
        _attachmentContentType = attachmentContentType;

  // "AttachmentFileName" field.
  String? _attachmentFileName;
  String get attachmentFileName => _attachmentFileName ?? '';
  set attachmentFileName(String? val) => _attachmentFileName = val;

  bool hasAttachmentFileName() => _attachmentFileName != null;

  // "AttachmentBase64" field.
  String? _attachmentBase64;
  String get attachmentBase64 => _attachmentBase64 ?? '';
  set attachmentBase64(String? val) => _attachmentBase64 = val;

  bool hasAttachmentBase64() => _attachmentBase64 != null;

  // "AttachmentContentType" field.
  String? _attachmentContentType;
  String get attachmentContentType => _attachmentContentType ?? '';
  set attachmentContentType(String? val) => _attachmentContentType = val;

  bool hasAttachmentContentType() => _attachmentContentType != null;

  static AttachmentStruct fromMap(Map<String, dynamic> data) =>
      AttachmentStruct(
        attachmentFileName: data['AttachmentFileName'] as String?,
        attachmentBase64: data['AttachmentBase64'] as String?,
        attachmentContentType: data['AttachmentContentType'] as String?,
      );

  static AttachmentStruct? maybeFromMap(dynamic data) => data is Map
      ? AttachmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AttachmentFileName': _attachmentFileName,
        'AttachmentBase64': _attachmentBase64,
        'AttachmentContentType': _attachmentContentType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AttachmentFileName': serializeParam(
          _attachmentFileName,
          ParamType.String,
        ),
        'AttachmentBase64': serializeParam(
          _attachmentBase64,
          ParamType.String,
        ),
        'AttachmentContentType': serializeParam(
          _attachmentContentType,
          ParamType.String,
        ),
      }.withoutNulls;

  static AttachmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttachmentStruct(
        attachmentFileName: deserializeParam(
          data['AttachmentFileName'],
          ParamType.String,
          false,
        ),
        attachmentBase64: deserializeParam(
          data['AttachmentBase64'],
          ParamType.String,
          false,
        ),
        attachmentContentType: deserializeParam(
          data['AttachmentContentType'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AttachmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AttachmentStruct &&
        attachmentFileName == other.attachmentFileName &&
        attachmentBase64 == other.attachmentBase64 &&
        attachmentContentType == other.attachmentContentType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([attachmentFileName, attachmentBase64, attachmentContentType]);
}

AttachmentStruct createAttachmentStruct({
  String? attachmentFileName,
  String? attachmentBase64,
  String? attachmentContentType,
}) =>
    AttachmentStruct(
      attachmentFileName: attachmentFileName,
      attachmentBase64: attachmentBase64,
      attachmentContentType: attachmentContentType,
    );
