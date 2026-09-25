// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsPaymentFieldsModelStruct extends BaseStruct {
  BillsPaymentFieldsModelStruct({
    AccountsV2Struct? paymentFrom,
    FrequentBillerDataModelStruct? paymentTo,
    double? paymentAmount,
    TransactionScheduleType? schedule,
    String? remarks,
  })  : _paymentFrom = paymentFrom,
        _paymentTo = paymentTo,
        _paymentAmount = paymentAmount,
        _schedule = schedule,
        _remarks = remarks;

  // "paymentFrom" field.
  AccountsV2Struct? _paymentFrom;
  AccountsV2Struct get paymentFrom => _paymentFrom ?? AccountsV2Struct();
  set paymentFrom(AccountsV2Struct? val) => _paymentFrom = val;

  void updatePaymentFrom(Function(AccountsV2Struct) updateFn) {
    updateFn(_paymentFrom ??= AccountsV2Struct());
  }

  bool hasPaymentFrom() => _paymentFrom != null;

  // "paymentTo" field.
  FrequentBillerDataModelStruct? _paymentTo;
  FrequentBillerDataModelStruct get paymentTo =>
      _paymentTo ?? FrequentBillerDataModelStruct();
  set paymentTo(FrequentBillerDataModelStruct? val) => _paymentTo = val;

  void updatePaymentTo(Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(_paymentTo ??= FrequentBillerDataModelStruct());
  }

  bool hasPaymentTo() => _paymentTo != null;

  // "paymentAmount" field.
  double? _paymentAmount;
  double get paymentAmount => _paymentAmount ?? 0.0;
  set paymentAmount(double? val) => _paymentAmount = val;

  void incrementPaymentAmount(double amount) =>
      paymentAmount = paymentAmount + amount;

  bool hasPaymentAmount() => _paymentAmount != null;

  // "schedule" field.
  TransactionScheduleType? _schedule;
  TransactionScheduleType get schedule =>
      _schedule ?? TransactionScheduleType.DAILY;
  set schedule(TransactionScheduleType? val) => _schedule = val;

  bool hasSchedule() => _schedule != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  static BillsPaymentFieldsModelStruct fromMap(Map<String, dynamic> data) =>
      BillsPaymentFieldsModelStruct(
        paymentFrom: data['paymentFrom'] is AccountsV2Struct
            ? data['paymentFrom']
            : AccountsV2Struct.maybeFromMap(data['paymentFrom']),
        paymentTo: data['paymentTo'] is FrequentBillerDataModelStruct
            ? data['paymentTo']
            : FrequentBillerDataModelStruct.maybeFromMap(data['paymentTo']),
        paymentAmount: castToType<double>(data['paymentAmount']),
        schedule: data['schedule'] is TransactionScheduleType
            ? data['schedule']
            : deserializeEnum<TransactionScheduleType>(data['schedule']),
        remarks: data['remarks'] as String?,
      );

  static BillsPaymentFieldsModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? BillsPaymentFieldsModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'paymentFrom': _paymentFrom?.toMap(),
        'paymentTo': _paymentTo?.toMap(),
        'paymentAmount': _paymentAmount,
        'schedule': _schedule?.serialize(),
        'remarks': _remarks,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'paymentFrom': serializeParam(
          _paymentFrom,
          ParamType.DataStruct,
        ),
        'paymentTo': serializeParam(
          _paymentTo,
          ParamType.DataStruct,
        ),
        'paymentAmount': serializeParam(
          _paymentAmount,
          ParamType.double,
        ),
        'schedule': serializeParam(
          _schedule,
          ParamType.Enum,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
      }.withoutNulls;

  static BillsPaymentFieldsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BillsPaymentFieldsModelStruct(
        paymentFrom: deserializeStructParam(
          data['paymentFrom'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountsV2Struct.fromSerializableMap,
        ),
        paymentTo: deserializeStructParam(
          data['paymentTo'],
          ParamType.DataStruct,
          false,
          structBuilder: FrequentBillerDataModelStruct.fromSerializableMap,
        ),
        paymentAmount: deserializeParam(
          data['paymentAmount'],
          ParamType.double,
          false,
        ),
        schedule: deserializeParam<TransactionScheduleType>(
          data['schedule'],
          ParamType.Enum,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BillsPaymentFieldsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillsPaymentFieldsModelStruct &&
        paymentFrom == other.paymentFrom &&
        paymentTo == other.paymentTo &&
        paymentAmount == other.paymentAmount &&
        schedule == other.schedule &&
        remarks == other.remarks;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([paymentFrom, paymentTo, paymentAmount, schedule, remarks]);
}

BillsPaymentFieldsModelStruct createBillsPaymentFieldsModelStruct({
  AccountsV2Struct? paymentFrom,
  FrequentBillerDataModelStruct? paymentTo,
  double? paymentAmount,
  TransactionScheduleType? schedule,
  String? remarks,
}) =>
    BillsPaymentFieldsModelStruct(
      paymentFrom: paymentFrom ?? AccountsV2Struct(),
      paymentTo: paymentTo ?? FrequentBillerDataModelStruct(),
      paymentAmount: paymentAmount,
      schedule: schedule,
      remarks: remarks,
    );
