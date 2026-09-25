// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardMetaDataStruct extends BaseStruct {
  CardMetaDataStruct({
    String? cardId,
    String? cardScheme,
    String? cardType,
    String? cardBin,
    String? cardLast4Digits,
    String? cardExpDate,
    String? cardIsPrepaid,
    String? cardIsVirtual,
    String? cardAuthMethod,
    String? cardTranChannel,
  })  : _cardId = cardId,
        _cardScheme = cardScheme,
        _cardType = cardType,
        _cardBin = cardBin,
        _cardLast4Digits = cardLast4Digits,
        _cardExpDate = cardExpDate,
        _cardIsPrepaid = cardIsPrepaid,
        _cardIsVirtual = cardIsVirtual,
        _cardAuthMethod = cardAuthMethod,
        _cardTranChannel = cardTranChannel;

  // "CardId" field.
  String? _cardId;
  String get cardId => _cardId ?? '';
  set cardId(String? val) => _cardId = val;

  bool hasCardId() => _cardId != null;

  // "CardScheme" field.
  String? _cardScheme;
  String get cardScheme => _cardScheme ?? '';
  set cardScheme(String? val) => _cardScheme = val;

  bool hasCardScheme() => _cardScheme != null;

  // "CardType" field.
  String? _cardType;
  String get cardType => _cardType ?? '';
  set cardType(String? val) => _cardType = val;

  bool hasCardType() => _cardType != null;

  // "CardBin" field.
  String? _cardBin;
  String get cardBin => _cardBin ?? '';
  set cardBin(String? val) => _cardBin = val;

  bool hasCardBin() => _cardBin != null;

  // "CardLast4Digits" field.
  String? _cardLast4Digits;
  String get cardLast4Digits => _cardLast4Digits ?? '';
  set cardLast4Digits(String? val) => _cardLast4Digits = val;

  bool hasCardLast4Digits() => _cardLast4Digits != null;

  // "CardExpDate" field.
  String? _cardExpDate;
  String get cardExpDate => _cardExpDate ?? '';
  set cardExpDate(String? val) => _cardExpDate = val;

  bool hasCardExpDate() => _cardExpDate != null;

  // "CardIsPrepaid" field.
  String? _cardIsPrepaid;
  String get cardIsPrepaid => _cardIsPrepaid ?? '';
  set cardIsPrepaid(String? val) => _cardIsPrepaid = val;

  bool hasCardIsPrepaid() => _cardIsPrepaid != null;

  // "CardIsVirtual" field.
  String? _cardIsVirtual;
  String get cardIsVirtual => _cardIsVirtual ?? '';
  set cardIsVirtual(String? val) => _cardIsVirtual = val;

  bool hasCardIsVirtual() => _cardIsVirtual != null;

  // "CardAuthMethod" field.
  String? _cardAuthMethod;
  String get cardAuthMethod => _cardAuthMethod ?? '';
  set cardAuthMethod(String? val) => _cardAuthMethod = val;

  bool hasCardAuthMethod() => _cardAuthMethod != null;

  // "CardTranChannel" field.
  String? _cardTranChannel;
  String get cardTranChannel => _cardTranChannel ?? '';
  set cardTranChannel(String? val) => _cardTranChannel = val;

  bool hasCardTranChannel() => _cardTranChannel != null;

  static CardMetaDataStruct fromMap(Map<String, dynamic> data) =>
      CardMetaDataStruct(
        cardId: data['CardId'] as String?,
        cardScheme: data['CardScheme'] as String?,
        cardType: data['CardType'] as String?,
        cardBin: data['CardBin'] as String?,
        cardLast4Digits: data['CardLast4Digits'] as String?,
        cardExpDate: data['CardExpDate'] as String?,
        cardIsPrepaid: data['CardIsPrepaid'] as String?,
        cardIsVirtual: data['CardIsVirtual'] as String?,
        cardAuthMethod: data['CardAuthMethod'] as String?,
        cardTranChannel: data['CardTranChannel'] as String?,
      );

  static CardMetaDataStruct? maybeFromMap(dynamic data) => data is Map
      ? CardMetaDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CardId': _cardId,
        'CardScheme': _cardScheme,
        'CardType': _cardType,
        'CardBin': _cardBin,
        'CardLast4Digits': _cardLast4Digits,
        'CardExpDate': _cardExpDate,
        'CardIsPrepaid': _cardIsPrepaid,
        'CardIsVirtual': _cardIsVirtual,
        'CardAuthMethod': _cardAuthMethod,
        'CardTranChannel': _cardTranChannel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CardId': serializeParam(
          _cardId,
          ParamType.String,
        ),
        'CardScheme': serializeParam(
          _cardScheme,
          ParamType.String,
        ),
        'CardType': serializeParam(
          _cardType,
          ParamType.String,
        ),
        'CardBin': serializeParam(
          _cardBin,
          ParamType.String,
        ),
        'CardLast4Digits': serializeParam(
          _cardLast4Digits,
          ParamType.String,
        ),
        'CardExpDate': serializeParam(
          _cardExpDate,
          ParamType.String,
        ),
        'CardIsPrepaid': serializeParam(
          _cardIsPrepaid,
          ParamType.String,
        ),
        'CardIsVirtual': serializeParam(
          _cardIsVirtual,
          ParamType.String,
        ),
        'CardAuthMethod': serializeParam(
          _cardAuthMethod,
          ParamType.String,
        ),
        'CardTranChannel': serializeParam(
          _cardTranChannel,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardMetaDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardMetaDataStruct(
        cardId: deserializeParam(
          data['CardId'],
          ParamType.String,
          false,
        ),
        cardScheme: deserializeParam(
          data['CardScheme'],
          ParamType.String,
          false,
        ),
        cardType: deserializeParam(
          data['CardType'],
          ParamType.String,
          false,
        ),
        cardBin: deserializeParam(
          data['CardBin'],
          ParamType.String,
          false,
        ),
        cardLast4Digits: deserializeParam(
          data['CardLast4Digits'],
          ParamType.String,
          false,
        ),
        cardExpDate: deserializeParam(
          data['CardExpDate'],
          ParamType.String,
          false,
        ),
        cardIsPrepaid: deserializeParam(
          data['CardIsPrepaid'],
          ParamType.String,
          false,
        ),
        cardIsVirtual: deserializeParam(
          data['CardIsVirtual'],
          ParamType.String,
          false,
        ),
        cardAuthMethod: deserializeParam(
          data['CardAuthMethod'],
          ParamType.String,
          false,
        ),
        cardTranChannel: deserializeParam(
          data['CardTranChannel'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardMetaDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardMetaDataStruct &&
        cardId == other.cardId &&
        cardScheme == other.cardScheme &&
        cardType == other.cardType &&
        cardBin == other.cardBin &&
        cardLast4Digits == other.cardLast4Digits &&
        cardExpDate == other.cardExpDate &&
        cardIsPrepaid == other.cardIsPrepaid &&
        cardIsVirtual == other.cardIsVirtual &&
        cardAuthMethod == other.cardAuthMethod &&
        cardTranChannel == other.cardTranChannel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cardId,
        cardScheme,
        cardType,
        cardBin,
        cardLast4Digits,
        cardExpDate,
        cardIsPrepaid,
        cardIsVirtual,
        cardAuthMethod,
        cardTranChannel
      ]);
}

CardMetaDataStruct createCardMetaDataStruct({
  String? cardId,
  String? cardScheme,
  String? cardType,
  String? cardBin,
  String? cardLast4Digits,
  String? cardExpDate,
  String? cardIsPrepaid,
  String? cardIsVirtual,
  String? cardAuthMethod,
  String? cardTranChannel,
}) =>
    CardMetaDataStruct(
      cardId: cardId,
      cardScheme: cardScheme,
      cardType: cardType,
      cardBin: cardBin,
      cardLast4Digits: cardLast4Digits,
      cardExpDate: cardExpDate,
      cardIsPrepaid: cardIsPrepaid,
      cardIsVirtual: cardIsVirtual,
      cardAuthMethod: cardAuthMethod,
      cardTranChannel: cardTranChannel,
    );
