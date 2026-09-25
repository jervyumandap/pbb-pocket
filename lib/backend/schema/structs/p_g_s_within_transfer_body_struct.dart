// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PGSWithinTransferBodyStruct extends BaseStruct {
  PGSWithinTransferBodyStruct({
    String? sourceAccBrnCode,
    String? sourceAccNum,
    String? sourceAccCcy,
    String? destinationAccBrnCode,
    String? destinationAccNum,
    String? destinationAccCcy,
    String? conversionRate,
    String? baseAmount,
    String? convertedAmount,
    String? valueDate,
    String? transferDate,
  })  : _sourceAccBrnCode = sourceAccBrnCode,
        _sourceAccNum = sourceAccNum,
        _sourceAccCcy = sourceAccCcy,
        _destinationAccBrnCode = destinationAccBrnCode,
        _destinationAccNum = destinationAccNum,
        _destinationAccCcy = destinationAccCcy,
        _conversionRate = conversionRate,
        _baseAmount = baseAmount,
        _convertedAmount = convertedAmount,
        _valueDate = valueDate,
        _transferDate = transferDate;

  // "SourceAccBrnCode" field.
  String? _sourceAccBrnCode;
  String get sourceAccBrnCode => _sourceAccBrnCode ?? '';
  set sourceAccBrnCode(String? val) => _sourceAccBrnCode = val;

  bool hasSourceAccBrnCode() => _sourceAccBrnCode != null;

  // "SourceAccNum" field.
  String? _sourceAccNum;
  String get sourceAccNum => _sourceAccNum ?? '';
  set sourceAccNum(String? val) => _sourceAccNum = val;

  bool hasSourceAccNum() => _sourceAccNum != null;

  // "SourceAccCcy" field.
  String? _sourceAccCcy;
  String get sourceAccCcy => _sourceAccCcy ?? '';
  set sourceAccCcy(String? val) => _sourceAccCcy = val;

  bool hasSourceAccCcy() => _sourceAccCcy != null;

  // "DestinationAccBrnCode" field.
  String? _destinationAccBrnCode;
  String get destinationAccBrnCode => _destinationAccBrnCode ?? '';
  set destinationAccBrnCode(String? val) => _destinationAccBrnCode = val;

  bool hasDestinationAccBrnCode() => _destinationAccBrnCode != null;

  // "DestinationAccNum" field.
  String? _destinationAccNum;
  String get destinationAccNum => _destinationAccNum ?? '';
  set destinationAccNum(String? val) => _destinationAccNum = val;

  bool hasDestinationAccNum() => _destinationAccNum != null;

  // "DestinationAccCcy" field.
  String? _destinationAccCcy;
  String get destinationAccCcy => _destinationAccCcy ?? '';
  set destinationAccCcy(String? val) => _destinationAccCcy = val;

  bool hasDestinationAccCcy() => _destinationAccCcy != null;

  // "ConversionRate" field.
  String? _conversionRate;
  String get conversionRate => _conversionRate ?? '';
  set conversionRate(String? val) => _conversionRate = val;

  bool hasConversionRate() => _conversionRate != null;

  // "BaseAmount" field.
  String? _baseAmount;
  String get baseAmount => _baseAmount ?? '';
  set baseAmount(String? val) => _baseAmount = val;

  bool hasBaseAmount() => _baseAmount != null;

  // "ConvertedAmount" field.
  String? _convertedAmount;
  String get convertedAmount => _convertedAmount ?? '';
  set convertedAmount(String? val) => _convertedAmount = val;

  bool hasConvertedAmount() => _convertedAmount != null;

  // "ValueDate" field.
  String? _valueDate;
  String get valueDate => _valueDate ?? '';
  set valueDate(String? val) => _valueDate = val;

  bool hasValueDate() => _valueDate != null;

  // "TransferDate" field.
  String? _transferDate;
  String get transferDate => _transferDate ?? '';
  set transferDate(String? val) => _transferDate = val;

  bool hasTransferDate() => _transferDate != null;

  static PGSWithinTransferBodyStruct fromMap(Map<String, dynamic> data) =>
      PGSWithinTransferBodyStruct(
        sourceAccBrnCode: data['SourceAccBrnCode'] as String?,
        sourceAccNum: data['SourceAccNum'] as String?,
        sourceAccCcy: data['SourceAccCcy'] as String?,
        destinationAccBrnCode: data['DestinationAccBrnCode'] as String?,
        destinationAccNum: data['DestinationAccNum'] as String?,
        destinationAccCcy: data['DestinationAccCcy'] as String?,
        conversionRate: data['ConversionRate'] as String?,
        baseAmount: data['BaseAmount'] as String?,
        convertedAmount: data['ConvertedAmount'] as String?,
        valueDate: data['ValueDate'] as String?,
        transferDate: data['TransferDate'] as String?,
      );

  static PGSWithinTransferBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? PGSWithinTransferBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'SourceAccBrnCode': _sourceAccBrnCode,
        'SourceAccNum': _sourceAccNum,
        'SourceAccCcy': _sourceAccCcy,
        'DestinationAccBrnCode': _destinationAccBrnCode,
        'DestinationAccNum': _destinationAccNum,
        'DestinationAccCcy': _destinationAccCcy,
        'ConversionRate': _conversionRate,
        'BaseAmount': _baseAmount,
        'ConvertedAmount': _convertedAmount,
        'ValueDate': _valueDate,
        'TransferDate': _transferDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'SourceAccBrnCode': serializeParam(
          _sourceAccBrnCode,
          ParamType.String,
        ),
        'SourceAccNum': serializeParam(
          _sourceAccNum,
          ParamType.String,
        ),
        'SourceAccCcy': serializeParam(
          _sourceAccCcy,
          ParamType.String,
        ),
        'DestinationAccBrnCode': serializeParam(
          _destinationAccBrnCode,
          ParamType.String,
        ),
        'DestinationAccNum': serializeParam(
          _destinationAccNum,
          ParamType.String,
        ),
        'DestinationAccCcy': serializeParam(
          _destinationAccCcy,
          ParamType.String,
        ),
        'ConversionRate': serializeParam(
          _conversionRate,
          ParamType.String,
        ),
        'BaseAmount': serializeParam(
          _baseAmount,
          ParamType.String,
        ),
        'ConvertedAmount': serializeParam(
          _convertedAmount,
          ParamType.String,
        ),
        'ValueDate': serializeParam(
          _valueDate,
          ParamType.String,
        ),
        'TransferDate': serializeParam(
          _transferDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static PGSWithinTransferBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PGSWithinTransferBodyStruct(
        sourceAccBrnCode: deserializeParam(
          data['SourceAccBrnCode'],
          ParamType.String,
          false,
        ),
        sourceAccNum: deserializeParam(
          data['SourceAccNum'],
          ParamType.String,
          false,
        ),
        sourceAccCcy: deserializeParam(
          data['SourceAccCcy'],
          ParamType.String,
          false,
        ),
        destinationAccBrnCode: deserializeParam(
          data['DestinationAccBrnCode'],
          ParamType.String,
          false,
        ),
        destinationAccNum: deserializeParam(
          data['DestinationAccNum'],
          ParamType.String,
          false,
        ),
        destinationAccCcy: deserializeParam(
          data['DestinationAccCcy'],
          ParamType.String,
          false,
        ),
        conversionRate: deserializeParam(
          data['ConversionRate'],
          ParamType.String,
          false,
        ),
        baseAmount: deserializeParam(
          data['BaseAmount'],
          ParamType.String,
          false,
        ),
        convertedAmount: deserializeParam(
          data['ConvertedAmount'],
          ParamType.String,
          false,
        ),
        valueDate: deserializeParam(
          data['ValueDate'],
          ParamType.String,
          false,
        ),
        transferDate: deserializeParam(
          data['TransferDate'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PGSWithinTransferBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PGSWithinTransferBodyStruct &&
        sourceAccBrnCode == other.sourceAccBrnCode &&
        sourceAccNum == other.sourceAccNum &&
        sourceAccCcy == other.sourceAccCcy &&
        destinationAccBrnCode == other.destinationAccBrnCode &&
        destinationAccNum == other.destinationAccNum &&
        destinationAccCcy == other.destinationAccCcy &&
        conversionRate == other.conversionRate &&
        baseAmount == other.baseAmount &&
        convertedAmount == other.convertedAmount &&
        valueDate == other.valueDate &&
        transferDate == other.transferDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        sourceAccBrnCode,
        sourceAccNum,
        sourceAccCcy,
        destinationAccBrnCode,
        destinationAccNum,
        destinationAccCcy,
        conversionRate,
        baseAmount,
        convertedAmount,
        valueDate,
        transferDate
      ]);
}

PGSWithinTransferBodyStruct createPGSWithinTransferBodyStruct({
  String? sourceAccBrnCode,
  String? sourceAccNum,
  String? sourceAccCcy,
  String? destinationAccBrnCode,
  String? destinationAccNum,
  String? destinationAccCcy,
  String? conversionRate,
  String? baseAmount,
  String? convertedAmount,
  String? valueDate,
  String? transferDate,
}) =>
    PGSWithinTransferBodyStruct(
      sourceAccBrnCode: sourceAccBrnCode,
      sourceAccNum: sourceAccNum,
      sourceAccCcy: sourceAccCcy,
      destinationAccBrnCode: destinationAccBrnCode,
      destinationAccNum: destinationAccNum,
      destinationAccCcy: destinationAccCcy,
      conversionRate: conversionRate,
      baseAmount: baseAmount,
      convertedAmount: convertedAmount,
      valueDate: valueDate,
      transferDate: transferDate,
    );
