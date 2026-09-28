// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransferPBBStruct extends BaseStruct {
  TransferPBBStruct({
    PGSWithinTransferHeaderStruct? pGSWithinTransferHeader,
    PGSWithinTransferBodyStruct? pGSWithinTransferBody,
  })  : _pGSWithinTransferHeader = pGSWithinTransferHeader,
        _pGSWithinTransferBody = pGSWithinTransferBody;

  // "PGSWithinTransferHeader" field.
  PGSWithinTransferHeaderStruct? _pGSWithinTransferHeader;
  PGSWithinTransferHeaderStruct get pGSWithinTransferHeader =>
      _pGSWithinTransferHeader ?? PGSWithinTransferHeaderStruct();
  set pGSWithinTransferHeader(PGSWithinTransferHeaderStruct? val) =>
      _pGSWithinTransferHeader = val;

  void updatePGSWithinTransferHeader(
      Function(PGSWithinTransferHeaderStruct) updateFn) {
    updateFn(_pGSWithinTransferHeader ??= PGSWithinTransferHeaderStruct());
  }

  bool hasPGSWithinTransferHeader() => _pGSWithinTransferHeader != null;

  // "PGSWithinTransferBody" field.
  PGSWithinTransferBodyStruct? _pGSWithinTransferBody;
  PGSWithinTransferBodyStruct get pGSWithinTransferBody =>
      _pGSWithinTransferBody ?? PGSWithinTransferBodyStruct();
  set pGSWithinTransferBody(PGSWithinTransferBodyStruct? val) =>
      _pGSWithinTransferBody = val;

  void updatePGSWithinTransferBody(
      Function(PGSWithinTransferBodyStruct) updateFn) {
    updateFn(_pGSWithinTransferBody ??= PGSWithinTransferBodyStruct());
  }

  bool hasPGSWithinTransferBody() => _pGSWithinTransferBody != null;

  static TransferPBBStruct fromMap(Map<String, dynamic> data) =>
      TransferPBBStruct(
        pGSWithinTransferHeader:
            data['PGSWithinTransferHeader'] is PGSWithinTransferHeaderStruct
                ? data['PGSWithinTransferHeader']
                : PGSWithinTransferHeaderStruct.maybeFromMap(
                    data['PGSWithinTransferHeader']),
        pGSWithinTransferBody:
            data['PGSWithinTransferBody'] is PGSWithinTransferBodyStruct
                ? data['PGSWithinTransferBody']
                : PGSWithinTransferBodyStruct.maybeFromMap(
                    data['PGSWithinTransferBody']),
      );

  static TransferPBBStruct? maybeFromMap(dynamic data) => data is Map
      ? TransferPBBStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PGSWithinTransferHeader': _pGSWithinTransferHeader?.toMap(),
        'PGSWithinTransferBody': _pGSWithinTransferBody?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PGSWithinTransferHeader': serializeParam(
          _pGSWithinTransferHeader,
          ParamType.DataStruct,
        ),
        'PGSWithinTransferBody': serializeParam(
          _pGSWithinTransferBody,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TransferPBBStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransferPBBStruct(
        pGSWithinTransferHeader: deserializeStructParam(
          data['PGSWithinTransferHeader'],
          ParamType.DataStruct,
          false,
          structBuilder: PGSWithinTransferHeaderStruct.fromSerializableMap,
        ),
        pGSWithinTransferBody: deserializeStructParam(
          data['PGSWithinTransferBody'],
          ParamType.DataStruct,
          false,
          structBuilder: PGSWithinTransferBodyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TransferPBBStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransferPBBStruct &&
        pGSWithinTransferHeader == other.pGSWithinTransferHeader &&
        pGSWithinTransferBody == other.pGSWithinTransferBody;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([pGSWithinTransferHeader, pGSWithinTransferBody]);
}

TransferPBBStruct createTransferPBBStruct({
  PGSWithinTransferHeaderStruct? pGSWithinTransferHeader,
  PGSWithinTransferBodyStruct? pGSWithinTransferBody,
}) =>
    TransferPBBStruct(
      pGSWithinTransferHeader:
          pGSWithinTransferHeader ?? PGSWithinTransferHeaderStruct(),
      pGSWithinTransferBody:
          pGSWithinTransferBody ?? PGSWithinTransferBodyStruct(),
    );
