// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBQRDecodeResponseStruct extends BaseStruct {
  WBQRDecodeResponseStruct({
    bool? valid,
    String? qrType,
    WBRecipientStruct? recipient,
    double? amount,
    bool? amountEditable,
    String? currency,
    String? ref,
    String? expiresAt,
    String? errorMessage,
  })  : _valid = valid,
        _qrType = qrType,
        _recipient = recipient,
        _amount = amount,
        _amountEditable = amountEditable,
        _currency = currency,
        _ref = ref,
        _expiresAt = expiresAt,
        _errorMessage = errorMessage;

  // "valid" field.
  bool? _valid;
  bool get valid => _valid ?? false;
  set valid(bool? val) => _valid = val;

  bool hasValid() => _valid != null;

  // "qrType" field.
  String? _qrType;
  String get qrType => _qrType ?? '';
  set qrType(String? val) => _qrType = val;

  bool hasQrType() => _qrType != null;

  // "recipient" field.
  WBRecipientStruct? _recipient;
  WBRecipientStruct get recipient => _recipient ?? WBRecipientStruct();
  set recipient(WBRecipientStruct? val) => _recipient = val;

  void updateRecipient(Function(WBRecipientStruct) updateFn) {
    updateFn(_recipient ??= WBRecipientStruct());
  }

  bool hasRecipient() => _recipient != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "amountEditable" field.
  bool? _amountEditable;
  bool get amountEditable => _amountEditable ?? false;
  set amountEditable(bool? val) => _amountEditable = val;

  bool hasAmountEditable() => _amountEditable != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "ref" field.
  String? _ref;
  String get ref => _ref ?? '';
  set ref(String? val) => _ref = val;

  bool hasRef() => _ref != null;

  // "expiresAt" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  // "errorMessage" field.
  String? _errorMessage;
  String get errorMessage => _errorMessage ?? '';
  set errorMessage(String? val) => _errorMessage = val;

  bool hasErrorMessage() => _errorMessage != null;

  static WBQRDecodeResponseStruct fromMap(Map<String, dynamic> data) =>
      WBQRDecodeResponseStruct(
        valid: data['valid'] as bool?,
        qrType: data['qrType'] as String?,
        recipient: data['recipient'] is WBRecipientStruct
            ? data['recipient']
            : WBRecipientStruct.maybeFromMap(data['recipient']),
        amount: castToType<double>(data['amount']),
        amountEditable: data['amountEditable'] as bool?,
        currency: data['currency'] as String?,
        ref: data['ref'] as String?,
        expiresAt: data['expiresAt'] as String?,
        errorMessage: data['errorMessage'] as String?,
      );

  static WBQRDecodeResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? WBQRDecodeResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'valid': _valid,
        'qrType': _qrType,
        'recipient': _recipient?.toMap(),
        'amount': _amount,
        'amountEditable': _amountEditable,
        'currency': _currency,
        'ref': _ref,
        'expiresAt': _expiresAt,
        'errorMessage': _errorMessage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'valid': serializeParam(
          _valid,
          ParamType.bool,
        ),
        'qrType': serializeParam(
          _qrType,
          ParamType.String,
        ),
        'recipient': serializeParam(
          _recipient,
          ParamType.DataStruct,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'amountEditable': serializeParam(
          _amountEditable,
          ParamType.bool,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'ref': serializeParam(
          _ref,
          ParamType.String,
        ),
        'expiresAt': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
        'errorMessage': serializeParam(
          _errorMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static WBQRDecodeResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WBQRDecodeResponseStruct(
        valid: deserializeParam(
          data['valid'],
          ParamType.bool,
          false,
        ),
        qrType: deserializeParam(
          data['qrType'],
          ParamType.String,
          false,
        ),
        recipient: deserializeStructParam(
          data['recipient'],
          ParamType.DataStruct,
          false,
          structBuilder: WBRecipientStruct.fromSerializableMap,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        amountEditable: deserializeParam(
          data['amountEditable'],
          ParamType.bool,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        ref: deserializeParam(
          data['ref'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expiresAt'],
          ParamType.String,
          false,
        ),
        errorMessage: deserializeParam(
          data['errorMessage'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WBQRDecodeResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBQRDecodeResponseStruct &&
        valid == other.valid &&
        qrType == other.qrType &&
        recipient == other.recipient &&
        amount == other.amount &&
        amountEditable == other.amountEditable &&
        currency == other.currency &&
        ref == other.ref &&
        expiresAt == other.expiresAt &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        valid,
        qrType,
        recipient,
        amount,
        amountEditable,
        currency,
        ref,
        expiresAt,
        errorMessage
      ]);
}

WBQRDecodeResponseStruct createWBQRDecodeResponseStruct({
  bool? valid,
  String? qrType,
  WBRecipientStruct? recipient,
  double? amount,
  bool? amountEditable,
  String? currency,
  String? ref,
  String? expiresAt,
  String? errorMessage,
}) =>
    WBQRDecodeResponseStruct(
      valid: valid,
      qrType: qrType,
      recipient: recipient ?? WBRecipientStruct(),
      amount: amount,
      amountEditable: amountEditable,
      currency: currency,
      ref: ref,
      expiresAt: expiresAt,
      errorMessage: errorMessage,
    );
