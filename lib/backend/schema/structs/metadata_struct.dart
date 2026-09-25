// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetadataStruct extends BaseStruct {
  MetadataStruct({
    int? invoiceId,
    String? notes,
  })  : _invoiceId = invoiceId,
        _notes = notes;

  // "invoice_id" field.
  int? _invoiceId;
  int get invoiceId => _invoiceId ?? 0;
  set invoiceId(int? val) => _invoiceId = val;

  void incrementInvoiceId(int amount) => invoiceId = invoiceId + amount;

  bool hasInvoiceId() => _invoiceId != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  static MetadataStruct fromMap(Map<String, dynamic> data) => MetadataStruct(
        invoiceId: castToType<int>(data['invoice_id']),
        notes: data['notes'] as String?,
      );

  static MetadataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetadataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'invoice_id': _invoiceId,
        'notes': _notes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'invoice_id': serializeParam(
          _invoiceId,
          ParamType.int,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetadataStruct(
        invoiceId: deserializeParam(
          data['invoice_id'],
          ParamType.int,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataStruct &&
        invoiceId == other.invoiceId &&
        notes == other.notes;
  }

  @override
  int get hashCode => const ListEquality().hash([invoiceId, notes]);
}

MetadataStruct createMetadataStruct({
  int? invoiceId,
  String? notes,
}) =>
    MetadataStruct(
      invoiceId: invoiceId,
      notes: notes,
    );
