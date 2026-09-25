// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentStruct extends BaseStruct {
  PaymentStruct({
    String? paymentMethodId,
  }) : _paymentMethodId = paymentMethodId;

  // "PaymentMethodId" field.
  String? _paymentMethodId;
  String get paymentMethodId => _paymentMethodId ?? '';
  set paymentMethodId(String? val) => _paymentMethodId = val;

  bool hasPaymentMethodId() => _paymentMethodId != null;

  static PaymentStruct fromMap(Map<String, dynamic> data) => PaymentStruct(
        paymentMethodId: data['PaymentMethodId'] as String?,
      );

  static PaymentStruct? maybeFromMap(dynamic data) =>
      data is Map ? PaymentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'PaymentMethodId': _paymentMethodId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PaymentMethodId': serializeParam(
          _paymentMethodId,
          ParamType.String,
        ),
      }.withoutNulls;

  static PaymentStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentStruct(
        paymentMethodId: deserializeParam(
          data['PaymentMethodId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PaymentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentStruct && paymentMethodId == other.paymentMethodId;
  }

  @override
  int get hashCode => const ListEquality().hash([paymentMethodId]);
}

PaymentStruct createPaymentStruct({
  String? paymentMethodId,
}) =>
    PaymentStruct(
      paymentMethodId: paymentMethodId,
    );
