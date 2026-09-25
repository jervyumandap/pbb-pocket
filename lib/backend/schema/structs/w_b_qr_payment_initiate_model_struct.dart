// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBQrPaymentInitiateModelStruct extends BaseStruct {
  WBQrPaymentInitiateModelStruct({
    String? qrData,
    double? amount,
    String? sourceAccountNumber,
    String? remarks,
    String? idempotencyKey,
  })  : _qrData = qrData,
        _amount = amount,
        _sourceAccountNumber = sourceAccountNumber,
        _remarks = remarks,
        _idempotencyKey = idempotencyKey;

  // "qrData" field.
  String? _qrData;
  String get qrData => _qrData ?? '';
  set qrData(String? val) => _qrData = val;

  bool hasQrData() => _qrData != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "sourceAccountNumber" field.
  String? _sourceAccountNumber;
  String get sourceAccountNumber => _sourceAccountNumber ?? '';
  set sourceAccountNumber(String? val) => _sourceAccountNumber = val;

  bool hasSourceAccountNumber() => _sourceAccountNumber != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "idempotencyKey" field.
  String? _idempotencyKey;
  String get idempotencyKey => _idempotencyKey ?? '';
  set idempotencyKey(String? val) => _idempotencyKey = val;

  bool hasIdempotencyKey() => _idempotencyKey != null;

  static WBQrPaymentInitiateModelStruct fromMap(Map<String, dynamic> data) =>
      WBQrPaymentInitiateModelStruct(
        qrData: data['qrData'] as String?,
        amount: castToType<double>(data['amount']),
        sourceAccountNumber: data['sourceAccountNumber'] as String?,
        remarks: data['remarks'] as String?,
        idempotencyKey: data['idempotencyKey'] as String?,
      );

  static WBQrPaymentInitiateModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? WBQrPaymentInitiateModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'qrData': _qrData,
        'amount': _amount,
        'sourceAccountNumber': _sourceAccountNumber,
        'remarks': _remarks,
        'idempotencyKey': _idempotencyKey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'qrData': serializeParam(
          _qrData,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'sourceAccountNumber': serializeParam(
          _sourceAccountNumber,
          ParamType.String,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'idempotencyKey': serializeParam(
          _idempotencyKey,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBQrPaymentInitiateModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBQrPaymentInitiateModelStruct(
        qrData: deserializeParam(
          data['qrData'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        sourceAccountNumber: deserializeParam(
          data['sourceAccountNumber'],
          ParamType.String,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        idempotencyKey: deserializeParam(
          data['idempotencyKey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBQrPaymentInitiateModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBQrPaymentInitiateModelStruct &&
        qrData == other.qrData &&
        amount == other.amount &&
        sourceAccountNumber == other.sourceAccountNumber &&
        remarks == other.remarks &&
        idempotencyKey == other.idempotencyKey;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([qrData, amount, sourceAccountNumber, remarks, idempotencyKey]);
}

WBQrPaymentInitiateModelStruct createWBQrPaymentInitiateModelStruct({
  String? qrData,
  double? amount,
  String? sourceAccountNumber,
  String? remarks,
  String? idempotencyKey,
}) =>
    WBQrPaymentInitiateModelStruct(
      qrData: qrData,
      amount: amount,
      sourceAccountNumber: sourceAccountNumber,
      remarks: remarks,
      idempotencyKey: idempotencyKey,
    );
