// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GenerateQRModelStruct extends BaseStruct {
  GenerateQRModelStruct({
    String? generatedQRImagePath,
    PGSQRHeaderStruct? pgsqrHeader,
    PGSQRBodyStruct? pgsqrBody,
  })  : _generatedQRImagePath = generatedQRImagePath,
        _pgsqrHeader = pgsqrHeader,
        _pgsqrBody = pgsqrBody;

  // "generatedQRImagePath" field.
  String? _generatedQRImagePath;
  String get generatedQRImagePath => _generatedQRImagePath ?? '';
  set generatedQRImagePath(String? val) => _generatedQRImagePath = val;

  bool hasGeneratedQRImagePath() => _generatedQRImagePath != null;

  // "pgsqrHeader" field.
  PGSQRHeaderStruct? _pgsqrHeader;
  PGSQRHeaderStruct get pgsqrHeader => _pgsqrHeader ?? PGSQRHeaderStruct();
  set pgsqrHeader(PGSQRHeaderStruct? val) => _pgsqrHeader = val;

  void updatePgsqrHeader(Function(PGSQRHeaderStruct) updateFn) {
    updateFn(_pgsqrHeader ??= PGSQRHeaderStruct());
  }

  bool hasPgsqrHeader() => _pgsqrHeader != null;

  // "pgsqrBody" field.
  PGSQRBodyStruct? _pgsqrBody;
  PGSQRBodyStruct get pgsqrBody => _pgsqrBody ?? PGSQRBodyStruct();
  set pgsqrBody(PGSQRBodyStruct? val) => _pgsqrBody = val;

  void updatePgsqrBody(Function(PGSQRBodyStruct) updateFn) {
    updateFn(_pgsqrBody ??= PGSQRBodyStruct());
  }

  bool hasPgsqrBody() => _pgsqrBody != null;

  static GenerateQRModelStruct fromMap(Map<String, dynamic> data) =>
      GenerateQRModelStruct(
        generatedQRImagePath: data['generatedQRImagePath'] as String?,
        pgsqrHeader: data['pgsqrHeader'] is PGSQRHeaderStruct
            ? data['pgsqrHeader']
            : PGSQRHeaderStruct.maybeFromMap(data['pgsqrHeader']),
        pgsqrBody: data['pgsqrBody'] is PGSQRBodyStruct
            ? data['pgsqrBody']
            : PGSQRBodyStruct.maybeFromMap(data['pgsqrBody']),
      );

  static GenerateQRModelStruct? maybeFromMap(dynamic data) => data is Map
      ? GenerateQRModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'generatedQRImagePath': _generatedQRImagePath,
        'pgsqrHeader': _pgsqrHeader?.toMap(),
        'pgsqrBody': _pgsqrBody?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'generatedQRImagePath': serializeParam(
          _generatedQRImagePath,
          ParamType.String,
        ),
        'pgsqrHeader': serializeParam(
          _pgsqrHeader,
          ParamType.DataStruct,
        ),
        'pgsqrBody': serializeParam(
          _pgsqrBody,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GenerateQRModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      GenerateQRModelStruct(
        generatedQRImagePath: deserializeParam(
          data['generatedQRImagePath'],
          ParamType.String,
          false,
        ),
        pgsqrHeader: deserializeStructParam(
          data['pgsqrHeader'],
          ParamType.DataStruct,
          false,
          structBuilder: PGSQRHeaderStruct.fromSerializableMap,
        ),
        pgsqrBody: deserializeStructParam(
          data['pgsqrBody'],
          ParamType.DataStruct,
          false,
          structBuilder: PGSQRBodyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GenerateQRModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GenerateQRModelStruct &&
        generatedQRImagePath == other.generatedQRImagePath &&
        pgsqrHeader == other.pgsqrHeader &&
        pgsqrBody == other.pgsqrBody;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([generatedQRImagePath, pgsqrHeader, pgsqrBody]);
}

GenerateQRModelStruct createGenerateQRModelStruct({
  String? generatedQRImagePath,
  PGSQRHeaderStruct? pgsqrHeader,
  PGSQRBodyStruct? pgsqrBody,
}) =>
    GenerateQRModelStruct(
      generatedQRImagePath: generatedQRImagePath,
      pgsqrHeader: pgsqrHeader ?? PGSQRHeaderStruct(),
      pgsqrBody: pgsqrBody ?? PGSQRBodyStruct(),
    );
