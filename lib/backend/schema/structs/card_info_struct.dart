// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardInfoStruct extends BaseStruct {
  CardInfoStruct({
    String? cardType,
    String? networkScheme,
    String? cardCategories,
  })  : _cardType = cardType,
        _networkScheme = networkScheme,
        _cardCategories = cardCategories;

  // "CardType" field.
  String? _cardType;
  String get cardType => _cardType ?? '';
  set cardType(String? val) => _cardType = val;

  bool hasCardType() => _cardType != null;

  // "NetworkScheme" field.
  String? _networkScheme;
  String get networkScheme => _networkScheme ?? '';
  set networkScheme(String? val) => _networkScheme = val;

  bool hasNetworkScheme() => _networkScheme != null;

  // "cardCategories" field.
  String? _cardCategories;
  String get cardCategories => _cardCategories ?? '';
  set cardCategories(String? val) => _cardCategories = val;

  bool hasCardCategories() => _cardCategories != null;

  static CardInfoStruct fromMap(Map<String, dynamic> data) => CardInfoStruct(
        cardType: data['CardType'] as String?,
        networkScheme: data['NetworkScheme'] as String?,
        cardCategories: data['cardCategories'] as String?,
      );

  static CardInfoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardInfoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'CardType': _cardType,
        'NetworkScheme': _networkScheme,
        'cardCategories': _cardCategories,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CardType': serializeParam(
          _cardType,
          ParamType.String,
        ),
        'NetworkScheme': serializeParam(
          _networkScheme,
          ParamType.String,
        ),
        'cardCategories': serializeParam(
          _cardCategories,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardInfoStruct(
        cardType: deserializeParam(
          data['CardType'],
          ParamType.String,
          false,
        ),
        networkScheme: deserializeParam(
          data['NetworkScheme'],
          ParamType.String,
          false,
        ),
        cardCategories: deserializeParam(
          data['cardCategories'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardInfoStruct &&
        cardType == other.cardType &&
        networkScheme == other.networkScheme &&
        cardCategories == other.cardCategories;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([cardType, networkScheme, cardCategories]);
}

CardInfoStruct createCardInfoStruct({
  String? cardType,
  String? networkScheme,
  String? cardCategories,
}) =>
    CardInfoStruct(
      cardType: cardType,
      networkScheme: networkScheme,
      cardCategories: cardCategories,
    );
