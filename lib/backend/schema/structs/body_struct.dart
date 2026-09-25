// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BodyStruct extends BaseStruct {
  BodyStruct({
    List<AddressesStruct>? addresses,
    String? subject,
    String? body,
    List<AttachmentStruct>? attachment,
  })  : _addresses = addresses,
        _subject = subject,
        _body = body,
        _attachment = attachment;

  // "Addresses" field.
  List<AddressesStruct>? _addresses;
  List<AddressesStruct> get addresses => _addresses ?? const [];
  set addresses(List<AddressesStruct>? val) => _addresses = val;

  void updateAddresses(Function(List<AddressesStruct>) updateFn) {
    updateFn(_addresses ??= []);
  }

  bool hasAddresses() => _addresses != null;

  // "Subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  set subject(String? val) => _subject = val;

  bool hasSubject() => _subject != null;

  // "Body" field.
  String? _body;
  String get body => _body ?? '';
  set body(String? val) => _body = val;

  bool hasBody() => _body != null;

  // "Attachment" field.
  List<AttachmentStruct>? _attachment;
  List<AttachmentStruct> get attachment => _attachment ?? const [];
  set attachment(List<AttachmentStruct>? val) => _attachment = val;

  void updateAttachment(Function(List<AttachmentStruct>) updateFn) {
    updateFn(_attachment ??= []);
  }

  bool hasAttachment() => _attachment != null;

  static BodyStruct fromMap(Map<String, dynamic> data) => BodyStruct(
        addresses: getStructList(
          data['Addresses'],
          AddressesStruct.fromMap,
        ),
        subject: data['Subject'] as String?,
        body: data['Body'] as String?,
        attachment: getStructList(
          data['Attachment'],
          AttachmentStruct.fromMap,
        ),
      );

  static BodyStruct? maybeFromMap(dynamic data) =>
      data is Map ? BodyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Addresses': _addresses?.map((e) => e.toMap()).toList(),
        'Subject': _subject,
        'Body': _body,
        'Attachment': _attachment?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Addresses': serializeParam(
          _addresses,
          ParamType.DataStruct,
          isList: true,
        ),
        'Subject': serializeParam(
          _subject,
          ParamType.String,
        ),
        'Body': serializeParam(
          _body,
          ParamType.String,
        ),
        'Attachment': serializeParam(
          _attachment,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static BodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      BodyStruct(
        addresses: deserializeStructParam<AddressesStruct>(
          data['Addresses'],
          ParamType.DataStruct,
          true,
          structBuilder: AddressesStruct.fromSerializableMap,
        ),
        subject: deserializeParam(
          data['Subject'],
          ParamType.String,
          false,
        ),
        body: deserializeParam(
          data['Body'],
          ParamType.String,
          false,
        ),
        attachment: deserializeStructParam<AttachmentStruct>(
          data['Attachment'],
          ParamType.DataStruct,
          true,
          structBuilder: AttachmentStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BodyStruct &&
        listEquality.equals(addresses, other.addresses) &&
        subject == other.subject &&
        body == other.body &&
        listEquality.equals(attachment, other.attachment);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([addresses, subject, body, attachment]);
}

BodyStruct createBodyStruct({
  String? subject,
  String? body,
}) =>
    BodyStruct(
      subject: subject,
      body: body,
    );
