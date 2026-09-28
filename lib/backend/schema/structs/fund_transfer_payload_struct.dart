// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FundTransferPayloadStruct extends BaseStruct {
  FundTransferPayloadStruct({
    FTPPaymentGatewayHeaderStruct? paymentGatewayHeader,
    FTPPaymentGatewayDetailsStruct? paymentGatewayDetails,
  })  : _paymentGatewayHeader = paymentGatewayHeader,
        _paymentGatewayDetails = paymentGatewayDetails;

  // "PaymentGatewayHeader" field.
  FTPPaymentGatewayHeaderStruct? _paymentGatewayHeader;
  FTPPaymentGatewayHeaderStruct get paymentGatewayHeader =>
      _paymentGatewayHeader ?? FTPPaymentGatewayHeaderStruct();
  set paymentGatewayHeader(FTPPaymentGatewayHeaderStruct? val) =>
      _paymentGatewayHeader = val;

  void updatePaymentGatewayHeader(
      Function(FTPPaymentGatewayHeaderStruct) updateFn) {
    updateFn(_paymentGatewayHeader ??= FTPPaymentGatewayHeaderStruct());
  }

  bool hasPaymentGatewayHeader() => _paymentGatewayHeader != null;

  // "PaymentGatewayDetails" field.
  FTPPaymentGatewayDetailsStruct? _paymentGatewayDetails;
  FTPPaymentGatewayDetailsStruct get paymentGatewayDetails =>
      _paymentGatewayDetails ?? FTPPaymentGatewayDetailsStruct();
  set paymentGatewayDetails(FTPPaymentGatewayDetailsStruct? val) =>
      _paymentGatewayDetails = val;

  void updatePaymentGatewayDetails(
      Function(FTPPaymentGatewayDetailsStruct) updateFn) {
    updateFn(_paymentGatewayDetails ??= FTPPaymentGatewayDetailsStruct());
  }

  bool hasPaymentGatewayDetails() => _paymentGatewayDetails != null;

  static FundTransferPayloadStruct fromMap(Map<String, dynamic> data) =>
      FundTransferPayloadStruct(
        paymentGatewayHeader:
            data['PaymentGatewayHeader'] is FTPPaymentGatewayHeaderStruct
                ? data['PaymentGatewayHeader']
                : FTPPaymentGatewayHeaderStruct.maybeFromMap(
                    data['PaymentGatewayHeader']),
        paymentGatewayDetails:
            data['PaymentGatewayDetails'] is FTPPaymentGatewayDetailsStruct
                ? data['PaymentGatewayDetails']
                : FTPPaymentGatewayDetailsStruct.maybeFromMap(
                    data['PaymentGatewayDetails']),
      );

  static FundTransferPayloadStruct? maybeFromMap(dynamic data) => data is Map
      ? FundTransferPayloadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PaymentGatewayHeader': _paymentGatewayHeader?.toMap(),
        'PaymentGatewayDetails': _paymentGatewayDetails?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PaymentGatewayHeader': serializeParam(
          _paymentGatewayHeader,
          ParamType.DataStruct,
        ),
        'PaymentGatewayDetails': serializeParam(
          _paymentGatewayDetails,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FundTransferPayloadStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FundTransferPayloadStruct(
        paymentGatewayHeader: deserializeStructParam(
          data['PaymentGatewayHeader'],
          ParamType.DataStruct,
          false,
          structBuilder: FTPPaymentGatewayHeaderStruct.fromSerializableMap,
        ),
        paymentGatewayDetails: deserializeStructParam(
          data['PaymentGatewayDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: FTPPaymentGatewayDetailsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FundTransferPayloadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FundTransferPayloadStruct &&
        paymentGatewayHeader == other.paymentGatewayHeader &&
        paymentGatewayDetails == other.paymentGatewayDetails;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([paymentGatewayHeader, paymentGatewayDetails]);
}

FundTransferPayloadStruct createFundTransferPayloadStruct({
  FTPPaymentGatewayHeaderStruct? paymentGatewayHeader,
  FTPPaymentGatewayDetailsStruct? paymentGatewayDetails,
}) =>
    FundTransferPayloadStruct(
      paymentGatewayHeader:
          paymentGatewayHeader ?? FTPPaymentGatewayHeaderStruct(),
      paymentGatewayDetails:
          paymentGatewayDetails ?? FTPPaymentGatewayDetailsStruct(),
    );
