// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChequeInquiryResponseStruct extends BaseStruct {
  ChequeInquiryResponseStruct({
    List<ChequeInquiryRecordsStruct>? records,
    String? retrievedAt,
  })  : _records = records,
        _retrievedAt = retrievedAt;

  // "records" field.
  List<ChequeInquiryRecordsStruct>? _records;
  List<ChequeInquiryRecordsStruct> get records => _records ?? const [];
  set records(List<ChequeInquiryRecordsStruct>? val) => _records = val;

  void updateRecords(Function(List<ChequeInquiryRecordsStruct>) updateFn) {
    updateFn(_records ??= []);
  }

  bool hasRecords() => _records != null;

  // "retrievedAt" field.
  String? _retrievedAt;
  String get retrievedAt => _retrievedAt ?? '';
  set retrievedAt(String? val) => _retrievedAt = val;

  bool hasRetrievedAt() => _retrievedAt != null;

  static ChequeInquiryResponseStruct fromMap(Map<String, dynamic> data) =>
      ChequeInquiryResponseStruct(
        records: getStructList(
          data['records'],
          ChequeInquiryRecordsStruct.fromMap,
        ),
        retrievedAt: data['retrievedAt'] as String?,
      );

  static ChequeInquiryResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ChequeInquiryResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'records': _records?.map((e) => e.toMap()).toList(),
        'retrievedAt': _retrievedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'records': serializeParam(
          _records,
          ParamType.DataStruct,
          isList: true,
        ),
        'retrievedAt': serializeParam(
          _retrievedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChequeInquiryResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChequeInquiryResponseStruct(
        records: deserializeStructParam<ChequeInquiryRecordsStruct>(
          data['records'],
          ParamType.DataStruct,
          true,
          structBuilder: ChequeInquiryRecordsStruct.fromSerializableMap,
        ),
        retrievedAt: deserializeParam(
          data['retrievedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChequeInquiryResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChequeInquiryResponseStruct &&
        listEquality.equals(records, other.records) &&
        retrievedAt == other.retrievedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([records, retrievedAt]);
}

ChequeInquiryResponseStruct createChequeInquiryResponseStruct({
  String? retrievedAt,
}) =>
    ChequeInquiryResponseStruct(
      retrievedAt: retrievedAt,
    );
